import sys
from maxgen import Patch, check, add_pocket
out = sys.argv[1]
SIG = ["signal"]

p = Patch([60.0, 60.0, 1320.0, 1000.0])
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
         ("octaves", "1 13 1 13 1 13 1 13 6 18 6 18 8 20 8 20"),
         ("acid", "1 1 13 1 0 4 1 13 8 0 1 13 6 0 4 1"),
         ("rolling", "1 0 1 13 1 0 8 0 1 0 1 13 11 0 8 6"),
         ("squelch", "1 13 0 13 1 13 0 6 1 13 0 13 4 6 8 11")]
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
rroot = p.obj("r av_root", 700, 290, 0, 1); rset = p.obj("prepend set", 700, 316, 1, 1); p.wire(rroot, 0, rset, 0); p.wire(rset, 0, rn, 0)
rm1 = p.obj("- 1", 620, 316, 2, 1, ["int"]); p.wire(rroot, 0, rm1, 0); p.wire(rm1, 0, nt, 1)
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

# --- EVOLVE: every N loops rewrite a few steps from the scale (av_evolve_line.js), and drift the filter ---
xe, ye = 400, 420
p.comment("EVOLVE — every N loops: rewrite some steps from the scale (sometimes an octave jump or groove shift); filter brightness + resonance drift", xe, ye, 480)
ev = p.box("toggle", xe, ye + 44, 22, 22, 1, 1, ["int"]); p.wire(p.obj("loadmess 1", xe + 300, ye + 44, 1, 1), 0, ev, 0)
p.wire(p.obj("r av_bass_evolve", xe + 380, ye + 44, 0, 1), 0, ev, 0)
p.comment("every", xe + 30, ye + 46, 40)
evn = p.box("number", xe + 72, ye + 44, 40, 22, 1, 2, ["", "bang"], minimum=1); p.comment("loops ·", xe + 116, ye + 46, 50)
evc = p.box("number", xe + 170, ye + 44, 40, 22, 1, 2, ["", "bang"], minimum=1, maximum=16); p.comment("changes", xe + 214, ye + 46, 60)
p.wire(p.obj("loadmess 2", xe + 300, ye + 70, 1, 1), 0, evn, 0); p.wire(p.obj("loadmess 3", xe + 380, ye + 70, 1, 1), 0, evc, 0)
# evolve presets: "<every N loops> <changes>"
eup = p.obj("unpack 0 0", xe, ye + 300, 2, 2, ["int", "int"]); p.wire(eup, 0, evn, 0); p.wire(eup, 1, evc, 0)
p.wire(p.obj("r av_bass_evolve_preset", xe + 100, ye + 300, 0, 1), 0, eup, 0)
for k, (name, v) in enumerate([("steady", "4 1"), ("drift", "2 3"), ("restless", "1 5"), ("wild", "1 8")]):
    p.comment(name, xe + k*70, ye + 70, 66); m = p.msg(v, xe + k*70, ye + 90, 40); p.wire(m, 0, eup, 0)
