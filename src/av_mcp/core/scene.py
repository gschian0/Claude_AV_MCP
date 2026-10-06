"""The shared scene: the small set of musical/visual facts every program agrees on.

Ableton, Max, Pd and the visual engine all read from this one model. Keep it
semantic (energy, section, palette) rather than program-specific (a Live device
parameter, a Max object varname) — program-specific edits go through the
upstream MCP servers instead.
"""

from __future__ import annotations

from dataclasses import asdict, dataclass, field, fields
from typing import Any


@dataclass
class Scene:
    bpm: float = 120.0
    energy: float = 0.5  # 0..1, the main macro every target maps to its own parameters
    key: str = "C minor"
    section: str = "idle"
    palette: list[str] = field(default_factory=lambda: ["#000000", "#ffffff"])
    # Free-form named macros (0..1), e.g. "brightness", "chaos", "density".
    macros: dict[str, float] = field(default_factory=dict)

    def update(self, **changes: Any) -> dict[str, Any]:
        """Apply changes, validate them, and return only what actually changed."""
        known = {f.name for f in fields(self)}
        unknown = set(changes) - known
        if unknown:
            raise ValueError(f"Unknown scene fields: {sorted(unknown)}")

        changed: dict[str, Any] = {}
        for name, value in changes.items():
            if value is None:
                continue
            value = _validate(name, value)
            if name == "macros":
                merged = {**self.macros, **value}
                if merged != self.macros:
                    self.macros = merged
                    changed["macros"] = value
                continue
            if getattr(self, name) != value:
                setattr(self, name, value)
                changed[name] = value
        return changed

    def to_dict(self) -> dict[str, Any]:
        return asdict(self)


def _validate(name: str, value: Any) -> Any:
    if name == "bpm":
        value = float(value)
        if not 20.0 <= value <= 999.0:
            raise ValueError("bpm must be between 20 and 999")
    elif name == "energy":
        value = _unit(value, "energy")
    elif name == "palette":
        value = [str(c) for c in value]
        if not value:
            raise ValueError("palette needs at least one color")
    elif name == "macros":
        value = {str(k): _unit(v, f"macro '{k}'") for k, v in dict(value).items()}
    elif name in ("key", "section"):
        value = str(value)
    return value


def _unit(value: Any, label: str) -> float:
    value = float(value)
    if not 0.0 <= value <= 1.0:
        raise ValueError(f"{label} must be between 0 and 1")
    return value
