"""Jongly chopper, two versions from one recipe (run: python3 chopper.py <out> speed|granular).
speed    = jongly_chopper.maxpat: tape-style, slices play back at rate x pitch (pitch and speed move together).
granular = jongly_granular.maxpat: the same sequencer/rows/presets, but slices play as a cloud of 4 overlapping
           grains, so pitch and time are independent (pitch down without slowing, slow/freeze without pitch).
           It follows the speed version's clock (send~ jongly_phase) so the two play side by side in time."""
import sys
from maxgen import Patch, gen_sub, check
from ensemble import CHOP_PRESETS, CHOP_SWEEPS
out = sys.argv[1]
KIND = sys.argv[2] if len(sys.argv) > 2 else "speed"
G = KIND == "granular"
P = "g" if G else ""            # prefix for the granular version's buffers, sends and receives (keeps the two independent)

def granularize(code):
    """Turn the speed chopper's gen~ code into the granular one: same sequencer, rows, envelopes and compressor;
    only the clock (follows the speed version) and the playback (4 overlapping Hann grains) change."""
    reps = [
     ("Param dyn(1);       // dynamics amount: 0 = flat, 1 = full per-step velocity\n",
      "Param dyn(1);       // dynamics amount: 0 = flat, 1 = full per-step velocity\n"
      "Param gsize(90);    // GRAIN size in ms\n"
      "Param jitter(0.15); // random grain start spread (0-1 of a grain)\n"
      "Param scan(1);      // TIME speed through each slice, independent of pitch (0.5 = half speed, 0 = still)\n"
      "Param freeze(0);    // 1 = time stops: the grains hold the current spot (pitch still moves)\n"
      "Param sync(1);      // 1 = follow the speed chopper's clock (in1 = its loop phase) whenever it is running\n"
      "Param fit(1);       // 1 = stretch this loop's slices to jongly's step length (time only), so a different loop stays in sync\n"
      "Buffer ref(\"jongly\");  // the speed chopper's loop: only its length is read, to fit this loop to it\n"),
     ("History ph(0), lastStep(-1), slice(0), roll(1), mute(0), envf(0), rd(0), lastHit(-1), sv(1), spt(0);",
      "History ph(0), lastStep(-1), slice(0), roll(1), mute(0), envf(0), rd(0), lastHit(-1), sv(1), spt(0);\n"
      "History lastIn(-1), gp(0), gst0(0), gst1(0), gst2(0), gst3(0), gl0(1), gl1(1), gl2(1), gl3(1);"),
     ("ph = wrap(fixnan(ph + clamp(fixnan(rate), -4, 4)/len), 0, 1);",
      "own = wrap(fixnan(ph + clamp(fixnan(rate), -4, 4)/((fit > 0.5 && dim(ref) > 64) ? dim(ref) : len)), 0, 1);\n"
      "ext = clamp(fixnan(in1), 0, 0.999999);\n"
      "ph = (sync > 0.5 && ext != lastIn) ? ext : own;   // the speed chopper's phase moves -> follow it; else free-run\n"
      "lastIn = ext;"),
     ("rd = clamp(rd + clamp(fixnan(rate), -4, 4)*exp(semi*0.05776226505), -len, len);\n"
      "idx = clamp(fixnan(wrap((slice*len/16 + rd)/len, 0, 1)), 0, 0.999999);\n"
      "dry = ok*sample(loop, idx)*env*(1 - mute)*(1 - clamp(dyn, 0, 1)*(1 - sv));",
      "// GRANULAR: rd moves through the slice at 'scan' (time), each grain reads at 'pratio' (pitch) — independent\n"
      "pratio = exp(semi*0.05776226505);   // NOT 'ratio': that is the compressor Param (gen~ refuses to assign to a Param)\n"
      "fitk = (fit > 0.5 && dim(ref) > 64) ? clamp(len/dim(ref), 0.125, 8) : 1;   // this loop's length / jongly's length\n"
      "rd = clamp(rd + ((freeze > 0.5) ? 0 : clamp(fixnan(rate), -4, 4)*clamp(fixnan(scan), 0, 4)*fitk), -len, len);\n"
      "base = slice*len/16 + rd;\n"
      "gsz = clamp(fixnan(gsize), 10, 500)*samplerate*0.001;\n"
      "jit = clamp(fixnan(jitter), 0, 1)*gsz;\n"
      "gp = wrap(fixnan(gp + 1/gsz), 0, 1);\n"
      "q0 = gp; q1 = wrap(gp + 0.25, 0, 1); q2 = wrap(gp + 0.5, 0, 1); q3 = wrap(gp + 0.75, 0, 1);\n"
      "if (q0 < gl0) { gst0 = base + noise()*jit; }\n"
      "if (q1 < gl1) { gst1 = base + noise()*jit; }\n"
      "if (q2 < gl2) { gst2 = base + noise()*jit; }\n"
      "if (q3 < gl3) { gst3 = base + noise()*jit; }\n"
      "gl0 = q0; gl1 = q1; gl2 = q2; gl3 = q3;\n"
      "r0 = sample(loop, clamp(fixnan(wrap((gst0 + q0*gsz*pratio)/len, 0, 1)), 0, 0.999999))*(0.5 - 0.5*cos(6.283185307*q0));\n"
      "r1 = sample(loop, clamp(fixnan(wrap((gst1 + q1*gsz*pratio)/len, 0, 1)), 0, 0.999999))*(0.5 - 0.5*cos(6.283185307*q1));\n"
      "r2 = sample(loop, clamp(fixnan(wrap((gst2 + q2*gsz*pratio)/len, 0, 1)), 0, 0.999999))*(0.5 - 0.5*cos(6.283185307*q2));\n"
      "r3 = sample(loop, clamp(fixnan(wrap((gst3 + q3*gsz*pratio)/len, 0, 1)), 0, 0.999999))*(0.5 - 0.5*cos(6.283185307*q3));\n"
      "dry = ok*fixnan((r0 + r1 + r2 + r3)*0.5)*env*(1 - mute)*(1 - clamp(dyn, 0, 1)*(1 - sv));"),
     ("out3 = (comp > 0) ? gr : 0;", "out3 = (comp > 0) ? gr : 0;\nout4 = dim(loop)*1000/samplerate;   // CHECK: loaded loop length in ms (0 = not loaded)"),
    ]
    for a, b in reps:
        assert code.count(a) == 1, a
        code = code.replace(a, b)
    return code
