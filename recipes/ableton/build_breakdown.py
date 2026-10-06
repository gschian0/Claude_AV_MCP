"""Part 2: jungle breakdown at 170 BPM in clip slot 2 (scene 2) of every track.
Jungle Kit = DS Drum Rack (all synthesized: Drum Synth devices) on standard pads:
36 kick 37 FM 38 clap 39 snare 40 snare2 41 tom 42 hat-closed 43 tom 44 hat-pedal 45 FM 46 hat-open 47 tom 48 FM 49 cymbal 50 clang 51 cymbal"""
import live, random
random.seed(170)
K, CL, SN, SN2, HC, HP, HO, TL, TM, TH, ZAP, CY, CLG = 36, 38, 39, 40, 42, 44, 46, 41, 43, 47, 37, 49, 50
SLOT = 1
def n(p, t, d=0.2, v=100): return {"pitch": p, "start_time": t, "duration": d, "velocity": v, "mute": False}
def tracks(): return {live.cmd("get_track_info", track_index=i)["name"]: i
                      for i in range(live.cmd("get_session_info")["track_count"])}

def amen(o):           # one bar of amen-style chop starting at beat o
    hits = [(K, 0, 120), (K, .5, 105), (SN, 1, 118), (SN, 1.75, 60), (K, 2.5, 110), (K, 2.75, 95),
            (SN, 2.25, 55), (SN, 3, 118), (SN, 3.75, 70)]
    return [n(p, o + t, .2, v) for p, t, v in hits]
def hats(o, beats=4, base=55):
    return [n(HC if i % 2 else HP, o + i * .25, .1, base + random.randint(0, 35) + 20 * (i % 4 == 2)) for i in range(int(beats * 4))]

kit = []
# bar 1-2: breakdown — sub kick, half-time snare, rolling ghost hats, tom answers
for b in (0, 4):
    kit += [n(K, b, .3, 120), n(SN, b + 2, .3, 110), n(CY, 0, 1.5, 90) if b == 0 else n(CLG, b + 3.5, .2, 80)]
    kit += hats(b, 4, 35)
    kit += [n(TL, b + 3.25, .2, 85), n(TM, b + 3.5, .2, 90), n(SN, b + 1.75, .1, 45), n(SN2, b + 2.75, .1, 50)]
# bar 3: full amen chop + open hat
kit += amen(8) + hats(8, 4, 50) + [n(HO, 9.5, .3, 85), n(ZAP, 10.75, .2, 90)]
# bar 4: half amen then a 32nd snare roll building into the drop, FM zap pickup
kit += amen(12)[:3] + [n(SN if i % 2 else SN2, 14 + i * .125, .1, 50 + i * 5) for i in range(14)] + [n(ZAP, 15.75, .2, 115)]

PARTS = {  # name: (beats, notes)
 "Jungle Kit": (16, kit),
 "Tension Bass": (16, [n(38, 0, 3.5, 120), n(38, 4, 1.5, 110), n(41, 5.75, 2, 105), n(36, 8, 3.5, 120), n(43, 12, 1, 110), n(45, 13.5, 2.5, 115)]),
 "Meld Pad": (16, [n(p, 0, 8, 60) for p in (50, 57, 62, 65)] + [n(p, 8, 8, 60) for p in (46, 53, 58, 62)]),
 "Warp Mallets": (8, [n(p, t, .3, v) for p, t, v in [(74, 0, 90), (69, 1.5, 70), (72, 3, 80), (77, 4.75, 75), (74, 6.5, 65)]]),
 "Corpus Clang": (4, [n(62, 1.5, .2, 90), n(69, 3.5, .2, 80)]),
}
idx = tracks()
for name, (beats, notes) in PARTS.items():
    ti = idx[name]
    live.cmd("create_clip", track_index=ti, clip_index=SLOT, length=float(beats))
    live.cmd("add_notes_to_clip", track_index=ti, clip_index=SLOT, notes=notes)
    live.cmd("set_clip_name", track_index=ti, clip_index=SLOT, name=f"{name} — jungle breakdown")
    print("slot 2:", name, len(notes), "notes")

# multi-knob racks on the kit (macros are 0-127)
ki = idx["Jungle Kit"]
for di, ps in {1: {6: 85}, 2: {5: 45, 7: 55}}.items():
    for pi, v in ps.items():
        live.cmd("set_device_parameter", track_index=ki, device_index=di, parameter_index=pi, value=float(v))
