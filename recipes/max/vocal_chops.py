"""vocal_chops.maxpat — chopped jungle yells that drop in every now and then, locked to the jongly step clock.
Six one-shot vocals from Ableton Live's Core Library are read at load (not copied into the repo).
A gen~ voice plays them clean, stuttered ("oi-oi-oi"), pitched or reversed, into a dub delay."""
import sys
from maxgen import Patch, check, gen_sub
out = sys.argv[1]
SIG = ["signal"]
LIB = "/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/One Shots/Vocal/"
VOX = ["Vocal Chop Jungle.aif", "Vocal Chop Oi.aif", "Vocal Shout Wha.aif", "Vocal Crowd Hey.aif",
       "Vocal Check It Out.wav", "Vocal That Bass.wav"]

VOX_CODE = r"""// one-shot vocal voice: 'trig' changes -> play buffer 'which' (0-5), with 'stut' repeats of the first 'stutlen' seconds,
// pitched 'pitch' semitones, optionally reversed. Every index is kept finite and inside the buffer (see the chopper crash fix).
Buffer b0("vox0"); Buffer b1("vox1"); Buffer b2("vox2"); Buffer b3("vox3"); Buffer b4("vox4"); Buffer b5("vox5");
Param trig(0); Param which(0); Param pitch(0); Param stut(1); Param stutlen(0.08); Param rev(0);
Param gran(1); Param gsize(70); Param gscan(0.5); Param gjit(0.15); Param gmul(1);
Param sr0(44100); Param sr1(44100); Param sr2(44100); Param sr3(44100); Param sr4(44100); Param sr5(44100);
History lastT(0), pos(0), rep(0), playing(0), w(0), gph(0);
History gs0(0), gs1(0), gs2(0), gs3(0), gl0(0), gl1(0), gl2(0), gl3(0);
if (trig != lastT) { lastT = trig; pos = 0; rep = 0; playing = 1; w = clamp(floor(fixnan(which)), 0, 5); }
d = (w < 0.5) ? dim(b0) : (w < 1.5) ? dim(b1) : (w < 2.5) ? dim(b2) : (w < 3.5) ? dim(b3) : (w < 4.5) ? dim(b4) : dim(b5);
bsr = (w < 0.5) ? sr0 : (w < 1.5) ? sr1 : (w < 2.5) ? sr2 : (w < 3.5) ? sr3 : (w < 4.5) ? sr4 : sr5;
len = max(d, 1);
ok = (d > 64) ? 1 : 0;
rate = exp(clamp(fixnan(pitch), -24, 24)*0.05776226505)*clamp(fixnan(bsr), 8000, 192000)/samplerate;
seg = min(clamp(fixnan(stutlen), 0.02, 0.5)*clamp(fixnan(bsr), 8000, 192000), len);
nst = clamp(floor(fixnan(stut)), 1, 8);
glen = clamp(fixnan(gsize), 10, 500)*samplerate/1000;
adv = (gran > 0.5) ? rate*clamp(fixnan(gscan*gmul), 0.02, 2) : rate;
if (playing > 0) {
	pos = fixnan(pos + adv);
	if (rep < nst - 1 && pos >= seg) { pos = 0; rep = rep + 1; }
	if (pos >= len) { playing = 0; pos = 0; }
}
ph = clamp(fixnan(pos/len), 0, 0.999999);
ph = (rev > 0.5) ? 0.999999 - ph : ph;
sc = (w < 0.5) ? sample(b0, ph) : (w < 1.5) ? sample(b1, ph) : (w < 2.5) ? sample(b2, ph) : (w < 3.5) ? sample(b3, ph) : (w < 4.5) ? sample(b4, ph) : sample(b5, ph);
// granular: 4 overlapping Hann grains of 'gsize' ms, each starting at the read head (+ 'gjit' scatter) and playing at
// the pitch rate; the head itself crawls at rate*'gscan'*'gmul' — the yell is stretched without changing its pitch
gph = wrap(gph + 1/glen, 0, 1);
gr = 0;
ga0 = wrap(gph + 0.0, 0, 1);
if (ga0 < gl0) { gs0 = clamp(fixnan(pos + noise()*clamp(fixnan(gjit), 0, 1)*glen*rate*4), 0, len - 1); }
gl0 = ga0;
gx0 = clamp(fixnan((gs0 + ga0*glen*rate)/len), 0, 0.999999);
gx0 = (rev > 0.5) ? 0.999999 - gx0 : gx0;
gv0 = (w < 0.5) ? sample(b0, gx0) : (w < 1.5) ? sample(b1, gx0) : (w < 2.5) ? sample(b2, gx0) : (w < 3.5) ? sample(b3, gx0) : (w < 4.5) ? sample(b4, gx0) : sample(b5, gx0);
gr = gr + gv0*(0.5 - 0.5*cos(twopi*ga0));
ga1 = wrap(gph + 0.25, 0, 1);
if (ga1 < gl1) { gs1 = clamp(fixnan(pos + noise()*clamp(fixnan(gjit), 0, 1)*glen*rate*4), 0, len - 1); }
gl1 = ga1;
gx1 = clamp(fixnan((gs1 + ga1*glen*rate)/len), 0, 0.999999);
gx1 = (rev > 0.5) ? 0.999999 - gx1 : gx1;
gv1 = (w < 0.5) ? sample(b0, gx1) : (w < 1.5) ? sample(b1, gx1) : (w < 2.5) ? sample(b2, gx1) : (w < 3.5) ? sample(b3, gx1) : (w < 4.5) ? sample(b4, gx1) : sample(b5, gx1);
gr = gr + gv1*(0.5 - 0.5*cos(twopi*ga1));
ga2 = wrap(gph + 0.5, 0, 1);
if (ga2 < gl2) { gs2 = clamp(fixnan(pos + noise()*clamp(fixnan(gjit), 0, 1)*glen*rate*4), 0, len - 1); }
gl2 = ga2;
gx2 = clamp(fixnan((gs2 + ga2*glen*rate)/len), 0, 0.999999);
gx2 = (rev > 0.5) ? 0.999999 - gx2 : gx2;
gv2 = (w < 0.5) ? sample(b0, gx2) : (w < 1.5) ? sample(b1, gx2) : (w < 2.5) ? sample(b2, gx2) : (w < 3.5) ? sample(b3, gx2) : (w < 4.5) ? sample(b4, gx2) : sample(b5, gx2);
gr = gr + gv2*(0.5 - 0.5*cos(twopi*ga2));
ga3 = wrap(gph + 0.75, 0, 1);
if (ga3 < gl3) { gs3 = clamp(fixnan(pos + noise()*clamp(fixnan(gjit), 0, 1)*glen*rate*4), 0, len - 1); }
gl3 = ga3;
gx3 = clamp(fixnan((gs3 + ga3*glen*rate)/len), 0, 0.999999);
gx3 = (rev > 0.5) ? 0.999999 - gx3 : gx3;
gv3 = (w < 0.5) ? sample(b0, gx3) : (w < 1.5) ? sample(b1, gx3) : (w < 2.5) ? sample(b2, gx3) : (w < 3.5) ? sample(b3, gx3) : (w < 4.5) ? sample(b4, gx3) : sample(b5, gx3);
gr = gr + gv3*(0.5 - 0.5*cos(twopi*ga3));
s = (gran > 0.5) ? gr*0.5 : sc;
edge = (rep < nst - 1) ? seg : len;
env = clamp(pos/(64*adv/rate), 0, 1)*clamp((edge - pos)/256, 0, 1);
out1 = fixnan(s*env*playing*ok);
"""

