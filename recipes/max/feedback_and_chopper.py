import sys
from maxgen import Patch, gen_sub, check
out = sys.argv[1]

# ================= gen video feedback =================
FB_CODE = r"""// Infinite feedback: last frame (in1) is zoomed, twisted and colour-bled back into itself,
// with a wandering ring as the seed. decay 1 = nothing ever fades.
Param tick(0);
Param zoom(0.99);
Param twist(0.02);
Param decay(0.985);
Param drift(0.003);

asp = dim.x/dim.y;
cx = (norm.x - 0.5)*asp;
cy = norm.y - 0.5;

// sample the previous frame through a slowly wobbling zoom + rotation
a = twist*sin(tick*0.11);
z = zoom + 0.01*sin(tick*0.07);
rx = (cx*cos(a) - cy*sin(a))*z;
ry = (cx*sin(a) + cy*cos(a))*z;
u = rx/asp + 0.5 + drift*sin(tick*0.7);
v = ry + 0.5 + drift*cos(tick*0.53);
p = sample(in1, vec(u, v));

// bleed each channel into the next so colours slowly rotate
hr = mix(p.r, p.g, 0.03);
hg = mix(p.g, p.b, 0.03);
hb = mix(p.b, p.r, 0.03);

// seed: a breathing ring drifting around the frame
sx = cx - 0.45*sin(tick*0.37);
sy = cy - 0.3*cos(tick*0.29);
d = sqrt(sx*sx + sy*sy);
rad = 0.07 + 0.03*sin(tick*1.7);
ring = 1 - smoothstep(0, 0.008, abs(d - rad));
cr = 0.5 + 0.5*sin(tick*0.5);
cg = 0.5 + 0.5*sin(tick*0.5 + 2.094);
cb = 0.5 + 0.5*sin(tick*0.5 + 4.188);

out1 = vec(clamp(hr*decay + cr*ring, 0, 1),
           clamp(hg*decay + cg*ring, 0, 1),
           clamp(hb*decay + cb*ring, 0, 1), 1);
"""
p = Patch([60.0, 60.0, 720.0, 520.0])
p.comment("gen feedback — jit.gl.pix reads its own last frame (copied by jit.gl.slab, held in zl reg) and draws it back zoomed + twisted. Render toggle seeds the loop and enables window 'fbw'.", 20, 8, 660)
fs = p.box("toggle", 20, 60, 24, 24, 1, 1, ["int"]); p.comment("fullscreen", 48, 62, 80)
fsm = p.msg("fullscreen $1", 20, 92); p.wire(fs, 0, fsm, 0)
world = p.obj("jit.world fbw @enable 0 @size 1280 720 @floating 0", 20, 130, 1, 3, ["", "", ""])
p.wire(fsm, 0, world, 0)
# render toggle: seeds the feedback loop *then* enables the world, so it always starts cleanly
on = p.box("toggle", 140, 60, 24, 24, 1, 1, ["int"]); p.comment("render (auto-on)", 168, 62, 120)
lm = p.obj("loadmess 1", 300, 60, 1, 1); p.wire(lm, 0, on, 0)
tii = p.obj("t i i", 140, 92, 1, 2, ["int", "int"]); p.wire(on, 0, tii, 0)
en = p.msg("enable $1", 200, 92); p.wire(tii, 0, en, 0); p.wire(en, 0, world, 0)
sel = p.obj("sel 1", 290, 92, 2, 2, ["bang", ""]); p.wire(tii, 1, sel, 0)
tbb = p.obj("t b b", 20, 170, 1, 2, ["bang", "bang"])
p.wire(world, 1, tbb, 0)  # middle outlet = per-frame draw bang
cnt = p.obj("counter", 170, 200, 3, 4, ["int", "", "", "int"])
div = p.obj("/ 60.", 170, 230, 2, 1, ["float"])
pre = p.obj("prepend tick", 170, 260, 1, 1)
p.wire(tbb, 1, cnt, 0); p.wire(cnt, 0, div, 0); p.wire(div, 0, pre, 0)
reg = p.obj("zl reg", 20, 230, 2, 2, ["", ""])
p.wire(tbb, 0, reg, 0)
pix = p.obj("jit.gl.pix fbw @dim 1280 720 @adapt 0 @type float16", 20, 300, 1, 2, ["jit_gl_texture", ""],
            patcher=gen_sub("jit.gen", FB_CODE, 1, 1))
