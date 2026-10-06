"""Shared lists so the instruments and the conductor always agree."""

# jongly chopper patterns: (name, slices, rolls). Slices: 1-16 = play that slice, 0 = keep going, 17 = rest.
CHOP_PRESETS = [
    ("straight",    "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16",      "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"),
    ("stutter",     "1 0 1 0 5 0 5 6 9 0 0 0 13 14 13 14",          "1 1 1 1 1 1 1 1 1 1 1 1 2 2 4 4"),
    ("chop",        "1 0 0 0 5 0 3 4 1 0 0 0 13 0 3 4",             "1 1 2 1 1 1 1 1 1 1 3 1 1 1 4 8"),
    ("roll",        "1 1 1 1 5 5 5 5 9 9 9 9 13 13 13 13",          "1 1 2 2 1 1 4 4 1 1 2 2 3 3 8 8"),
    ("shuffle",     "1 2 3 4 5 6 3 4 9 10 11 12 5 6 15 16",         "1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2"),
    ("half",        "1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8",              "1 1 1 1 1 1 1 2 1 1 1 1 1 1 4 4"),
    ("backwards",   "16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1",       "1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 4"),
    # jump-up: hits grouped 2+2+3+2+2+3+2 and 3+3+2+3+3+2 across the 16 steps
    ("jump 2-2-3",  "1 0 5 0 1 0 0 5 0 1 0 13 0 0 5 6",             "1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 4"),
    ("jump 3-3-2",  "1 0 0 5 0 0 1 0 13 0 0 5 0 0 5 6",             "1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2"),
    ("jump roll",   "1 0 5 0 1 0 0 5 0 1 0 5 5 5 5 5",              "1 1 1 1 1 1 1 1 1 1 1 2 2 3 4 8"),
    # breakdowns: rests (17) leave space, then a build back in
    ("breakdown",   "1 0 17 17 17 17 17 17 5 0 17 17 17 17 17 17",  "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"),
    ("break build", "1 17 17 17 5 17 17 17 1 17 5 17 5 5 5 5",      "1 1 1 1 1 1 1 1 1 1 1 1 2 3 4 8"),
]

# drum filter sweeps: (name, "mode cutoff time cutoff time ..."), mode 1 LP / 2 HP; cutoffs are MIDI notes.
# Every sweep stays audible (LP never below ~260 Hz, HP never above ~1.3 kHz) and ends back fully open.
CHOP_SWEEPS = [
    ("open",                 "1 132 0"),
    ("LP up · 1 loop",       "1 62 0 132 2822"),
    ("LP down+back · 1 loop", "1 132 0 62 1411 132 1411"),
    ("LP dip · 1 beat",      "1 132 0 70 150 132 550"),
    ("LP wah",               "1 132 0 70 176 110 176 72 176 132 352"),
    ("HP riser · 2 loops",   "2 20 0 88 5644 20 300"),
    ("HP swell",             "2 20 0 84 1411 20 1411"),
]