# ================= ModSquad-style jongly chopper: one part, presets, auto-change, rolls =================
CHOP_CODE = r"""// ModSquad-style beat chopper (after Atau Tanaka's ModSquad, 2003).
// 16 steps. Step n plays slice chopsteps[n] (1-16); 0 = keep going into the next slice; 17 = rest.
// choprolls[n] = how many times step n re-fires (1 = normal, 2/3/4/8 = roll).
// chaos = chance per step of jumping to a random slice (sometimes rolled) instead.
Buffer loop("jongly");
Buffer steps("chopsteps");
Buffer rolls("choprolls");
Buffer vcut("chopvelcut");   // per-step VELOCITY, stored as cut = 1 - velocity (empty buffer = full volume)
Buffer spit("choppitch");    // per-step PITCH in semitones (-12..+12)
Param rate(1);      // 1 = original tempo (~170 bpm); tape-style, pitch follows
Param fade(48);     // samples of fade at slice/roll edges (kills clicks)
Param chaos(0.15);  // 0 = play the pattern exactly, 1 = every step random
Param rollnow(0);   // live roll: >= 2 re-fires every step this many times
Param comp(1);      // compressor on/off: evens out the loop's hits
Param thresh(-20);  // dB where compression starts
Param ratio(3);     // 3:1 above the threshold
Param makeup(4);    // dB of gain back after compressing
Param prstep(1);    // PITCH ROLL: semitones added on each roll repeat (negative = falling rolls)
Param prollon(1);   // pitch rolls on/off (off keeps prstep, just stops applying it)
Param lfoon(1);     // pitch LFO on/off
Param lfodepth(0.5);  // PITCH LFO depth in semitones
Param lforate(1);  // LFO cycles per loop (mode 0) / per step (mode 1) / per roll hit (mode 2)
Param lfomode(2);  // 0 = synced to the loop, 1 = retriggers every step, 2 = retriggers every roll hit (multi-trigger)
Param lfoshape(0); // 0 = sine wobble, 1 = saw dive (starts high, drops)
Param transpose(0); // global pitch, semitones -24..+24: drops the whole break down or up (rate/timing unchanged)
Param dyn(1);       // dynamics amount: 0 = flat, 1 = full per-step velocity
History ph(0), lastStep(-1), slice(0), roll(1), mute(0), envf(0), rd(0), lastHit(-1), sv(1), spt(0);

// SAFETY: an empty/reloading buffer (len 0) or a bad value would make the read index NaN/inf and
// sample() would read outside the buffer and crash Max (it did, 2026-10-06). Keep every value finite.
len = max(dim(loop), 1);
ok = (dim(loop) > 64) ? 1 : 0;
ph = wrap(fixnan(ph + clamp(fixnan(rate), -4, 4)/len), 0, 1);
step = floor(ph*16);
if (step != lastStep) {
	v = peek(steps, step, 0);
	mute = (v >= 17) ? 1 : 0;
	slice = (v >= 1 && v < 17) ? v - 1 : wrap(slice + 1, 0, 16);
	roll = max(peek(rolls, step, 0), 1);
	sv = 1 - clamp(fixnan(peek(vcut, step, 0)), 0, 1);
	spt = clamp(fixnan(peek(spit, step, 0)), -12, 12);
	if (mute == 0 && noise()*0.5 + 0.5 < chaos) {
		slice = clamp(floor((noise()*0.5 + 0.5)*16), 0, 15);
		roll = (noise() > 0.5) ? 2 : roll;
	}
	lastStep = step;
}
rl = (rollnow >= 2) ? rollnow : roll;
frac = ph*16 - step;
sub = frac*rl;
subfrac = sub - floor(sub);
env = clamp(min(subfrac, 1 - subfrac)*(len/16/rl)/fade, 0, 1);
// pitch: every slice/roll hit gets its own read pointer (rd, in samples) that runs at rate * 2^(semi/12),
// so hits can be pitched without changing the timing of the pattern
subn = floor(sub);
hit = step*16 + subn;
if (hit != lastHit) { rd = 0; lastHit = hit; }
rd = fixnan(rd);
lph = (lfomode < 0.5) ? ph*lforate : ((lfomode < 1.5) ? frac*lforate : subfrac*lforate);
lw = lph - floor(lph);
lfo = (lfoshape < 0.5) ? sin(6.283185307*lw) : 1 - 2*lw;
semi = clamp(fixnan(clamp(transpose, -24, 24) + spt + ((prollon > 0.5) ? clamp(prstep, -12, 12)*subn : 0) + ((lfoon > 0.5) ? clamp(lfodepth, 0, 24)*lfo : 0)), -36, 36);
rd = clamp(rd + clamp(fixnan(rate), -4, 4)*exp(semi*0.05776226505), -len, len);
idx = clamp(fixnan(wrap((slice*len/16 + rd)/len, 0, 1)), 0, 0.999999);
dry = ok*sample(loop, idx)*env*(1 - mute)*(1 - clamp(dyn, 0, 1)*(1 - sv));

// compressor: envelope follower (3 ms attack, 120 ms release) → gain reduction above thresh at 'ratio'
att = 1 - exp(-1/(0.003*samplerate));
rel = 1 - exp(-1/(0.12*samplerate));
a = abs(dry);
envf = fixnan(envf + ((a > envf) ? att : rel)*(a - envf));
over = max(atodb(max(envf, 0.00001)) - thresh, 0);
gr = over*(1 - 1/max(ratio, 1));
out1 = (comp > 0) ? dry*dbtoa(makeup - gr) : dry;
out2 = step;
out3 = (comp > 0) ? gr : 0;
"""
CHOP_CODE = CHOP_CODE.replace('"jongly"', f'"{P}jongly"').replace('"chop', f'"{P}chop')
if G:
    CHOP_CODE = granularize(CHOP_CODE)