p.wire(reg, 0, pix, 0); p.wire(pre, 0, pix, 0)
slab = p.obj("jit.gl.slab fbw @type float16", 20, 350, 2, 2, ["jit_gl_texture", ""])
p.wire(pix, 0, slab, 0); p.wire(slab, 0, reg, 1)
vp = p.obj("jit.gl.videoplane fbw @transform_reset 2", 280, 350, 1, 2, ["jit_gl_texture", ""])
p.wire(pix, 0, vp, 0)
p.obj("jit.gl.texture fbw @name fbseed @dim 1280 720", 280, 420, 1, 2, ["jit_gl_texture", ""])
seed = p.msg("jit_gl_texture fbseed", 380, 450)
p.wire(sel, 0, seed, 0); p.wire(seed, 0, reg, 1)
p.comment("sent the moment render turns on: starts the loop from a black frame", 380, 475, 280)
y = 60
p.comment("try these:", 420, y, 120)
for m in ["decay 1.", "decay 0.985", "decay 0.9", "zoom 0.97", "zoom 1.02", "twist 0.2", "twist 0.02", "drift 0.02"]:
    y += 26; mm = p.msg(m, 420, y); p.wire(mm, 0, pix, 0)
p.comment("decay 1. = infinite (never fades) · zoom > 1 pulls inward · 'decay 0.' a moment to clear", 520, 90, 180)
p.dump(f"{out}/gen_feedback.maxpat"); check(f"{out}/gen_feedback.maxpat")

# ================= ModSquad-style jongly chopper: one part, presets, auto-change, rolls =================
CHOP_CODE = r"""// ModSquad-style beat chopper (after Atau Tanaka's ModSquad, 2003).
// 16 steps. Step n plays slice chopsteps[n] (1-16); 0 = keep going into the next slice.
// choprolls[n] = how many times step n re-fires (1 = normal, 2/3/4/8 = roll).
// chaos = chance per step of jumping to a random slice (sometimes rolled) instead.
Buffer loop("jongly");
Buffer steps("chopsteps");
Buffer rolls("choprolls");
Param rate(1);      // 1 = original tempo (~170 bpm); tape-style, pitch follows
Param fade(48);     // samples of fade at slice/roll edges (kills clicks)
Param chaos(0.15);  // 0 = play the pattern exactly, 1 = every step random
Param rollnow(0);   // live roll: >= 2 re-fires every step this many times
History ph(0), lastStep(-1), slice(0), roll(1);

len = dim(loop);
ph = wrap(ph + rate/len, 0, 1);
step = floor(ph*16);
if (step != lastStep) {
	v = peek(steps, step, 0);
	slice = (v >= 1) ? v - 1 : wrap(slice + 1, 0, 16);
	roll = max(peek(rolls, step, 0), 1);
	if (noise()*0.5 + 0.5 < chaos) {
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
out1 = sample(loop, (slice + subfrac/rl)/16)*env;
out2 = step;
"""
c = Patch([40.0, 40.0, 960.0, 640.0])
c.comment("JONGLY CHOPPER — after ModSquad. The jongly loop is cut into 16 slices. The green row says which slice each step plays; the orange row says how many times that step re-fires (rolls). Pick a pattern, or let AUTO move through them.", 20, 8, 900)
c.obj("buffer~ jongly jongly.aif", 20, 70, 1, 2, ["float", "bang"])
c.obj("buffer~ chopsteps 2", 200, 70, 1, 2, ["float", "bang"])
c.obj("buffer~ choprolls 2", 350, 70, 1, 2, ["float", "bang"])

c.comment("SLICES — which slice each step plays (1-16) · 0 = keep going", 20, 104, 440)
ms = c.box("multislider", 20, 126, 480, 130, 1, 2, ["", ""], size=16, setminmax=[0.0, 16.0], settype=0, parameter_enable=0)
c.comment("ROLLS — times each step re-fires (1 = normal)", 20, 264, 440)
mr = c.box("multislider", 20, 286, 480, 60, 1, 2, ["", ""], size=16, setminmax=[1.0, 8.0], settype=0, parameter_enable=0,
           slidercolor=[0.85, 0.45, 0.1, 1.0])
