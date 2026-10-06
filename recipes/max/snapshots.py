"""snapshots.maxpat — LAUNCH tiles + full snapshots of every open instrument (av_snapshots.js).
8 picture tiles: click one to launch that preset (sound + visuals; on the bar if chosen). 'store n' saves the
current state into tile n and grabs a frame of the visuals as its picture; 'star n' makes tile n the startup
preset (start_symphony.maxpat opens with it). Named snapshots, recall scope and on-the-bar stay below.
Files: patches/max/snapshots/slot<n>.json/.png, startup.json/.png, <name>.json.
Bake one into the recipes' startup state: python3 recipes/max/bake_snapshot.py <name> && python3 recipes/max/build_all.py"""
import sys
from maxgen import Patch, check
out = sys.argv[1]
INSTR = ["conductor", "jongly_chopper", "jongly_granular", "sine_test", "bassline", "jungle_bass", "glass_bells",
         "vocal_chops", "gen_feedback"]
TW, TH, GAP = 96, 54, 8
p = Patch([100.0, 100.0, 460.0, 440.0])
p.present = True
p.comment("LAUNCH — click a tile to launch its preset (sound + visuals). store = save now into the tile (+ picture) · star = open with it", 20, 8, 430)
js = p.obj("js av_snapshots.js", 500, 380, 1, 3)
rcl = p.obj("t l", 500, 120, 1, 1)
trt = p.obj("route 1 2 3 4 5 6 7 8", 500, 420, 9, 9)
p.wire(js, 2, trt, 0)
for k in range(8):
    n = k + 1
    x = 20 + (k % 4) * (TW + GAP); y = 40 + (k // 4) * (TH + 40)
    pic = p.box("fpic", x, y, TW, TH, 1, 0, autofit=1)
    p.wire(trt, k, pic, 0)
    ub = p.box("ubutton", x, y, TW, TH, 1, 4, ["bang", "bang", "", "int"])
    p.comment(str(n), x + 2, y + 2, 20)
    go = p.msg(f"recall {n}", 600 + k * 10, 160 + k * 24); p.wire(ub, 0, go, 0); p.wire(go, 0, rcl, 0)
    st = p.msg(f"store {n}", x, y + TH + 4, 50); p.wire(st, 0, js, 0)
    sr = p.msg(f"star {n}", x + 54, y + TH + 4, 40); p.wire(sr, 0, js, 0)
yb = 40 + 2 * (TH + 40) + 6
p.comment("save as (type + Return)", 20, yb, 150)
te = p.box("textedit", 170, yb - 2, 150, 24, 1, 4, ["", "", "", ""])
rt = p.obj("route text", 500, 60, 2, 2); p.wire(te, 0, rt, 0)
ts = p.obj("tosymbol", 500, 86, 1, 1); p.wire(rt, 0, ts, 0); p.wire(rt, 1, ts, 0)
ps = p.obj("prepend save", 580, 86, 1, 1); p.wire(ts, 0, ps, 0); p.wire(ps, 0, js, 0)
p.comment("recall saved", 20, yb + 32, 100)
um = p.box("umenu", 120, yb + 30, 200, 22, 1, 3, ["int", "", ""])
pl = p.obj("prepend load", 580, 360, 1, 1); p.wire(um, 1, pl, 0); p.wire(pl, 0, rcl, 0)
p.wire(js, 1, um, 0)
p.comment("scope", 20, yb + 64, 60)
sc = p.box("umenu", 120, yb + 62, 200, 22, 1, 3, ["int", "", ""], items=["all", ","] + sum([[n, ","] for n in INSTR], [])[:-1])
psc = p.obj("prepend scope", 680, 360, 1, 1); p.wire(sc, 1, psc, 0); p.wire(psc, 0, js, 0)
p.comment("on the bar", 340, yb + 32, 80)
otb = p.box("toggle", 340, yb + 54, 22, 22, 1, 1, ["int"])
pl1 = p.obj("+ 1", 760, 120, 2, 1, ["int"]); p.wire(otb, 0, pl1, 0)
gt = p.obj("gate 2 1", 500, 150, 2, 2, ["", ""]); p.wire(pl1, 0, gt, 0); p.wire(rcl, 0, gt, 1)
p.wire(gt, 0, js, 0)
zr = p.obj("zl reg", 500, 240, 2, 2, ["", ""]); p.wire(gt, 1, zr, 1)
rs = p.obj("r jongly_step", 760, 200, 0, 1); s0 = p.obj("sel 0", 760, 226, 2, 2, ["bang", ""]); p.wire(rs, 0, s0, 0)
tbb = p.obj("t b b", 760, 252, 1, 2, ["bang", "bang"]); p.wire(s0, 0, tbb, 0)
p.wire(tbb, 1, zr, 0); p.wire(zr, 0, js, 0)
zc = p.msg("zlclear", 840, 278); p.wire(tbb, 0, zc, 0); p.wire(zc, 0, zr, 0)
stt = p.comment("—", 20, yb + 96, 420); p.wire(js, 0, stt, 0)
# remote control: launch / store a tile from anywhere (conductor, MIDI), and launcher commands (boot)
p.wire(p.obj("r av_launch", 900, 60, 0, 1), 0, (pr_ := p.obj("prepend recall", 900, 86, 1, 1)), 0); p.wire(pr_, 0, rcl, 0)
p.wire(p.obj("r av_store", 1020, 60, 0, 1), 0, (ps_ := p.obj("prepend store", 1020, 86, 1, 1)), 0); p.wire(ps_, 0, js, 0)
p.wire(p.obj("r av_snapshot_cmd", 1140, 60, 0, 1), 0, js, 0)
lb = p.obj("loadbang", 760, 60, 1, 1, ["bang"]); dl = p.obj("delay 800", 760, 86, 2, 1, ["bang"]); p.wire(lb, 0, dl, 0)
tb = p.obj("t b", 840, 86, 1, 1, ["bang"]); p.wire(dl, 0, tb, 0)
li = p.msg("list", 840, 112); p.wire(tb, 0, li, 0); p.wire(li, 0, js, 0)
p.dump(f"{out}/snapshots.maxpat"); check(f"{out}/snapshots.maxpat")
