import sys
from maxgen import Patch, check
out = sys.argv[1]
SIG = ["signal"]

p = Patch([60.0, 60.0, 1320.0, 700.0])
p.present = True
p.comment("BASSLINE — a 16-step bassline over the tampura (locked to the jongly chopper, or free-running at 170 bpm). Sets the key (av_root) and scale (av_scale) for the tampura and bells. Voice: filtered saw + sub sine.", 20, 8, 840)

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
nt = p.obj("+ 32", 360, 248, 2, 1, ["int"])                                   # value 1 → MIDI 33 (A1)
qm = p.obj("- 1", 200, 248, 2, 1, ["int"]); qj = p.obj("js av_quantize.js", 200, 248 + 26, 1, 1)
qp = p.obj("+ 1", 200, 248 + 52, 2, 1, ["int"]); p.wire(tb, 1, qm, 0); p.wire(qm, 0, qj, 0); p.wire(qj, 0, qp, 0); p.wire(qp, 0, nt, 0)   # snap to the scale

mtof = p.obj("mtof", 360, 274, 1, 1, ["float"]); p.wire(nt, 0, mtof, 0)
pk = p.obj("pack 0. 25", 360, 300, 2, 1); p.wire(mtof, 0, pk, 0)             # 25 ms glide
pitch = p.obj("line~ 55.", 360, 326, 2, 2, ["signal", "bang"]); p.wire(pk, 0, pitch, 0)
envm = p.msg("1 3, 0.55 260", 300, 274); p.wire(tb, 0, envm, 0)              # punch → sustain
env = p.obj("line~", 300, 326, 2, 2, ["signal", "bang"]); p.wire(envm, 0, env, 0)
p.comment("glide", 420, 300, 50); p.comment("pluck env", 400, 274 - 22, 80)

# --- root note: sets what slider value 1 means ---
p.comment("root (MIDI)", 480, 222, 80)
# the key is shared: editing it here (or in the conductor) broadcasts av_root; incoming av_root only updates the display
lmr = p.obj("loadmess 33", 560, 196, 1, 1); rn = p.box("number", 560, 222, 50, 22, 1, 2, ["", "bang"], minimum=12, maximum=60)
sroot = p.obj("s av_root", 620, 248, 1, 0); p.wire(lmr, 0, rn, 0); p.wire(rn, 0, sroot, 0)
rroot = p.obj("r av_root", 680, 196, 0, 1); rset = p.obj("prepend set", 680, 222, 1, 1); p.wire(rroot, 0, rset, 0); p.wire(rset, 0, rn, 0)
rm1 = p.obj("- 1", 680, 248, 2, 1, ["int"]); p.wire(rroot, 0, rm1, 0); p.wire(rm1, 0, nt, 1)
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
# scale buttons broadcast av_scale; the local copy (and the quantizer) listen to av_scale like everyone else
ssc = p.obj("s av_scale", xs + 220, yb, 1, 0); p.wire(tbl, 1, ssc, 0)
rsc = p.obj("r av_scale", xs + 220, yb + 26, 0, 1)
tll = p.obj("t l l", xs + 60, yb + 26, 1, 2, ["", ""]); p.wire(rsc, 0, tll, 0); p.wire(tll, 0, qj, 0)
lms = p.obj("loadmess 0 0 7 12 " + SCALES[0][1], xs + 60, yb, 1, 1); p.wire(lms, 0, tll, 0)   # minor at load (no re-roll)
zlen = p.obj("zl len", xs + 140, yb + 52, 2, 2, ["", ""]); p.wire(tll, 1, zlen, 0)
p.comment("random", xs, yb + 80, 60); rb = p.box("button", xs + 56, yb + 78, 24, 24, 1, 1, ["bang"])
uz = p.obj("uzi 16", xs, yb + 106, 2, 3, ["bang", "bang", "int"]); p.wire(rb, 0, uz, 0); p.wire(tbl, 0, uz, 0)
rro = p.obj("r av_reroll_bass", xs + 100, yb + 78, 0, 1); p.wire(rro, 0, rb, 0)   # conductor re-roll
r5 = p.obj("random 5", xs, yb + 132, 2, 1, ["int"]); p.wire(uz, 0, r5, 0)
s0 = p.obj("sel 0", xs, yb + 158, 2, 2, ["bang", ""]); p.wire(r5, 0, s0, 0)
tie = p.msg("0", xs, yb + 184); p.wire(s0, 0, tie, 0)                    # 1 in 5 steps = tie
tb2 = p.obj("t b", xs + 60, yb + 184, 1, 1, ["bang"]); p.wire(s0, 1, tb2, 0)
rd = p.obj("random 15", xs + 60, yb + 210, 2, 1, ["int"]); p.wire(tb2, 0, rd, 0); p.wire(zlen, 0, rd, 1)
lk = p.obj("zl lookup", xs + 60, yb + 236, 2, 2, ["", ""]); p.wire(rd, 0, lk, 0); p.wire(tll, 0, lk, 1)
pl = p.obj("+ 1", xs + 60, yb + 262, 2, 1, ["int"]); p.wire(lk, 0, pl, 0)
grp = p.obj("zl group 16", xs, yb + 290, 2, 2, ["", ""]); p.wire(tie, 0, grp, 0); p.wire(pl, 0, grp, 0)
p.wire(grp, 0, ms, 0)

