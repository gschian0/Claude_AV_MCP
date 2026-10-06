"""The conductor owns the scene and fans changes out to every target.

This is the "realtime-ish" plane: human-rate changes (a few per second, or a
ramp at ~30 Hz). Anything that must be sample- or frame-accurate — beat
phase, audio-reactive envelopes — should run inside the audio/visual
programs themselves (Ableton Link, an envelope follower in Max/Pd), not
through MCP.
"""

from __future__ import annotations

import asyncio
import logging
from typing import Any

from ..adapters.base import Target
from ..adapters.osc_target import OscTarget
from .config import Config
from .scene import Scene

log = logging.getLogger(__name__)


class Conductor:
    def __init__(self, config: Config, targets: list[Target] | None = None):
        self.config = config
        self.scene = Scene()
        self.cues: dict[str, dict[str, Any]] = dict(config.cues)
        self.targets: dict[str, Target] = {}
        if targets is None:
            targets = [
                OscTarget(t.name, t.host, t.port, t.notes) for t in config.targets if t.enabled
            ]
        for t in targets:
            self.targets[t.name] = t
        self._ramps: dict[str, asyncio.Task] = {}

    # --- sending -------------------------------------------------------

    def address(self, *parts: str) -> str:
        return "/".join([self.config.osc_prefix, *parts])

    def broadcast(self, address: str, *args: Any, only: list[str] | None = None) -> list[str]:
        sent = []
        for name, target in self.targets.items():
            if only and name not in only:
                continue
            try:
                target.send(address, *args)
                sent.append(name)
            except OSError as e:  # one dead target must not stop the show
                log.warning("send to %s failed: %s", name, e)
        return sent

    def publish(self, changed: dict[str, Any]) -> None:
        """Turn scene changes into OSC messages, one address per field."""
        for name, value in changed.items():
            if name == "macros":
                for macro, v in value.items():
                    self.broadcast(self.address("macro", macro), float(v))
            elif name == "palette":
                self.broadcast(self.address("scene", "palette"), *value)
            else:
                self.broadcast(self.address("scene", name), value)

    # --- scene ---------------------------------------------------------

    def set_scene(self, **changes: Any) -> dict[str, Any]:
        # A direct set wins over a running ramp on the same field.
        for name, value in changes.items():
            if value is None:
                continue
            if name == "macros":
                for macro in value:
                    self.cancel_ramp(f"macro:{macro}")
            else:
                self.cancel_ramp(name)
        changed = self.scene.update(**changes)
        self.publish(changed)
        return changed

    def resend_all(self) -> None:
        """Push the whole scene, e.g. after a program restarts and lost state."""
        self.publish(self.scene.to_dict())

    # --- cues ----------------------------------------------------------

    def save_cue(self, name: str) -> dict[str, Any]:
        self.cues[name] = self.scene.to_dict()
        return self.cues[name]

    def recall_cue(self, name: str) -> dict[str, Any]:
        if name not in self.cues:
            raise KeyError(f"No cue named '{name}'. Known: {sorted(self.cues)}")
        changed = self.set_scene(**self.cues[name])
        self.broadcast(self.address("cue"), name)
        return changed

    # --- ramps ---------------------------------------------------------

    def _read(self, param: str) -> float:
        if param.startswith("macro:"):
            return self.scene.macros.get(param.split(":", 1)[1], 0.0)
        value = getattr(self.scene, param, None)
        if not isinstance(value, (int, float)):
            raise ValueError(f"'{param}' is not a numeric scene field (use energy, bpm or macro:<name>)")
        return float(value)

    def _write(self, param: str, value: float) -> None:
        if param.startswith("macro:"):
            changed = self.scene.update(macros={param.split(":", 1)[1]: value})
        else:
            changed = self.scene.update(**{param: value})
        self.publish(changed)

    def start_ramp(self, param: str, to: float, seconds: float) -> None:
        start = self._read(param)  # validates param before scheduling anything
        self.cancel_ramp(param)
        self._ramps[param] = asyncio.create_task(self._run_ramp(param, start, float(to), seconds))

    async def _run_ramp(self, param: str, start: float, end: float, seconds: float) -> None:
        steps = max(1, int(seconds * self.config.ramp_rate_hz))
        try:
            for i in range(1, steps + 1):
                self._write(param, start + (end - start) * i / steps)
                if i < steps:
                    await asyncio.sleep(seconds / steps)
        finally:
            if self._ramps.get(param) is asyncio.current_task():
                del self._ramps[param]

    def cancel_ramp(self, param: str) -> None:
        task = self._ramps.pop(param, None)
        if task:
            task.cancel()

    def active_ramps(self) -> list[str]:
        return sorted(self._ramps)

    def close(self) -> None:
        for task in self._ramps.values():
            task.cancel()
        for target in self.targets.values():
            target.close()
