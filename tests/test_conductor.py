import asyncio
import threading

from pythonosc.dispatcher import Dispatcher
from pythonosc.osc_server import ThreadingOSCUDPServer

from av_mcp.adapters.base import Target
from av_mcp.adapters.osc_target import OscTarget
from av_mcp.core.conductor import Conductor
from av_mcp.core.config import Config, load_config


class FakeTarget(Target):
    def __init__(self, name="fake"):
        self.name = name
        self.sent = []

    def send(self, address, *args):
        self.sent.append((address, *args))

    def describe(self):
        return {"name": self.name}


def make(cues=None):
    t = FakeTarget()
    return Conductor(Config(cues=cues or {}, ramp_rate_hz=100), targets=[t]), t


def test_set_scene_publishes_one_message_per_field():
    c, t = make()
    c.set_scene(energy=0.9, palette=["#f00", "#0f0"], macros={"chaos": 0.3})
    assert ("/av/scene/energy", 0.9) in t.sent
    assert ("/av/scene/palette", "#f00", "#0f0") in t.sent
    assert ("/av/macro/chaos", 0.3) in t.sent


def test_cues():
    c, t = make(cues={"drop": {"energy": 1.0, "section": "drop"}})
    c.recall_cue("drop")
    assert c.scene.section == "drop"
    assert t.sent[-1] == ("/av/cue", "drop")
    c.set_scene(energy=0.2)
    c.save_cue("calm")
    c.recall_cue("drop")
    c.recall_cue("calm")
    assert c.scene.energy == 0.2


async def test_ramp_reaches_target_and_set_cancels_it():
    c, t = make()
    c.start_ramp("macro:glow", 1.0, 0.1)
    await asyncio.sleep(0.3)
    assert c.scene.macros["glow"] == 1.0
    assert c.active_ramps() == []

    c.start_ramp("energy", 1.0, 5.0)
    await asyncio.sleep(0.05)
    c.set_scene(energy=0.0)
    await asyncio.sleep(0.05)
    assert c.scene.energy == 0.0
    assert c.active_ramps() == []


def test_example_config_loads():
    cfg = load_config()
    assert cfg.osc_prefix == "/av"
    assert {"max", "visuals"} <= {t.name for t in cfg.targets}


def test_real_osc_roundtrip():
    received = []
    d = Dispatcher()
    d.set_default_handler(lambda addr, *args: received.append((addr, *args)))
    server = ThreadingOSCUDPServer(("127.0.0.1", 0), d)
    server.timeout = 2
    thread = threading.Thread(target=server.handle_request, daemon=True)
    thread.start()

    port = server.server_address[1]
    c = Conductor(Config(), targets=[OscTarget("probe", "127.0.0.1", port)])
    c.set_scene(section="verse")
    thread.join(timeout=2)
    server.server_close()
    assert received == [("/av/scene/section", "verse")]
