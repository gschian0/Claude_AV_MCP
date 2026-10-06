"""Print every OSC message arriving on a port. No Max, Pd or visuals needed.

    av-osc-monitor --port 7499
"""

from __future__ import annotations

import argparse
from typing import Any

from pythonosc.dispatcher import Dispatcher
from pythonosc.osc_server import BlockingOSCUDPServer


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--host", default="127.0.0.1")
    parser.add_argument("--port", type=int, default=7499)
    a = parser.parse_args()

    def show(address: str, *args: Any) -> None:
        print(address, *args, flush=True)

    dispatcher = Dispatcher()
    dispatcher.set_default_handler(show)
    print(f"Listening for OSC on {a.host}:{a.port} (Ctrl-C to stop)")
    try:
        BlockingOSCUDPServer((a.host, a.port), dispatcher).serve_forever()
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    main()
