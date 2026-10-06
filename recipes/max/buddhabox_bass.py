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

p = Patch([60.0, 60.0, 1320.0, 820.0])
p.comment("FM Buddhabox bass — a 16-step bassline (locked to the jongly chopper, or free-running at the same 170 bpm) drives two FM voices (root + fifth) → FFT smear → lo-fi → 0.5 gain", 20, 8, 840)

# --- clock: jongly_step from the chopper, or a free metro at one step = 2821.7 ms / 16 ---
p.comment("clock: follows the jongly chopper's steps; or switch on free-run", 20, 52, 420)
rs = p.obj("r jongly_step", 20, 76, 0, 1)
tg = p.box("toggle", 160, 76, 22, 22, 1, 1, ["int"]); p.comment("free-run", 186, 78, 70)
mt = p.obj("metro 176.36", 160, 104, 2, 1, ["bang"]); p.wire(tg, 0, mt, 0)
cn = p.obj("counter 0 15", 160, 130, 3, 4, ["int", "", "", "int"]); p.wire(mt, 0, cn, 0)
st = p.obj("+ 1", 20, 160, 2, 1, ["int"]); p.wire(rs, 0, st, 0); p.wire(cn, 0, st, 0)
fe = p.obj("prepend fetch", 20, 186, 1, 1); p.wire(st, 0, fe, 0)

# --- bassline: slider = semitone above A1 + 1; 0 = tie (hold the last note, no retrigger) ---
p.comment("bassline: 1 = A1, 13 = A2, 25 = A3 (semitones +1) · 0 = tie/hold", 300, 52, 420)
ms = p.box("multislider", 300, 76, 400, 110, 1, 2, ["", ""], size=16, setminmax=[0.0, 25.0], settype=0, parameter_enable=0,
           slidercolor=[0.55, 0.35, 0.85, 1.0])
p.wire(fe, 0, ms, 0)
LINES = [("dub", "1 0 13 1 0 4 1 8 1 0 13 11 8 6 4 0"),
         ("walk", "1 4 6 8 11 8 6 4 1 4 6 8 13 11 8 6"),
         ("pedal", "1 0 0 0 1 0 0 0 1 0 0 0 8 0 6 0"),
         ("octaves", "1 13 1 13 1 13 1 13 6 18 6 18 8 20 8 20")]
lb = p.obj("loadbang", 720, 52, 1, 1, ["bang"]); dl = p.obj("delay 200", 720, 76, 2, 1, ["bang"]); p.wire(lb, 0, dl, 0)
for i, (name, seq) in enumerate(LINES):
    y = 104 + i*26
    p.comment(name, 720, y + 1, 60); m = p.msg(seq, 780, y, 110); p.wire(m, 0, ms, 0)
    if i == 0: p.wire(dl, 0, m, 0)
sl = p.obj("sel 0", 300, 196, 2, 2, ["bang", ""]); p.wire(ms, 1, sl, 0)      # right outlet = fetched value
tb = p.obj("t b i", 300, 222, 1, 2, ["bang", "int"]); p.wire(sl, 1, tb, 0)
nt = p.obj("+ 32", 360, 248, 2, 1, ["int"]); p.wire(tb, 1, nt, 0)            # value 1 → MIDI 33 (A1)
mtof = p.obj("mtof", 360, 274, 1, 1, ["float"]); p.wire(nt, 0, mtof, 0)
pk = p.obj("pack 0. 25", 360, 300, 2, 1); p.wire(mtof, 0, pk, 0)             # 25 ms glide
pitch = p.obj("line~ 55.", 360, 326, 2, 2, ["signal", "bang"]); p.wire(pk, 0, pitch, 0)
envm = p.msg("1 4, 0.3 320", 300, 274); p.wire(tb, 0, envm, 0)               # pluck → sustain
env = p.obj("line~ 0.3", 300, 326, 2, 2, ["signal", "bang"]); p.wire(envm, 0, env, 0)
p.comment("glide", 420, 300, 50); p.comment("pluck env", 400, 274 - 22, 80)

# --- root note: sets what slider value 1 means ---
p.comment("root (MIDI)", 480, 222, 80)
lmr = p.obj("loadmess 33", 560, 196, 1, 1); rn = p.box("number", 560, 222, 50, 22, 1, 2, ["", "bang"], minimum=12, maximum=60)
rm1 = p.obj("- 1", 560, 248, 2, 1, ["int"]); p.wire(lmr, 0, rn, 0); p.wire(rn, 0, rm1, 0); p.wire(rm1, 0, nt, 1)
sroot = p.obj("s av_root", 620, 248, 1, 0); p.wire(rn, 0, sroot, 0)   # shared with other instruments
p.comment("33 = A1 · 36 = C2 · 28 = E1", 615, 223, 180)

# --- random bassline in a scale ---
xs = 920
p.comment("RANDOM BASSLINE IN A SCALE — click a scale to roll a new bassline in it; 'random' re-rolls in the current scale. Numbers = semitones over 2 octaves (root and fifth repeated so they come up more). Add your own scale: duplicate a message and edit the numbers.", xs, 52, 380)
SCALES = [("minor",       "0 2 3 5 7 8 10 12 14 15 17 19 20 22 24"),
          ("dorian",      "0 2 3 5 7 9 10 12 14 15 17 19 21 22 24"),
          ("phrygian",    "0 1 3 5 7 8 10 12 13 15 17 19 20 22 24"),
          ("harm. minor", "0 2 3 5 7 8 11 12 14 15 17 19 20 23 24"),
          ("major",       "0 2 4 5 7 9 11 12 14 16 17 19 21 23 24"),
          ("minor pent.", "0 3 5 7 10 12 15 17 19 22 24"),
          ("blues",       "0 3 5 6 7 10 12 15 17 18 19 22 24")]
