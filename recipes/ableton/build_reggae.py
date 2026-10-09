"""Part 7 (slot 7, 75 BPM): vintage reggae / dub breakdown — one-drop drums, skank guitar on the off-beat,
bubble organ, a deep roots bassline, a melodica-style reed melody and mellow horn answers, with tape echo
and spring-style reverb dub throws. Key: A minor (Am7 - Dm7, turnaround F - G - Am).
Creates its own tracks (if missing) with Core Library presets, then writes 16-bar clips into slot 7.
    python3 build_reggae.py         # build / rebuild
    python3 play_part.py 7          # play it"""
import live, random
from tune_dreamkeys import by_name
random.seed(75)
SLOT = 6
TRACKS = [  # name, preset, effects
 ("Reggae Drums",  "query:Drums#FileId_14879",                         ["Echo", "Reverb"]),       # Selector Kit Warm
 ("Roots Bass",    "query:Sounds#Bass:FileId_14843",                   []),                       # Skanker Bass
 ("Skank Guitar",  "query:Sounds#Guitar%20&%20Plucked:FileId_16019",   ["Echo", "Reverb"]),       # Reggae Chords Guitar
 ("Bubble Organ",  "query:Sounds#Piano%20&%20Keys:FileId_14460",       ["Auto Pan-Tremolo"]),     # Organ Bandstand
 ("Melodica",      "query:Sounds#Piano%20&%20Keys:FileId_16716",       ["Echo", "Reverb"]),       # Transistor Reeds
 ("Dub Horns",     "query:Sounds#Brass:FileId_14740",                  ["Echo", "Reverb"]),       # Horns Mellow
]
def tracks(): return {live.cmd("get_track_info", track_index=i)["name"]: i for i in range(live.cmd("get_session_info")["track_count"])}
def n(p, t, d=0.2, v=100): return {"pitch": p, "start_time": t, "duration": d, "velocity": v, "mute": False}

idx = tracks()
for name, uri, fx in TRACKS:
    if name in idx: continue
    ti = live.cmd("get_session_info")["track_count"]
    live.cmd("create_midi_track", index=-1); live.cmd("set_track_name", track_index=ti, name=name)
    live.cmd("load_browser_item", track_index=ti, item_uri=uri)
    for f in fx: live.cmd("load_browser_item", track_index=ti, item_uri=f"query:AudioFx#{f.replace(' ', '%20')}")
    idx = tracks(); print("created", name, [d["name"] for d in live.cmd("get_track_info", track_index=ti)["devices"]])

if __name__ == "__main__" and "--pads" in __import__("sys").argv:
    d = live.cmd("get_device_parameters", track_index=idx["Reggae Drums"], device_index=0)["device"]
    for i, c in enumerate(d.get("chains", [])): print(36 + i, c.get("name"), [x["name"] for x in c.get("devices", [])])

def put(name, notes, beats=64, label="vintage reggae breakdown"):
    ti = idx[name]
    if live.cmd("get_track_info", track_index=ti)["clip_slots"][SLOT].get("has_clip"): live.cmd("delete_clip", track_index=ti, clip_index=SLOT)
    live.cmd("create_clip", track_index=ti, clip_index=SLOT, length=float(beats))
    live.cmd("add_notes_to_clip", track_index=ti, clip_index=SLOT, notes=notes)
    live.cmd("set_clip_name", track_index=ti, clip_index=SLOT, name=f"{name} — {label}")
    print("slot 7:", name, len(notes), "notes")
def hv(v): return max(1, min(127, v + random.randint(-6, 6)))        # a little human velocity
SW = 0.62                                                            # swung off-8ths (vintage shuffle feel)

# 16 bars = the 8-bar progression twice. Bars 1-4 dub (drums, bass, organ) · 5-8 + skank · 9-16 + melodica · 13-16 + horns
PROG = ["Am", "Am", "Dm", "Dm", "Am", "Am", "F", "G"] * 2

# ---- drums: one drop (kick + rim together on beat 3, nothing on 1), swung hats, tom/snare fills ----
KICK, RIM, SNARE, HHC, TOM1, TOM2, TOM3, HHO, CRASH = 36, 37, 38, 42, 43, 45, 47, 46, 49
d = [n(CRASH, 0, 1, 70)]
for bar in range(16):
    o = bar * 4
    d += [n(KICK, o + 2, .3, hv(118)), n(RIM, o + 2, .2, hv(105))]
    if bar >= 8: d += [n(SNARE, o + 2, .2, hv(80))]                       # fuller drop in the second half
    for b in range(4):
        if bar < 2 and b % 2 == 0: continue                               # the opening bars breathe
        d += [n(HHC, o + b, .1, hv(72)), n(HHC, o + b + SW, .1, hv(50))]
    if bar in (3, 11): d += [n(HHO, o + 3 + SW, .4, hv(80))]
    if bar in (7, 15):                                                    # triplet fills into the next phrase
        fill = [(SNARE, 2.667), (SNARE, 3.0), (TOM1, 3.333), (TOM2, 3.5), (TOM3, 3.667)] if bar == 15 else \
               [(TOM1, 3.0), (TOM2, 3.333), (TOM3, 3.667)]
        d += [n(p, o + t, .15, hv(100)) for p, t in fill]
