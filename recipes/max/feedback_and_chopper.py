import sys
from maxgen import Patch, gen_sub, check
out = sys.argv[1]

# ================= gen video feedback =================
FB_CODE = r"""// Infinite feedback: last frame (in1) is zoomed, twisted and colour-bled back into itself,
// with a wandering ring and spinning wireframe cubes as the seeds. decay 1 = nothing ever fades.
Param tick(0);
Param zoom(0.99);
Param twist(0.02);
Param decay(0.985);
Param drift(0.003);
Param cubes(1);    // how much of the wireframe-cube layer (in2) feeds the loop

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

// second seed: the wireframe cubes rendered by jit.gl.node 'cubes'
cu = sample(in2, norm)*cubes;

out1 = vec(clamp(hr*decay + cr*ring + cu.r, 0, 1),
           clamp(hg*decay + cg*ring + cu.g, 0, 1),
           clamp(hb*decay + cb*ring + cu.b, 0, 1), 1);
"""
p = Patch([60.0, 60.0, 900.0, 960.0])
p.present = True
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
pix = p.obj("jit.gl.pix fbw @dim 1280 720 @adapt 0 @type float16", 20, 300, 2, 2, ["jit_gl_texture", ""],
            patcher=gen_sub("jit.gen", FB_CODE, 2, 1))
# --- wireframe cubes: av_cubes.js makes N gridshapes drawing into this node; its captured texture is pix in2 ---
node = p.obj("jit.gl.node fbw @name cubes @capture 1 @adapt 0 @dim 1280 720 @erase_color 0 0 0 0", 520, 300, 1, 2, ["jit_gl_texture", ""])
p.wire(node, 0, pix, 1)
cjs = p.obj("js av_cubes.js", 520, 270, 1, 0)
p.comment("CUBES (x key)", 600, 200, 100)
cton = p.box("toggle", 600, 222, 22, 22, 1, 1, ["int"]); p.wire(p.obj("loadmess 1", 630, 222, 1, 1), 0, cton, 0)
cpre = p.obj("prepend cubes", 600, 248, 1, 1); p.wire(cton, 0, cpre, 0); p.wire(cpre, 0, pix, 0)
p.comment("how many", 700, 200, 70)
ccnt = p.box("number", 700, 222, 40, 22, 1, 2, ["", "bang"], minimum=1, maximum=24); p.wire(p.obj("loadmess 5", 745, 222, 1, 1), 0, ccnt, 0)
cpc = p.obj("prepend count", 700, 248, 1, 1); p.wire(ccnt, 0, cpc, 0); p.wire(cpc, 0, cjs, 0)
p.wire(reg, 0, pix, 0); p.wire(pre, 0, pix, 0); p.wire(pre, 0, cjs, 0)
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
# --- KEYS: play the feedback from the keyboard (works in fullscreen; [key] hears every Max window) ---
yk = 540
p.comment("KEYS (when 'keys on'): f fullscreen · 1-5 decay (0.9 → ∞) · ↑↓ zoom in/out · ←→ twist · w/s drift more/less · c clear · r reset · x cubes on/off", 20, yk, 660)
kon = p.box("toggle", 20, yk + 44, 22, 22, 1, 1, ["int"]); p.comment("keys on", 46, yk + 46, 60)
p.wire(p.obj("loadmess 1", 110, yk + 44, 1, 1), 0, kon, 0)
key = p.obj("key", 20, yk + 76, 0, 4, ["int", "int", "int", "int"])
kg = p.obj("gate 1", 20, yk + 102, 2, 1); p.wire(kon, 0, kg, 0); p.wire(key, 0, kg, 1)
# ascii: f=102 1-5=49-53 up=30 down=31 left=28 right=29 w=119 s=115 c=99 r=114
codes = [102, 49, 50, 51, 52, 53, 30, 31, 28, 29, 119, 115, 99, 114, 120]
ks = p.obj("sel " + " ".join(map(str, codes)), 20, yk + 128, 2, len(codes) + 1)
p.wire(kg, 0, ks, 0)
p.wire(ks, 0, fs, 0)                                     # f → flip the fullscreen toggle
p.wire(ks, 14, cton, 0)                                  # x → cubes on/off

