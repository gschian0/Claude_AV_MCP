import sys
from maxgen import Patch, check
out = sys.argv[1]
SIG = ["signal"]

p = Patch([60.0, 60.0, 1240.0, 880.0])
p.comment("JUNGLE BASS — deep FM sub for the tampura: long gliding notes with an FM growl that blooms on each note, optional tempo-synced wobble, driven through tanh~. Clocked by the jongly chopper; key + scale follow the bassline patch (av_root / av_scale).", 20, 8, 1180)

# --- clock (same as the other instruments) ---
p.comment("clock: follows the jongly chopper; or free-run", 20, 60, 320)
rs = p.obj("r jongly_step", 20, 84, 0, 1)
tg = p.box("toggle", 160, 84, 22, 22, 1, 1, ["int"]); p.comment("free-run", 186, 86, 70)
mt = p.obj("metro 176.36", 160, 112, 2, 1, ["bang"]); p.wire(tg, 0, mt, 0)
cn = p.obj("counter 0 15", 160, 138, 3, 4, ["int", "", "", "int"]); p.wire(mt, 0, cn, 0)
st = p.obj("+ 1", 20, 168, 2, 1, ["int"]); p.wire(rs, 0, st, 0); p.wire(cn, 0, st, 0)
fe = p.obj("prepend fetch", 20, 194, 1, 1); p.wire(st, 0, fe, 0)

# --- pattern: 1 = root, 13 = octave up, 0 = tie (jungle bass lives on long held notes) ---
p.comment("pattern: 1 = root, 13 = octave up · 0 = tie (hold + let the glide sing)", 340, 60, 460)
ms = p.box("multislider", 340, 84, 400, 110, 1, 2, ["", ""], size=16, setminmax=[0.0, 25.0], settype=0, parameter_enable=0,
           slidercolor=[0.9, 0.25, 0.3, 1.0])
p.wire(fe, 0, ms, 0)
LINES = [("roller",    "1 0 0 0 0 0 1 0 0 0 4 0 0 0 0 0"),
         ("drop",      "1 0 0 0 0 0 0 0 8 0 0 0 6 0 4 0"),
         ("steppy",    "1 0 0 1 0 0 1 0 1 0 0 1 0 0 11 0"),
         ("dread",     "1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0"),
         ("walk-down", "13 0 0 0 11 0 0 0 8 0 0 0 6 0 4 0")]
lb = p.obj("loadbang", 760, 60, 1, 1, ["bang"]); dl = p.obj("delay 200", 830, 60, 2, 1, ["bang"]); p.wire(lb, 0, dl, 0)
for i, (name, seq) in enumerate(LINES):
    y = 84 + i*26
    p.comment(name, 760, y + 1, 70); m = p.msg(seq, 830, y, 120); p.wire(m, 0, ms, 0)
    if i == 0: p.wire(dl, 0, m, 0)

# random pattern in the shared scale: mostly ties, so notes stay long
xs = 980
p.comment("random in scale (from bassline)", xs, 60, 220)
rsc = p.obj("r av_scale", xs, 84, 0, 1); lsc = p.obj("loadmess 0 0 7 12 0 2 3 5 7 8 10 12 14 15 17 19 20 22 24", xs, 110, 1, 1)
tll = p.obj("t l l", xs, 136, 1, 2, ["", ""]); p.wire(rsc, 0, tll, 0); p.wire(lsc, 0, tll, 0)
zlen = p.obj("zl len", xs + 80, 162, 2, 2, ["", ""]); p.wire(tll, 1, zlen, 0)
rb = p.box("button", xs, 190, 24, 24, 1, 1, ["bang"]); p.comment("random", xs + 28, 192, 60)
uz = p.obj("uzi 16", xs, 220, 2, 3, ["bang", "bang", "int"]); p.wire(rb, 0, uz, 0)
r3 = p.obj("random 3", xs, 246, 2, 1, ["int"]); p.wire(uz, 0, r3, 0)
s0 = p.obj("sel 0", xs, 272, 2, 2, ["bang", ""]); p.wire(r3, 0, s0, 0)
tb2 = p.obj("t b", xs, 298, 1, 1, ["bang"]); p.wire(s0, 0, tb2, 0)              # 1 in 3 steps = new note
tie = p.msg("0", xs + 60, 298); p.wire(s0, 1, tie, 0)                          # the rest tie
rd = p.obj("random 15", xs, 324, 2, 1, ["int"]); p.wire(tb2, 0, rd, 0); p.wire(zlen, 0, rd, 1)
lk = p.obj("zl lookup", xs, 350, 2, 2, ["", ""]); p.wire(rd, 0, lk, 0); p.wire(tll, 0, lk, 1)
pl = p.obj("+ 1", xs, 376, 2, 1, ["int"]); p.wire(lk, 0, pl, 0)
grp = p.obj("zl group 16", xs, 402, 2, 2, ["", ""]); p.wire(pl, 0, grp, 0); p.wire(tie, 0, grp, 0); p.wire(grp, 0, ms, 0)

