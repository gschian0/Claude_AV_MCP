from __future__ import annotations

from typing import Any

from pythonosc.udp_client import SimpleUDPClient

from .base import Target


class OscTarget(Target):
    def __init__(self, name: str, host: str, port: int, notes: str = ""):
        self.name = name
        self.host = host
        self.port = port
        self.notes = notes
        self._client = SimpleUDPClient(host, port)

    def send(self, address: str, *args: Any) -> None:
        self._client.send_message(address, list(args))

    def describe(self) -> dict[str, Any]:
        return {"name": self.name, "kind": "osc", "host": self.host, "port": self.port, "notes": self.notes}