else:
    CHOP_CODE = CHOP_CODE.replace("out3 = (comp > 0) ? gr : 0;", "out3 = (comp > 0) ? gr : 0;\nout4 = ph;   // loop phase -> send~ jongly_phase (the granular version follows it)")
c = Patch([40.0, 40.0, 1420.0, 1000.0])
c.present = True
c.comment(("JONGLY GRANULAR — the chopper as a grain cloud: same rows and presets, but pitch and time are independent (drop the break an octave without slowing it; slow or freeze time without changing pitch). Follows the speed chopper's clock when it is playing." if G else "JONGLY CHOPPER — after ModSquad. The jongly loop is cut into 16 slices. The green row says which slice each step plays; the orange row says how many times that step re-fires (rolls). Pick a pattern, or let AUTO move through them."), 20, 8, 900)
gbuf = c.obj(f"buffer~ {P}jongly" if G else "buffer~ jongly jongly.aif", 20, 70, 1, 2, ["float", "bang"])
c.obj(f"buffer~ {P}chopsteps 2", 200, 70, 1, 2, ["float", "bang"])
c.obj(f"buffer~ {P}choprolls 2", 350, 70, 1, 2, ["float", "bang"])

c.comment("SLICES — which slice each step plays (1-16) · 0 = keep going · 17 (top) = rest", 20, 104, 480)
ms = c.box("multislider", 20, 126, 480, 130, 1, 2, ["", ""], size=16, setminmax=[0.0, 17.0], settype=0, parameter_enable=0)
c.comment("ROLLS — times each step re-fires (1 = normal)", 20, 264, 440)
mr = c.box("multislider", 20, 286, 480, 60, 1, 2, ["", ""], size=16, setminmax=[1.0, 8.0], settype=0, parameter_enable=0,
           slidercolor=[0.85, 0.45, 0.1, 1.0])
lfs = c.obj("listfunnel", 20, 356, 1, 1); pks = c.obj(f"peek~ {P}chopsteps 1 0", 20, 382, 3, 1, ["float"])
lfr = c.obj("listfunnel", 180, 356, 1, 1); pkr = c.obj(f"peek~ {P}choprolls 1 0", 180, 382, 3, 1, ["float"])
c.wire(ms, 0, lfs, 0); c.wire(lfs, 0, pks, 0); c.wire(mr, 0, lfr, 0); c.wire(lfr, 0, pkr, 0)