def readout(label, x, y):
    p.comment(label, x, y, 50); return p.box("flonum", x + 50, y, 60, 22, 1, 2, ["", "bang"], format=6)

def accumulator(name, init, lo, hi, x, y):
    """[f] holds the value; a delta message adds to it, clips, stores and sends '<name> <value>' to the pix."""
    st = p.obj(f"f {init}", x, y, 2, 1, ["float"])
    tbf = p.obj("t b f", x, y - 26, 1, 2, ["bang", "float"])
    add = p.obj("+ 0.", x, y + 26, 2, 1, ["float"]); p.wire(tbf, 1, add, 1); p.wire(tbf, 0, st, 0); p.wire(st, 0, add, 0)
    cl = p.obj(f"clip {lo} {hi}", x, y + 52, 3, 1, ["float"]); p.wire(add, 0, cl, 0)
    out = p.obj("t f f", x, y + 78, 1, 2, ["float", "float"]); p.wire(cl, 0, out, 0); p.wire(out, 1, st, 1)
    pre = p.obj(f"prepend {name}", x, y + 104, 1, 1); p.wire(out, 0, pre, 0); p.wire(pre, 0, pix, 0)
    rd = readout(name, x, y + 130); p.wire(out, 0, rd, 0)
    return tbf, out

yd = yk + 190
# decay: keys 1-5 pick a value; it's remembered so 'c' (clear) can restore it
dt = p.obj("t f f", 20, yd + 26, 1, 2, ["float", "float"])
dmem = p.obj("f 0.985", 90, yd + 52, 2, 1, ["float"]); p.wire(dt, 1, dmem, 1)
dpre = p.obj("prepend decay", 20, yd + 52, 1, 1); p.wire(dt, 0, dpre, 0); p.wire(dpre, 0, pix, 0)
dro = readout("decay", 20, yd + 156); p.wire(dt, 0, dro, 0)
for k, v in enumerate([0.9, 0.95, 0.985, 0.995, 1.0]):
    m = p.msg(str(v), 20 + k*46, yd); p.wire(ks, 1 + k, m, 0); p.wire(m, 0, dt, 0)
zin, zout = accumulator("zoom", 0.99, 0.9, 1.1, 260, yd + 26)
tin_, tout_ = accumulator("twist", 0.02, -0.5, 0.5, 380, yd + 26)
win, wout = accumulator("drift", 0.003, 0.0, 0.05, 500, yd + 26)
for k, (dst, delta) in enumerate([(zin, -0.004), (zin, 0.004), (tin_, -0.02), (tin_, 0.02), (win, 0.002), (win, -0.002)]):
    m = p.msg(str(delta), 640, yd + k*26); p.wire(ks, 6 + k, m, 0); p.wire(m, 0, dst, 0)
# c = clear: decay 0 for a moment, then back to the remembered decay
ct = p.obj("t b b", 760, yd, 1, 2, ["bang", "bang"]); p.wire(ks, 12, ct, 0)
c0 = p.msg("decay 0", 760, yd + 26); p.wire(ct, 1, c0, 0); p.wire(c0, 0, pix, 0)
cd = p.obj("delay 120", 760, yd + 52, 2, 1, ["bang"]); p.wire(ct, 0, cd, 0); p.wire(cd, 0, dmem, 0); p.wire(dmem, 0, dpre, 0)
# r = reset everything to the recipe defaults
rt = p.obj("t b b b b", 760, yd + 90, 1, 4, ["bang"] * 4); p.wire(ks, 13, rt, 0)
for k, (dst, v) in enumerate([(dt, 0.985), (zout, 0.99), (tout_, 0.02), (wout, 0.003)]):
    m = p.msg(str(v), 760 + k*50, yd + 116); p.wire(rt, k, m, 0); p.wire(m, 0, dst, 0)
