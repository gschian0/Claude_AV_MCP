"""Part 8 (slot 8, 75 BPM): CLASSIC roots reggae on the part-7 tracks — same one drop and the same lopsided
swung hats (SW = 0.62, "the bad swing is good"), but played straight through like a 70s studio band:
steady melodic bass on every bar (no dub drops), skank on 2 and 4 all the way, organ bubble, a horn-section
theme in thirds (bars 1-8), then the melodica takes the tune with the horns harmonising (bars 9-16).
Am · Am · D · D · F · G · Am · Am (dorian D major for the classic lift). FX nearly dry (reggae_fx 'classic').
Needs the tracks from build_reggae.py.   python3 build_reggae_classic.py && python3 play_part.py 8"""
import live, random, reggae_fx
random.seed(1975)
SLOT = 7
SW = 0.62
idx = {live.cmd("get_track_info", track_index=i)["name"]: i for i in range(live.cmd("get_session_info")["track_count"])}
def n(p, t, d=0.2, v=100): return {"pitch": p, "start_time": t, "duration": d, "velocity": v, "mute": False}
def hv(v): return max(1, min(127, v + random.randint(-5, 5)))
def put(name, notes, beats=64, label="classic roots reggae"):
    ti = idx[name]
    if live.cmd("get_track_info", track_index=ti)["clip_slots"][SLOT].get("has_clip"): live.cmd("delete_clip", track_index=ti, clip_index=SLOT)
    live.cmd("create_clip", track_index=ti, clip_index=SLOT, length=float(beats))
    live.cmd("add_notes_to_clip", track_index=ti, clip_index=SLOT, notes=notes)
    live.cmd("set_clip_name", track_index=ti, clip_index=SLOT, name=f"{name} — {label}")
    print("slot 8:", name, len(notes), "notes")
PROG = ["Am", "Am", "D", "D", "F", "G", "Am", "Am"] * 2

# ---- drums: one drop all the way, swung hats every beat, open hat lifts, snare drag into each 8 ----
KICK, RIM, SNARE, HHC, HHO, CRASH = 36, 37, 38, 42, 46, 49
d = []
for bar in range(16):
    o = bar * 4
    if bar in (0, 8): d.append(n(CRASH, o, 1, 72))
    d += [n(KICK, o + 2, .3, hv(118)), n(RIM, o + 2, .2, hv(108))]
    for b in range(4): d += [n(HHC, o + b, .1, hv(74)), n(HHC, o + b + SW, .1, hv(52))]
    if bar % 4 == 3: d.append(n(HHO, o + 3 + SW, .4, hv(78)))
    if bar in (7, 15): d += [n(SNARE, o + t, .12, hv(v)) for t, v in [(3, 80), (3 + SW / 2, 70), (3 + SW, 95), (3.85, 105)]]
put("Reggae Drums", d)

# ---- bass: melodic, on every bar, two shapes per chord so it walks ----
BASS = {"Am":  [(0, 33, .75), (1, 36, .5), (1.5, 40, .5), (2, 45, .5), (2.5, 43, .5), (3, 40, .5), (3.5, 36, .5)],
        "Am2": [(0, 33, .75), (1, 33, .25), (1.5, 31, .5), (2, 28, .75), (3, 31, .5), (3.5, 36, .5)],
        "D":   [(0, 38, .75), (1, 42, .5), (1.5, 45, .5), (2, 50, .5), (2.5, 48, .5), (3, 45, .5), (3.5, 42, .5)],
        "D2":  [(0, 38, .75), (1, 38, .25), (1.5, 40, .5), (2, 42, .75), (3, 40, .5), (3.5, 38, .5)],
        "F":   [(0, 29, .75), (1, 33, .5), (1.5, 36, .5), (2, 41, .5), (3, 36, .5), (3.5, 33, .5)],
        "G":   [(0, 31, .75), (1, 35, .5), (1.5, 38, .5), (2, 43, .5), (3, 38, .5), (3.5, 32, .5)]}   # G# leads home to A
b = []
for bar, ch in enumerate(PROG):
    key = ch + "2" if ch in ("Am", "D") and bar % 2 == 1 else ch
    b += [n(p, bar * 4 + t, l, hv(112 if t == 0 else 98)) for t, p, l in BASS[key]]
put("Roots Bass", b)

# ---- skank guitar on 2 and 4, every bar ----
CH = {"Am": [57, 60, 64], "D": [57, 62, 66], "F": [57, 60, 65], "G": [59, 62, 67]}
put("Skank Guitar", [n(p, bar * 4 + t, .18, hv(96)) for bar, ch in enumerate(PROG) for t in (1, 3) for p in CH[ch]])

# ---- organ bubble, every bar ----
LOW = {"Am": [45, 52], "D": [50, 57], "F": [41, 48], "G": [43, 50]}
o_ = []
for bar, ch in enumerate(PROG):
    for beat in range(4):
        t0 = bar * 4 + beat
        o_ += [n(p, t0 + .25, .14, hv(56)) for p in LOW[ch]] + [n(p, t0 + .75, .14, hv(52)) for p in LOW[ch]]
        o_ += [n(p, t0 + .5, .14, hv(60)) for p in CH[ch]]
put("Bubble Organ", o_)

# ---- the theme (8 bars): horns in thirds first, then melodica lead with horns harmonising ----
THEME = [[(.5, 69, .5), (1, 72, .5), (1.5, 76, 1.0), (3, 74, .5), (3.5, 72, .5)],
         [(0, 69, 2.0), (2.5, 67, .5), (3, 69, 1.0)],
         [(.5, 69, .5), (1, 74, .5), (1.5, 78, 1.0), (3, 76, .5), (3.5, 74, .5)],
         [(0, 72, 1.5), (1.5, 74, .5), (2, 69, 2.0)],
         [(0, 72, 1.0), (1, 77, .5), (1.5, 76, .5), (2, 74, 1.0), (3, 72, 1.0)],
         [(0, 71, 1.0), (1, 74, .5), (1.5, 79, .5), (2, 77, 1.0), (3, 76, 1.0)],
         [(0, 76, 1.5), (1.5, 74, .5), (2, 72, .5), (2.5, 71, .5), (3, 69, 1.0)],
         [(0, 69, 3.0)]]
def third_below(p, ch):
    scale = [9, 11, 0, 2, 4, 6 if ch == "D" else 5, 7]            # A dorian over D, A aeolian elsewhere
    pc = [s for s in sorted(scale, key=lambda s: (p - s) % 12) if (p - s) % 12 >= 3][0]
    return p - ((p - pc) % 12)
horns, mel = [], []
for half in (0, 1):
    for k, bar in enumerate(THEME):
        o = (half * 8 + k) * 4
        for t, p, l in bar:
            if half == 0: horns += [n(p, o + t, l * .95, hv(92)), n(third_below(p, PROG[k]), o + t, l * .95, hv(84))]
            else:
                mel.append(n(p + (12 if k in (4, 5) else 0), o + t, l * .95, hv(94)))   # melodica lifts an octave in bars 13-14
                horns.append(n(third_below(p, PROG[k]), o + t, l * .95, hv(76)))
put("Dub Horns", horns, label="classic theme")
put("Melodica", mel)
reggae_fx.set_fx("classic")
print("part 8 ready: python3 play_part.py 8")