# --- notes: key from av_root (+ octave), glide time adjustable ---
sl = p.obj("sel 0", 340, 204, 2, 2, ["bang", ""]); p.wire(ms, 1, sl, 0)
tb = p.obj("t b i", 340, 230, 1, 2, ["bang", "int"]); p.wire(sl, 1, tb, 0)
p.comment("key from bassline · octave · glide ms", 520, 204, 260)
rr = p.obj("r av_root", 520, 230, 0, 1); lr = p.obj("loadmess 33", 600, 230, 1, 1)
oc = p.box("number", 690, 230, 40, 22, 1, 2, ["", "bang"], minimum=-24, maximum=24); p.wire(p.obj("loadmess 0", 740, 230, 1, 1), 0, oc, 0)
pak = p.obj("pak 33 0", 520, 256, 2, 1); p.wire(rr, 0, pak, 0); p.wire(lr, 0, pak, 0); p.wire(oc, 0, pak, 1)
zs = p.obj("zl sum", 520, 282, 2, 2, ["", ""]); p.wire(pak, 0, zs, 0)
km = p.obj("- 1", 520, 308, 2, 1, ["int"]); p.wire(zs, 0, km, 0)
nt = p.obj("+ 32", 400, 256, 2, 1, ["int"]); p.wire(tb, 1, nt, 0); p.wire(km, 0, nt, 1)
mtof = p.obj("mtof", 400, 282, 1, 1, ["float"]); p.wire(nt, 0, mtof, 0)
gl = p.box("number", 800, 230, 50, 22, 1, 2, ["", "bang"], minimum=0); p.wire(p.obj("loadmess 90", 860, 230, 1, 1), 0, gl, 0)
pk = p.obj("pack 0. 90", 400, 308, 2, 1); p.wire(mtof, 0, pk, 0); p.wire(gl, 0, pk, 1)
pitch = p.obj("line~ 55.", 400, 334, 2, 2, ["signal", "bang"]); p.wire(pk, 0, pitch, 0)

# --- envelopes: amp holds long; FM index blooms to 'growl' then settles ---
envm = p.msg("1 5, 0.85 500", 340, 370); p.wire(tb, 0, envm, 0)
env = p.obj("line~", 340, 396, 2, 2, ["signal", "bang"]); p.wire(envm, 0, env, 0)
p.comment("growl (FM index peak)", 560, 344, 150)
gw = p.box("flonum", 560, 368, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0); p.wire(p.obj("loadmess 2.5", 620, 368, 1, 1), 0, gw, 0)
gf = p.obj("f 2.5", 480, 370, 2, 1, ["float"]); p.wire(tb, 0, gf, 0); p.wire(gw, 0, gf, 1)
im = p.msg("$1 8, 0.4 700", 480, 396); p.wire(gf, 0, im, 0)
ienv = p.obj("line~", 480, 422, 2, 2, ["signal", "bang"]); p.wire(im, 0, ienv, 0)