tbl = p.obj("t b l", xs, 150 + 26*len(SCALES), 1, 2, ["bang", ""])
for k, (name, notes) in enumerate(SCALES):
    y = 140 + 26*k
    p.comment(name, xs, y + 1, 80); m = p.msg("0 0 7 12 " + notes, xs + 80, y, 300); p.wire(m, 0, tbl, 0)
yb = 150 + 26*len(SCALES)
tll = p.obj("t l l", xs + 60, yb + 26, 1, 2, ["", ""]); p.wire(tbl, 1, tll, 0)
lms = p.obj("loadmess 0 0 7 12 " + SCALES[0][1], xs + 60, yb, 1, 1); p.wire(lms, 0, tll, 0)   # minor at load (no re-roll)
ssc = p.obj("s av_scale", xs + 220, yb + 26, 1, 0); p.wire(tll, 0, ssc, 0)   # shared scale
zlen = p.obj("zl len", xs + 140, yb + 52, 2, 2, ["", ""]); p.wire(tll, 1, zlen, 0)
p.comment("random", xs, yb + 80, 60); rb = p.box("button", xs + 56, yb + 78, 24, 24, 1, 1, ["bang"])
uz = p.obj("uzi 16", xs, yb + 106, 2, 3, ["bang", "bang", "int"]); p.wire(rb, 0, uz, 0); p.wire(tbl, 0, uz, 0)
r5 = p.obj("random 5", xs, yb + 132, 2, 1, ["int"]); p.wire(uz, 0, r5, 0)
s0 = p.obj("sel 0", xs, yb + 158, 2, 2, ["bang", ""]); p.wire(r5, 0, s0, 0)
tie = p.msg("0", xs, yb + 184); p.wire(s0, 0, tie, 0)                    # 1 in 5 steps = tie
tb2 = p.obj("t b", xs + 60, yb + 184, 1, 1, ["bang"]); p.wire(s0, 1, tb2, 0)
rd = p.obj("random 15", xs + 60, yb + 210, 2, 1, ["int"]); p.wire(tb2, 0, rd, 0); p.wire(zlen, 0, rd, 1)
lk = p.obj("zl lookup", xs + 60, yb + 236, 2, 2, ["", ""]); p.wire(rd, 0, lk, 0); p.wire(tll, 0, lk, 1)
pl = p.obj("+ 1", xs + 60, yb + 262, 2, 1, ["int"]); p.wire(lk, 0, pl, 0)
grp = p.obj("zl group 16", xs, yb + 290, 2, 2, ["", ""]); p.wire(tie, 0, grp, 0); p.wire(pl, 0, grp, 0)
p.wire(grp, 0, ms, 0)

# --- two FM voices on the bass pitch: root (left) and a fifth up (right) ---
L = fm_voice(p, 20, 380, pitch, 1.0, 0.011, 0.007, 0.019)
R = fm_voice(p, 460, 380, pitch, 1.5, 0.0089, 0.0053, 0.023)
ys = 630
outs = []
for x, v in ((20, L), (460, R)):
    a = p.obj("*~", x, ys, 2, 1, SIG); p.wire(v, 0, a, 0); p.wire(env, 0, a, 1)
    fft = p.obj("pfft~ buddha_smear~ 2048 4", x, ys + 30, 1, 1, SIG); p.wire(a, 0, fft, 0)
    dry = p.obj("*~ 0.6", x + 200, ys + 30, 2, 1, SIG); p.wire(a, 0, dry, 0)
    mx = p.obj("+~", x, ys + 60, 2, 1, SIG); p.wire(fft, 0, mx, 0); p.wire(dry, 0, mx, 1)
    lo = p.obj("degrade~ 0.6 12", x, ys + 90, 3, 1, SIG); p.wire(mx, 0, lo, 0)
    g = p.obj("*~ 0.5", x, ys + 120, 2, 1, SIG); p.wire(lo, 0, g, 0); outs.append(g)
dac = p.box("ezdac~", 300, ys + 150, 45, 45, 2, 0); p.wire(outs[0], 0, dac, 0); p.wire(outs[1], 0, dac, 1)
p.comment("click to start audio", 350, ys + 162, 160)
p.dump(f"{out}/sine_test.maxpat"); check(f"{out}/sine_test.maxpat")

# --- pfft~ smear: faster attack now so bass notes still speak, long smeared tail ---
s = Patch([120.0, 120.0, 520.0, 360.0])
s.comment("buddha_smear~ — vectral~ slides each FFT bin's amplitude (rise 4 frames, fall 200) = notes speak, tails smear", 20, 8, 480)
fin = s.obj("fftin~ 1", 20, 60, 1, 3, SIG * 3)
c2p = s.obj("cartopol~", 20, 100, 2, 2, SIG * 2); s.wire(fin, 0, c2p, 0); s.wire(fin, 1, c2p, 1)
lb = s.obj("loadbang", 240, 60, 1, 1, ["bang"]); sl = s.msg("slide 4 200", 240, 90); s.wire(lb, 0, sl, 0)
vec = s.obj("vectral~ 2048", 20, 140, 3, 1, SIG); s.wire(sl, 0, vec, 0)
s.wire(fin, 2, vec, 0); s.wire(fin, 2, vec, 1); s.wire(c2p, 0, vec, 2)
p2c = s.obj("poltocar~", 20, 180, 2, 2, SIG * 2); s.wire(vec, 0, p2c, 0); s.wire(c2p, 1, p2c, 1)
fout = s.obj("fftout~ 1", 20, 220, 2, 0); s.wire(p2c, 0, fout, 0); s.wire(p2c, 1, fout, 1)
s.dump(f"{out}/buddha_smear~.maxpat"); check(f"{out}/buddha_smear~.maxpat")
