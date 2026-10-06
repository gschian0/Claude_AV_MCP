"""Part 4 (slot 4, 118 BPM): Warp Garden B section.
Part 5 (slot 5, 170 BPM): jungle breakdown 2 — 8-bar evolving drum phrase + heavy dub bass (new 'Dub Bass' track)."""
import live, random
random.seed(45)
def n(p, t, d=0.25, v=90): return {"pitch": p, "start_time": t, "duration": d, "velocity": v, "mute": False}
def tracks(): return {live.cmd("get_track_info", track_index=i)["name"]: i
                      for i in range(live.cmd("get_session_info")["track_count"])}
def put(idx, slot, name, beats, notes, label):
    ti = idx[name]
    live.cmd("create_clip", track_index=ti, clip_index=slot, length=float(beats))
    live.cmd("add_notes_to_clip", track_index=ti, clip_index=slot, notes=notes)
    live.cmd("set_clip_name", track_index=ti, clip_index=slot, name=f"{name} — {label}")
    print(f"slot {slot + 1}:", name, beats, "beats,", len(notes), "notes")
idx = tracks()

# ---------------- PART 4: B section (Bb / F side of D dorian) ----------------
S4 = 3
mot = [70, 74, 77, 81, 79, 74, 72, 77, 69]               # Bb D F A G D C F A — 9-beat arpeggio (18 eighths, rests between)
put(idx, S4, "Warp Mallets", 9, [n(mot[i % 9] - 12 * (i % 4 == 3), i * .5, .35, 65 + 30 * (i % 3 == 0))
                                 for i in range(18) if i % 5 != 4], "B section")
put(idx, S4, "Tension Bass", 16, [n(p, t, d, v) for p, t, d, v in [
    (34, 0, .75, 120), (34, 1, .25, 85), (41, 1.5, .5, 100), (36, 3, .75, 110),
    (36, 4, .5, 115), (43, 5.25, .25, 90), (36, 6, 1, 105), (29, 7.5, .5, 95),
    (29, 8, .75, 120), (36, 9.5, .25, 90), (33, 10, .75, 105), (41, 11.5, .5, 95),
    (31, 12, .75, 120), (38, 13.25, .25, 90), (31, 14, .5, 105), (33, 15, .75, 110)]], "B section")
put(idx, S4, "Corpus Clang", 3, [n(65, .5, .2, 85), n(72, 1.75, .2, 75), n(70, 2.5, .2, 90)], "B section")
put(idx, S4, "Kick", 4, [n(48, t, .25, v) for t, v in [(0, 120), (1.5, 100), (2, 115), (3.25, 95)]], "B section")
put(idx, S4, "Hats", 5, [n(60, t * .25, .1, random.choice([55, 70, 85, 105])) for t in range(20) if t % 3 != 0 or t == 9], "B section")
put(idx, S4, "Meld Pad", 32, [n(p, b * 8, 8, 72) for b, ch in enumerate(
    [[46, 57, 60, 62, 65], [48, 55, 57, 62, 64], [45, 53, 57, 60, 64], [43, 53, 58, 60, 65]]) for p in ch], "B section")  # Bbmaj9 C6/9 F/A Gm11

# ---------------- PART 5: jungle breakdown 2 (long phrases + dub bass) ----------------
S5 = 4
if "Dub Bass" not in idx:
    ti = live.cmd("get_session_info")["track_count"]
    live.cmd("create_midi_track", index=-1); live.cmd("set_track_name", track_index=ti, name="Dub Bass")
    for u in ["query:Synths#Operator", "query:AudioFx#Saturator", "query:AudioFx#Auto%20Filter", "query:AudioFx#Glue%20Compressor"]:
        live.cmd("load_browser_item", track_index=ti, item_uri=u)
    idx = tracks()

K, ZAP, CL, SN, SN2, TL, HC, TM, HP, HO, TH, CY, CLG = 36, 37, 38, 39, 40, 41, 42, 43, 44, 46, 47, 49, 50
def hats(o, beats, base, swing=0.0):
    return [n(HC if i % 2 else HP, o + i * .25 + (swing if i % 2 else 0), .1, base + random.randint(0, 30)) for i in range(int(beats * 4))]
def amen(o, var=0):
    h = [(K, 0, 120), (K, .5, 105), (SN, 1, 118), (SN, 1.75, 60), (SN, 2.25, 55), (K, 2.5, 110), (K, 2.75, 95), (SN, 3, 118), (SN, 3.75, 70)]
    if var == 1: h = h[:6] + [(SN, 2.75, 100), (SN, 3.25, 80), (K, 3.5, 110)]                    # edit: snare pushed, kick late
    if var == 2: h = [(K, 0, 120), (SN, .75, 70), (SN, 1, 118), (K, 1.5, 105), (SN, 2.5, 90), (SN, 3, 118), (TL, 3.5, 90), (TM, 3.75, 95)]
    return [n(p, o + t, .2, v) for p, t, v in h]
kit = []
# phrase A (bars 1-4): space — sub kick + half-time snare, hats slowly rising, clang/zap answers at phrase ends
for b in range(4):
    o = b * 4
    kit += [n(K, o, .3, 120), n(SN, o + 2, .3, 108)] + hats(o, 4, 25 + 8 * b)
    kit += [n(SN2, o + 3.75, .1, 40 + 6 * b)] + ([n(CY, 0, 2, 85)] if b == 0 else [])
kit += [n(CLG, 7.5, .2, 75), n(ZAP, 15.5, .2, 90), n(TL, 15.25, .2, 80), n(TM, 15.75, .2, 85)]
# phrase B (bars 5-8): the break comes in and mutates — amen, edit, amen, then a drop bar + long roll
kit += amen(16) + hats(16, 4, 50) + [n(HO, 17.5, .3, 80)]
kit += amen(20, 1) + hats(20, 4, 55)
kit += amen(24, 2) + hats(24, 4, 55) + [n(CLG, 26.75, .2, 80)]
kit += [n(K, 28, .3, 120), n(HO, 28.5, .5, 70)] + [n(SN if i % 2 else SN2, 29 + i * .125, .1, 40 + i * 3) for i in range(24)] + [n(ZAP, 31.75, .2, 120)]
put(idx, S5, "Jungle Kit", 32, kit, "breakdown 2 (8-bar phrase)")

# heavy dub bass: long held subs, octave drops, space, slides into the turnarounds
dub = [(26, 0, 6, 127), (38, 6.5, .5, 100), (26, 8, 3, 127), (33, 11.5, 2, 115), (22, 16, 6, 127), (34, 22.5, .5, 100),
       (24, 24, 2.5, 127), (31, 27, 1, 110), (33, 28, 3.5, 127), (37, 31.5, .5, 105)]
put(idx, S5, "Dub Bass", 32, [n(p, t, d, v) for p, t, d, v in dub], "heavy dub")
# dub skank: Dream Keys offbeat chord stabs (Dm9 / Bbmaj7)
sk = []
for b in range(8):
    ch = [57, 60, 64, 65] if b < 4 else [57, 62, 65, 69]
    for off in (1, 3):
        sk += [n(p, b * 4 + off, .2, 70) for p in ch]
put(idx, S5, "Dream Keys", 32, sk, "dub skank")
put(idx, S5, "Meld Pad", 32, [n(p, 0, 16, 55) for p in (38, 50, 57)] + [n(p, 16, 16, 55) for p in (34, 46, 53)], "breakdown 2")
put(idx, S5, "Warp Mallets", 16, [n(p, t, .3, 60) for p, t in [(74, 3.5, ), (81, 9.75), (77, 14.5)]], "breakdown 2")
