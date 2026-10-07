"""AV Bridge.amxd — a Max for Live audio effect: drop it on any track in Live. It passes audio straight through
and, once a second, reads Live 12's Key/Scale (root_note, scale_intervals) and sends them over UDP to
127.0.0.1:7474, where the conductor (FOLLOW LIVE KEY) turns them into av_root / av_scale for the Max set."""
import sys, json, struct, pathlib
from maxgen import Patch
out = sys.argv[1]
p = Patch([60.0, 60.0, 520.0, 300.0])
p.comment("AV BRIDGE — sends Live's Key + Scale to the Digital Symphony in Max (UDP 7474). Audio passes through.", 10, 6, 260)
pin = p.obj("plugin~ 1 2", 10, 230, 2, 2, ["signal", "signal"])
pout = p.obj("plugout~ 1 2", 10, 270, 2, 0)
p.wire(pin, 0, pout, 0); p.wire(pin, 1, pout, 1)
td = p.obj("live.thisdevice", 300, 20, 1, 3, ["bang", "int", "int"])
tb = p.obj("t b b", 300, 50, 1, 2, ["bang", "bang"]); p.wire(td, 0, tb, 0)
pth = p.msg("path live_set", 380, 80); p.wire(tb, 1, pth, 0)
lp = p.obj("live.path", 380, 110, 1, 3, ["", "", ""]); p.wire(pth, 0, lp, 0)
lo = p.obj("live.object", 300, 170, 2, 1, [""]); p.wire(lp, 0, lo, 1)
on1 = p.msg("1", 300, 80); p.wire(tb, 0, on1, 0)
met = p.obj("metro 1000", 300, 110, 2, 1, ["bang"]); p.wire(on1, 0, met, 0)
tg = p.obj("t b b", 300, 136, 1, 2, ["bang", "bang"]); p.wire(met, 0, tg, 0)
g1 = p.msg("get root_note", 300, 150); g2 = p.msg("get scale_intervals", 400, 150)
p.wire(tg, 1, g1, 0); p.wire(tg, 0, g2, 0); p.wire(g1, 0, lo, 0); p.wire(g2, 0, lo, 0)
us = p.obj("udpsend 127.0.0.1 7474", 300, 200, 1, 0); p.wire(lo, 0, us, 0)
d = p.to_dict()
d.update({"openinpresentation": 0, "devicewidth": 280.0, "latency": 0, "autosave": 0,
          "project": {"version": 1, "creationdate": 3870000000, "modificationdate": 3870000000,
                      "viewrect": [0.0, 0.0, 300.0, 500.0], "autoorganize": 1, "hideprojectwindow": 1,
                      "showdependencies": 1, "autolocalize": 0, "contents": {"patchers": {}}, "layout": {},
                      "searchpath": {}, "detailsvisible": 0, "amxdtype": 1633771873, "readonly": 0,
                      "devpathtype": 0, "devpath": ".", "sortmode": 0}})
body = (json.dumps({"patcher": d}, indent=1) + "\n").encode() + b"\0"
dst = pathlib.Path(out) / "AV Bridge.amxd"
dst.write_bytes(b"ampf" + struct.pack("<I", 4) + b"aaaa" + b"meta" + struct.pack("<I", 4) + b"\0\0\0\0"
                + b"ptch" + struct.pack("<I", len(body)) + body)
print(f"{dst}: {len(p.boxes)} boxes, {len(p.lines)} cords")
