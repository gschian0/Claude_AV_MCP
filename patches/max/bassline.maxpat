{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 0,
   "revision": 0,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   60.0,
   60.0,
   1320.0,
   700.0
  ],
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      8,
      840,
      40.0
     ],
     "text": "BASSLINE \u2014 a 16-step bassline over the tampura (locked to the jongly chopper, or free-running at 170 bpm). Sets the key (av_root) and scale (av_scale) for the tampura and bells. Voice: filtered saw + sub sine.",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      10,
      840,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      52,
      420,
      40.0
     ],
     "text": "clock: follows the jongly chopper's steps; or switch on free-run",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      54,
      420,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      20,
      76,
      105.0,
      22.0
     ],
     "text": "r jongly_step",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      160,
      76,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      150,
      78,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      186,
      78,
      70,
      20.0
     ],
     "text": "free-run",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      176,
      80,
      70,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      160,
      104,
      98.0,
      22.0
     ],
     "text": "metro 176.36",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      160,
      130,
      98.0,
      22.0
     ],
     "text": "counter 0 15",
     "outlettype": [
      "int",
      "",
      "",
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      160,
      36.0,
      22.0
     ],
     "text": "+ 1",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20,
      186,
      105.0,
      22.0
     ],
     "text": "prepend fetch",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      300,
      52,
      420,
      40.0
     ],
     "text": "bassline: 1 = A1, 13 = A2, 25 = A3 (semitones +1) \u00b7 0 = tie/hold",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      290,
      54,
      420,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "multislider",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      300,
      76,
      400,
      110
     ],
     "size": 16,
     "setminmax": [
      0.0,
      25.0
     ],
     "settype": 0,
     "parameter_enable": 0,
     "slidercolor": [
      0.55,
      0.35,
      0.85,
      1.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      290,
      78,
      400,
      110
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      720,
      52,
      70.0,
      22.0
     ],
     "text": "loadbang",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      720,
      76,
      77.0,
      22.0
     ],
     "text": "delay 200",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      105,
      60,
      20.0
     ],
     "text": "dub",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      710,
      107,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      780,
      104,
      110,
      22.0
     ],
     "text": "1 0 13 1 0 4 1 8 1 0 13 11 8 6 4 0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      770,
      106,
      110,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      131,
      60,
      20.0
     ],
     "text": "walk",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      710,
      133,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      780,
      130,
      110,
      22.0
     ],
     "text": "1 4 6 8 11 8 6 4 1 4 6 8 13 11 8 6",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      770,
      132,
      110,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      157,
      60,
      20.0
     ],
     "text": "pedal",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      710,
      159,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      780,
      156,
      110,
      22.0
     ],
     "text": "1 0 0 0 1 0 0 0 1 0 0 0 8 0 6 0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      770,
      158,
      110,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      183,
      60,
      20.0
     ],
     "text": "octaves",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      710,
      185,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      780,
      182,
      110,
      22.0
     ],
     "text": "1 13 1 13 1 13 1 13 6 18 6 18 8 20 8 20",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      770,
      184,
      110,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      209,
      60,
      20.0
     ],
     "text": "acid",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      710,
      211,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      780,
      208,
      110,
      22.0
     ],
     "text": "1 1 13 1 0 4 1 13 8 0 1 13 6 0 4 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      770,
      210,
      110,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      235,
      60,
      20.0
     ],
     "text": "rolling",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      710,
      237,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      780,
      234,
      110,
      22.0
     ],
     "text": "1 0 1 13 1 0 8 0 1 0 1 13 11 0 8 6",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      770,
      236,
      110,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      261,
      60,
      20.0
     ],
     "text": "squelch",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      710,
      263,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      780,
      260,
      110,
      22.0
     ],
     "text": "1 13 0 13 1 13 0 6 1 13 0 13 4 6 8 11",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      770,
      262,
      110,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      300,
      196,
      49.0,
      22.0
     ],
     "text": "sel 0",
     "outlettype": [
      "bang",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      300,
      222,
      49.0,
      22.0
     ],
     "text": "t b i",
     "outlettype": [
      "bang",
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      360,
      248,
      42.0,
      22.0
     ],
     "text": "+ 32",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      200,
      248,
      36.0,
      22.0
     ],
     "text": "- 1",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      200,
      274,
      133.0,
      22.0
     ],
     "text": "js av_quantize.js",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      200,
      300,
      36.0,
      22.0
     ],
     "text": "+ 1",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      360,
      274,
      42.0,
      22.0
     ],
     "text": "mtof",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      360,
      300,
      84.0,
      22.0
     ],
     "text": "pack 0. 25",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      360,
      326,
      77.0,
      22.0
     ],
     "text": "line~ 55.",
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300,
      274,
      109.0,
      22.0
     ],
     "text": "1 3, 0.55 260",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      300,
      326,
      49.0,
      22.0
     ],
     "text": "line~",
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      300,
      50,
      20.0
     ],
     "text": "glide",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      410,
      302,
      50,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      400,
      252,
      80,
      20.0
     ],
     "text": "pluck env",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      390,
      254,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      480,
      222,
      80,
      20.0
     ],
     "text": "root (MIDI)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      470,
      224,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      560,
      196,
      91.0,
      22.0
     ],
     "text": "loadmess 33",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      560,
      222,
      50,
      22
     ],
     "minimum": 12,
     "maximum": 60,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      550,
      224,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620,
      248,
      77.0,
      22.0
     ],
     "text": "s av_root"
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      700,
      290,
      77.0,
      22.0
     ],
     "text": "r av_root",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700,
      316,
      91.0,
      22.0
     ],
     "text": "prepend set",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      316,
      36.0,
      22.0
     ],
     "text": "- 1",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      615,
      223,
      180,
      40.0
     ],
     "text": "33 = A1 \u00b7 36 = C2 \u00b7 28 = E1",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      605,
      225,
      180,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      52,
      380,
      100.0
     ],
     "text": "RANDOM BASSLINE IN A SCALE \u2014 click a scale to roll a new bassline in it; 'random' re-rolls in the current scale. Numbers = semitones over 2 octaves (root and fifth repeated so they come up more). Add your own scale: duplicate a message and edit the numbers.",
     "linecount": 5,
     "presentation": 1,
     "presentation_rect": [
      910,
      54,
      380,
      100.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      920,
      332,
      49.0,
      22.0
     ],
     "text": "t b l",
     "outlettype": [
      "bang",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      141,
      80,
      20.0
     ],
     "text": "minor",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      910,
      143,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      140,
      300,
      22.0
     ],
     "text": "0 0 7 12 0 2 3 5 7 8 10 12 14 15 17 19 20 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      990,
      142,
      300,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      167,
      80,
      20.0
     ],
     "text": "dorian",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      910,
      169,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      166,
      300,
      22.0
     ],
     "text": "0 0 7 12 0 2 3 5 7 9 10 12 14 15 17 19 21 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      990,
      168,
      300,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      193,
      80,
      20.0
     ],
     "text": "phrygian",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      910,
      195,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      192,
      300,
      22.0
     ],
     "text": "0 0 7 12 0 1 3 5 7 8 10 12 13 15 17 19 20 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      990,
      194,
      300,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      219,
      80,
      20.0
     ],
     "text": "harm. minor",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      910,
      221,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      218,
      300,
      22.0
     ],
     "text": "0 0 7 12 0 2 3 5 7 8 11 12 14 15 17 19 20 23 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      990,
      220,
      300,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      245,
      80,
      20.0
     ],
     "text": "major",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      910,
      247,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      244,
      300,
      22.0
     ],
     "text": "0 0 7 12 0 2 4 5 7 9 11 12 14 16 17 19 21 23 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      990,
      246,
      300,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      271,
      80,
      20.0
     ],
     "text": "minor pent.",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      910,
      273,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      270,
      300,
      22.0
     ],
     "text": "0 0 7 12 0 3 5 7 10 12 15 17 19 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      990,
      272,
      300,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      297,
      80,
      20.0
     ],
     "text": "blues",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      910,
      299,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      296,
      300,
      22.0
     ],
     "text": "0 0 7 12 0 3 5 6 7 10 12 15 17 18 19 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      990,
      298,
      300,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1140,
      332,
      84.0,
      22.0
     ],
     "text": "s av_scale"
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1140,
      358,
      84.0,
      22.0
     ],
     "text": "r av_scale",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      980,
      358,
      49.0,
      22.0
     ],
     "text": "t l l",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      980,
      332,
      406.0,
      22.0
     ],
     "text": "loadmess 0 0 7 12 0 2 3 5 7 8 10 12 14 15 17 19 20 22 24",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1060,
      384,
      56.0,
      22.0
     ],
     "text": "zl len",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-70",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      412,
      60,
      20.0
     ],
     "text": "random",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      910,
      352.0,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-71",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      976,
      410,
      24,
      24
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      966,
      350.0,
      24,
      24
     ]
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 3,
     "patching_rect": [
      920,
      438,
      56.0,
      22.0
     ],
     "text": "uzi 16",
     "outlettype": [
      "bang",
      "bang",
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1020,
      410,
      126.0,
      22.0
     ],
     "text": "r av_reroll_bass",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      920,
      464,
      70.0,
      22.0
     ],
     "text": "random 5",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      920,
      490,
      49.0,
      22.0
     ],
     "text": "sel 0",
     "outlettype": [
      "bang",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      920,
      516,
      25.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      980,
      516,
      36.0,
      22.0
     ],
     "text": "t b",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      980,
      542,
      77.0,
      22.0
     ],
     "text": "random 15",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      980,
      568,
      77.0,
      22.0
     ],
     "text": "zl lookup",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-80",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      980,
      594,
      36.0,
      22.0
     ],
     "text": "+ 1",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      920,
      622,
      91.0,
      22.0
     ],
     "text": "zl group 16",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      396,
      180,
      40.0
     ],
     "text": "brightness (filter peak Hz)",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      336.0,
      180,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      200,
      394,
      60,
      22
     ],
     "minimum": 200,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      190,
      334.0,
      60,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      270,
      394,
      105.0,
      22.0
     ],
     "text": "loadmess 2400",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300,
      420,
      56.0,
      22.0
     ],
     "text": "f 2400",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-86",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300,
      446,
      109.0,
      22.0
     ],
     "text": "$1 3, 260 220",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-87",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      300,
      472,
      77.0,
      22.0
     ],
     "text": "line~ 260",
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-88",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      420,
      42.0,
      22.0
     ],
     "text": "saw~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-89",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      20,
      498,
      119.0,
      22.0
     ],
     "text": "lores~ 260 0.55",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      400,
      420,
      480,
      40.0
     ],
     "text": "EVOLVE \u2014 every N loops: rewrite some steps from the scale (sometimes an octave jump or groove shift); filter brightness + resonance drift",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      390,
      360.0,
      480,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      400,
      464,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      390,
      404.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700,
      464,
      84.0,
      22.0
     ],
     "text": "loadmess 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-93",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      780,
      464,
      126.0,
      22.0
     ],
     "text": "r av_bass_evolve",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-94",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      430,
      466,
      40,
      20.0
     ],
     "text": "every",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      420,
      406.0,
      40,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      472,
      464,
      40,
      22
     ],
     "minimum": 1,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      462,
      404.0,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      516,
      466,
      50,
      20.0
     ],
     "text": "loops \u00b7",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      506,
      406.0,
      50,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      570,
      464,
      40,
      22
     ],
     "minimum": 1,
     "maximum": 16,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      560,
      404.0,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      614,
      466,
      60,
      20.0
     ],
     "text": "changes",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      604,
      406.0,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700,
      490,
      84.0,
      22.0
     ],
     "text": "loadmess 2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      780,
      490,
      84.0,
      22.0
     ],
     "text": "loadmess 3",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      400,
      720,
      84.0,
      22.0
     ],
     "text": "unpack 0 0",
     "outlettype": [
      "int",
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      500,
      720,
      175.0,
      22.0
     ],
     "text": "r av_bass_evolve_preset",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      400,
      490,
      66,
      20.0
     ],
     "text": "steady",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      390,
      430.0,
      66,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-104",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      400,
      510,
      40,
      22.0
     ],
     "text": "4 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      390,
      450.0,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      470,
      490,
      66,
      20.0
     ],
     "text": "drift",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      460,
      430.0,
      66,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      470,
      510,
      40,
      22.0
     ],
     "text": "2 3",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      460,
      450.0,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      540,
      490,
      66,
      20.0
     ],
     "text": "restless",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      530,
      430.0,
      66,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-108",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      540,
      510,
      40,
      22.0
     ],
     "text": "1 5",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      530,
      450.0,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      610,
      490,
      66,
      20.0
     ],
     "text": "wild",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      600,
      430.0,
      66,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      610,
      510,
      40,
      22.0
     ],
     "text": "1 8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      600,
      450.0,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      400,
      540,
      49.0,
      22.0
     ],
     "text": "sel 0",
     "outlettype": [
      "bang",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-112",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      400,
      566,
      56.0,
      22.0
     ],
     "text": "gate 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      460,
      566,
      63.0,
      22.0
     ],
     "text": "counter",
     "outlettype": [
      "int",
      "",
      "",
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      566,
      36.0,
      22.0
     ],
     "text": "% 2",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-115",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      580,
      566,
      49.0,
      22.0
     ],
     "text": "sel 0",
     "outlettype": [
      "bang",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-116",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      580,
      592,
      63.0,
      22.0
     ],
     "text": "t b b b",
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      400,
      618,
      36.0,
      22.0
     ],
     "text": "f 3",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-118",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      400,
      644,
      112.0,
      22.0
     ],
     "text": "prepend evolve",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      400,
      670,
      154.0,
      22.0
     ],
     "text": "js av_evolve_line.js",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      560,
      644,
      105.0,
      22.0
     ],
     "text": "prepend scale",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      700,
      618,
      84.0,
      22.0
     ],
     "text": "random 100",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      700,
      644,
      147.0,
      22.0
     ],
     "text": "scale 0 99 700 4000",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-123",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      700,
      670,
      84.0,
      22.0
     ],
     "text": "random 100",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      700,
      696,
      140.0,
      22.0
     ],
     "text": "scale 0 99 0.3 0.8",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      820,
      696,
      50,
      22
     ],
     "format": 6,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      810,
      541.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-126",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      874,
      697,
      70,
      20.0
     ],
     "text": "resonance",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      864,
      542.0,
      70,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820,
      670,
      105.0,
      22.0
     ],
     "text": "loadmess 0.55",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      140,
      420,
      56.0,
      22.0
     ],
     "text": "*~ 0.5",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      140,
      446,
      56.0,
      22.0
     ],
     "text": "cycle~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      140,
      472,
      56.0,
      22.0
     ],
     "text": "*~ 0.6",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      528,
      36.0,
      22.0
     ],
     "text": "+~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      554,
      36.0,
      22.0
     ],
     "text": "*~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      140,
      580,
      147.0,
      22.0
     ],
     "text": "r av_level_bassline",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      140,
      606,
      84.0,
      22.0
     ],
     "text": "pack 0. 40",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      140,
      632,
      77.0,
      22.0
     ],
     "text": "line~ 0.4",
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      580,
      56.0,
      22.0
     ],
     "text": "*~ 0.4",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      20,
      610,
      45,
      45
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      484.0,
      45,
      45
     ]
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      70,
      622,
      160,
      20.0
     ],
     "text": "click to start audio",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      60,
      496.0,
      160,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1426.0,
      10,
      300,
      60.0
     ],
     "text": "SAVED STATE \u2014 re-applied on load (recipes/max/state/bassline.maxpat.json; recapture with state_capture.maxpat)",
     "linecount": 3
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1426.0,
      70,
      70.0,
      22.0
     ],
     "text": "loadbang",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1426.0,
      96,
      77.0,
      22.0
     ],
     "text": "delay 600",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1506.0,
      96,
      77.0,
      22.0
     ],
     "text": "delay 900",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1426.0,
      130,
      260,
      22.0
     ],
     "text": "200",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1426.0,
      156,
      260,
      22.0
     ],
     "text": "51",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1426.0,
      182,
      260,
      22.0
     ],
     "text": "0 0 8 8 5 4 4 4 4 7 10 9 7 3 1 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1426.0,
      208,
      260,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ]
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-4",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-25",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-27",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      1
     ],
     "destination": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      1
     ],
     "destination": [
      "obj-29",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      1
     ],
     "destination": [
      "obj-31",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
      0
     ],
     "destination": [
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      0
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-34",
      0
     ],
     "destination": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-35",
      0
     ],
     "destination": [
      "obj-36",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-43",
      0
     ],
     "destination": [
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      0
     ],
     "destination": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-46",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      0
     ],
     "destination": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-47",
      0
     ],
     "destination": [
      "obj-30",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-52",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-58",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-60",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-62",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-64",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-50",
      1
     ],
     "destination": [
      "obj-65",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-67",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-68",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-67",
      1
     ],
     "destination": [
      "obj-69",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-71",
      0
     ],
     "destination": [
      "obj-72",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-50",
      0
     ],
     "destination": [
      "obj-72",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-73",
      0
     ],
     "destination": [
      "obj-71",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-72",
      0
     ],
     "destination": [
      "obj-74",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-74",
      0
     ],
     "destination": [
      "obj-75",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-75",
      0
     ],
     "destination": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-75",
      1
     ],
     "destination": [
      "obj-77",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-77",
      0
     ],
     "destination": [
      "obj-78",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      0
     ],
     "destination": [
      "obj-78",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-78",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-67",
      0
     ],
     "destination": [
      "obj-79",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-79",
      0
     ],
     "destination": [
      "obj-80",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      0
     ],
     "destination": [
      "obj-81",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-80",
      0
     ],
     "destination": [
      "obj-81",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-81",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-83",
      0
     ],
     "destination": [
      "obj-85",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-85",
      0
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-86",
      0
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      0
     ],
     "destination": [
      "obj-88",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-88",
      0
     ],
     "destination": [
      "obj-89",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-87",
      0
     ],
     "destination": [
      "obj-89",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-92",
      0
     ],
     "destination": [
      "obj-91",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-93",
      0
     ],
     "destination": [
      "obj-91",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-99",
      0
     ],
     "destination": [
      "obj-95",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-100",
      0
     ],
     "destination": [
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-101",
      0
     ],
     "destination": [
      "obj-95",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-101",
      1
     ],
     "destination": [
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-102",
      0
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      0
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
      0
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-108",
      0
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-110",
      0
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-91",
      0
     ],
     "destination": [
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-111",
      0
     ],
     "destination": [
      "obj-112",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-112",
      0
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-113",
      0
     ],
     "destination": [
      "obj-114",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-95",
      0
     ],
     "destination": [
      "obj-114",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
      0
     ],
     "destination": [
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-115",
      0
     ],
     "destination": [
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-97",
      0
     ],
     "destination": [
      "obj-117",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-116",
      2
     ],
     "destination": [
      "obj-117",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-117",
      0
     ],
     "destination": [
      "obj-118",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-118",
      0
     ],
     "destination": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      0
     ],
     "destination": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-119",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-67",
      0
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      0
     ],
     "destination": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-116",
      1
     ],
     "destination": [
      "obj-121",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-121",
      0
     ],
     "destination": [
      "obj-122",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-122",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-116",
      0
     ],
     "destination": [
      "obj-123",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-123",
      0
     ],
     "destination": [
      "obj-124",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-124",
      0
     ],
     "destination": [
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-125",
      0
     ],
     "destination": [
      "obj-89",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-127",
      0
     ],
     "destination": [
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      0
     ],
     "destination": [
      "obj-128",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      0
     ],
     "destination": [
      "obj-129",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      0
     ],
     "destination": [
      "obj-130",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-89",
      0
     ],
     "destination": [
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-130",
      0
     ],
     "destination": [
      "obj-131",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
      0
     ],
     "destination": [
      "obj-132",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      0
     ],
     "destination": [
      "obj-132",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      0
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      0
     ],
     "destination": [
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-132",
      0
     ],
     "destination": [
      "obj-136",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-135",
      0
     ],
     "destination": [
      "obj-136",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-136",
      0
     ],
     "destination": [
      "obj-137",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-136",
      0
     ],
     "destination": [
      "obj-137",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-140",
      0
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-140",
      0
     ],
     "destination": [
      "obj-142",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-143",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-143",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-144",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-144",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-145",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-145",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-146",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-146",
      0
     ],
     "destination": [
      "obj-4",
      0
     ]
    }
   }
  ],
  "openinpresentation": 1
 }
}
