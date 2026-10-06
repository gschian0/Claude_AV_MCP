"""av-conductor: an MCP server that keeps audio and visuals on the same page.

Run alongside the upstream servers:
  - ableton-mcp  (edits the Live set: tracks, clips, devices)
  - MaxMSP-MCP   (edits Max patches: objects, connections)
  - av-conductor (this: shared scene state → OSC to every program)

Claude composes in Live/Max with the first two, and steers the *performance*
with this one.
"""

from __future__ import annotations

import json
import logging
from collections.abc import AsyncIterator
from contextlib import asynccontextmanager
from typing import Any

from mcp.server.fastmcp import Context, FastMCP

from .core.conductor import Conductor
from .core.config import config_path, load_config

logging.basicConfig(level=logging.INFO, format="%(asctime)s %(name)s %(levelname)s %(message)s")
log = logging.getLogger("av-conductor")


@asynccontextmanager
async def lifespan(_: FastMCP) -> AsyncIterator[Conductor]:
    path = config_path()
    conductor = Conductor(load_config(path))
    log.info("Loaded %s; targets: %s", path, list(conductor.targets))
    try:
        yield conductor
    finally:
        conductor.close()


mcp = FastMCP("av-conductor", lifespan=lifespan)


def _conductor(ctx: Context) -> Conductor:
    return ctx.request_context.lifespan_context


def _json(data: Any) -> str:
    return json.dumps(data, indent=2)


@mcp.tool()
def get_state(ctx: Context) -> str:
    """Current scene, saved cue names, targets, and running ramps."""
    c = _conductor(ctx)
    return _json(
        {
            "scene": c.scene.to_dict(),
            "cues": sorted(c.cues),
            "targets": [t.describe() for t in c.targets.values()],
            "active_ramps": c.active_ramps(),
        }
    )


@mcp.tool()
def set_scene(
    ctx: Context,
    bpm: float | None = None,
    energy: float | None = None,
    key: str | None = None,
    section: str | None = None,
    palette: list[str] | None = None,
    macros: dict[str, float] | None = None,
) -> str:
    """Change the shared scene and broadcast it to every target over OSC.

    energy and macros are 0..1. palette is a list of hex colors.
    Only fields you pass are changed. Note: bpm here is informational for the
    visuals; to change Live's tempo also call ableton-mcp's set_tempo (or use
    Ableton Link so everything follows Live).
    """
    changed = _conductor(ctx).set_scene(
        bpm=bpm, energy=energy, key=key, section=section, palette=palette, macros=macros
    )
    return _json({"changed": changed})


@mcp.tool()
async def ramp(ctx: Context, param: str, to: float, seconds: float) -> str:
    """Glide a numeric value over time (a build, a fade). Returns immediately.

    param: "energy", "bpm", or "macro:<name>" (e.g. "macro:brightness").
    """
    if seconds <= 0:
        return _json({"error": "seconds must be > 0; use set_scene for an instant change"})
    _conductor(ctx).start_ramp(param, to, seconds)
    return _json({"ramping": param, "to": to, "seconds": seconds})


@mcp.tool()
def save_cue(ctx: Context, name: str) -> str:
    """Snapshot the current scene under a name (kept until the server restarts)."""
    return _json({"saved": name, "scene": _conductor(ctx).save_cue(name)})


@mcp.tool()
def recall_cue(ctx: Context, name: str) -> str:
    """Jump to a saved cue (from config/av.toml or save_cue) and send /av/cue <name>."""
    c = _conductor(ctx)
    try:
        return _json({"recalled": name, "changed": c.recall_cue(name)})
    except KeyError as e:
        return _json({"error": str(e)})


@mcp.tool()
def send_osc(ctx: Context, address: str, args: list[float | int | str] | None = None,
             targets: list[str] | None = None) -> str:
    """Escape hatch: send a raw OSC message, to all targets or the named ones.

    Use for program-specific messages the scene model doesn't cover
    (e.g. "/visuals/layer/2/opacity" 0.5).
    """
    if not address.startswith("/"):
        return _json({"error": "OSC addresses start with '/'"})
    sent = _conductor(ctx).broadcast(address, *(args or []), only=targets)
    return _json({"sent_to": sent})


@mcp.tool()
def resend_all(ctx: Context) -> str:
    """Re-broadcast the whole scene, e.g. after restarting Max or the visual engine."""
    c = _conductor(ctx)
    c.resend_all()
    return _json({"resent": c.scene.to_dict()})


def main() -> None:
    mcp.run()


if __name__ == "__main__":
    main()