p = Patch([60.0, 60.0, 1100.0, 640.0])
p.present = True
p.comment("VOCAL CHOPS — jungle yells that drop in every now and then on the jongly beat: clean, chopped (oi-oi-oi), pitched or reversed, into a dub delay. Samples: Ableton Core Library one-shots.", 20, 8, 900)

gen = p.obj("gen~", 20, 420, 1, 1, SIG, w=200.0, patcher=gen_sub("dsp.gen", VOX_CODE, 0, 1))

# load the six vocals; when each finishes loading, read its sample rate so it plays at the right pitch
lb0 = p.obj("loadbang", 540, 60, 1, 1, ["bang"])
lb = p.obj("t b", 620, 60, 1, 1, ["bang"]); p.wire(lb0, 0, lb, 0)   # via [t b] so the read messages stay hidden plumbing
for k, f in enumerate(VOX):
    y = 90 + k * 26
    m = p.msg(f'read "{LIB}{f}"', 620, y, 420)                      # hidden plumbing (fed by loadbang -> not a panel preset)
    p.wire(lb, 0, m, 0)
    b = p.obj(f"buffer~ vox{k}", 1060, y, 1, 2, ["float", "bang"]); p.wire(m, 0, b, 0)
    inf = p.obj(f"info~ vox{k}", 1180, y, 1, 10, ["float"] * 10); p.wire(b, 1, inf, 0)
    pr = p.obj(f"prepend sr{k}", 1300, y, 1, 1); p.wire(inf, 0, pr, 0); p.wire(pr, 0, gen, 0)
