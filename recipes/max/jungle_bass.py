import sys
from maxgen import Patch, check
out = sys.argv[1]
SIG = ["signal"]

p = Patch([60.0, 60.0, 1240.0, 900.0])
p.present = True
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
rro = p.obj("r av_reroll_jungle", xs + 100, 190, 0, 1); p.wire(rro, 0, rb, 0)   # conductor re-roll
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
nt = p.obj("+ 32", 400, 256, 2, 1, ["int"]); p.wire(km, 0, nt, 1)
qm = p.obj("- 1", 260, 256, 2, 1, ["int"]); qj = p.obj("js av_quantize.js", 260, 256 + 26, 1, 1)
qp = p.obj("+ 1", 260, 256 + 52, 2, 1, ["int"]); p.wire(tb, 1, qm, 0); p.wire(qm, 0, qj, 0); p.wire(qj, 0, qp, 0); p.wire(qp, 0, nt, 0)   # snap to the scale
p.wire(tll, 0, qj, 0)

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
lvr = p.obj("r av_level_jungle", 140, 742, 0, 1); lvk = p.obj("pack 0. 40", 140, 742 + 26, 2, 1)
lvs = p.obj("line~ 0.45", 140, 742 + 52, 2, 2, ["signal", "bang"]); p.wire(lvr, 0, lvk, 0); p.wire(lvk, 0, lvs, 0)
g = p.obj("*~ 0.45", 20, 768, 2, 1, SIG); p.wire(lp, 0, g, 0); p.wire(lvs, 0, g, 1)
dac = p.box("ezdac~", 20, 798, 45, 45, 2, 0); p.wire(g, 0, dac, 0); p.wire(g, 0, dac, 1)
p.comment("click to start audio", 70, 810, 160)
# --- EVOLVE: every N loops rewrite some steps (mostly ties, so notes stay long) and re-roll the sound ---
xe, ye = 560, 480
p.comment("EVOLVE — every N loops: rewrite some steps from the scale (60% ties) and re-roll growl, ratio, wobble rate + depth", xe, ye, 420)
ev = p.box("toggle", xe, ye + 44, 22, 22, 1, 1, ["int"]); p.wire(p.obj("loadmess 1", xe + 300, ye + 44, 1, 1), 0, ev, 0)
p.wire(p.obj("r av_jungle_evolve", xe + 380, ye + 44, 0, 1), 0, ev, 0)
p.comment("every", xe + 30, ye + 46, 40)
evn = p.box("number", xe + 72, ye + 44, 40, 22, 1, 2, ["", "bang"], minimum=1); p.comment("loops ·", xe + 116, ye + 46, 50)
evc = p.box("number", xe + 170, ye + 44, 40, 22, 1, 2, ["", "bang"], minimum=1, maximum=16); p.comment("changes", xe + 214, ye + 46, 60)
p.wire(p.obj("loadmess 2", xe + 300, ye + 70, 1, 1), 0, evn, 0); p.wire(p.obj("loadmess 3", xe + 380, ye + 70, 1, 1), 0, evc, 0)
eup = p.obj("unpack 0 0", xe, ye + 300, 2, 2, ["int", "int"]); p.wire(eup, 0, evn, 0); p.wire(eup, 1, evc, 0)
p.wire(p.obj("r av_jungle_evolve_preset", xe + 100, ye + 300, 0, 1), 0, eup, 0)
for k, (name, v) in enumerate([("steady", "4 1"), ("drift", "2 3"), ("restless", "1 5"), ("wild", "1 8")]):
    p.comment(name, xe + k*70, ye + 70, 66); m = p.msg(v, xe + k*70, ye + 90, 40); p.wire(m, 0, eup, 0)
el = p.obj("sel 0", xe, ye + 120, 2, 2, ["bang", ""]); p.wire(rs, 0, el, 0); p.wire(cn, 0, el, 0)       # one bang per loop
eg = p.obj("gate 1", xe, ye + 146, 2, 1); p.wire(ev, 0, eg, 0); p.wire(el, 0, eg, 1)
ecn = p.obj("counter", xe + 60, ye + 146, 3, 4, ["int", "", "", "int"]); p.wire(eg, 0, ecn, 0)
emd = p.obj("% 2", xe + 130, ye + 146, 2, 1, ["int"]); p.wire(ecn, 0, emd, 0); p.wire(evn, 0, emd, 1)
e0 = p.obj("sel 0", xe + 180, ye + 146, 2, 2, ["bang", ""]); p.wire(emd, 0, e0, 0)
et = p.obj("t b b b b b", xe + 180, ye + 172, 1, 5, ["bang"] * 5); p.wire(e0, 0, et, 0)
# notes: av_evolve_line.js with a high tie chance
ecf = p.obj("f 3", xe, ye + 198, 2, 1, ["float"]); p.wire(evc, 0, ecf, 1); p.wire(et, 4, ecf, 0)
emsg = p.obj("pack 0. 0.6", xe, ye + 224, 2, 1); p.wire(ecf, 0, emsg, 0)
epre = p.obj("prepend evolve", xe, ye + 250, 1, 1); p.wire(emsg, 0, epre, 0)
ejs = p.obj("js av_evolve_line.js", xe, ye + 276, 1, 1); p.wire(epre, 0, ejs, 0)
p.wire(ms, 0, ejs, 0); p.wire(ejs, 0, ms, 0)
esc = p.obj("prepend scale", xe + 160, ye + 250, 1, 1); p.wire(tll, 0, esc, 0); p.wire(esc, 0, ejs, 0)
# sound: growl 1-6, ratio from 0.5 / 1 / 1 / 2, wobble rate 1/2 · 1/4 · 1/8, wobble depth 0-1
r1 = p.obj("random 100", xe + 280, ye + 198, 2, 1, ["int"]); p.wire(et, 3, r1, 0)
p.wire(r1, 0, s1 := p.obj("scale 0 99 1. 6.", xe + 280, ye + 224, 6, 1, ["float"]), 0); p.wire(s1, 0, gw, 0)
r2 = p.obj("random 4", xe + 400, ye + 198, 2, 1, ["int"]); p.wire(et, 2, r2, 0)
l2 = p.obj("zl lookup", xe + 400, ye + 224, 2, 2, ["", ""]); p.wire(r2, 0, l2, 0); p.wire(l2, 0, rt, 0)
p.wire(p.obj("loadmess 0.5 1. 1. 2.", xe + 400, ye + 250, 1, 1), 0, l2, 1)
r3 = p.obj("random 3", xe + 280, ye + 276, 2, 1, ["int"]); p.wire(et, 1, r3, 0)
l3 = p.obj("zl lookup", xe + 280, ye + 302, 2, 2, ["", ""]); p.wire(r3, 0, l3, 0); p.wire(l3, 0, wl, 0)
p.wire(p.obj("loadmess 1.42 2.83 5.67", xe + 280, ye + 328, 1, 1), 0, l3, 1)
r4 = p.obj("random 100", xe + 400, ye + 276, 2, 1, ["int"]); p.wire(et, 0, r4, 0)
p.wire(r4, 0, s4 := p.obj("scale 0 99 0. 1.", xe + 400, ye + 302, 6, 1, ["float"]), 0); p.wire(s4, 0, wd, 0)

p.dump(f"{out}/jungle_bass.maxpat"); check(f"{out}/jungle_bass.maxpat")
