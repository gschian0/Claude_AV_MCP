"""start_symphony.maxpat — one click opens the whole Digital Symphony and starts it.
Opens digital_symphony.maxpat + granular_side.maxpat, kicks the visuals renderer (off -> on once the
windows exist, because render switched on at load can fire before the GL window is ready), then
recalls the startup preset (the starred tile) in the snapshots panel."""
import sys
from maxgen import Patch, check
out = sys.argv[1]
p = Patch([60.0, 60.0, 360.0, 200.0])
p.present = True
p.comment("DIGITAL SYMPHONY — opening the set, starting the visuals, recalling the starred preset", 20, 10, 320)
lb = p.obj("loadbang", 20, 60, 1, 1, ["bang"])
pc = p.obj("pcontrol", 20, 200, 1, 1)
ld = p.msg("load digital_symphony.maxpat, load granular_side.maxpat", 20, 90, 320); p.wire(ld, 0, pc, 0)
tb = p.obj("t b b b", 20, 120, 1, 3, ["bang", "bang", "bang"]); p.wire(lb, 0, tb, 0); p.wire(tb, 2, ld, 0)
# render kick: off, then on 300 ms later, after everything has loaded
dk = p.obj("delay 2500", 200, 150, 2, 1, ["bang"]); p.wire(tb, 1, dk, 0)
off = p.msg("0", 200, 176); p.wire(dk, 0, off, 0)
don = p.obj("delay 300", 260, 176, 2, 1, ["bang"]); p.wire(dk, 0, don, 0)
one = p.msg("1", 260, 202); p.wire(don, 0, one, 0)
sr = p.obj("s av_render", 200, 230, 1, 0); p.wire(off, 0, sr, 0); p.wire(one, 0, sr, 0)
# startup preset after loadbangs / SAVED STATE / audio-on have settled
db = p.obj("delay 3500", 380, 150, 2, 1, ["bang"]); p.wire(tb, 0, db, 0)
bt = p.msg("boot", 380, 176); p.wire(db, 0, bt, 0)
p.wire(bt, 0, p.obj("s av_snapshot_cmd", 380, 202, 1, 0), 0)
p.comment("again:", 20, 260, 50)
re_ = p.box("button", 70, 258, 24, 24, 1, 1, ["bang"]); p.wire(re_, 0, tb, 0)
p.comment("kick visuals:", 120, 260, 90)
kb = p.box("button", 210, 258, 24, 24, 1, 1, ["bang"]); p.wire(kb, 0, dk, 0)
p.dump(f"{out}/start_symphony.maxpat"); check(f"{out}/start_symphony.maxpat")
