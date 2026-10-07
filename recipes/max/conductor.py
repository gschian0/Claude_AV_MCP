"""conductor.maxpat — one panel that runs the whole ensemble through sends:
key (av_root), scale (av_scale), re-rolls, mix levels (av_level_*), drone evolve (av_evolve),
drums (patterns, auto patterns/sweeps, chaos) and visuals (render, fullscreen, cubes, decay)."""
import sys
from maxgen import Patch, check
from ensemble import CHOP_PRESETS
out = sys.argv[1]

p = Patch([60.0, 60.0, 980.0, 640.0])
p.present = True
p.comment("CONDUCTOR — one place to run everything: key, scale, new lines, mix, drone evolve, drums, visuals, audio. Basslines snap to the scale, so changing it keeps everything in key.", 20, 8, 920)

# KEY: note buttons (bass-register MIDI notes) → number → av_root; incoming av_root just updates the number
p.comment("KEY", 20, 50, 40)
kn = p.box("number", 20, 74, 50, 22, 1, 2, ["", "bang"], minimum=12, maximum=60)
sk = p.obj("s av_root", 20, 100, 1, 0); p.wire(kn, 0, sk, 0)
rk = p.obj("r av_root", 80, 74, 0, 1); ks = p.obj("prepend set", 80, 100, 1, 1); p.wire(rk, 0, ks, 0); p.wire(ks, 0, kn, 0)
p.wire(p.obj("loadmess set 33", 160, 74, 1, 1), 0, kn, 0)
for k, (name, midi) in enumerate([("A", 33), ("B♭", 34), ("B", 35), ("C", 36), ("D", 38), ("E", 40), ("F", 41), ("G", 43)]):
    p.comment(name, 20 + k*40, 130, 30); m = p.msg(str(midi), 20 + k*40, 150, 34); p.wire(m, 0, kn, 0)

# SCALE: same lists as the bassline (root + fifth weighted); broadcast only, no re-roll
p.comment("SCALE", 20, 190, 60)
SCALES = [("minor", "0 2 3 5 7 8 10 12 14 15 17 19 20 22 24"), ("dorian", "0 2 3 5 7 9 10 12 14 15 17 19 21 22 24"),
          ("phrygian", "0 1 3 5 7 8 10 12 13 15 17 19 20 22 24"), ("harm. minor", "0 2 3 5 7 8 11 12 14 15 17 19 20 23 24"),
          ("major", "0 2 4 5 7 9 11 12 14 16 17 19 21 23 24"), ("minor pent.", "0 3 5 7 10 12 15 17 19 22 24"),
          ("blues", "0 3 5 6 7 10 12 15 17 18 19 22 24")]
