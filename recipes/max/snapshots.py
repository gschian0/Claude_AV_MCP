"""snapshots.maxpat — save / recall full snapshots of every open instrument (av_snapshots.js).
8 quick slots, named snapshots, recall scope (all or one instrument), and 'on the bar' recall
(waits for jongly step 0). Snapshots live in patches/max/snapshots/*.json; bake one into the
startup state with  python3 recipes/max/bake_snapshot.py <name> && python3 recipes/max/build_all.py"""
import sys
from maxgen import Patch, check
out = sys.argv[1]
INSTR = ["conductor", "jongly_chopper", "jongly_granular", "sine_test", "bassline", "jungle_bass", "glass_bells",
         "vocal_chops", "gen_feedback"]
p = Patch([100.0, 100.0, 460.0, 330.0])
p.present = True
p.comment("SNAPSHOTS — every control of every open instrument. STORE / RECALL a slot, or type a name + Return to save it.", 20, 8, 380)
js = p.obj("js av_snapshots.js", 500, 300, 1, 2)
p.comment("STORE", 20, 50, 60); p.comment("RECALL", 20, 76, 60)
rcl = p.obj("t l", 500, 120, 1, 1)
for k in range(8):
    s = p.msg(f"store {k + 1}", 80 + k * 46, 50, 42); p.wire(s, 0, js, 0)
    r = p.msg(f"recall {k + 1}", 80 + k * 46, 76, 42); p.wire(r, 0, rcl, 0)
p.comment("save as (type + Return)", 20, 110, 150)
te = p.box("textedit", 170, 108, 150, 24, 1, 4, ["", "", "", ""])
rt = p.obj("route text", 500, 60, 2, 2); p.wire(te, 0, rt, 0)
ts = p.obj("tosymbol", 500, 86, 1, 1); p.wire(rt, 0, ts, 0); p.wire(rt, 1, ts, 0)
ps = p.obj("prepend save", 580, 86, 1, 1); p.wire(ts, 0, ps, 0); p.wire(ps, 0, js, 0)
p.comment("recall saved", 20, 142, 100)
um = p.box("umenu", 120, 140, 200, 22, 1, 3, ["int", "", ""])
pl = p.obj("prepend load", 580, 146, 1, 1); p.wire(um, 1, pl, 0); p.wire(pl, 0, rcl, 0)
p.wire(js, 1, um, 0)
p.comment("scope", 20, 174, 60)
sc = p.box("umenu", 120, 172, 200, 22, 1, 3, ["int", "", ""], items=["all", ","] + sum([[n, ","] for n in INSTR], [])[:-1])
psc = p.obj("prepend scope", 580, 178, 1, 1); p.wire(sc, 1, psc, 0); p.wire(psc, 0, js, 0)
p.comment("on the bar", 20, 206, 80)
otb = p.box("toggle", 120, 204, 22, 22, 1, 1, ["int"])
pl1 = p.obj("+ 1", 650, 120, 2, 1, ["int"]); p.wire(otb, 0, pl1, 0)
gt = p.obj("gate 2 1", 500, 150, 2, 2, ["", ""]); p.wire(pl1, 0, gt, 0); p.wire(rcl, 0, gt, 1)
p.wire(gt, 0, js, 0)
zr = p.obj("zl reg", 500, 200, 2, 2, ["", ""]); p.wire(gt, 1, zr, 1)
rs = p.obj("r jongly_step", 650, 200, 0, 1); s0 = p.obj("sel 0", 650, 226, 2, 2, ["bang", ""]); p.wire(rs, 0, s0, 0)
tbb = p.obj("t b b", 650, 252, 1, 2, ["bang", "bang"]); p.wire(s0, 0, tbb, 0)
p.wire(tbb, 1, zr, 0); p.wire(zr, 0, js, 0)
zc = p.msg("zlclear", 720, 278); p.wire(tbb, 0, zc, 0); p.wire(zc, 0, zr, 0)
st = p.comment("—", 20, 240, 380); p.wire(js, 0, st, 0)
lb = p.obj("loadbang", 760, 60, 1, 1, ["bang"]); dl = p.obj("delay 800", 760, 86, 2, 1, ["bang"]); p.wire(lb, 0, dl, 0)
tb = p.obj("t b", 760, 112, 1, 1, ["bang"]); p.wire(dl, 0, tb, 0)   # [t b] keeps the "list" refresh off the panel
li = p.msg("list", 760, 138); p.wire(tb, 0, li, 0); p.wire(li, 0, js, 0)
p.dump(f"{out}/snapshots.maxpat"); check(f"{out}/snapshots.maxpat")