el = p.obj("sel 0", xe, ye + 120, 2, 2, ["bang", ""]); p.wire(rs, 0, el, 0); p.wire(cn, 0, el, 0)      # one bang per loop
eg = p.obj("gate 1", xe, ye + 146, 2, 1); p.wire(ev, 0, eg, 0); p.wire(el, 0, eg, 1)
ecn = p.obj("counter", xe + 60, ye + 146, 3, 4, ["int", "", "", "int"]); p.wire(eg, 0, ecn, 0)
emd = p.obj("% 2", xe + 130, ye + 146, 2, 1, ["int"]); p.wire(ecn, 0, emd, 0); p.wire(evn, 0, emd, 1)
e0 = p.obj("sel 0", xe + 180, ye + 146, 2, 2, ["bang", ""]); p.wire(emd, 0, e0, 0)
et = p.obj("t b b b", xe + 180, ye + 172, 1, 3, ["bang"] * 3); p.wire(e0, 0, et, 0)
ecf = p.obj("f 3", xe, ye + 198, 2, 1, ["float"]); p.wire(evc, 0, ecf, 1); p.wire(et, 2, ecf, 0)
emsg = p.obj("prepend evolve", xe, ye + 224, 1, 1); p.wire(ecf, 0, emsg, 0)
ejs = p.obj("js av_evolve_line.js", xe, ye + 250, 1, 1); p.wire(emsg, 0, ejs, 0)
p.wire(ms, 0, ejs, 0); p.wire(ejs, 0, ms, 0)                                   # pattern in → evolved pattern out
esc = p.obj("prepend scale", xe + 160, ye + 224, 1, 1); p.wire(tll, 0, esc, 0); p.wire(esc, 0, ejs, 0)
# filter drift: new brightness 700-4000 Hz and resonance 0.3-0.8 each evolve
rb_ = p.obj("random 100", xe + 300, ye + 198, 2, 1, ["int"]); p.wire(et, 1, rb_, 0)
sb = p.obj("scale 0 99 700 4000", xe + 300, ye + 224, 6, 1, ["float"]); p.wire(rb_, 0, sb, 0); p.wire(sb, 0, br, 0)
rr2 = p.obj("random 100", xe + 300, ye + 250, 2, 1, ["int"]); p.wire(et, 0, rr2, 0)
sr = p.obj("scale 0 99 0.3 0.8", xe + 300, ye + 276, 6, 1, ["float"]); p.wire(rr2, 0, sr, 0)
rsn = p.box("flonum", xe + 420, ye + 276, 50, 22, 1, 2, ["", "bang"], format=6); p.comment("resonance", xe + 474, ye + 277, 70)
p.wire(sr, 0, rsn, 0); p.wire(rsn, 0, lp, 2); p.wire(p.obj("loadmess 0.55", xe + 420, ye + 250, 1, 1), 0, rsn, 0)
hp = p.obj("*~ 0.5", 140, yv, 2, 1, SIG); p.wire(pitch, 0, hp, 0)
sub = p.obj("cycle~", 140, yv + 26, 2, 1, SIG); p.wire(hp, 0, sub, 0)
sg = p.obj("*~ 0.6", 140, yv + 52, 2, 1, SIG); p.wire(sub, 0, sg, 0)
mx = p.obj("+~", 20, yv + 108, 2, 1, SIG); p.wire(lp, 0, mx, 0); p.wire(sg, 0, mx, 1)
amp = p.obj("*~", 20, yv + 134, 2, 1, SIG); p.wire(mx, 0, amp, 0); p.wire(env, 0, amp, 1)
lvr = p.obj("r av_level_bassline", 140, yv + 160, 0, 1); lvk = p.obj("pack 0. 40", 140, yv + 160 + 26, 2, 1)
lvs = p.obj("line~ 0.5", 140, yv + 160 + 52, 2, 2, ["signal", "bang"]); p.wire(lvr, 0, lvk, 0); p.wire(lvk, 0, lvs, 0)
# pocket: a gentle 2500 Hz lowpass that dips on each beat, plus a small level duck
pcut, pgain = add_pocket(p, [rs, cn], 920, 660, 2500, 0.8)
pf = p.obj("lores~ 2500 0.15", 100, yv + 186, 3, 1, SIG); p.wire(amp, 0, pf, 0); p.wire(pcut, 0, pf, 1)
pg = p.obj("*~", 100, yv + 212, 2, 1, SIG); p.wire(pf, 0, pg, 0); p.wire(pgain, 0, pg, 1)
g = p.obj("*~ 0.5", 20, yv + 160, 2, 1, SIG); p.wire(pg, 0, g, 0); p.wire(lvs, 0, g, 1)
dac = p.box("ezdac~", 20, yv + 190, 45, 45, 2, 0); p.wire(g, 0, dac, 0); p.wire(g, 0, dac, 1)
p.comment("click to start audio", 70, yv + 202, 160)
p.dump(f"{out}/bassline.maxpat"); check(f"{out}/bassline.maxpat")