# patterns: each message sets both rows ("s ..." → slices, "r ..." → rolls)
PRESETS = CHOP_PRESETS
xr = 530
c.comment("PATTERNS (click one)", xr, 104, 200)
rt = c.obj("route s r", xr, 104 + 26*len(PRESETS) + 30, 3, 3)
c.wire(rt, 0, ms, 0); c.wire(rt, 1, mr, 0)
pmsgs = []
for k, (name, sl, rl) in enumerate(PRESETS):
    m = c.msg(f"s {sl}, r {rl}", xr, 126 + 26*k, 400); c.wire(m, 0, rt, 0); pmsgs.append(m)
lb = c.obj("loadbang", 400, 70, 1, 1, ["bang"]); c.wire(lb, 0, pmsgs[0], 0)

ya = 104 + 26*len(PRESETS) + 64
c.comment("random slices", xr, ya, 100)
btn = c.box("button", xr + 100, ya - 2, 24, 24, 1, 1, ["bang"])
uz = c.obj("uzi 16", xr + 130, ya, 2, 3, ["bang", "bang", "int"]); rnd = c.obj("random 17", xr + 190, ya, 2, 1, ["int"])
grp = c.obj("zl group 16", xr + 270, ya, 2, 2, ["", ""])
c.wire(btn, 0, uz, 0); c.wire(uz, 0, rnd, 0); c.wire(rnd, 0, grp, 0); c.wire(grp, 0, ms, 0)

# AUTO: pick a random pattern every N loops
c.comment("AUTO — new pattern every", xr, ya + 34, 170)
at = c.box("toggle", xr + 175, ya + 32, 22, 22, 1, 1, ["int"])
lmn = c.obj("loadmess 2", xr + 300, ya + 60, 1, 1)
nn = c.box("number", xr + 205, ya + 32, 40, 22, 1, 2, ["", "bang"], minimum=1); c.comment("loops", xr + 250, ya + 34, 50)
c.wire(lmn, 0, nn, 0)
lma = c.obj("loadmess 1", xr + 300, ya + 34, 1, 1); c.wire(lma, 0, at, 0)

# CHAOS / LIVE ROLL / RATE
c.comment("CHAOS — random jumps per step (0-1)", 20, 420, 260)
lmc = c.obj("loadmess set 0.15", 20, 442, 1, 1); fc = c.box("flonum", 150, 442, 60, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=1.0)
pch = c.obj("prepend chaos", 220, 442, 1, 1); c.wire(lmc, 0, fc, 0); c.wire(fc, 0, pch, 0)
c.comment("LIVE ROLL — every step (0 = off)", 20, 474, 260)
rolls = [c.msg(f"rollnow {n}", 20 + i*82, 496) for i, n in enumerate([0, 2, 3, 4, 8])]
c.comment("RATE (tape speed)", xr, ya + 96, 130)
lm = c.obj("loadmess set 1.", xr, ya + 118, 1, 1); fl = c.box("flonum", xr + 110, ya + 118, 60, 22, 1, 2, ["", "bang"], format=6)
pr = c.obj("prepend rate", xr + 180, ya + 118, 1, 1); c.wire(lm, 0, fl, 0); c.wire(fl, 0, pr, 0)

NOUT = 4
gen = c.obj("gen~", 20, 534, 1, NOUT, ["signal"] * NOUT, w=200.0, patcher=gen_sub("dsp.gen", CHOP_CODE, 1 if G else 0, NOUT))
if G:
    c.wire(c.obj("receive~ jongly_phase", 20, 508, 0, 1, ["signal"]), 0, gen, 0)   # clock from the speed version
else:
    c.wire(gen, 3, c.obj("send~ jongly_phase", 240, 560, 1, 0), 0)
# COMPRESSOR controls (inside the gen~): on · threshold dB · ratio · makeup dB · gain reduction readout
c.comment("COMP on · thresh dB · ratio · makeup dB · reduction dB", 240, 534, 330)
cmp_on = c.box("toggle", 240, 556, 22, 22, 1, 1, ["int"])
cth = c.box("flonum", 268, 556, 50, 22, 1, 2, ["", "bang"], format=6, maximum=0.0)
crt = c.box("flonum", 324, 556, 44, 22, 1, 2, ["", "bang"], format=6, minimum=1.0)
cmk = c.box("flonum", 374, 556, 44, 22, 1, 2, ["", "bang"], format=6)
cgr = c.box("flonum", 430, 556, 50, 22, 1, 2, ["", "bang"], format=6)
for k, (ui, name, init) in enumerate([(cmp_on, "comp", 1), (cth, "thresh", -20), (crt, "ratio", 3), (cmk, "makeup", 4)]):
    c.wire(c.obj(f"loadmess {init}", 900, 520 + 26*k, 1, 1), 0, ui, 0)
    pp = c.obj(f"prepend {name}", 820, 520 + 26*k, 1, 1); c.wire(ui, 0, pp, 0); c.wire(pp, 0, gen, 0)