p.comment("samples: " + " · ".join(f.rsplit(".", 1)[0].replace("Vocal ", "") for f in VOX), 20, 40, 900)

# when: on even jongly steps, a small chance per step; a cooldown keeps yells from piling up
p.comment("AUTO YELLS on · chance per step (‰) · cooldown ms", 20, 70, 340)
on = p.box("toggle", 20, 92, 22, 22, 1, 1, ["int"]); p.wire(p.obj("loadmess 1", 380, 120, 1, 1), 0, on, 0)
ch = p.box("number", 60, 92, 50, 22, 1, 2, ["", "bang"], minimum=0, maximum=1000); p.wire(p.obj("loadmess 30", 380, 146, 1, 1), 0, ch, 0)
cd = p.box("number", 130, 92, 60, 22, 1, 2, ["", "bang"], minimum=200); p.wire(p.obj("loadmess 2500", 380, 172, 1, 1), 0, cd, 0)
rs = p.obj("r jongly_step", 20, 140, 0, 1)
ev = p.obj("% 2", 20, 166, 2, 1, ["int"]); p.wire(rs, 0, ev, 0)
s0 = p.obj("sel 0", 20, 192, 2, 2, ["bang", ""]); p.wire(ev, 0, s0, 0)
ga = p.obj("gate 1", 20, 218, 2, 1); p.wire(on, 0, ga, 0); p.wire(s0, 0, ga, 1)
rn = p.obj("random 1000", 20, 244, 2, 1, ["int"]); p.wire(ga, 0, rn, 0)
lt = p.obj("<", 20, 270, 2, 1, ["int"]); p.wire(rn, 0, lt, 0); p.wire(ch, 0, lt, 1)
s1 = p.obj("sel 1", 20, 296, 2, 2, ["bang", ""]); p.wire(lt, 0, s1, 0)
cool = p.obj("gate 1 1", 20, 322, 2, 1); p.wire(s1, 0, cool, 1)
p.comment("YELL NOW", 220, 92, 70); now = p.box("button", 290, 90, 26, 26, 1, 1, ["bang"])
fire = p.obj("t b b b b", 20, 348, 1, 4, ["bang"] * 4); p.wire(cool, 0, fire, 0); p.wire(now, 0, fire, 0)
p.wire(p.obj("r av_vox_yell", 220, 140, 0, 1), 0, fire, 0)
p.wire(p.obj("r av_vox_chance", 300, 140, 0, 1), 0, ch, 0)
# cooldown: close the gate, reopen after 'cooldown' ms
c0 = p.msg("0", 140, 374); p.wire(fire, 0, c0, 0); p.wire(c0, 0, cool, 0)
dl = p.obj("delay 2500", 180, 374, 2, 1, ["bang"]); p.wire(fire, 0, dl, 0); p.wire(cd, 0, dl, 1)
c1 = p.msg("1", 260, 374); p.wire(dl, 0, c1, 0); p.wire(c1, 0, cool, 0)
# pick a vocal + a chop style, then trigger
rw = p.obj("random 6", 460, 348, 2, 1, ["int"]); p.wire(fire, 3, rw, 0)
pw = p.obj("prepend which", 460, 374, 1, 1); p.wire(rw, 0, pw, 0); p.wire(pw, 0, gen, 0)
MODES = [("clean", "stut 1, rev 0, pitch 0, gmul 1"), ("chopped", "stut 3, stutlen 0.08, rev 0, pitch 0, gmul 1"),
         ("machine gun", "stut 4, stutlen 0.05, rev 0, pitch 3, gmul 1.5"), ("dropped", "stut 1, rev 0, pitch -5, gmul 0.7"),
         ("reverse", "stut 2, stutlen 0.12, rev 1, pitch 0, gmul 1"), ("stretched", "stut 1, rev 0, pitch 0, gmul 0.4"),
         ("cloud", "stut 1, rev 0, pitch 7, gmul 0.15")]
