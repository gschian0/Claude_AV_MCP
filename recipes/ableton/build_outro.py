"""Part 6 (slot 6, 174 BPM): clean, classic jump-up drum & bass outro. No glitch FX.
DnB Kit = Crisp Kit (pads in chain order on 36..51: 36 Kick 1, 37 Kick 2, 38 Snare 1, 39 Snare 2, 40 Clap,
41 Hihat Closed, 42 Hihat Open 1, 43 Hihat Broken, 46 Hihat Open 2, 47 Shaker, 49-51 Toms).
Jump Up Bass = Reese Classic; Dub Bass carries the sub."""
import live, random
random.seed(174)
SLOT = 5
def n(p, t, d=0.2, v=100): return {"pitch": p, "start_time": t, "duration": d, "velocity": v, "mute": False}
idx = {live.cmd("get_track_info", track_index=i)["name"]: i for i in range(live.cmd("get_session_info")["track_count"])}
def put(name, beats, notes, label="jump-up outro"):
    ti = idx[name]
    if live.cmd("get_track_info", track_index=ti)["clip_slots"][SLOT].get("has_clip"): live.cmd("delete_clip", track_index=ti, clip_index=SLOT)
    live.cmd("create_clip", track_index=ti, clip_index=SLOT, length=float(beats))
    live.cmd("add_notes_to_clip", track_index=ti, clip_index=SLOT, notes=notes)
    live.cmd("set_clip_name", track_index=ti, clip_index=SLOT, name=f"{name} — {label}")
    print("slot 6:", name, beats, "beats,", len(notes), "notes")

KICK, SNARE, SNARE2, CLAP, HHC, HHO, SHAKER, TOM1, TOM2, TOM3 = 36, 38, 39, 40, 41, 42, 47, 49, 50, 51
# ---- drums: 8 bars of classic two-step ----
d = [n(HHO, 0, .5, 90)]                                  # open-hat lift at the top of the phrase
for bar in range(8):
    o = bar * 4
    d += [n(KICK, o, .25, 125), n(KICK, o + 2.5, .25, 115)]          # kick 1 and the "and" of 3
    d += [n(SNARE, o + 1, .25, 120), n(SNARE, o + 3, .25, 120)]      # snare 2 and 4
    d += [n(CLAP, o + 1, .2, 70), n(CLAP, o + 3, .2, 70)]            # quiet clap layer for crack
    d += [n(HHC, o + i * .5, .1, 95 if i % 2 else 70) for i in range(8)]     # 8th hats, offbeats accented
    d += [n(SHAKER, o + i * .25, .1, 35 + 15 * (i % 2)) for i in range(16)]           # rolling shaker 16ths
    d += [n(SNARE2, o + 1.75, .1, 45), n(SNARE2, o + 3.75, .1, 40)]  # ghost snares
    if bar in (3, 7):                                    # simple fill on the last beat of every 4 bars
        d += [n(SNARE, o + 3.25, .1, 95), n(SNARE, o + 3.5, .1, 105), n(TOM2, o + 3.5, .1, 90), n(TOM3, o + 3.75, .1, 100)]
put("DnB Kit", 32, d)

# ---- jump-up bass: bouncy call (bars 1-2) and response (bars 3-4), up a third for bars 5-8 ----
call = [(38, 0, .5), (38, .75, .25), (50, 1.5, .25), (38, 2, .5), (45, 2.75, .25), (38, 3.5, .5)]
resp = [(41, 0, .5), (41, .75, .25), (53, 1.5, .25), (40, 2, .25), (38, 2.5, .75), (36, 3.5, .25), (38, 3.75, .25)]
bass = []
for bar in range(8):
    shift = 3 if bar >= 4 else 0                        # bars 5-8: F centre (relative major lift)
    riff = call if bar % 2 == 0 else resp
    bass += [n(p + shift, bar * 4 + t, l, 115 if t == 0 else 100) for p, t, l in riff]
put("Jump Up Bass", 32, bass)

# ---- sub: clean roots under the riff ----
sub = [(26, 0, 3.5), (26, 4, 1.5), (29, 6, 1.5), (26, 8, 3.5), (24, 12, 3.5),
       (29, 16, 3.5), (29, 20, 1.5), (32, 22, 1.5), (29, 24, 3.5), (28, 28, 1.5), (26, 30, 1.5)]
put("Dub Bass", 32, [n(p, t, l, 120) for p, t, l in sub])

# ---- pad: simple classic chords, low and warm ----
chords = [[50, 57, 62, 65], [46, 53, 58, 62], [53, 57, 60, 65], [48, 55, 60, 64]]   # Dm  Bb  F  C
put("Meld Pad", 32, [n(p, b * 8, 7.9, 55) for b, ch in enumerate(chords) for p in ch])