grs = c.obj("snapshot~ 50", 820, 624, 2, 1, ["float"]); c.wire(gen, 2, grs, 0); c.wire(grs, 0, cgr, 0)
# PITCH: rolls that climb/fall + a pitch LFO tied to the sequencer (loop / step / every roll hit)
c.comment("PITCH roll st · LFO depth st · rate · on: rolls LFO", 20, 586, 260)
prs = c.box("flonum", 20, 606, 50, 22, 1, 2, ["", "bang"], format=6)
lfd = c.box("flonum", 76, 606, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0)
lfr = c.box("flonum", 132, 606, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0)
for k, (ui, name, init) in enumerate([(prs, "prstep", 1), (lfd, "lfodepth", 0.5), (lfr, "lforate", 1)]):
    c.wire(c.obj(f"loadmess {init}", 1000, 520 + 26*k, 1, 1), 0, ui, 0)
    pp = c.obj(f"prepend {name}", 1080, 520 + 26*k, 1, 1); c.wire(ui, 0, pp, 0); c.wire(pp, 0, gen, 0)
# on/off toggles for the pitch rolls and the pitch LFO (also from anywhere: av_chop_prollon / av_chop_lfoon)
for k, (x, name) in enumerate([(192, "prollon"), (220, "lfoon")]):
    tg = c.box("toggle", x, 606, 22, 22, 1, 1, ["int"])
    c.wire(c.obj("loadmess 1", 1000, 598 + 26*k, 1, 1), 0, tg, 0)
    pp = c.obj(f"prepend {name}", 1080, 598 + 26*k, 1, 1); c.wire(tg, 0, pp, 0); c.wire(pp, 0, gen, 0)
    c.wire(c.obj(f"r av_{P}chop_{name}", 1180, 598 + 26*k, 0, 1), 0, tg, 0)
c.comment("LFO sync: loop · step · roll hit   shape: sine · dive", 20, 636, 220)
for k, m_ in enumerate(["lfomode 0", "lfomode 1", "lfomode 2", "lfoshape 0", "lfoshape 1"]):
    m = c.msg(m_, 20 + (k % 3)*72 if k < 3 else 20 + (k - 3)*80, 656 if k < 3 else 682, 68 if k < 3 else 76)
    c.wire(m, 0, gen, 0)
for m in rolls + [pr, pch]: c.wire(m, 0, gen, 0)
# --- VELOCITY + STEP PITCH (new column): dynamics built into the loop, and pitch that goes both ways ---
xv = 980
c.obj(f"buffer~ {P}chopvelcut 2", xv, 70, 1, 2, ["float", "bang"]); c.obj(f"buffer~ {P}choppitch 2", xv + 160, 70, 1, 2, ["float", "bang"])
c.comment("VELOCITY — loudness of each step (builds dynamics into the loop)", xv, 104, 400)
mv = c.box("multislider", xv, 126, 400, 100, 1, 2, ["", ""], size=16, setminmax=[0.0, 1.0], settype=1, parameter_enable=0,
           slidercolor=[0.3, 0.6, 0.95, 1.0])
c.comment("STEP PITCH — semitones per step, down or up (-12..+12)", xv, 236, 400)
mpi = c.box("multislider", xv, 258, 400, 100, 1, 2, ["", ""], size=16, setminmax=[-12.0, 12.0], settype=0, parameter_enable=0,
            slidercolor=[0.75, 0.35, 0.85, 1.0])
inv = c.obj("vexpr 1. - $f1", 1420, 126, 2, 1)                       # store cut = 1 - velocity
lfv = c.obj("listfunnel", 1420, 152, 1, 1); pkv = c.obj(f"peek~ {P}chopvelcut 1 0", 1420, 178, 3, 1, ["float"])
c.wire(mv, 0, inv, 0); c.wire(inv, 0, lfv, 0); c.wire(lfv, 0, pkv, 0)
lfp = c.obj("listfunnel", 1420, 258, 1, 1); pkp = c.obj(f"peek~ {P}choppitch 1 0", 1420, 284, 3, 1, ["float"])
c.wire(mpi, 0, lfp, 0); c.wire(lfp, 0, pkp, 0)
vrt = c.obj("route v p", 1420, 380, 3, 3); c.wire(vrt, 0, mv, 0); c.wire(vrt, 1, mpi, 0)
DYN = [("flat", [1]*16),
       ("groove", [1, .5, .7, .45, .9, .5, .75, .5, 1, .5, .7, .45, .9, .55, .8, .6]),
       ("accents", [1, .45, .45, .6] * 4),
       ("ghosts", [1, .35] * 8),
       ("swell", [round(.3 + .7 * i / 15, 2) for i in range(16)]),
       ("build", [round(.15 + .85 * (i / 15) ** 2, 2) for i in range(16)]),
       ("fade", [round(1 - .7 * i / 15, 2) for i in range(16)]),
       ("drop", [1, .4, .4, .4, .9, .4, .4, .4, .2, .2, .2, .2, .6, .7, .85, 1])]
PIT = [("flat", [0]*16),
       ("dropend", [0]*12 + [-3, -5, -7, -12]),
       ("riseend", [0]*12 + [2, 3, 5, 7]),
       ("dubdrop", [-12, 0, 0, 0] * 4),
       ("seesaw", [0, -5, 0, 5] * 4),
       ("dive", [-i for i in range(13)] + [-12, -12, -12]),
       ("octaves", [0, 0, 12, 0, 0, -12, 0, 0] * 2)]
