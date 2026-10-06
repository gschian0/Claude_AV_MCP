import sys
from maxgen import Patch, check
out = sys.argv[1]
SIG = ["signal"]

def lfo(p, rate, depth, offset, x, y):
    c = p.obj(f"cycle~ {rate}", x, y, 2, 1, SIG); m = p.obj(f"*~ {depth}", x, y + 26, 2, 1, SIG)
    a = p.obj(f"+~ {offset}", x, y + 52, 2, 1, SIG); p.wire(c, 0, m, 0); p.wire(m, 0, a, 0); return a

def fm_voice(p, x, y, base, mult, drift_rate, r_rate, i_rate):
    """2-op FM on a bass pitch: fc = base*mult*(1 ± 0.4% drift); ratio and index keep shifting."""
    b = p.obj(f"*~ {mult}", x, y, 2, 1, SIG); p.wire(base, 0, b, 0)
    dr = lfo(p, drift_rate, 0.004, 1.0, x + 70, y)
    fc = p.obj("*~", x, y + 80, 2, 1, SIG); p.wire(b, 0, fc, 0); p.wire(dr, 0, fc, 1)
    ratio = lfo(p, r_rate, 0.25, 1.5, x + 160, y)      # 1.25..1.75: harmonic ↔ bell-ish
    index = lfo(p, i_rate, 1.2, 1.8, x + 250, y)       # 0.6..3.0: dark ↔ growly
    mf = p.obj("*~", x + 160, y + 110, 2, 1, SIG); p.wire(fc, 0, mf, 0); p.wire(ratio, 0, mf, 1)
    mod = p.obj("cycle~", x + 160, y + 136, 2, 1, SIG); p.wire(mf, 0, mod, 0)
    dev = p.obj("*~", x + 250, y + 136, 2, 1, SIG); p.wire(index, 0, dev, 0); p.wire(mf, 0, dev, 1)
    ms = p.obj("*~", x + 160, y + 162, 2, 1, SIG); p.wire(mod, 0, ms, 0); p.wire(dev, 0, ms, 1)
    cf = p.obj("+~", x, y + 188, 2, 1, SIG); p.wire(fc, 0, cf, 0); p.wire(ms, 0, cf, 1)
    car = p.obj("cycle~", x, y + 214, 2, 1, SIG); p.wire(cf, 0, car, 0)
    return car

p = Patch([60.0, 60.0, 940.0, 840.0])
p.comment("SINE TEST = LOW TAMPURA — two drifting FM voices tuned to the shared key (av_root): Sa (root) on the left, Pa (fifth) on the right, plucked in the tampura cycle Pa · Sa · Sa · Sa, through the FFT smear. Play the bassline / bells on top.", 20, 8, 880)

# --- key: follows av_root from the bassline patch (A1 until it's opened) ---
p.comment("key (MIDI, from the bassline patch)", 20, 60, 240)
rr = p.obj("r av_root", 20, 84, 0, 1); lr = p.obj("loadmess 33", 100, 84, 1, 1)
kn = p.box("number", 20, 110, 50, 22, 1, 2, ["", "bang"]); p.wire(rr, 0, kn, 0); p.wire(lr, 0, kn, 0)
mtof = p.obj("mtof", 20, 136, 1, 1, ["float"]); p.wire(kn, 0, mtof, 0)
pk = p.obj("pack 0. 800", 20, 162, 2, 1); p.wire(mtof, 0, pk, 0)               # slow glide on key changes
pitch = p.obj("line~ 55.", 20, 188, 2, 2, ["signal", "bang"]); p.wire(pk, 0, pitch, 0)

# --- tampura pluck cycle: Pa (right) then Sa, Sa, Sa (left); strings ring and never fully stop ---
p.comment("pluck cycle Pa · Sa · Sa · Sa", 300, 60, 200)
on = p.box("toggle", 300, 84, 22, 22, 1, 1, ["int"]); p.wire(p.obj("loadmess 1", 330, 84, 1, 1), 0, on, 0)
p.comment("ms per pluck", 420, 86, 90)
pms = p.box("number", 510, 84, 50, 22, 1, 2, ["", "bang"], minimum=200); p.wire(p.obj("loadmess 800", 570, 84, 1, 1), 0, pms, 0)
mt = p.obj("metro 800", 300, 112, 2, 1, ["bang"]); p.wire(on, 0, mt, 0); p.wire(pms, 0, mt, 1)
cn = p.obj("counter 0 3", 300, 138, 3, 4, ["int", "", "", "int"]); p.wire(mt, 0, cn, 0)
sp = p.obj("sel 0 1 2 3", 300, 164, 2, 5, ["bang"] * 4 + [""]); p.wire(cn, 0, sp, 0)
pa = p.msg("1 80, 0.5 3000", 460, 200); sa = p.msg("1 80, 0.5 3000", 300, 200)
p.wire(sp, 0, pa, 0)
for k in (1, 2, 3): p.wire(sp, k, sa, 0)
envL = p.obj("line~ 0.5", 300, 230, 2, 2, ["signal", "bang"]); p.wire(sa, 0, envL, 0)
envR = p.obj("line~ 0.5", 460, 230, 2, 2, ["signal", "bang"]); p.wire(pa, 0, envR, 0)
p.comment("Sa", 420, 201, 30); p.comment("Pa", 580, 201, 30)

