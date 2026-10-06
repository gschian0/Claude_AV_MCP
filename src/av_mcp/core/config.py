"""Load config/av.toml (or the example) into plain dataclasses."""

from __future__ import annotations

import os
import tomllib
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

REPO_ROOT = Path(__file__).resolve().parents[3]


@dataclass
class TargetConfig:
    name: str
    host: str
    port: int
    enabled: bool = True
    notes: str = ""


@dataclass
class Config:
    osc_prefix: str = "/av"
    ramp_rate_hz: float = 30.0
    targets: list[TargetConfig] = field(default_factory=list)
    cues: dict[str, dict[str, Any]] = field(default_factory=dict)


def config_path() -> Path:
    if env := os.environ.get("AV_MCP_CONFIG"):
        return Path(env).expanduser()
    local = REPO_ROOT / "config" / "av.toml"
    return local if local.exists() else REPO_ROOT / "config" / "av.example.toml"


def load_config(path: Path | None = None) -> Config:
    path = path or config_path()
    with open(path, "rb") as f:
        raw = tomllib.load(f)

    conductor = raw.get("conductor", {})
    targets = [
        TargetConfig(
            name=name,
            host=t.get("host", "127.0.0.1"),
            port=int(t["port"]),
            enabled=bool(t.get("enabled", True)),
            notes=t.get("notes", ""),
        )
        for name, t in raw.get("targets", {}).items()
    ]
    return Config(
        osc_prefix=conductor.get("osc_prefix", "/av").rstrip("/"),
        ramp_rate_hz=float(conductor.get("ramp_rate_hz", 30)),
        targets=targets,
        cues=raw.get("cues", {}),
    )