def named_presets(label, tag, presets, y):
    """visible name buttons → [route names] → hidden value lists → [route v p] → the multislider"""
    c.comment(label, xv, y, 80)
    rn = c.obj("route " + " ".join(n for n, _ in presets), 1620, y, len(presets) + 1, len(presets) + 1)
    msgs = []
    for k, (name, vals) in enumerate(presets):
        m = c.msg(name, xv + 70 + (k % 4) * 82, y + (k // 4) * 24, 78); c.wire(m, 0, rn, 0); msgs.append((name, m))
        hv = c.msg(f"{tag} " + " ".join(str(v) for v in vals), 1620 + k * 10, y + 60 + k * 22, 200)
        c.wire(rn, k, hv, 0); c.wire(hv, 0, vrt, 0)
    return msgs
vmsgs = named_presets("DYNAMICS", "v", DYN, 368)
pmsgs2 = named_presets("PITCH", "p", PIT, 424)
c.comment("TRANSPOSE whole break (st) · dynamics amount", xv, 476, 300)
tps = c.box("flonum", xv, 496, 50, 22, 1, 2, ["", "bang"], format=6, minimum=-24.0, maximum=24.0)
dya = c.box("flonum", xv + 300, 496, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=1.0)
for k, st in enumerate([-12, -7, -5, 0, 5, 7, 12]):
    c.wire(c.msg(f"{st}", xv + 56 + k * 34, 496, 30), 0, tps, 0)
for ui, name, init in [(tps, "transpose", 0), (dya, "dyn", 1)]:
    c.wire(c.obj(f"loadmess {init}", 1420, 430 + 26 * [tps, dya].index(ui), 1, 1), 0, ui, 0)
    pp = c.obj(f"prepend {name}", 1520, 430 + 26 * [tps, dya].index(ui), 1, 1); c.wire(ui, 0, pp, 0); c.wire(pp, 0, gen, 0)
c.wire(c.obj(f"r av_{P}chop_transpose", 1520, 380, 0, 1), 0, tps, 0)
c.wire(c.obj(f"r av_{P}chop_dyn", 1620, 380, 0, 1), 0, dya, 0)
lbv = c.obj("loadbang", 1520, 330, 1, 1, ["bang"]); c.wire(lbv, 0, vmsgs[1][1], 0); c.wire(lbv, 0, pmsgs2[0][1], 0)   # groove dynamics, flat pitch

# --- GRAIN controls (granular version only) ---
if G:
    c.comment("GRAIN size ms · jitter · time speed · freeze · sync to speed chopper", xv, 700, 420)
    gsz = c.box("flonum", xv, 722, 50, 22, 1, 2, ["", "bang"], format=6, minimum=10.0, maximum=500.0)
    gjt = c.box("flonum", xv + 56, 722, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=1.0)
    gsc = c.box("flonum", xv + 112, 722, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=4.0)
    gfz = c.box("toggle", xv + 170, 722, 22, 22, 1, 1, ["int"])
    gsy = c.box("toggle", xv + 200, 722, 22, 22, 1, 1, ["int"])
    for k, (ui, name, init) in enumerate([(gsz, "gsize", 90), (gjt, "jitter", 0.15), (gsc, "scan", 1), (gfz, "freeze", 0), (gsy, "sync", 1)]):
        c.wire(c.obj(f"loadmess {init}", 1420, 700 + 26*k, 1, 1), 0, ui, 0)
        pp = c.obj(f"prepend {name}", 1520, 700 + 26*k, 1, 1); c.wire(ui, 0, pp, 0); c.wire(pp, 0, gen, 0)
    c.comment("time:", xv, 752, 40)
    for k, v in enumerate([0, 0.25, 0.5, 1, 2]):
        c.wire(c.msg(f"{v}", xv + 40 + k * 40, 752, 36), 0, gsc, 0)

    # LOOP: the granular chopper plays a different break, fitted to jongly's bar (fit) so the two stay in sync
    LIB = "/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/Loops/Drums/Full/"
    LOOPS = [("dnblive", "Drum and Bass Live 170 bpm.aif"), ("rolling", "Drum and Bass Rolling 170 bpm.wav"),
             ("scatty", "Break Scatty 174 bpm.wav"), ("funkchop", "Break Funk Chop 115 bpm.wav"), ("jongly", None)]
    c.comment("LOOP (fitted to jongly's bar) · fit", xv, 784, 300)
    lrt = c.obj("route " + " ".join(n for n, _ in LOOPS), 1620, 784, len(LOOPS) + 1, len(LOOPS) + 1)
    lmsgs = []
    for k, (name, f) in enumerate(LOOPS):
        m = c.msg(name, xv + k * 70, 806, 66); c.wire(m, 0, lrt, 0); lmsgs.append(m)
        rd_ = c.msg(f'read "{LIB}{f}"' if f else "read jongly.aif", 1620 + k * 10, 840 + k * 22, 300)
        c.wire(lrt, k, rd_, 0); c.wire(rd_, 0, gbuf, 0)
    fitt = c.box("toggle", xv + 360, 806, 22, 22, 1, 1, ["int"])
    c.wire(c.obj("loadmess 1", 1420, 840, 1, 1), 0, fitt, 0)
    pf = c.obj("prepend fit", 1520, 840, 1, 1); c.wire(fitt, 0, pf, 0); c.wire(pf, 0, gen, 0)
    lbl = c.obj("loadbang", 1420, 870, 1, 1, ["bang"]); c.wire(lbl, 0, lmsgs[0], 0)   # default: D&B Live 170 (same length as jongly)
    # DIAGNOSTICS: loop ms (0 = loop not loaded) · out level (0 = silent) — the panel's "step" number shows gen~ is running
    c.comment("CHECK: loop ms (0 = not loaded) · out level", xv, 838, 300)
    lms = c.box("flonum", xv, 860, 70, 22, 1, 2, ["", "bang"], format=6)
    lsn = c.obj("snapshot~ 500", 1620, 960, 2, 1, ["float"]); c.wire(gen, 3, lsn, 0); c.wire(lsn, 0, lms, 0)
    olv = c.box("flonum", xv + 80, 860, 70, 22, 1, 2, ["", "bang"], format=6)
    pka = c.obj("peakamp~ 200", 1620, 1000, 2, 1, ["float"]); c.wire(gen, 0, pka, 0); c.wire(pka, 0, olv, 0)

# --- FILTER SWEEPS on the drums: click a sweep, it fires on the next beat (every 4 steps) ---
yf = 740
c.comment("FILTER SWEEPS — click one, or let AUTO fire them; each starts on the next beat, stays audible and ends open. Message = mode (1 LP · 2 HP) then cutoff/time pairs (MIDI note, ms).", 20, yf, 900)
SWEEPS = CHOP_SWEEPS
sreg = c.obj("zl reg", 560, yf + 30, 2, 2, ["", ""])
arm = c.obj("t b", 640, yf + 30, 1, 1, ["bang"]); one = c.msg("1", 690, yf + 30)
fg = c.obj("gate 1", 560, yf + 90, 2, 1)
c.wire(arm, 0, one, 0); c.wire(one, 0, fg, 0)
smsgs = []
for k, (name, seq) in enumerate(SWEEPS):
    col, row = k % 4, k // 4
    x, y = 20 + col*135, yf + 30 + row*52
    c.comment(name, x, y, 130); m = c.msg(seq, x, y + 22, 125); smsgs.append(m)
    c.wire(m, 0, sreg, 1); c.wire(m, 0, arm, 0)
b4 = c.obj("% 4", 760, yf + 64, 2, 1, ["int"]); bs = c.obj("sel 0", 760, yf + 90, 2, 2, ["bang", ""])
c.wire(b4, 0, bs, 0); c.wire(bs, 0, fg, 1)
fire = c.obj("t b b", 560, yf + 116, 1, 2, ["bang", "bang"]); c.wire(fg, 0, fire, 0)
zero = c.msg("0", 640, yf + 116); c.wire(fire, 0, zero, 0); c.wire(zero, 0, fg, 0)    # one-shot: close after firing
c.wire(fire, 1, sreg, 0)
slc = c.obj("zl slice 1", 560, yf + 142, 2, 2, ["", ""]); c.wire(sreg, 0, slc, 0)
cut = c.obj("line~ 132", 680, yf + 168, 2, 2, ["signal", "bang"]); c.wire(slc, 1, cut, 0)
mtf = c.obj("mtof~", 680, yf + 194, 1, 1, ["signal"]); c.wire(cut, 0, mtf, 0)
c.comment("resonance (0-1)", 760, yf + 142, 110)
rq = c.box("flonum", 760, yf + 166, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=0.95)
c.wire(c.obj("loadmess 0.5", 820, yf + 166, 1, 1), 0, rq, 0)
svf = c.obj("svf~ 1000 0.5", 20, yf + 140, 3, 4, ["signal"] * 4); c.wire(gen, 0, svf, 0); c.wire(mtf, 0, svf, 1); c.wire(rq, 0, svf, 2)
sel3 = c.obj("selector~ 3 1", 20, yf + 170, 4, 1, ["signal"]); c.wire(slc, 0, sel3, 0)
for k in range(3): c.wire(svf, k, sel3, k + 1)
lvr = c.obj("r av_level_granular" if G else "r av_level_chopper", 140, yf + 200, 0, 1); lvk = c.obj("pack 0. 40", 140, yf + 226, 2, 1)
lvs = c.obj("line~ 0.5", 140, yf + 252, 2, 2, ["signal", "bang"]); c.wire(lvr, 0, lvk, 0); c.wire(lvk, 0, lvs, 0)
g = c.obj("*~ 0.5", 20, yf + 200, 2, 1, ["signal"]); c.wire(sel3, 0, g, 0); c.wire(lvs, 0, g, 1)
if not G: c.wire(g, 0, c.obj("send~ av_drums", 260, yf + 200, 1, 0), 0)   # the visuals listen to the (speed) drums
dac = c.box("ezdac~", 20, yf + 228, 45, 45, 2, 0); c.wire(g, 0, dac, 0); c.wire(g, 0, dac, 1)
c.comment("click to start audio", 70, yf + 240, 140)

# step readout + broadcast (the Buddha bass follows jongly_step) + loop counter for AUTO
sn = c.obj("snapshot~ 5", 240, 616, 2, 1, ["float"]); c.wire(gen, 1, sn, 0)
ch = c.obj("change", 240, 642, 1, 3, ["", "int", "int"]); c.wire(sn, 0, ch, 0)
num = c.box("number", 330, 642, 50, 22, 1, 2, ["", "bang"]); c.wire(ch, 0, num, 0); c.comment("step", 382, 593, 40)
snd = c.obj(f"s {P}jongly_step", 240, 668, 1, 0); c.wire(ch, 0, snd, 0)
s0 = c.obj("sel 0", 440, 616, 2, 2, ["bang", ""]); c.wire(ch, 0, s0, 0)           # one bang per loop
c.wire(ch, 0, b4, 0)                                                                # beat clock for sweeps
gt = c.obj("gate 1", 440, 642, 2, 1); c.wire(at, 0, gt, 0); c.wire(s0, 0, gt, 1)
cnt = c.obj("counter", 500, 642, 3, 4, ["int", "", "", "int"]); c.wire(gt, 0, cnt, 0)
md = c.obj("% 2", 570, 642, 2, 1, ["int"]); c.wire(cnt, 0, md, 0); c.wire(nn, 0, md, 1)
s1 = c.obj("sel 0", 620, 642, 2, 2, ["bang", ""]); c.wire(md, 0, s1, 0)
rp = c.obj(f"random {len(PRESETS)}", 680, 642, 2, 1, ["int"]); c.wire(s1, 0, rp, 0)
sp = c.obj("sel " + " ".join(str(k) for k in range(len(PRESETS))), 680, 668, 2, len(PRESETS) + 1); c.wire(rp, 0, sp, 0)
for k, m in enumerate(pmsgs): c.wire(sp, k, m, 0)
# AUTO SWEEPS: every N loops fire a random sweep (not 'open')
c.comment("AUTO SWEEP every", 600, yf + 236, 120)
asw = c.box("toggle", 715, yf + 234, 22, 22, 1, 1, ["int"]); c.wire(c.obj("loadmess 1", 600, yf + 290, 1, 1), 0, asw, 0)
asn = c.box("number", 742, yf + 234, 40, 22, 1, 2, ["", "bang"], minimum=1); c.comment("loops", 786, yf + 236, 50)
c.wire(c.obj("loadmess 2", 680, yf + 290, 1, 1), 0, asn, 0)
sg = c.obj("gate 1", 600, yf + 316, 2, 1); c.wire(asw, 0, sg, 0); c.wire(s0, 0, sg, 1)
scn = c.obj("counter", 660, yf + 316, 3, 4, ["int", "", "", "int"]); c.wire(sg, 0, scn, 0)
smd = c.obj("% 2", 730, yf + 316, 2, 1, ["int"]); c.wire(scn, 0, smd, 0); c.wire(asn, 0, smd, 1)
ss0 = c.obj("sel 0", 780, yf + 316, 2, 2, ["bang", ""]); c.wire(smd, 0, ss0, 0)
srn = c.obj(f"random {len(SWEEPS) - 1}", 600, yf + 342, 2, 1, ["int"]); c.wire(ss0, 0, srn, 0)
sp1 = c.obj("+ 1", 690, yf + 342, 2, 1, ["int"]); c.wire(srn, 0, sp1, 0)
ssel = c.obj("sel " + " ".join(str(k) for k in range(len(SWEEPS))), 740, yf + 342, 2, len(SWEEPS) + 1); c.wire(sp1, 0, ssel, 0)
for k, m in enumerate(smsgs): c.wire(ssel, k, m, 0)
c.comment("sweep now", 600, yf + 262, 70); swb = c.box("button", 670, yf + 260, 22, 22, 1, 1, ["bang"]); c.wire(swb, 0, srn, 0)

# the conductor drives these
for k, (name, dst) in enumerate([("av_drum_pattern", sp), ("av_auto_patterns", at), ("av_auto_sweeps", asw),
                                 ("av_sweep_now", srn), ("av_chaos", fc)]):
    c.wire(c.obj(f"r {name.replace('av_', 'av_' + P, 1)}", 820, 380 + 26*k, 0, 1), 0, dst, 0)
name = "jongly_granular.maxpat" if G else "jongly_chopper.maxpat"
c.dump(f"{out}/{name}"); check(f"{out}/{name}")
