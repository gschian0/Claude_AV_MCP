import sys
from maxgen import Patch, check
out = sys.argv[1]
SIG = ["signal"]

p = Patch([80.0, 80.0, 900.0, 700.0])
p.comment("GLASS BELLS — FM bells that play notes from the bass patch's scale (av_scale) and key (av_root), clocked by the jongly chopper (jongly_step), through a ping-pong delay synced to 170 bpm.", 20, 8, 840)

# clock (same as the bass: follow the chopper, or free-run)
p.comment("clock", 20, 60, 50)
rs = p.obj("r jongly_step", 20, 84, 0, 1)
tg = p.box("toggle", 140, 84, 22, 22, 1, 1, ["int"]); p.comment("free-run", 166, 86, 70)
mt = p.obj("metro 176.36", 140, 112, 2, 1, ["bang"]); p.wire(tg, 0, mt, 0)
cn = p.obj("counter 0 15", 140, 138, 3, 4, ["int", "", "", "int"]); p.wire(mt, 0, cn, 0)

# density: chance (%) that a step plays a bell
tb = p.obj("t b", 20, 170, 1, 1, ["bang"]); p.wire(rs, 0, tb, 0); p.wire(cn, 0, tb, 0)
r100 = p.obj("random 100", 20, 196, 2, 1, ["int"]); p.wire(tb, 0, r100, 0)
lt = p.obj("< 35", 20, 222, 2, 1, ["int"]); p.wire(r100, 0, lt, 0)
p.comment("density %", 250, 170, 80)
dn = p.box("number", 250, 194, 50, 22, 1, 2, ["", "bang"], minimum=0, maximum=100); p.wire(dn, 0, lt, 1)
p.wire(p.obj("loadmess 35", 310, 194, 1, 1), 0, dn, 0)
s1 = p.obj("sel 1", 20, 248, 2, 2, ["bang", ""]); p.wire(lt, 0, s1, 0)

# note choice: random from the scale, or arpeggiate up through it
p.comment("arp (off = random notes)", 250, 230, 170)
md = p.box("toggle", 250, 252, 22, 22, 1, 1, ["int"]); mp = p.obj("+ 1", 250, 278, 2, 1, ["int"]); p.wire(md, 0, mp, 0)
p.wire(p.obj("loadmess 0", 280, 252, 1, 1), 0, md, 0)
g2 = p.obj("gate 2 1", 20, 300, 2, 2, ["", ""]); p.wire(mp, 0, g2, 0); p.wire(s1, 0, g2, 1)
rd = p.obj("random 15", 20, 330, 2, 1, ["int"]); p.wire(g2, 0, rd, 0)
ac = p.obj("counter", 120, 330, 3, 4, ["int", "", "", "int"]); p.wire(g2, 1, ac, 0)
am = p.obj("% 15", 120, 356, 2, 1, ["int"]); p.wire(ac, 0, am, 0)

rsc = p.obj("r av_scale", 450, 60, 0, 1)
lsc = p.obj("loadmess 0 0 7 12 0 2 3 5 7 8 10 12 14 15 17 19 20 22 24", 450, 86, 1, 1)
tll = p.obj("t l l", 450, 112, 1, 2, ["", ""]); p.wire(rsc, 0, tll, 0); p.wire(lsc, 0, tll, 0)
zl = p.obj("zl len", 520, 138, 2, 2, ["", ""]); p.wire(tll, 1, zl, 0); p.wire(zl, 0, rd, 1); p.wire(zl, 0, am, 1)
lk = p.obj("zl lookup", 20, 390, 2, 2, ["", ""]); p.wire(rd, 0, lk, 0); p.wire(am, 0, lk, 0); p.wire(tll, 0, lk, 1)