# --- two FM voices: Sa = root (left), Pa = fifth (right) ---
L = fm_voice(p, 20, 300, pitch, 1.0, 0.011, 0.007, 0.019)
R = fm_voice(p, 460, 300, pitch, 1.5, 0.0089, 0.0053, 0.023)
ys = 550
# --- LEVEL: one slider for the whole drone, smoothed so moves don't click ---
p.comment("LEVEL", 300, ys - 30, 60)
lv = p.box("slider", 300, ys - 8, 24, 140, 1, 1, [""], floatoutput=1, size=1.0, min=0.0)
lvn = p.box("flonum", 330, ys + 110, 50, 22, 1, 2, ["", "bang"], format=6)
p.wire(p.obj("loadmess 0.5", 330, ys - 8, 1, 1), 0, lv, 0); p.wire(lv, 0, lvn, 0)
lvp = p.obj("pack 0. 40", 390, ys + 20, 2, 1); p.wire(lv, 0, lvp, 0)
lvl = p.obj("line~ 0.5", 390, ys + 46, 2, 2, ["signal", "bang"]); p.wire(lvp, 0, lvl, 0)
outs = []
for x, v, env in ((20, L, envL), (460, R, envR)):
    a = p.obj("*~", x, ys, 2, 1, SIG); p.wire(v, 0, a, 0); p.wire(env, 0, a, 1)
    fft = p.obj("pfft~ buddha_smear~ 2048 4", x, ys + 30, 1, 1, SIG); p.wire(a, 0, fft, 0)
    dry = p.obj("*~ 0.6", x + 200, ys + 30, 2, 1, SIG); p.wire(a, 0, dry, 0)
    mx = p.obj("+~", x, ys + 60, 2, 1, SIG); p.wire(fft, 0, mx, 0); p.wire(dry, 0, mx, 1)
    lo = p.obj("degrade~ 0.6 12", x, ys + 90, 3, 1, SIG); p.wire(mx, 0, lo, 0)
    g = p.obj("*~", x, ys + 120, 2, 1, SIG); p.wire(lo, 0, g, 0); p.wire(lvl, 0, g, 1); outs.append(g)
dac = p.box("ezdac~", 300, ys + 150, 45, 45, 2, 0); p.wire(outs[0], 0, dac, 0); p.wire(outs[1], 0, dac, 1)
p.comment("click to start audio", 350, ys + 162, 160)
p.dump(f"{out}/sine_test.maxpat"); check(f"{out}/sine_test.maxpat")

# --- pfft~ smear: slow rise, long fall = the tampura wash ---
s = Patch([120.0, 120.0, 520.0, 360.0])
s.comment("buddha_smear~ — vectral~ slides each FFT bin's amplitude (rise 20 frames, fall 400) = tampura wash", 20, 8, 480)
fin = s.obj("fftin~ 1", 20, 60, 1, 3, SIG * 3)
c2p = s.obj("cartopol~", 20, 100, 2, 2, SIG * 2); s.wire(fin, 0, c2p, 0); s.wire(fin, 1, c2p, 1)
lb = s.obj("loadbang", 240, 60, 1, 1, ["bang"]); sl = s.msg("slide 20 400", 240, 90); s.wire(lb, 0, sl, 0)
vec = s.obj("vectral~ 2048", 20, 140, 3, 1, SIG); s.wire(sl, 0, vec, 0)
s.wire(fin, 2, vec, 0); s.wire(fin, 2, vec, 1); s.wire(c2p, 0, vec, 2)
p2c = s.obj("poltocar~", 20, 180, 2, 2, SIG * 2); s.wire(vec, 0, p2c, 0); s.wire(c2p, 1, p2c, 1)
fout = s.obj("fftout~ 1", 20, 220, 2, 0); s.wire(p2c, 0, fout, 0); s.wire(p2c, 1, fout, 1)
s.dump(f"{out}/buddha_smear~.maxpat"); check(f"{out}/buddha_smear~.maxpat")
