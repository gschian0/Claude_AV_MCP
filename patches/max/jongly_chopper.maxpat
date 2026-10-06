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
   40.0,
   40.0,
   960.0,
   1000.0
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
      900,
      40.0
     ],
     "text": "JONGLY CHOPPER \u2014 after ModSquad. The jongly loop is cut into 16 slices. The green row says which slice each step plays; the orange row says how many times that step re-fires (rolls). Pick a pattern, or let AUTO move through them.",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      10,
      900,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      70,
      189.0,
      22.0
     ],
     "text": "buffer~ jongly jongly.aif",
     "outlettype": [
      "float",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      200,
      70,
      147.0,
      22.0
     ],
     "text": "buffer~ chopsteps 2",
     "outlettype": [
      "float",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      350,
      70,
      147.0,
      22.0
     ],
     "text": "buffer~ choprolls 2",
     "outlettype": [
      "float",
      "bang"
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
      20,
      104,
      480,
      40.0
     ],
     "text": "SLICES \u2014 which slice each step plays (1-16) \u00b7 0 = keep going \u00b7 17 (top) = rest",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      62.0,
      480,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "multislider",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      126,
      480,
      130
     ],
     "size": 16,
     "setminmax": [
      0.0,
      17.0
     ],
     "settype": 0,
     "parameter_enable": 0,
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      84.0,
      480,
      130
     ]
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      264,
      440,
      20.0
     ],
     "text": "ROLLS \u2014 times each step re-fires (1 = normal)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      222.0,
      440,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "multislider",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      286,
      480,
      60
     ],
     "size": 16,
     "setminmax": [
      1.0,
      8.0
     ],
     "settype": 0,
     "parameter_enable": 0,
     "slidercolor": [
      0.85,
      0.45,
      0.1,
      1.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      244.0,
      480,
      60
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
      356,
      84.0,
      22.0
     ],
     "text": "listfunnel",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      20,
      382,
      147.0,
      22.0
     ],
     "text": "peek~ chopsteps 1 0",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      180,
      356,
      84.0,
      22.0
     ],
     "text": "listfunnel",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      180,
      382,
      147.0,
      22.0
     ],
     "text": "peek~ choprolls 1 0",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      530,
      104,
      200,
      20.0
     ],
     "text": "PATTERNS (click one)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      520,
      62.0,
      200,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      530,
      446,
      77.0,
      22.0
     ],
     "text": "route s r",
     "outlettype": [
      "",
      "",
      ""
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
      530,
      126,
      400,
      22.0
     ],
     "text": "s 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16, r 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      84.0,
      400,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      152,
      400,
      22.0
     ],
     "text": "s 1 0 1 0 5 0 5 6 9 0 0 0 13 14 13 14, r 1 1 1 1 1 1 1 1 1 1 1 1 2 2 4 4",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      110.0,
      400,
      22.0
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
      530,
      178,
      400,
      22.0
     ],
     "text": "s 1 0 0 0 5 0 3 4 1 0 0 0 13 0 3 4, r 1 1 2 1 1 1 1 1 1 1 3 1 1 1 4 8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      136.0,
      400,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      204,
      400,
      22.0
     ],
     "text": "s 1 1 1 1 5 5 5 5 9 9 9 9 13 13 13 13, r 1 1 2 2 1 1 4 4 1 1 2 2 3 3 8 8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      162.0,
      400,
      22.0
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
      530,
      230,
      400,
      22.0
     ],
     "text": "s 1 2 3 4 5 6 3 4 9 10 11 12 5 6 15 16, r 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      188.0,
      400,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      256,
      400,
      22.0
     ],
     "text": "s 1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8, r 1 1 1 1 1 1 1 2 1 1 1 1 1 1 4 4",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      214.0,
      400,
      22.0
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
      530,
      282,
      400,
      22.0
     ],
     "text": "s 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1, r 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 4",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      240.0,
      400,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      308,
      400,
      22.0
     ],
     "text": "s 1 0 5 0 1 0 0 5 0 1 0 13 0 0 5 6, r 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 4",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      266.0,
      400,
      22.0
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
      530,
      334,
      400,
      22.0
     ],
     "text": "s 1 0 0 5 0 0 1 0 13 0 0 5 0 0 5 6, r 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      292.0,
      400,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      360,
      400,
      22.0
     ],
     "text": "s 1 0 5 0 1 0 0 5 0 1 0 5 5 5 5 5, r 1 1 1 1 1 1 1 1 1 1 1 2 2 3 4 8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      318.0,
      400,
      22.0
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
      530,
      386,
      400,
      22.0
     ],
     "text": "s 1 0 17 17 17 17 17 17 5 0 17 17 17 17 17 17, r 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      344.0,
      400,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      412,
      400,
      22.0
     ],
     "text": "s 1 17 17 17 5 17 17 17 1 17 5 17 5 5 5 5, r 1 1 1 1 1 1 1 1 1 1 1 1 2 3 4 8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      520,
      370.0,
      400,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      400,
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
     "id": "obj-28",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      530,
      480,
      100,
      20.0
     ],
     "text": "random slices",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      520,
      438.0,
      100,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      630,
      478,
      24,
      24
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      620,
      436.0,
      24,
      24
     ]
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 3,
     "patching_rect": [
      660,
      480,
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
     "id": "obj-31",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      720,
      480,
      77.0,
      22.0
     ],
     "text": "random 17",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      800,
      480,
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
     "id": "obj-33",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      530,
      514,
      170,
      20.0
     ],
     "text": "AUTO \u2014 new pattern every",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      520,
      472.0,
      170,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      705,
      512,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      695,
      470.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      830,
      540,
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
     "id": "obj-36",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      735,
      512,
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
      725,
      470.0,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      780,
      514,
      50,
      20.0
     ],
     "text": "loops",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      770,
      472.0,
      50,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      830,
      514,
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
     "id": "obj-39",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      420,
      260,
      20.0
     ],
     "text": "CHAOS \u2014 random jumps per step (0-1)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      378.0,
      260,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20,
      442,
      133.0,
      22.0
     ],
     "text": "loadmess set 0.15",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      150,
      442,
      60,
      22
     ],
     "format": 6,
     "minimum": 0.0,
     "maximum": 1.0,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      140,
      400.0,
      60,
      22
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
      220,
      442,
      105.0,
      22.0
     ],
     "text": "prepend chaos",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      474,
      260,
      20.0
     ],
     "text": "LIVE ROLL \u2014 every step (0 = off)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      432.0,
      260,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      496,
      81.0,
      22.0
     ],
     "text": "rollnow 0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      454.0,
      81.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      102,
      496,
      81.0,
      22.0
     ],
     "text": "rollnow 2",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      92,
      454.0,
      81.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      184,
      496,
      81.0,
      22.0
     ],
     "text": "rollnow 3",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      174,
      454.0,
      81.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      266,
      496,
      81.0,
      22.0
     ],
     "text": "rollnow 4",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      256,
      454.0,
      81.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      348,
      496,
      81.0,
      22.0
     ],
     "text": "rollnow 8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      338,
      454.0,
      81.0,
      22.0
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
      530,
      576,
      130,
      20.0
     ],
     "text": "RATE (tape speed)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      520,
      534.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      530,
      598,
      119.0,
      22.0
     ],
     "text": "loadmess set 1.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      640,
      598,
      60,
      22
     ],
     "format": 6,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      630,
      556.0,
      60,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      710,
      598,
      98.0,
      22.0
     ],
     "text": "prepend rate",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      20,
      534,
      200.0,
      22.0
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       60.0,
       60.0,
       760.0,
       560.0
      ],
      "boxes": [
       {
        "box": {
         "id": "obj-1",
         "maxclass": "codebox",
         "numinlets": 1,
         "numoutlets": 3,
         "patching_rect": [
          20,
          50,
          700,
          440
         ],
         "code": "// ModSquad-style beat chopper (after Atau Tanaka's ModSquad, 2003).\n// 16 steps. Step n plays slice chopsteps[n] (1-16); 0 = keep going into the next slice; 17 = rest.\n// choprolls[n] = how many times step n re-fires (1 = normal, 2/3/4/8 = roll).\n// chaos = chance per step of jumping to a random slice (sometimes rolled) instead.\nBuffer loop(\"jongly\");\nBuffer steps(\"chopsteps\");\nBuffer rolls(\"choprolls\");\nParam rate(1);      // 1 = original tempo (~170 bpm); tape-style, pitch follows\nParam fade(48);     // samples of fade at slice/roll edges (kills clicks)\nParam chaos(0.15);  // 0 = play the pattern exactly, 1 = every step random\nParam rollnow(0);   // live roll: >= 2 re-fires every step this many times\nParam comp(1);      // compressor on/off: evens out the loop's hits\nParam thresh(-20);  // dB where compression starts\nParam ratio(3);     // 3:1 above the threshold\nParam makeup(4);    // dB of gain back after compressing\nParam prstep(1);    // PITCH ROLL: semitones added on each roll repeat (negative = falling rolls)\nParam lfodepth(0.5);  // PITCH LFO depth in semitones\nParam lforate(1);  // LFO cycles per loop (mode 0) / per step (mode 1) / per roll hit (mode 2)\nParam lfomode(2);  // 0 = synced to the loop, 1 = retriggers every step, 2 = retriggers every roll hit (multi-trigger)\nParam lfoshape(0); // 0 = sine wobble, 1 = saw dive (starts high, drops)\nHistory ph(0), lastStep(-1), slice(0), roll(1), mute(0), envf(0), rd(0), lastHit(-1);\n\n// SAFETY: an empty/reloading buffer (len 0) or a bad value would make the read index NaN/inf and\n// sample() would read outside the buffer and crash Max (it did, 2026-10-06). Keep every value finite.\nlen = max(dim(loop), 1);\nok = (dim(loop) > 64) ? 1 : 0;\nph = wrap(fixnan(ph + clamp(fixnan(rate), -4, 4)/len), 0, 1);\nstep = floor(ph*16);\nif (step != lastStep) {\n\tv = peek(steps, step, 0);\n\tmute = (v >= 17) ? 1 : 0;\n\tslice = (v >= 1 && v < 17) ? v - 1 : wrap(slice + 1, 0, 16);\n\troll = max(peek(rolls, step, 0), 1);\n\tif (mute == 0 && noise()*0.5 + 0.5 < chaos) {\n\t\tslice = clamp(floor((noise()*0.5 + 0.5)*16), 0, 15);\n\t\troll = (noise() > 0.5) ? 2 : roll;\n\t}\n\tlastStep = step;\n}\nrl = (rollnow >= 2) ? rollnow : roll;\nfrac = ph*16 - step;\nsub = frac*rl;\nsubfrac = sub - floor(sub);\nenv = clamp(min(subfrac, 1 - subfrac)*(len/16/rl)/fade, 0, 1);\n// pitch: every slice/roll hit gets its own read pointer (rd, in samples) that runs at rate * 2^(semi/12),\n// so hits can be pitched without changing the timing of the pattern\nsubn = floor(sub);\nhit = step*16 + subn;\nif (hit != lastHit) { rd = 0; lastHit = hit; }\nrd = fixnan(rd);\nlph = (lfomode < 0.5) ? ph*lforate : ((lfomode < 1.5) ? frac*lforate : subfrac*lforate);\nlw = lph - floor(lph);\nlfo = (lfoshape < 0.5) ? sin(6.283185307*lw) : 1 - 2*lw;\nsemi = clamp(fixnan(clamp(prstep, -12, 12)*subn + clamp(lfodepth, 0, 24)*lfo), -36, 36);\nrd = clamp(rd + clamp(fixnan(rate), -4, 4)*exp(semi*0.05776226505), -len, len);\nidx = clamp(fixnan(wrap((slice*len/16 + rd)/len, 0, 1)), 0, 0.999999);\ndry = ok*sample(loop, idx)*env*(1 - mute);\n\n// compressor: envelope follower (3 ms attack, 120 ms release) \u2192 gain reduction above thresh at 'ratio'\natt = 1 - exp(-1/(0.003*samplerate));\nrel = 1 - exp(-1/(0.12*samplerate));\na = abs(dry);\nenvf = fixnan(envf + ((a > envf) ? att : rel)*(a - envf));\nover = max(atodb(max(envf, 0.00001)) - thresh, 0);\ngr = over*(1 - 1/max(ratio, 1));\nout1 = (comp > 0) ? dry*dbtoa(makeup - gr) : dry;\nout2 = step;\nout3 = (comp > 0) ? gr : 0;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 12.0,
         "outlettype": [
          "",
          "",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          510,
          49.0,
          22.0
         ],
         "text": "out 1"
        }
       },
       {
        "box": {
         "id": "obj-3",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          80,
          510,
          49.0,
          22.0
         ],
         "text": "out 2"
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          510,
          49.0,
          22.0
         ],
         "text": "out 3"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-1",
          0
         ],
         "destination": [
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-1",
          1
         ],
         "destination": [
          "obj-3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-1",
          2
         ],
         "destination": [
          "obj-4",
          0
         ]
        }
       }
      ]
     },
     "outlettype": [
      "signal",
      "signal",
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      240,
      534,
      330,
      40.0
     ],
     "text": "COMP on \u00b7 thresh dB \u00b7 ratio \u00b7 makeup dB \u00b7 reduction dB",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      230,
      492.0,
      330,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      240,
      556,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      230,
      514.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      268,
      556,
      50,
      22
     ],
     "format": 6,
     "maximum": 0.0,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      258,
      514.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      324,
      556,
      44,
      22
     ],
     "format": 6,
     "minimum": 1.0,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      314,
      514.0,
      44,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      374,
      556,
      44,
      22
     ],
     "format": 6,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      364,
      514.0,
      44,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      430,
      556,
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
      420,
      514.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      900,
      520,
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
     "id": "obj-61",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820,
      520,
      98.0,
      22.0
     ],
     "text": "prepend comp",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      900,
      546,
      98.0,
      22.0
     ],
     "text": "loadmess -20",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820,
      546,
      112.0,
      22.0
     ],
     "text": "prepend thresh",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      900,
      572,
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
     "id": "obj-65",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820,
      572,
      105.0,
      22.0
     ],
     "text": "prepend ratio",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      900,
      598,
      84.0,
      22.0
     ],
     "text": "loadmess 4",
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
     "numoutlets": 1,
     "patching_rect": [
      820,
      598,
      112.0,
      22.0
     ],
     "text": "prepend makeup",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      820,
      624,
      98.0,
      22.0
     ],
     "text": "snapshot~ 50",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      586,
      220,
      40.0
     ],
     "text": "PITCH roll st \u00b7 LFO depth st \u00b7 rate",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      544.0,
      220,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-70",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      606,
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
      10,
      564.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-71",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      76,
      606,
      50,
      22
     ],
     "format": 6,
     "minimum": 0.0,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      66,
      564.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      132,
      606,
      50,
      22
     ],
     "format": 6,
     "minimum": 0.0,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      122,
      564.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      520,
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
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1080,
      520,
      112.0,
      22.0
     ],
     "text": "prepend prstep",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      546,
      98.0,
      22.0
     ],
     "text": "loadmess 0.5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1080,
      546,
      126.0,
      22.0
     ],
     "text": "prepend lfodepth",
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
      1000,
      572,
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
     "id": "obj-78",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1080,
      572,
      119.0,
      22.0
     ],
     "text": "prepend lforate",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      636,
      220,
      40.0
     ],
     "text": "LFO sync: loop \u00b7 step \u00b7 roll hit   shape: sine \u00b7 dive",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      594.0,
      220,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-80",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      656,
      68,
      22.0
     ],
     "text": "lfomode 0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      614.0,
      68,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      92,
      656,
      68,
      22.0
     ],
     "text": "lfomode 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      82,
      614.0,
      68,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      164,
      656,
      68,
      22.0
     ],
     "text": "lfomode 2",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      154,
      614.0,
      68,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      682,
      76,
      22.0
     ],
     "text": "lfoshape 0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      640.0,
      76,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      100,
      682,
      76,
      22.0
     ],
     "text": "lfoshape 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      90,
      640.0,
      76,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      740,
      900,
      40.0
     ],
     "text": "FILTER SWEEPS \u2014 click one, or let AUTO fire them; each starts on the next beat, stays audible and ends open. Message = mode (1 LP \u00b7 2 HP) then cutoff/time pairs (MIDI note, ms).",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      674.0,
      900,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-86",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      560,
      770,
      56.0,
      22.0
     ],
     "text": "zl reg",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-87",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      640,
      770,
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
     "id": "obj-88",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      690,
      770,
      25.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-89",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560,
      830,
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
     "id": "obj-90",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      770,
      130,
      20.0
     ],
     "text": "open",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      704.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      792,
      125,
      22.0
     ],
     "text": "1 132 0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      726.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      155,
      770,
      130,
      20.0
     ],
     "text": "LP up \u00b7 1 loop",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      145,
      704.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-93",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      155,
      792,
      125,
      22.0
     ],
     "text": "1 62 0 132 2822",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      145,
      726.0,
      125,
      22.0
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
      290,
      770,
      130,
      40.0
     ],
     "text": "LP down+back \u00b7 1 loop",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      280,
      704.0,
      130,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      290,
      792,
      125,
      22.0
     ],
     "text": "1 132 0 62 1411 132 1411",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      280,
      726.0,
      125,
      22.0
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
      425,
      770,
      130,
      20.0
     ],
     "text": "LP dip \u00b7 1 beat",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      415,
      704.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      425,
      792,
      125,
      22.0
     ],
     "text": "1 132 0 70 150 132 550",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      415,
      726.0,
      125,
      22.0
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
      20,
      822,
      130,
      20.0
     ],
     "text": "LP wah",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      756.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      844,
      125,
      22.0
     ],
     "text": "1 132 0 70 176 110 176 72 176 132 352",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      778.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      155,
      822,
      130,
      20.0
     ],
     "text": "HP riser \u00b7 2 loops",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      145,
      756.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      155,
      844,
      125,
      22.0
     ],
     "text": "2 20 0 88 5644 20 300",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      145,
      778.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      290,
      822,
      130,
      20.0
     ],
     "text": "HP swell",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      280,
      756.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      290,
      844,
      125,
      22.0
     ],
     "text": "2 20 0 84 1411 20 1411",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      280,
      778.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-104",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      760,
      804,
      36.0,
      22.0
     ],
     "text": "% 4",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      760,
      830,
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
     "id": "obj-106",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      560,
      856,
      49.0,
      22.0
     ],
     "text": "t b b",
     "outlettype": [
      "bang",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640,
      856,
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
     "id": "obj-108",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      560,
      882,
      84.0,
      22.0
     ],
     "text": "zl slice 1",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      680,
      908,
      77.0,
      22.0
     ],
     "text": "line~ 132",
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      680,
      934,
      49.0,
      22.0
     ],
     "text": "mtof~",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      760,
      882,
      110,
      20.0
     ],
     "text": "resonance (0-1)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      750,
      812.0,
      110,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-112",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      760,
      906,
      50,
      22
     ],
     "format": 6,
     "minimum": 0.0,
     "maximum": 0.95,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      750,
      836.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820,
      906,
      98.0,
      22.0
     ],
     "text": "loadmess 0.5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      20,
      880,
      105.0,
      22.0
     ],
     "text": "svf~ 1000 0.5",
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-115",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      20,
      910,
      105.0,
      22.0
     ],
     "text": "selector~ 3 1",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-116",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      140,
      940,
      140.0,
      22.0
     ],
     "text": "r av_level_chopper",
     "outlettype": [
      ""
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
      140,
      966,
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
     "id": "obj-118",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      140,
      992,
      77.0,
      22.0
     ],
     "text": "line~ 0.5",
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      940,
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
     "id": "obj-120",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      260,
      940,
      112.0,
      22.0
     ],
     "text": "send~ av_drums"
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      20,
      968,
      45,
      45
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      870.0,
      45,
      45
     ]
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      70,
      980,
      140,
      40.0
     ],
     "text": "click to start audio",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      60,
      882.0,
      140,
      40.0
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
      240,
      616,
      91.0,
      22.0
     ],
     "text": "snapshot~ 5",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      240,
      642,
      56.0,
      22.0
     ],
     "text": "change",
     "outlettype": [
      "",
      "int",
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      330,
      642,
      50,
      22
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      320,
      600.0,
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
      382,
      593,
      40,
      20.0
     ],
     "text": "step",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      372,
      551.0,
      40,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      240,
      668,
      105.0,
      22.0
     ],
     "text": "s jongly_step"
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      440,
      616,
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
     "id": "obj-129",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      440,
      642,
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
     "id": "obj-130",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      500,
      642,
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
     "id": "obj-131",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      570,
      642,
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
     "id": "obj-132",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      620,
      642,
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
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      680,
      642,
      77.0,
      22.0
     ],
     "text": "random 12",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 13,
     "patching_rect": [
      680,
      668,
      217.0,
      22.0
     ],
     "text": "sel 0 1 2 3 4 5 6 7 8 9 10 11",
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      976,
      120,
      20.0
     ],
     "text": "AUTO SWEEP every",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      590,
      878.0,
      120,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      715,
      974,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      705,
      876.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      600,
      1030,
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
     "id": "obj-138",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      742,
      974,
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
      732,
      876.0,
      40,
      22
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
      786,
      976,
      50,
      20.0
     ],
     "text": "loops",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      776,
      878.0,
      50,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      680,
      1030,
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
     "id": "obj-141",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600,
      1056,
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
     "id": "obj-142",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      660,
      1056,
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
     "id": "obj-143",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      730,
      1056,
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
     "id": "obj-144",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      780,
      1056,
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
     "id": "obj-145",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600,
      1082,
      70.0,
      22.0
     ],
     "text": "random 6",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      690,
      1082,
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
     "id": "obj-147",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      740,
      1082,
      133.0,
      22.0
     ],
     "text": "sel 0 1 2 3 4 5 6",
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-148",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      1002,
      70,
      20.0
     ],
     "text": "sweep now",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      590,
      904.0,
      70,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      670,
      1000,
      22,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      660,
      902.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      380,
      133.0,
      22.0
     ],
     "text": "r av_drum_pattern",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-151",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      406,
      140.0,
      22.0
     ],
     "text": "r av_auto_patterns",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-152",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      432,
      126.0,
      22.0
     ],
     "text": "r av_auto_sweeps",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      458,
      112.0,
      22.0
     ],
     "text": "r av_sweep_now",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      484,
      84.0,
      22.0
     ],
     "text": "r av_chaos",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1246.0,
      10,
      300,
      60.0
     ],
     "text": "SAVED STATE \u2014 re-applied on load (recipes/max/state/jongly_chopper.maxpat.json; recapture with state_capture.maxpat)",
     "linecount": 3
    }
   },
   {
    "box": {
     "id": "obj-156",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
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
     "id": "obj-157",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
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
     "id": "obj-158",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1326.0,
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
     "id": "obj-159",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      130,
      260,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      156,
      260,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      182,
      260,
      22.0
     ],
     "text": "0.5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-162",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      208,
      260,
      22.0
     ],
     "text": "0.04",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-163",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      234,
      260,
      22.0
     ],
     "text": "1.43",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      260,
      260,
      22.0
     ],
     "text": "-0.002",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-165",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      286,
      260,
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
     "id": "obj-166",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      312,
      260,
      22.0
     ],
     "text": "0.2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-167",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      338,
      260,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-168",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      364,
      260,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-169",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      390,
      260,
      22.0
     ],
     "text": "1 1 1 1 1 1 1 1 1 1 1 1 2 3 4 8",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-170",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1246.0,
      416,
      260,
      22.0
     ],
     "text": "1 17 17 17 5 17 17 17 1 17 5 17 5 5 5 5",
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
      "obj-6",
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
      "obj-10",
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
      "obj-11",
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
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
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
      "obj-14",
      1
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
      "obj-15",
      0
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-14",
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
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
      0
     ],
     "destination": [
      "obj-14",
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
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
      0
     ],
     "destination": [
      "obj-14",
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
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-14",
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
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-24",
      0
     ],
     "destination": [
      "obj-14",
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
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
      0
     ],
     "destination": [
      "obj-14",
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
      "obj-15",
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
      "obj-6",
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
      "obj-38",
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
      "obj-40",
      0
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      0
     ],
     "destination": [
      "obj-42",
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
      "obj-51",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-51",
      0
     ],
     "destination": [
      "obj-52",
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
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-55",
      0
     ],
     "destination": [
      "obj-61",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-61",
      0
     ],
     "destination": [
      "obj-53",
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
      "obj-56",
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
      "obj-63",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-63",
      0
     ],
     "destination": [
      "obj-53",
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
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-57",
      0
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
      "obj-65",
      0
     ],
     "destination": [
      "obj-53",
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
      "obj-58",
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
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-53",
      2
     ],
     "destination": [
      "obj-68",
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
      "obj-59",
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
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
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
      "obj-53",
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
      "obj-71",
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
      "obj-76",
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
      "obj-53",
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
      "obj-72",
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
      "obj-78",
      0
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
      "obj-53",
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
      "obj-53",
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
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-82",
      0
     ],
     "destination": [
      "obj-53",
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
      "obj-53",
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
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-44",
      0
     ],
     "destination": [
      "obj-53",
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
      "obj-53",
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
      "obj-53",
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
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
      0
     ],
     "destination": [
      "obj-53",
      0
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
      "obj-53",
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
      "obj-53",
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
      "obj-91",
      0
     ],
     "destination": [
      "obj-86",
      1
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
      "obj-87",
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
      "obj-86",
      1
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
      "obj-87",
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
      "obj-86",
      1
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
      "obj-87",
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
      "obj-86",
      1
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
      "obj-87",
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
      "obj-86",
      1
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
      "obj-87",
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
      "obj-86",
      1
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
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
      0
     ],
     "destination": [
      "obj-86",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
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
      "obj-104",
      0
     ],
     "destination": [
      "obj-105",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-105",
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
      "obj-89",
      0
     ],
     "destination": [
      "obj-106",
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
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
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
      "obj-106",
      1
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
      "obj-108",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-108",
      1
     ],
     "destination": [
      "obj-109",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-109",
      0
     ],
     "destination": [
      "obj-110",
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
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-53",
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
      "obj-110",
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
      "obj-112",
      0
     ],
     "destination": [
      "obj-114",
      2
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
      "obj-115",
      0
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
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
      1
     ],
     "destination": [
      "obj-115",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
      2
     ],
     "destination": [
      "obj-115",
      3
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
      "obj-115",
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
      "obj-118",
      0
     ],
     "destination": [
      "obj-119",
      1
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
      "obj-120",
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
      "obj-121",
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
      "obj-121",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-53",
      1
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
      "obj-124",
      0
     ],
     "destination": [
      "obj-127",
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
      "obj-128",
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
      "obj-104",
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
      "obj-129",
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
      1
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
      "obj-130",
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
      "obj-36",
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
      "obj-132",
      0
     ],
     "destination": [
      "obj-133",
      0
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
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      1
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      2
     ],
     "destination": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      3
     ],
     "destination": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      4
     ],
     "destination": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      5
     ],
     "destination": [
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      6
     ],
     "destination": [
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      7
     ],
     "destination": [
      "obj-22",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      8
     ],
     "destination": [
      "obj-23",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      9
     ],
     "destination": [
      "obj-24",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      10
     ],
     "destination": [
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      11
     ],
     "destination": [
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-137",
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
      "obj-140",
      0
     ],
     "destination": [
      "obj-138",
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
      "obj-141",
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
      "obj-141",
      1
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
      "obj-142",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-142",
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
      "obj-138",
      0
     ],
     "destination": [
      "obj-143",
      1
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
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
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
      "obj-147",
      1
     ],
     "destination": [
      "obj-93",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      2
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
      "obj-147",
      3
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
      "obj-147",
      4
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      5
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
      "obj-147",
      6
     ],
     "destination": [
      "obj-103",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-149",
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
      "obj-150",
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
      "obj-151",
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
      "obj-152",
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
      "obj-153",
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
      "obj-154",
      0
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
      0
     ],
     "destination": [
      "obj-157",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
      0
     ],
     "destination": [
      "obj-158",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-157",
      0
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-159",
      0
     ],
     "destination": [
      "obj-138",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-158",
      0
     ],
     "destination": [
      "obj-160",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-160",
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
      "obj-157",
      0
     ],
     "destination": [
      "obj-161",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-161",
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
      "obj-157",
      0
     ],
     "destination": [
      "obj-162",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-162",
      0
     ],
     "destination": [
      "obj-58",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-157",
      0
     ],
     "destination": [
      "obj-163",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-157",
      0
     ],
     "destination": [
      "obj-164",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-164",
      0
     ],
     "destination": [
      "obj-56",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-157",
      0
     ],
     "destination": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-165",
      0
     ],
     "destination": [
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-158",
      0
     ],
     "destination": [
      "obj-166",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-166",
      0
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-157",
      0
     ],
     "destination": [
      "obj-167",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-167",
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
      "obj-158",
      0
     ],
     "destination": [
      "obj-168",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-168",
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
      "obj-157",
      0
     ],
     "destination": [
      "obj-169",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-169",
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
      "obj-157",
      0
     ],
     "destination": [
      "obj-170",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-170",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   }
  ],
  "openinpresentation": 1
 }
}
