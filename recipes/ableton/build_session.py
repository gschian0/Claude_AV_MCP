import live, random
random.seed(7)
S = "query:Synths#"; F = "query:AudioFx#"
D = [50, 52, 53, 55, 57, 59, 60, 62]          # D dorian from D3
def n(p, t, d=0.25, v=100): return {"pitch": p, "start_time": t, "duration": d, "velocity": v, "mute": False}

TRACKS = [
 # name, instrument, effects, clip beats, notes
 ("Warp Mallets", "Collision", ["Shifter", "Spectral%20Time", "Echo"], 7,
  [n(D[i % 8] + 12 * (i % 3 == 2), t * 0.5, 0.4, 70 + 25 * (t % 3 == 0)) for t, i in
   enumerate([0, 2, 4, 7, 4, 2, 5, 1, 3, 6, 4, 2, 0, 4])]),
 ("Tension Bass", "Tension", ["Auto%20Filter", "Roar"], 16,
  [n(p - 24, t, d, v) for p, t, d, v in [
   (50, 0, .5, 120), (50, .75, .25, 90), (57, 1.5, .25, 100), (50, 2.5, .5, 110), (53, 3.25, .5, 95),
   (50, 4, .5, 120), (60, 5.5, .25, 90), (57, 6, .75, 105), (55, 7.25, .5, 95),
   (50, 8, .5, 120), (50, 8.75, .25, 90), (62, 9.5, .25, 100), (57, 10.5, .5, 110), (53, 11.5, .25, 90),
   (48, 12, .75, 120), (50, 13.5, .25, 100), (55, 14, .5, 105), (57, 15, .75, 110)]]),
 ("Corpus Clang", "DS%20Clang", ["Corpus", "Grain%20Delay"], 5,
  [n(p, t, .2, v) for p, t, v in [(62, 0, 110), (69, .75, 80), (65, 1.5, 95), (62, 2.75, 85), (72, 3.5, 100), (67, 4.25, 75)]]),
 ("Kick", "DS%20Kick", ["Glue%20Compressor"], 4,
  [n(48, t, .25, 120) for t in (0, 1, 2, 2.75, 3)]),
 ("Hats", "DS%20HH", ["Beat%20Repeat", "Auto%20Pan-Tremolo"], 3,
  [n(60, t * .25, .1, random.choice([60, 75, 90, 110])) for t in range(12) if t % 4 != 0 or t == 4]),
 ("Meld Pad", "Meld", ["Spectral%20Resonator", "Phaser-Flanger", "Hybrid%20Reverb"], 32,
  [n(p, b * 8, 8, 70) for b, ch in enumerate([[50, 57, 60, 65], [48, 55, 60, 64], [53, 57, 60, 67], [55, 59, 62, 69]]) for p in ch]),
]

live.cmd("set_tempo", tempo=118.0)
base = live.cmd("get_session_info")["track_count"]
for k, (name, inst, fx, beats, notes) in enumerate(TRACKS):
    ti = base + k
    live.cmd("create_midi_track", index=-1)
    live.cmd("set_track_name", track_index=ti, name=name)
    live.cmd("load_browser_item", track_index=ti, item_uri=S + inst)
    for f in fx: live.cmd("load_browser_item", track_index=ti, item_uri=F + f)
    live.cmd("create_clip", track_index=ti, clip_index=0, length=float(beats))
    live.cmd("add_notes_to_clip", track_index=ti, clip_index=0, notes=notes)
    live.cmd("set_clip_name", track_index=ti, clip_index=0, name=f"{name} ({beats} beats)")
    devs = [d["name"] for d in live.cmd("get_track_info", track_index=ti)["devices"]]
    print(ti, name, devs)