put("Reggae Drums", d)

# ---- roots bass: space on the one, melodic walk, dub drops ----
BASS = {"Am": [(0, 33, .75), (1, 33, .25), (1.5, 36, .5), (2.5, 40, .5), (3, 43, .25), (3.5, 40, .5)],
        "Am2": [(0, 33, .75), (1, 31, .5), (1.5, 33, .5), (2.5, 28, 1.0), (3.5, 31, .5)],
        "Dm": [(0, 38, .75), (1, 38, .25), (1.5, 41, .5), (2.5, 45, .5), (3, 41, .25), (3.5, 38, .5)],
        "Dm2": [(0, 38, .75), (1, 36, .5), (1.5, 38, .5), (2.5, 33, 1.0), (3.5, 36, .5)],
        "F": [(0, 29, .75), (1, 29, .25), (1.5, 33, .5), (2.5, 36, .5), (3.5, 33, .5)],
        "G": [(0, 31, .75), (1, 31, .25), (1.5, 35, .5), (2.5, 38, .5), (3, 40, .25), (3.5, 43, .5)]}
b = []
for bar, ch in enumerate(PROG):
    key = ch + "2" if ch in ("Am", "Dm") and bar % 2 == 1 else ch
    for t, p, l in BASS[key]:
        if bar in (7, 15) and t >= 2: continue                            # dub drop: the bass falls out under the fill
        if bar == 12 and t > 0: continue                                  # one big drop: just the downbeat, then space
        b.append(n(p, bar * 4 + t, l, hv(112 if t == 0 else 100)))
put("Roots Bass", b)

# ---- skank guitar: short chops on 2 and 4 (bars 5-16), an echo-throw extra on the last bar of each phrase ----
CH = {"Am": [57, 60, 64, 67], "Dm": [57, 60, 62, 65], "F": [57, 60, 65], "G": [59, 62, 67]}
g = []
for bar, ch in enumerate(PROG):
    if bar < 4: continue
    for t in (1, 3): g += [n(p, bar * 4 + t, .18, hv(96)) for p in CH[ch]]
    if bar in (7, 15): g += [n(p, bar * 4 + 3.5, .18, hv(110)) for p in CH[ch]]
put("Skank Guitar", g)

# ---- bubble organ: low root+fifth on the 'e' and 'a', chord on the 'and', soft, all 16 bars ----
LOW = {"Am": [45, 52], "Dm": [50, 57], "F": [41, 48], "G": [43, 50]}
o_ = []
for bar, ch in enumerate(PROG):
    for beat in range(4):
        t0 = bar * 4 + beat
        o_ += [n(p, t0 + .25, .14, hv(58)) for p in LOW[ch]] + [n(p, t0 + .75, .14, hv(54)) for p in LOW[ch]]
        o_ += [n(p, t0 + .5, .14, hv(62)) for p in CH[ch]]
put("Bubble Organ", o_)

# ---- melodica: A minor pentatonic tune over bars 9-16 ----
MEL = [[(0, 76, 1.25), (1.5, 79, .5), (2, 76, .5), (2.5, 74, .5), (3, 72, 1.0)],
       [(0, 69, 2.5), (3, 72, .5), (3.5, 74, .5)],
       [(0, 77, 1.25), (1.5, 76, .5), (2, 74, .5), (2.5, 72, .5), (3, 74, 1.0)],
       [(0, 69, 2.0), (2.5, 67, .5), (3, 69, 1.0)],
       [(0, 76, .75), (1, 79, .5), (1.5, 81, 1.0), (3, 79, .5), (3.5, 76, .5)],
       [(0, 74, .5), (.5, 72, .5), (1, 69, 2.0)],
       [(0, 72, 1.0), (1, 69, .5), (1.5, 72, .5), (2, 77, 1.5)],
       [(0, 74, 1.0), (1, 71, .5), (1.5, 74, .5), (2, 79, 1.5)]]
put("Melodica", [n(p, (8 + k) * 4 + t, l, hv(92)) for k, bar in enumerate(MEL) for t, p, l in bar])

# ---- dub horns: swelling thirds at the end of phrases (bars 7-8) and answers to the melodica (bars 13-16) ----
HORN = {6: [(2, [64, 69], 1.5)], 7: [(2, [62, 67], 1.5)],
        12: [(2.5, [64, 67], .5), (3, [64, 69], .9)], 13: [(2.5, [62, 65], .5), (3, [60, 64], .9)],
        14: [(2.5, [60, 65], .5), (3, [60, 65], .9)], 15: [(2.5, [62, 67], .5), (3, [62, 71], .9)]}
put("Dub Horns", [n(p, bar * 4 + t, l, hv(88)) for bar, hits in HORN.items() for t, ps, l in hits for p in ps])

import reggae_fx; reggae_fx.set_fx("dub")
print("part 7 ready: python3 play_part.py 7")