lfs = c.obj("listfunnel", 20, 356, 1, 1); pks = c.obj("peek~ chopsteps 1 0", 20, 382, 3, 1, ["float"])
lfr = c.obj("listfunnel", 180, 356, 1, 1); pkr = c.obj("peek~ choprolls 1 0", 180, 382, 3, 1, ["float"])
c.wire(ms, 0, lfs, 0); c.wire(lfs, 0, pks, 0); c.wire(mr, 0, lfr, 0); c.wire(lfr, 0, pkr, 0)

# patterns: each message sets both rows ("s ..." → slices, "r ..." → rolls)
PRESETS = [("straight", "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16", "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"),
           ("stutter", "1 0 1 0 5 0 5 6 9 0 0 0 13 14 13 14", "1 1 1 1 1 1 1 1 1 1 1 1 2 2 4 4"),
           ("chop", "1 0 0 0 5 0 3 4 1 0 0 0 13 0 3 4", "1 1 2 1 1 1 1 1 1 1 3 1 1 1 4 8"),
           ("roll", "1 1 1 1 5 5 5 5 9 9 9 9 13 13 13 13", "1 1 2 2 1 1 4 4 1 1 2 2 3 3 8 8"),
           ("shuffle", "1 2 3 4 5 6 3 4 9 10 11 12 5 6 15 16", "1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2"),
           ("half", "1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8", "1 1 1 1 1 1 1 2 1 1 1 1 1 1 4 4"),
           ("backwards", "16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1", "1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 4")]
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

gen = c.obj("gen~", 20, 534, 1, 2, ["signal", "signal"], w=200.0, patcher=gen_sub("dsp.gen", CHOP_CODE, 0, 2))
for m in rolls + [pr, pch]: c.wire(m, 0, gen, 0)
g = c.obj("*~ 0.5", 20, 566, 2, 1, ["signal"]); c.wire(gen, 0, g, 0)
dac = c.box("ezdac~", 20, 594, 45, 45, 2, 0); c.wire(g, 0, dac, 0); c.wire(g, 0, dac, 1)
c.comment("click to start audio", 70, 606, 140)

# step readout + broadcast (the Buddha bass follows jongly_step) + loop counter for AUTO
sn = c.obj("snapshot~ 5", 240, 566, 2, 1, ["float"]); c.wire(gen, 1, sn, 0)
ch = c.obj("change", 240, 592, 1, 3, ["", "int", "int"]); c.wire(sn, 0, ch, 0)
num = c.box("number", 330, 592, 50, 22, 1, 2, ["", "bang"]); c.wire(ch, 0, num, 0); c.comment("step", 382, 593, 40)
snd = c.obj("s jongly_step", 240, 618, 1, 0); c.wire(ch, 0, snd, 0)
s0 = c.obj("sel 0", 440, 566, 2, 2, ["bang", ""]); c.wire(ch, 0, s0, 0)           # one bang per loop
gt = c.obj("gate 1", 440, 592, 2, 1); c.wire(at, 0, gt, 0); c.wire(s0, 0, gt, 1)
cnt = c.obj("counter", 500, 592, 3, 4, ["int", "", "", "int"]); c.wire(gt, 0, cnt, 0)
md = c.obj("% 2", 570, 592, 2, 1, ["int"]); c.wire(cnt, 0, md, 0); c.wire(nn, 0, md, 1)
s1 = c.obj("sel 0", 620, 592, 2, 2, ["bang", ""]); c.wire(md, 0, s1, 0)
rp = c.obj(f"random {len(PRESETS)}", 680, 592, 2, 1, ["int"]); c.wire(s1, 0, rp, 0)
sp = c.obj("sel " + " ".join(str(k) for k in range(len(PRESETS))), 680, 618, 2, len(PRESETS) + 1); c.wire(rp, 0, sp, 0)
for k, m in enumerate(pmsgs): c.wire(sp, k, m, 0)
c.dump(f"{out}/jongly_chopper.maxpat"); check(f"{out}/jongly_chopper.maxpat")