p.comment("c / r", 760, yd - 22, 50)
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
c = Patch([40.0, 40.0, 960.0, 900.0])
c.present = True
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
# --- FILTER SWEEPS on the drums: click a sweep, it fires on the next beat (every 4 steps) ---
yf = 660
c.comment("FILTER SWEEPS — click one; it starts on the next beat. Each message = mode (1 LP · 2 HP · 3 BP) then cutoff/time pairs (MIDI note, ms). 'open' resets.", 20, yf, 900)
SWEEPS = [("open", "1 132 0"),
          ("LP up · 1 loop", "1 40 0 132 2822"),
          ("LP down · 1 loop", "1 132 0 45 2822"),
          ("LP dip · 1 beat", "1 132 0 55 150 132 550"),
          ("HP riser · 2 loops", "2 20 0 105 5644"),
          ("HP drop-out", "2 105 0 20 1411"),
          ("BP wah", "3 50 0 115 350 50 350")]
sreg = c.obj("zl reg", 560, yf + 30, 2, 2, ["", ""])
arm = c.obj("t b", 640, yf + 30, 1, 1, ["bang"]); one = c.msg("1", 690, yf + 30)
fg = c.obj("gate 1", 560, yf + 90, 2, 1)
c.wire(arm, 0, one, 0); c.wire(one, 0, fg, 0)
for k, (name, seq) in enumerate(SWEEPS):
    col, row = k % 4, k // 4
    x, y = 20 + col*135, yf + 30 + row*52
    c.comment(name, x, y, 130); m = c.msg(seq, x, y + 22, 125)
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
lvr = c.obj("r av_level_chopper", 140, yf + 200, 0, 1); lvk = c.obj("pack 0. 40", 140, yf + 226, 2, 1)
lvs = c.obj("line~ 0.5", 140, yf + 252, 2, 2, ["signal", "bang"]); c.wire(lvr, 0, lvk, 0); c.wire(lvk, 0, lvs, 0)
g = c.obj("*~ 0.5", 20, yf + 200, 2, 1, ["signal"]); c.wire(sel3, 0, g, 0); c.wire(lvs, 0, g, 1)
dac = c.box("ezdac~", 20, yf + 228, 45, 45, 2, 0); c.wire(g, 0, dac, 0); c.wire(g, 0, dac, 1)
c.comment("click to start audio", 70, yf + 240, 140)

# step readout + broadcast (the Buddha bass follows jongly_step) + loop counter for AUTO
sn = c.obj("snapshot~ 5", 240, 566, 2, 1, ["float"]); c.wire(gen, 1, sn, 0)
ch = c.obj("change", 240, 592, 1, 3, ["", "int", "int"]); c.wire(sn, 0, ch, 0)
num = c.box("number", 330, 592, 50, 22, 1, 2, ["", "bang"]); c.wire(ch, 0, num, 0); c.comment("step", 382, 593, 40)
snd = c.obj("s jongly_step", 240, 618, 1, 0); c.wire(ch, 0, snd, 0)
s0 = c.obj("sel 0", 440, 566, 2, 2, ["bang", ""]); c.wire(ch, 0, s0, 0)           # one bang per loop
c.wire(ch, 0, b4, 0)                                                                # beat clock for sweeps
gt = c.obj("gate 1", 440, 592, 2, 1); c.wire(at, 0, gt, 0); c.wire(s0, 0, gt, 1)
cnt = c.obj("counter", 500, 592, 3, 4, ["int", "", "", "int"]); c.wire(gt, 0, cnt, 0)
md = c.obj("% 2", 570, 592, 2, 1, ["int"]); c.wire(cnt, 0, md, 0); c.wire(nn, 0, md, 1)
s1 = c.obj("sel 0", 620, 592, 2, 2, ["bang", ""]); c.wire(md, 0, s1, 0)
rp = c.obj(f"random {len(PRESETS)}", 680, 592, 2, 1, ["int"]); c.wire(s1, 0, rp, 0)
sp = c.obj("sel " + " ".join(str(k) for k in range(len(PRESETS))), 680, 618, 2, len(PRESETS) + 1); c.wire(rp, 0, sp, 0)
for k, m in enumerate(pmsgs): c.wire(sp, k, m, 0)
c.dump(f"{out}/jongly_chopper.maxpat"); check(f"{out}/jongly_chopper.maxpat")
