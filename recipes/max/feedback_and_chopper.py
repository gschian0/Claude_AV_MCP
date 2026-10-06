import sys
from maxgen import Patch, gen_sub, check
from ensemble import CHOP_PRESETS, CHOP_SWEEPS
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
Param amp(0);      // drum loudness 0-1 (from the patch's envelope follower)
Param react(0.15); // how much amp moves zoom / twist / ring size (keep it small)
Param splash(0);   // 1 on a drum transient, decaying to 0: flashes the cube texture + a burst ring

asp = dim.x/dim.y;
cx = (norm.x - 0.5)*asp;
cy = norm.y - 0.5;

// sample the previous frame through a slowly wobbling zoom + rotation
mv = amp*react;
a = twist*sin(tick*0.11) + mv*0.15;
z = zoom + 0.01*sin(tick*0.07) - mv*0.03;
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
rad = 0.07 + 0.03*sin(tick*1.7) + mv*0.06;
ring = 1 - smoothstep(0, 0.008, abs(d - rad));
cr = 0.5 + 0.5*sin(tick*0.5);
cg = 0.5 + 0.5*sin(tick*0.5 + 2.094);
cb = 0.5 + 0.5*sin(tick*0.5 + 4.188);

// second seed: the wireframe cubes rendered by jit.gl.node 'cubes'
cu = sample(in2, norm)*cubes*(0.35 + 1.65*splash);   // cubes glow faintly, flare on each hit

// splash: a ring bursting out from the centre as the hit decays, in the ring's complementary colours
sd = sqrt(cx*cx + cy*cy);
br_ = 0.6*(1 - splash);
burst = splash*(1 - smoothstep(0, 0.015 + 0.03*splash, abs(sd - br_)));

out1 = vec(clamp(hr*decay + cr*ring + cu.r + cg*burst, 0, 1),
           clamp(hg*decay + cg*ring + cu.g + cb*burst, 0, 1),
           clamp(hb*decay + cb*ring + cu.b + cr*burst, 0, 1), 1);