# --- voice: saw through a resonant lowpass whose cutoff snaps open on each note, plus a sub sine an octave down ---
yv = 420
p.comment("brightness (filter peak Hz)", 20, yv - 24, 180)
br = p.box("number", 200, yv - 26, 60, 22, 1, 2, ["", "bang"], minimum=200); p.wire(p.obj("loadmess 2400", 270, yv - 26, 1, 1), 0, br, 0)
fpk = p.obj("f 2400", 300, yv, 2, 1, ["float"]); p.wire(tb, 0, fpk, 0); p.wire(br, 0, fpk, 1)
fm = p.msg("$1 3, 260 220", 300, yv + 26); p.wire(fpk, 0, fm, 0)
fenv = p.obj("line~ 260", 300, yv + 52, 2, 2, ["signal", "bang"]); p.wire(fm, 0, fenv, 0)
saw = p.obj("saw~", 20, yv, 2, 1, SIG); p.wire(pitch, 0, saw, 0)
lp = p.obj("lores~ 260 0.55", 20, yv + 78, 3, 1, SIG); p.wire(saw, 0, lp, 0); p.wire(fenv, 0, lp, 1)
hp = p.obj("*~ 0.5", 140, yv, 2, 1, SIG); p.wire(pitch, 0, hp, 0)
sub = p.obj("cycle~", 140, yv + 26, 2, 1, SIG); p.wire(hp, 0, sub, 0)
sg = p.obj("*~ 0.6", 140, yv + 52, 2, 1, SIG); p.wire(sub, 0, sg, 0)
mx = p.obj("+~", 20, yv + 108, 2, 1, SIG); p.wire(lp, 0, mx, 0); p.wire(sg, 0, mx, 1)
amp = p.obj("*~", 20, yv + 134, 2, 1, SIG); p.wire(mx, 0, amp, 0); p.wire(env, 0, amp, 1)
lvr = p.obj("r av_level_bassline", 140, yv + 160, 0, 1); lvk = p.obj("pack 0. 40", 140, yv + 160 + 26, 2, 1)
lvs = p.obj("line~ 0.4", 140, yv + 160 + 52, 2, 2, ["signal", "bang"]); p.wire(lvr, 0, lvk, 0); p.wire(lvk, 0, lvs, 0)
g = p.obj("*~ 0.4", 20, yv + 160, 2, 1, SIG); p.wire(amp, 0, g, 0); p.wire(lvs, 0, g, 1)
dac = p.box("ezdac~", 20, yv + 190, 45, 45, 2, 0); p.wire(g, 0, dac, 0); p.wire(g, 0, dac, 1)
p.comment("click to start audio", 70, yv + 202, 160)
p.dump(f"{out}/bassline.maxpat"); check(f"{out}/bassline.maxpat")