rm = p.obj(f"random {len(MODES)}", 560, 348, 2, 1, ["int"]); p.wire(fire, 2, rm, 0)
sm = p.obj("sel " + " ".join(str(k) for k in range(len(MODES))), 560, 374, 2, len(MODES) + 1); p.wire(rm, 0, sm, 0)
p.comment("CHOP STYLES (picked at random each yell; click to audition the next one)", 20, 470, 500)
for k, (name, m_) in enumerate(MODES):
    p.comment(name, 20 + (k % 5) * 110, 492 + (k // 5) * 56, 105)
    m = p.msg(m_, 20 + (k % 5) * 110, 512 + (k // 5) * 56, 105); p.wire(sm, k, m, 0); p.wire(m, 0, gen, 0)
cnt = p.obj("counter 1 1000000", 700, 348, 3, 4, ["int", "", "", "int"]); p.wire(fire, 1, cnt, 0)
pt = p.obj("prepend trig", 700, 374, 1, 1); p.wire(cnt, 0, pt, 0); p.wire(pt, 0, gen, 0)

# GRAIN controls: granular on/off, grain size, stretch (read-head speed), scatter
p.comment("GRAIN on · size ms · stretch (head speed) · scatter", 360, 70, 330)
gon = p.box("toggle", 360, 92, 22, 22, 1, 1, ["int"]); p.wire(p.obj("loadmess 1", 860, 200, 1, 1), 0, gon, 0)
gsz = p.box("number", 400, 92, 50, 22, 1, 2, ["", "bang"], minimum=10, maximum=500); p.wire(p.obj("loadmess 70", 860, 226, 1, 1), 0, gsz, 0)
gsc = p.box("flonum", 460, 92, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.02, maximum=2.0); p.wire(p.obj("loadmess 0.5", 860, 252, 1, 1), 0, gsc, 0)
gjt = p.box("flonum", 520, 92, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=1.0); p.wire(p.obj("loadmess 0.15", 860, 278, 1, 1), 0, gjt, 0)
for box_, nm, yy in [(gon, "gran", 200), (gsz, "gsize", 226), (gsc, "gscan", 252), (gjt, "gjit", 278)]:
    pp = p.obj(f"prepend {nm}", 940, yy, 1, 1); p.wire(box_, 0, pp, 0); p.wire(pp, 0, gen, 0)

# dub delay: dotted-1/8 at 170 bpm (265 ms), darkened feedback
tin = p.obj("tapin~ 2000", 260, 420, 1, 1, ["tapconnect"]); p.wire(gen, 0, tin, 0)
tout = p.obj("tapout~ 265", 260, 446, 1, 1, SIG); p.wire(tin, 0, tout, 0)
op = p.obj("onepole~ 2500", 380, 446, 2, 1, SIG); p.wire(tout, 0, op, 0)
p.comment("echo feedback · echo mix", 260, 560, 180)
fbn = p.box("flonum", 260, 580, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=0.85)
mxn = p.box("flonum", 320, 580, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=1.0)
p.wire(p.obj("loadmess 0.45", 500, 580, 1, 1), 0, fbn, 0); p.wire(p.obj("loadmess 0.35", 580, 580, 1, 1), 0, mxn, 0)
fb = p.obj("*~ 0.45", 380, 472, 2, 1, SIG); p.wire(op, 0, fb, 0); p.wire(fbn, 0, fb, 1); p.wire(fb, 0, tin, 0)
wet = p.obj("*~ 0.35", 260, 472, 2, 1, SIG); p.wire(tout, 0, wet, 0); p.wire(mxn, 0, wet, 1)
mix = p.obj("+~", 20, 600, 2, 1, SIG); p.wire(gen, 0, mix, 0); p.wire(wet, 0, mix, 1)
lvr = p.obj("r av_level_vox", 660, 420, 0, 1); lvk = p.obj("pack 0. 40", 660, 446, 2, 1)
lvs = p.obj("line~ 0.4", 660, 472, 2, 2, ["signal", "bang"]); p.wire(lvr, 0, lvk, 0); p.wire(lvk, 0, lvs, 0)
p.comment("LEVEL", 700, 70, 60)
lv = p.box("slider", 700, 92, 26, 120, 1, 1, [""], floatoutput=1, size=1.0, min=0.0)
p.wire(p.obj("loadmess 0.4", 760, 92, 1, 1), 0, lv, 0); p.wire(lv, 0, lvk, 0)
g = p.obj("*~ 0.4", 20, 630, 2, 1, SIG); p.wire(mix, 0, g, 0); p.wire(lvs, 0, g, 1)
dac = p.box("ezdac~", 780, 92, 45, 45, 2, 0); p.wire(g, 0, dac, 0); p.wire(g, 0, dac, 1)
p.comment("click to start audio", 830, 104, 140)
p.dump(f"{out}/vocal_chops.maxpat"); check(f"{out}/vocal_chops.maxpat")