"""
p = Patch([60.0, 60.0, 900.0, 1180.0])
p.present = True
p.comment("gen feedback — jit.gl.pix reads its own last frame (copied by jit.gl.slab, held in zl reg) and draws it back zoomed + twisted. Render toggle seeds the loop and enables window 'fbw'.", 20, 8, 660)
fs = p.box("toggle", 20, 60, 24, 24, 1, 1, ["int"]); p.comment("fullscreen", 48, 62, 80)
fsm = p.msg("fullscreen $1", 20, 92); p.wire(fs, 0, fsm, 0)
world = p.obj("jit.world fbw @enable 0 @size 1280 720 @floating 0", 20, 130, 1, 3, ["", "", ""])
p.wire(fsm, 0, world, 0)
# render toggle: seeds the feedback loop *then* enables the world, so it always starts cleanly
on = p.box("toggle", 140, 60, 24, 24, 1, 1, ["int"]); p.comment("render (auto-on)", 168, 62, 120)
lm = p.obj("loadmess 1", 300, 60, 1, 1); p.wire(lm, 0, on, 0)
# render kick: enable at load can fire before the GL window/context exists (embedded in the symphony) and never
# retry, leaving no frames — so switch it off and on again once the patch has finished loading
rk = p.obj("delay 2000", 300, 36, 2, 1, ["bang"]); p.wire(p.obj("loadbang", 300, 10, 1, 1, ["bang"]), 0, rk, 0)
rkm = p.msg("0, 1", 380, 10); p.wire(rk, 0, rkm, 0); p.wire(rkm, 0, on, 0)
tii = p.obj("t i i", 140, 92, 1, 2, ["int", "int"]); p.wire(on, 0, tii, 0)
en = p.msg("enable $1", 200, 92); p.wire(tii, 0, en, 0); p.wire(en, 0, world, 0)
sel = p.obj("sel 1", 290, 92, 2, 2, ["bang", ""]); p.wire(tii, 1, sel, 0)
# when render turns on (at load too), show the window and bring it in front of the patchers
wd_ = p.obj("delay 800", 360, 36, 2, 1, ["bang"]); p.wire(sel, 0, wd_, 0)
wfront = p.msg("visible 1, sendwindow front", 440, 36); p.wire(wd_, 0, wfront, 0); p.wire(wfront, 0, world, 0)
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
p.comment("KEYS (when 'keys on'): f fullscreen · 1-5 decay (0.9 → ∞) · ↑↓ zoom in/out · ←→ twist · w/s drift more/less · c clear · r reset · x cubes on/off · a react on/off", 20, yk, 660)
kon = p.box("toggle", 20, yk + 44, 22, 22, 1, 1, ["int"]); p.comment("keys on", 46, yk + 46, 60)
p.wire(p.obj("loadmess 1", 110, yk + 44, 1, 1), 0, kon, 0)
key = p.obj("key", 20, yk + 76, 0, 4, ["int", "int", "int", "int"])
kg = p.obj("gate 1", 20, yk + 102, 2, 1); p.wire(kon, 0, kg, 0); p.wire(key, 0, kg, 1)
# ascii: f=102 1-5=49-53 up=30 down=31 left=28 right=29 w=119 s=115 c=99 r=114
codes = [102, 49, 50, 51, 52, 53, 30, 31, 28, 29, 119, 115, 99, 114, 120, 97]
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
    # the readout is a real control: shows the value (via set, no echo) and typing / snapshot recall drives it
    rd = readout(name, x, y + 130); ps_ = p.obj("prepend set", x, y + 182, 1, 1); p.wire(out, 0, ps_, 0); p.wire(ps_, 0, rd, 0)
    tset = p.obj("t f f", x, y + 208, 1, 2, ["float", "float"]); rcl = p.obj(f"clip {lo} {hi}", x + 70, y + 182, 3, 1, ["float"]); p.wire(rd, 0, rcl, 0); p.wire(rcl, 0, tset, 0); p.wire(tset, 1, st, 1); p.wire(tset, 0, pre, 0)
    return tbf, out

yd = yk + 190
# decay: keys 1-5 pick a value; it's remembered so 'c' (clear) can restore it
dt = p.obj("t f f", 20, yd + 26, 1, 2, ["float", "float"])
dmem = p.obj("f 0.985", 90, yd + 52, 2, 1, ["float"]); p.wire(dt, 1, dmem, 1)
dpre = p.obj("prepend decay", 20, yd + 52, 1, 1); p.wire(dt, 0, dpre, 0); p.wire(dpre, 0, pix, 0)
dro = readout("decay", 20, yd + 156)
dps = p.obj("prepend set", 140, yd + 130, 1, 1); p.wire(dt, 0, dps, 0); p.wire(dps, 0, dro, 0); dcl = p.obj("clip 0.5 1.", 140, yd + 182, 3, 1, ["float"]); p.wire(dro, 0, dcl, 0); p.wire(dcl, 0, dt, 0)   # settable (snapshots)
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
# --- REACT: a little movement from the drums, and a splash on each transient ---
yr = 960
p.comment("REACT — listens to the drums (send~ av_drums): loudness gently moves zoom / twist / ring; each hit flares the cubes + bursts a ring. 'a' key toggles.", 20, yr, 660)
p.comment("react on", 20, yr + 44, 60); ron = p.box("toggle", 80, yr + 42, 22, 22, 1, 1, ["int"])
p.wire(p.obj("loadmess 1", 520, yr + 150, 1, 1), 0, ron, 0); p.wire(ks, 15, ron, 0)
p.comment("amount", 120, yr + 44, 50)
ram = p.box("flonum", 170, yr + 42, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=1.0)
p.wire(p.obj("loadmess 0.15", 600, yr + 150, 1, 1), 0, ram, 0)
p.comment("splash on", 240, yr + 44, 65); son = p.box("toggle", 305, yr + 42, 22, 22, 1, 1, ["int"])
p.wire(p.obj("loadmess 1", 680, yr + 150, 1, 1), 0, son, 0)
p.comment("hit threshold", 345, yr + 44, 90)
thr = p.box("flonum", 435, yr + 42, 50, 22, 1, 2, ["", "bang"], format=6, minimum=1.0)
p.wire(p.obj("loadmess 1.6", 760, yr + 150, 1, 1), 0, thr, 0)
# react amount: off → 0, on → the amount box
rsel = p.obj("sel 0 1", 20, yr + 76, 2, 3, ["bang", "bang", ""]); p.wire(ron, 0, rsel, 0)
r0 = p.msg("0", 20, yr + 102); p.wire(rsel, 0, r0, 0); p.wire(rsel, 1, ram, 0)
rpre = p.obj("prepend react", 170, yr + 102, 1, 1); p.wire(r0, 0, rpre, 0); p.wire(ram, 0, rpre, 0); p.wire(rpre, 0, pix, 0)
# envelopes: fast follows the hits, slow is the running average
rcv = p.obj("receive~ av_drums", 20, yr + 140, 1, 1, ["signal"])
ab = p.obj("abs~", 20, yr + 166, 1, 1, ["signal"]); p.wire(rcv, 0, ab, 0)
fast = p.obj("slide~ 10 2000", 20, yr + 192, 3, 1, ["signal"]); p.wire(ab, 0, fast, 0)
slow = p.obj("slide~ 4000 8000", 160, yr + 192, 3, 1, ["signal"]); p.wire(ab, 0, slow, 0)
# loudness → amp (about 30 updates a second)
snp = p.obj("snapshot~ 33", 300, yr + 192, 2, 1, ["float"]); p.wire(fast, 0, snp, 0)
asc = p.obj("* 3.", 300, yr + 218, 2, 1, ["float"]); p.wire(snp, 0, asc, 0)
acl = p.obj("clip 0. 1.", 300, yr + 244, 3, 1, ["float"]); p.wire(asc, 0, acl, 0)
apre = p.obj("prepend amp", 300, yr + 270, 1, 1); p.wire(acl, 0, apre, 0); p.wire(apre, 0, pix, 0)
p.wire(acl, 0, p.obj("s av_amp", 400, yr + 270, 1, 0), 0)
# transient: fast > slow × threshold, and above a noise floor
sth = p.obj("*~ 1.6", 160, yr + 218, 2, 1, ["signal"]); p.wire(slow, 0, sth, 0); p.wire(thr, 0, sth, 1)
gt1 = p.obj(">~", 20, yr + 244, 2, 1, ["signal"]); p.wire(fast, 0, gt1, 0); p.wire(sth, 0, gt1, 1)
gt2 = p.obj(">~ 0.02", 90, yr + 244, 2, 1, ["signal"]); p.wire(fast, 0, gt2, 0)
both = p.obj("*~", 20, yr + 270, 2, 1, ["signal"]); p.wire(gt1, 0, both, 0); p.wire(gt2, 0, both, 1)
edg = p.obj("edge~", 20, yr + 296, 1, 2, ["bang", "bang"]); p.wire(both, 0, edg, 0)
lim = p.obj("speedlim 90", 20, yr + 322, 2, 1, ["bang"]); p.wire(edg, 0, lim, 0)      # one splash per hit
sg = p.obj("gate 1", 20, yr + 348, 2, 1); p.wire(son, 0, sg, 0); p.wire(lim, 0, sg, 1)
p.wire(lim, 0, p.obj("s av_hit", 120, yr + 348, 1, 0), 0)
smsg = p.msg("1, 0 350", 20, yr + 374); p.wire(sg, 0, smsg, 0)
sln = p.obj("line 0. 20", 20, yr + 400, 3, 2, ["float", "bang"]); p.wire(smsg, 0, sln, 0)
spre = p.obj("prepend splash", 20, yr + 426, 1, 1); p.wire(sln, 0, spre, 0); p.wire(spre, 0, pix, 0)

# FRAME GRAB for the launch tiles: 'av_grab <path.png>' reads back ONE rendered frame (asyncread switches on only
# for that frame), shrinks it to 192x108 and writes the png. Nothing happens if render is off.
gpath = p.obj("r av_grab", 900, 700, 0, 1)
gex = p.obj("prepend exportimage", 900, 726, 1, 1); p.wire(gpath, 0, gex, 0)
gapp = p.obj("append png", 900, 752, 2, 1); p.wire(gex, 0, gapp, 0)
greg = p.obj("zl reg", 900, 778, 2, 2, ["", ""]); p.wire(gapp, 0, greg, 1)
gtb = p.obj("t b b", 1060, 700, 1, 2, ["bang", "bang"]); p.wire(gpath, 0, gtb, 0)
gon = p.msg("1", 1060, 726); p.wire(gtb, 0, gon, 0)
aen = p.msg("enable 1", 1100, 726); p.wire(gtb, 1, aen, 0)
arb = p.obj("jit.gl.asyncread fbw @enable 0", 1100, 752, 1, 2, ["jit_matrix", ""]); p.wire(aen, 0, arb, 0)
ggt = p.obj("gate 1", 1060, 778, 2, 1); p.wire(gon, 0, ggt, 0); p.wire(arb, 0, ggt, 1)
gt3 = p.obj("t b b l", 1060, 804, 1, 3, ["bang", "bang", ""]); p.wire(ggt, 0, gt3, 0)
gmx = p.obj("jit.matrix avgrab 4 char 192 108", 900, 830, 1, 2, ["jit_matrix", ""]); p.wire(gt3, 2, gmx, 0)
p.wire(gt3, 1, greg, 0); p.wire(greg, 0, gmx, 0)                               # exportimage <path> png
goff = p.msg("0", 1060, 856); p.wire(gt3, 0, goff, 0); p.wire(goff, 0, ggt, 0)  # close the gate…
aoff = p.msg("enable 0", 1100, 856); p.wire(gt3, 0, aoff, 0); p.wire(aoff, 0, arb, 0)   # …and stop reading back

# the conductor drives these
for k, (name, dst) in enumerate([("av_render", on), ("av_fullscreen", fs), ("av_cubes", cton), ("av_fb", pix)]):
    p.wire(p.obj(f"r {name}", 800, 300 + 26*k, 0, 1), 0, dst, 0)
p.dump(f"{out}/gen_feedback.maxpat"); check(f"{out}/gen_feedback.maxpat")

# ================= jongly choppers: built by chopper.py (speed version + granular version) =================
import subprocess, pathlib
for kind in ("speed", "granular"):
    subprocess.run([sys.executable, str(pathlib.Path(__file__).with_name("chopper.py")), out, kind], check=True)
