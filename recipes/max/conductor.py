"""conductor.maxpat — one panel that runs the whole ensemble through sends:
key (av_root), scale (av_scale), re-rolls, mix levels (av_level_*), drone evolve (av_evolve)."""
import sys
from maxgen import Patch, check
out = sys.argv[1]

p = Patch([60.0, 60.0, 980.0, 420.0])
p.present = True
p.comment("CONDUCTOR — one place to run everything: key, scale, new lines, mix, drone evolve, audio. Basslines snap to the scale, so changing it keeps everything in key.", 20, 8, 920)

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

# NEW LINES: re-roll the basslines in the current scale
p.comment("NEW LINES", 420, 50, 90)
for k, (label, send) in enumerate([("bassline", "av_reroll_bass"), ("jungle", "av_reroll_jungle")]):
    b = p.box("button", 420, 74 + k*34, 26, 26, 1, 1, ["bang"]); p.comment(label, 450, 77 + k*34, 70)
    p.wire(b, 0, p.obj(f"s {send}", 520, 74 + k*34, 1, 0), 0)

# MIX: one fader per instrument; it takes over that instrument's level when moved
p.comment("MIX (moves take over each instrument's level)", 600, 50, 340)
for k, (label, name, init) in enumerate([("drums", "chopper", 0.5), ("tampura", "tampura", 0.165), ("acid", "bassline", 0.4),
                                         ("jungle", "jungle", 0.45), ("bells", "bells", 0.25)]):
    x = 600 + k*64
    sl = p.box("slider", x, 74, 26, 140, 1, 1, [""], floatoutput=1, size=1.0, min=0.0)
    p.wire(p.obj(f"loadmess set {init}", x, 330, 1, 1), 0, sl, 0)
    p.comment(label, x - 4, 218, 60)
    p.wire(sl, 0, p.obj(f"s av_level_{name}", x, 360, 1, 0), 0)

# DRONE EVOLVE + AUDIO
p.comment("drone evolve", 420, 150, 100)
ev = p.box("toggle", 420, 172, 24, 24, 1, 1, ["int"]); p.wire(p.obj("loadmess set 1", 480, 172, 1, 1), 0, ev, 0)
p.wire(ev, 0, p.obj("s av_evolve", 420, 360, 1, 0), 0)
p.comment("audio on/off", 420, 214, 100)
p.box("ezdac~", 420, 236, 45, 45, 2, 0)
p.dump(f"{out}/conductor.maxpat"); check(f"{out}/conductor.maxpat")