# key: root from the bass patch + octave offset
p.comment("octave above bass root", 450, 176, 170)
rr = p.obj("r av_root", 450, 200, 0, 1); lr = p.obj("loadmess 33", 540, 200, 1, 1)
oc = p.box("number", 640, 200, 40, 22, 1, 2, ["", "bang"]); p.wire(p.obj("loadmess 24", 690, 200, 1, 1), 0, oc, 0)
pak = p.obj("pak 33 24", 450, 230, 2, 1); p.wire(rr, 0, pak, 0); p.wire(lr, 0, pak, 0); p.wire(oc, 0, pak, 1)
zs = p.obj("zl sum", 450, 256, 2, 2, ["", ""]); p.wire(pak, 0, zs, 0)
nt = p.obj("+ 57", 20, 416, 2, 1, ["int"]); p.wire(lk, 0, nt, 0); p.wire(zs, 0, nt, 1)
mtof = p.obj("mtof", 20, 442, 1, 1, ["float"]); p.wire(nt, 0, mtof, 0)

# FM bell: modulator at 3.5x (inharmonic = glassy), index decays faster than the amplitude
tbf = p.obj("t b f f", 20, 468, 1, 3, ["bang", "float", "float"]); p.wire(mtof, 0, tbf, 0)
r35 = p.obj("* 3.5", 120, 494, 2, 1, ["float"]); p.wire(tbf, 1, r35, 0)
mod = p.obj("cycle~", 120, 520, 2, 1, SIG); p.wire(r35, 0, mod, 0)
im = p.msg("3, 0.1 900", 260, 494); p.wire(tbf, 0, im, 0)
il = p.obj("line~", 260, 520, 2, 2, ["signal", "bang"]); p.wire(im, 0, il, 0)
mi = p.obj("*~", 120, 546, 2, 1, SIG); p.wire(mod, 0, mi, 0); p.wire(il, 0, mi, 1)
dv = p.obj("*~ 0", 120, 572, 2, 1, SIG); p.wire(mi, 0, dv, 0); p.wire(r35, 0, dv, 1)
cf = p.obj("+~ 0", 20, 598, 2, 1, SIG); p.wire(dv, 0, cf, 0); p.wire(tbf, 2, cf, 1)
car = p.obj("cycle~", 20, 624, 2, 1, SIG); p.wire(cf, 0, car, 0)
p.comment("decay ms", 380, 470, 70)
dec = p.box("number", 380, 494, 50, 22, 1, 2, ["", "bang"], minimum=50); p.wire(p.obj("loadmess 1600", 440, 494, 1, 1), 0, dec, 0)
fd = p.obj("f 1600", 380, 520, 2, 1, ["float"]); p.wire(tbf, 0, fd, 0); p.wire(dec, 0, fd, 1)
amsg = p.msg("1 2, 0 $1", 380, 546); p.wire(fd, 0, amsg, 0)
al = p.obj("line~", 380, 572, 2, 2, ["signal", "bang"]); p.wire(amsg, 0, al, 0)
bell = p.obj("*~", 20, 650, 2, 1, SIG); p.wire(car, 0, bell, 0); p.wire(al, 0, bell, 1)

# ping-pong delay: 1/8 (353 ms) left, dotted 1/8 (529 ms) right at 170 bpm, right tap feeds back
tin = p.obj("tapin~ 3000", 560, 560, 1, 1, ["tapconnect"]); p.wire(bell, 0, tin, 0)
tout = p.obj("tapout~ 353 529", 560, 590, 2, 2, SIG * 2); p.wire(tin, 0, tout, 0)
fb = p.obj("*~ 0.4", 680, 590, 2, 1, SIG); p.wire(tout, 1, fb, 0); p.wire(fb, 0, tin, 0)
p.comment("feedback", 740, 591, 70)
outs = []
for k, x in enumerate((560, 680)):
    w = p.obj("*~ 0.6", x, 620, 2, 1, SIG); p.wire(tout, k, w, 0)
    mx = p.obj("+~", x, 646, 2, 1, SIG); p.wire(bell, 0, mx, 0); p.wire(w, 0, mx, 1)
    g = p.obj("*~ 0.25", x, 672, 2, 1, SIG); p.wire(mx, 0, g, 0); outs.append(g)
dac = p.box("ezdac~", 620, 700, 45, 45, 2, 0); p.wire(outs[0], 0, dac, 0); p.wire(outs[1], 0, dac, 1)
p.comment("click to start audio", 670, 712, 140)
p.dump(f"{out}/glass_bells.maxpat"); check(f"{out}/glass_bells.maxpat")
