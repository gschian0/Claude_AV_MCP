"""Part 3: half-time trip-hop at 85 BPM in clip slot 3 (scene 3).
New track 'Dream Keys' = Electric (physical-model electric piano) playing 4-part voice-led harmony."""
import live, random
random.seed(85)
SLOT = 2
def n(p, t, d=0.25, v=90): return {"pitch": p, "start_time": t, "duration": d, "velocity": v, "mute": False}
def tracks(): return {live.cmd("get_track_info", track_index=i)["name"]: i
                      for i in range(live.cmd("get_session_info")["track_count"])}
idx = tracks()

# --- new relaxing physical-model voice ---
if "Dream Keys" not in idx:
    ti = live.cmd("get_session_info")["track_count"]
    live.cmd("create_midi_track", index=-1); live.cmd("set_track_name", track_index=ti, name="Dream Keys")
    live.cmd("load_browser_item", track_index=ti, item_uri="query:Synths#Electric")
    for u in ["query:AudioFx#Chorus-Ensemble",
              "query:AudioFx#Audio%20Effect%20Rack:Modulation%20&%20Rhythmic:FileId_15094",   # Tape Flutter rack
              "query:AudioFx#Echo", "query:AudioFx#Hybrid%20Reverb"]:
        live.cmd("load_browser_item", track_index=ti, item_uri=u)
    idx = tracks()

# --- 4-part harmony (bass, tenor, alto, soprano), 2 bars per chord, 32 beats ---
# Dm9 -> Bbmaj7 -> Gm9 -> A7sus4 -> A7 ; voices move by step, suspensions resolve
CH = [  # (beat, [B, T, A, S], length)
 (0,  [50, 57, 60, 64], 8),   # Dm9: D  A  C  E
 (8,  [46, 57, 62, 65], 8),   # Bbmaj7: Bb A  D  F
 (16, [43, 58, 62, 69], 8),   # Gm9: G  Bb D  A
 (24, [45, 55, 62, 67], 4),   # A7sus4: A G  D  G
 (28, [45, 55, 61, 64], 4),   # A7: A  G  C# E  (sus resolves, soprano steps down toward D minor)
]
keys = []
for t, voices, L in CH:
    for k, p in enumerate(voices):
        keys.append(n(p, t, L - .1, 62 + 6 * k))                       # soft swelling pad-like hold, soprano on top
        keys.append(n(p, t + 2.5, .9, 45 + 5 * k)) if k else None       # lazy off-beat re-voice of upper 3 parts
keys = [x for x in keys if x]
keys += [n(p, t, .45, 58) for p, t in [(69, 6.5), (67, 7), (65, 14.5), (72, 22.5), (70, 23)]]  # soprano pickups

# --- half-time trip-hop drums on the synthesized Jungle Kit ---
K, SN, SN2, HC, HP, HO, TL, CLG = 36, 39, 40, 42, 44, 46, 41, 50
drums = []
for b in range(0, 16, 4):
    drums += [n(K, b, .3, 118), n(K, b + .75, .2, 80), n(K, b + 2.5, .3, 105), n(SN, b + 1, .3, 105), n(SN, b + 3, .3, 110)]
    drums += [n(HC, b + i * .5 + (.08 if i % 2 else 0), .1, 50 + random.randint(0, 25)) for i in range(8)]   # lazy swung 8ths
    drums += [n(SN2, b + 2.75, .1, 40)] + ([n(HO, b + 3.5, .4, 60)] if b == 12 else []) + ([n(CLG, b + 1.75, .2, 55)] if b == 4 else [])
drums += [n(TL, 15.25, .2, 70), n(TL, 15.5, .2, 75)]

PARTS = {
 "Dream Keys": (32, keys),
 "Jungle Kit": (16, drums),
 "Tension Bass": (32, [n(p, t, d, v) for p, t, d, v in [
     (38, 0, 3, 115), (38, 3.5, .5, 90), (45, 5, 2.5, 100), (34, 8, 3.5, 115), (41, 12, 3, 100),
     (31, 16, 3, 115), (38, 19.5, 1, 90), (34, 21, 2.5, 100), (33, 24, 3.5, 115), (40, 28, 1.5, 95), (37, 30, 1.5, 100)]]),
 "Warp Mallets": (16, [n(p, t, .4, v) for p, t, v in [(81, 1.5, 55), (76, 6, 50), (79, 10.75, 55), (74, 13.5, 45)]]),
}
for name, (beats, notes) in PARTS.items():
    ti = idx[name]
    live.cmd("create_clip", track_index=ti, clip_index=SLOT, length=float(beats))
    live.cmd("add_notes_to_clip", track_index=ti, clip_index=SLOT, notes=notes)
    live.cmd("set_clip_name", track_index=ti, clip_index=SLOT, name=f"{name} — trip-hop")
    print("slot 3:", name, len(notes), "notes")
print([d["name"] for d in live.cmd("get_track_info", track_index=idx["Dream Keys"])["devices"]])
