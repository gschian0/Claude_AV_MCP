"""A Target is anything that can receive scene messages.

Today every target speaks OSC over UDP, which Max, Pure Data, TouchDesigner,
Processing, openFrameworks, Godot, VDMX, Resolume and SuperCollider all
understand. If a visual engine needs something else (WebSocket for Hydra,
shared memory, MIDI), add a new Target subclass here — the conductor and
the MCP tools don't change.
"""

from __future__ import annotations

from abc import ABC, abstractmethod
from typing import Any


class Target(ABC):
    name: str

    @abstractmethod
    def send(self, address: str, *args: Any) -> None: ...

    def close(self) -> None:  # noqa: B027 - optional hook
        pass

    @abstractmethod
    def describe(self) -> dict[str, Any]: ...