ss = p.obj("s av_scale", 20, 330, 1, 0)
for k, (name, notes) in enumerate(SCALES):
    x, y = 20 + (k % 4)*95, 214 + (k // 4)*50
    p.comment(name, x, y, 90); m = p.msg("0 0 7 12 " + notes, x, y + 20, 88); p.wire(m, 0, ss, 0)

# FOLLOW LIVE KEY: AV Bridge.amxd (on any track in Live) sends Live's Key/Scale over UDP 7474 -> av_root / av_scale
p.comment("FOLLOW LIVE KEY (AV Bridge in Live)", 230, 76, 180)
flk = p.box("toggle", 200, 74, 22, 22, 1, 1, ["int"])
ur = p.obj("udpreceive 7474", 1100, 300, 1, 1)
ug = p.obj("gate 1", 1100, 326, 2, 1); p.wire(flk, 0, ug, 0); p.wire(ur, 0, ug, 1)
rte = p.obj("route root_note scale_intervals", 1100, 352, 1, 3, ["", "", ""]); p.wire(ug, 0, rte, 0)
rch = p.obj("change", 1100, 378, 1, 3, ["", "int", "int"]); p.wire(rte, 0, rch, 0)
rex = p.obj("expr 33 + (($i1 + 3) % 12)", 1100, 404, 1, 1); p.wire(rch, 0, rex, 0)   # Live root 0-11 (C=0) -> A1..G#2
p.wire(rex, 0, kn, 0)
zch = p.obj("zl.change", 1260, 378, 1, 2, ["", ""]); p.wire(rte, 1, zch, 0)
tll = p.obj("t l l", 1260, 404, 1, 2, ["", ""]); p.wire(zch, 0, tll, 0)
vx = p.obj("vexpr $i1 + 12", 1340, 430, 1, 1); p.wire(tll, 1, vx, 0)
zj = p.obj("zl join", 1260, 456, 2, 2, ["", ""]); p.wire(vx, 0, zj, 1); p.wire(tll, 0, zj, 0)
ap = p.obj("append 24", 1260, 482, 1, 1); p.wire(zj, 0, ap, 0)
pp_ = p.obj("prepend 0 0 7 12", 1260, 508, 1, 1); p.wire(ap, 0, pp_, 0); p.wire(pp_, 0, ss, 0)
# on toggle-on, forget the last values so the current Live key is applied at the next update
clr = p.obj("sel 1", 1400, 300, 2, 2, ["bang", ""]); p.wire(flk, 0, clr, 0)
cm = p.msg("clear", 1400, 326); p.wire(clr, 0, cm, 0); p.wire(cm, 0, zch, 0)
cm2 = p.msg("set -1", 1460, 326); p.wire(clr, 0, cm2, 0); p.wire(cm2, 0, rch, 0)

# NEW LINES: re-roll the basslines in the current scale
p.comment("NEW LINES", 420, 50, 90)
for k, (label, send) in enumerate([("bassline", "av_reroll_bass"), ("jungle", "av_reroll_jungle")]):
    b = p.box("button", 420, 74 + k*34, 26, 26, 1, 1, ["bang"]); p.comment(label, 450, 77 + k*34, 70)
    p.wire(b, 0, p.obj(f"s {send}", 520, 74 + k*34, 1, 0), 0)

# MIX: one fader per instrument; it takes over that instrument's level when moved
p.comment("MIX (moves take over each instrument's level)", 600, 50, 340)
p.comment("bass pocket (0-1)", 600, 262, 120)
pk = p.box("flonum", 720, 262, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=1.0)
p.wire(p.obj("loadmess set 0.5", 780, 262, 1, 1), 0, pk, 0); p.wire(pk, 0, p.obj("s av_pocket", 720, 600, 1, 0), 0)
for k, (label, name, init) in enumerate([("drums", "chopper", 0.5), ("tampura", "tampura", 0.2), ("acid", "bassline", 0.5),
                                         ("jungle", "jungle", 0.45), ("bells", "bells", 0.35), ("vox", "vox", 0.4), ("gran", "granular", 0.35)]):
    x = 600 + k*64
    sl = p.box("slider", x, 74, 26, 140, 1, 1, [""], floatoutput=1, size=1.0, min=0.0)
    p.wire(p.obj(f"loadmess set {init}", x, 330, 1, 1), 0, sl, 0)
    p.comment(label, x - 4, 218, 60)
    p.wire(sl, 0, p.obj(f"s av_level_{name}", x, 360, 1, 0), 0)

# DRONE EVOLVE + AUDIO
p.comment("drone evolve", 420, 150, 100)
ev = p.box("toggle", 420, 172, 24, 24, 1, 1, ["int"]); p.wire(p.obj("loadmess set 1", 480, 172, 1, 1), 0, ev, 0)
p.wire(ev, 0, p.obj("s av_evolve", 420, 360, 1, 0), 0)
p.comment("bass evolve", 520, 150, 100)
bev = p.box("toggle", 520, 172, 24, 24, 1, 1, ["int"]); p.wire(p.obj("loadmess set 1", 560, 172, 1, 1), 0, bev, 0)
p.wire(bev, 0, p.obj("s av_bass_evolve", 520, 360, 1, 0), 0)
p.comment("evolve presets (acid + jungle)", 420, 290, 170)
sep = p.obj("s av_bass_evolve_preset", 420, 380, 1, 0); sej = p.obj("s av_jungle_evolve_preset", 560, 380, 1, 0)
for k, (name, v) in enumerate([("steady", "4 1"), ("drift", "2 3"), ("restless", "1 5"), ("wild", "1 8")]):
    p.comment(name, 420 + (k % 2)*85, 312 + (k // 2)*44, 80); m = p.msg(v, 420 + (k % 2)*85, 332 + (k // 2)*44, 40); p.wire(m, 0, sep, 0); p.wire(m, 0, sej, 0)
p.comment("jungle evolve", 520, 214, 100)
jev = p.box("toggle", 520, 236, 24, 24, 1, 1, ["int"]); p.wire(p.obj("loadmess set 1", 560, 236, 1, 1), 0, jev, 0)
p.wire(jev, 0, p.obj("s av_jungle_evolve", 660, 360, 1, 0), 0)
p.comment("audio on/off", 420, 214, 100)
dac = p.box("ezdac~", 420, 236, 45, 45, 2, 0)
# "this should just play": switch audio on shortly after the set loads
p.wire(p.obj("loadbang", 760, 380, 1, 1, ["bang"]), 0, adl := p.obj("delay 1500", 840, 380, 2, 1, ["bang"]), 0)
aon = p.msg("1", 920, 380); p.wire(adl, 0, aon, 0); p.wire(aon, 0, dac, 0)
# DRUMS: pattern buttons (index → the chopper's pattern picker), auto switches, chaos, sweep now
yd = 400
p.comment("DRUMS — pattern", 20, yd, 140)
sd = p.obj("s av_drum_pattern", 20, 600, 1, 0)
for k, (name, _, _) in enumerate(CHOP_PRESETS):
    x, y = 20 + (k % 6)*92, yd + 22 + (k // 6)*44
    p.comment(name, x, y, 90); m = p.msg(str(k), x, y + 20, 30); p.wire(m, 0, sd, 0)
for k, (label, send) in enumerate([("auto patterns", "av_auto_patterns"), ("auto sweeps", "av_auto_sweeps")]):
    x = 600 + k*120
    p.comment(label, x, yd, 110); t = p.box("toggle", x, yd + 22, 24, 24, 1, 1, ["int"])
    p.wire(p.obj("loadmess set 1", x, 620, 1, 1), 0, t, 0); p.wire(t, 0, p.obj(f"s {send}", x + 40, 620, 1, 0), 0)
p.comment("sweep now", 840, yd, 80); b = p.box("button", 840, yd + 22, 24, 24, 1, 1, ["bang"])
p.wire(b, 0, p.obj("s av_sweep_now", 880, 620, 1, 0), 0)
p.comment("chaos (0-1)", 600, yd + 56, 90)
ch = p.box("flonum", 690, yd + 56, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=1.0)
p.wire(p.obj("loadmess set 0.2", 750, 620, 1, 1), 0, ch, 0); p.wire(ch, 0, p.obj("s av_chaos", 690, 600, 1, 0), 0)

# VISUALS: render / fullscreen / cubes, and decay presets for the feedback
yv = 520
p.comment("VISUALS", 600, yv - 26, 80)
for k, (label, send, init) in enumerate([("render", "av_render", 1), ("fullscreen", "av_fullscreen", 0), ("cubes", "av_cubes", 1)]):
    x = 600 + k*90
    p.comment(label, x, yv, 85); t = p.box("toggle", x, yv + 22, 24, 24, 1, 1, ["int"])
    p.wire(p.obj(f"loadmess set {init}", x, 640, 1, 1), 0, t, 0); p.wire(t, 0, p.obj(f"s {send}", x + 40, 640, 1, 0), 0)
sf = p.obj("s av_fb", 860, 600, 1, 0)
p.comment("trails", 600, yv + 54, 60)
for k, m_ in enumerate(["decay 0.9", "decay 0.985", "decay 1."]):
    m = p.msg(m_, 650 + k*90, yv + 54, 84); p.wire(m, 0, sf, 0)
p.dump(f"{out}/conductor.maxpat"); check(f"{out}/conductor.maxpat")