# --- wobble: LFO on the FM index, tempo-synced rates at 170 bpm ---
p.comment("wobble rate (170 bpm)", 740, 300, 150)
wl = p.obj("cycle~ 1.42", 740, 396, 2, 1, SIG)
for k, (lab, hz) in enumerate([("off", 0), ("1/2", 1.42), ("1/4", 2.83), ("1/8", 5.67), ("1/16", 11.33)]):
    m = p.msg(str(hz), 740 + k*52, 324); p.wire(m, 0, wl, 0); p.comment(lab, 740 + k*52, 348, 46)
    if hz == 0:   # a 0 Hz cycle~ holds its last value; park the phase at 0.25 so it outputs 0 (wobble truly off)
        ph = p.msg("0.25", 680, 370); p.wire(m, 0, ph, 0); p.wire(ph, 0, wl, 1)
p.comment("depth", 900, 372, 50)
wd = p.box("flonum", 950, 372, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0); p.wire(p.obj("loadmess 0.6", 1010, 372, 1, 1), 0, wd, 0)
wm = p.obj("*~ 0.6", 740, 422, 2, 1, SIG); p.wire(wl, 0, wm, 0); p.wire(wd, 0, wm, 1)
ia = p.obj("+~", 480, 452, 2, 1, SIG); p.wire(ienv, 0, ia, 0); p.wire(wm, 0, ia, 1)

# --- FM voice: modulator at 'ratio' x pitch (1 = warm, 0.5 = growly sub-harmonic, 2 = hollow) + pure sine sub ---
p.comment("ratio", 20, 452, 50)
rt = p.box("flonum", 70, 452, 50, 22, 1, 2, ["", "bang"], format=6); p.wire(p.obj("loadmess 1.", 130, 452, 1, 1), 0, rt, 0)
mf = p.obj("*~ 1.", 20, 480, 2, 1, SIG); p.wire(pitch, 0, mf, 0); p.wire(rt, 0, mf, 1)
mod = p.obj("cycle~", 20, 506, 2, 1, SIG); p.wire(mf, 0, mod, 0)
dev = p.obj("*~", 120, 506, 2, 1, SIG); p.wire(ia, 0, dev, 0); p.wire(mf, 0, dev, 1)
ms2 = p.obj("*~", 20, 532, 2, 1, SIG); p.wire(mod, 0, ms2, 0); p.wire(dev, 0, ms2, 1)
cf = p.obj("+~", 20, 558, 2, 1, SIG); p.wire(pitch, 0, cf, 0); p.wire(ms2, 0, cf, 1)
car = p.obj("cycle~", 20, 584, 2, 1, SIG); p.wire(cf, 0, car, 0)
sub = p.obj("cycle~", 200, 584, 2, 1, SIG); p.wire(pitch, 0, sub, 0)
fmg = p.obj("*~ 0.5", 20, 610, 2, 1, SIG); p.wire(car, 0, fmg, 0)
sbg = p.obj("*~ 0.7", 200, 610, 2, 1, SIG); p.wire(sub, 0, sbg, 0)
mx = p.obj("+~", 20, 636, 2, 1, SIG); p.wire(fmg, 0, mx, 0); p.wire(sbg, 0, mx, 1)
amp = p.obj("*~", 20, 662, 2, 1, SIG); p.wire(mx, 0, amp, 0); p.wire(env, 0, amp, 1)

# --- drive + tame the top ---
p.comment("drive", 320, 690, 50)
dr = p.box("flonum", 370, 690, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.1); p.wire(p.obj("loadmess 2.", 430, 690, 1, 1), 0, dr, 0)
pre = p.obj("*~ 2.", 20, 690, 2, 1, SIG); p.wire(amp, 0, pre, 0); p.wire(dr, 0, pre, 1)
th = p.obj("tanh~", 20, 716, 1, 1, SIG); p.wire(pre, 0, th, 0)
lp = p.obj("lores~ 1400 0.1", 20, 742, 3, 1, SIG); p.wire(th, 0, lp, 0)
g = p.obj("*~ 0.45", 20, 768, 2, 1, SIG); p.wire(lp, 0, g, 0)
dac = p.box("ezdac~", 20, 798, 45, 45, 2, 0); p.wire(g, 0, dac, 0); p.wire(g, 0, dac, 1)
p.comment("click to start audio", 70, 810, 160)
p.dump(f"{out}/jungle_bass.maxpat"); check(f"{out}/jungle_bass.maxpat")
