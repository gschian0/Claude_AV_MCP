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
   1420.0,
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
     "text": "JONGLY GRANULAR \u2014 the chopper as a grain cloud: same rows and presets, but pitch and time are independent (drop the break an octave without slowing it; slow or freeze time without changing pitch). Follows the speed chopper's clock when it is playing.",
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
      119.0,
      22.0
     ],
     "text": "buffer~ gjongly",
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
      154.0,
      22.0
     ],
     "text": "buffer~ gchopsteps 2",
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
      154.0,
      22.0
     ],
     "text": "buffer~ gchoprolls 2",
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
      154.0,
      22.0
     ],
     "text": "peek~ gchopsteps 1 0",
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
      154.0,
      22.0
     ],
     "text": "peek~ gchoprolls 1 0",
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
     "numoutlets": 4,
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
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          15,
          42.0,
          22.0
         ],
         "text": "in 1",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "codebox",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          20,
          50,
          700,
          440
         ],
         "code": "// ModSquad-style beat chopper (after Atau Tanaka's ModSquad, 2003).\n// 16 steps. Step n plays slice chopsteps[n] (1-16); 0 = keep going into the next slice; 17 = rest.\n// choprolls[n] = how many times step n re-fires (1 = normal, 2/3/4/8 = roll).\n// chaos = chance per step of jumping to a random slice (sometimes rolled) instead.\nBuffer loop(\"gjongly\");\nBuffer steps(\"gchopsteps\");\nBuffer rolls(\"gchoprolls\");\nBuffer vcut(\"gchopvelcut\");   // per-step VELOCITY, stored as cut = 1 - velocity (empty buffer = full volume)\nBuffer spit(\"gchoppitch\");    // per-step PITCH in semitones (-12..+12)\nParam rate(1);      // 1 = original tempo (~170 bpm); tape-style, pitch follows\nParam fade(48);     // samples of fade at slice/roll edges (kills clicks)\nParam chaos(0.15);  // 0 = play the pattern exactly, 1 = every step random\nParam rollnow(0);   // live roll: >= 2 re-fires every step this many times\nParam comp(1);      // compressor on/off: evens out the loop's hits\nParam thresh(-20);  // dB where compression starts\nParam ratio(3);     // 3:1 above the threshold\nParam makeup(4);    // dB of gain back after compressing\nParam prstep(1);    // PITCH ROLL: semitones added on each roll repeat (negative = falling rolls)\nParam prollon(1);   // pitch rolls on/off (off keeps prstep, just stops applying it)\nParam lfoon(1);     // pitch LFO on/off\nParam lfodepth(0.5);  // PITCH LFO depth in semitones\nParam lforate(1);  // LFO cycles per loop (mode 0) / per step (mode 1) / per roll hit (mode 2)\nParam lfomode(2);  // 0 = synced to the loop, 1 = retriggers every step, 2 = retriggers every roll hit (multi-trigger)\nParam lfoshape(0); // 0 = sine wobble, 1 = saw dive (starts high, drops)\nParam transpose(0); // global pitch, semitones -24..+24: drops the whole break down or up (rate/timing unchanged)\nParam dyn(1);       // dynamics amount: 0 = flat, 1 = full per-step velocity\nParam gsize(90);    // GRAIN size in ms\nParam jitter(0.15); // random grain start spread (0-1 of a grain)\nParam scan(1);      // TIME speed through each slice, independent of pitch (0.5 = half speed, 0 = still)\nParam freeze(0);    // 1 = time stops: the grains hold the current spot (pitch still moves)\nParam sync(1);      // 1 = follow the speed chopper's clock (in1 = its loop phase) whenever it is running\nParam fit(1);       // 1 = stretch this loop's slices to jongly's step length (time only), so a different loop stays in sync\nParam gdiv(0);      // TEMPO-SYNCED grain size: 0 = use gsize ms; 1/2/4/8 = one jongly step divided by this\nBuffer ref(\"jongly\");  // the speed chopper's loop: only its length is read, to fit this loop to it\nHistory ph(0), lastStep(-1), slice(0), roll(1), mute(0), envf(0), rd(0), lastHit(-1), sv(1), spt(0);\nHistory lastIn(-1), gp(0), gst0(0), gst1(0), gst2(0), gst3(0), gl0(1), gl1(1), gl2(1), gl3(1);\n\n// SAFETY: an empty/reloading buffer (len 0) or a bad value would make the read index NaN/inf and\n// sample() would read outside the buffer and crash Max (it did, 2026-10-06). Keep every value finite.\nlen = max(dim(loop), 1);\nok = (dim(loop) > 64) ? 1 : 0;\nown = wrap(fixnan(ph + clamp(fixnan(rate), -4, 4)/((fit > 0.5 && dim(ref) > 64) ? dim(ref) : len)), 0, 1);\next = clamp(fixnan(in1), 0, 0.999999);\nph = (sync > 0.5 && ext != lastIn) ? ext : own;   // the speed chopper's phase moves -> follow it; else free-run\nlastIn = ext;\nstep = floor(ph*16);\nif (step != lastStep) {\n\tv = peek(steps, step, 0);\n\tmute = (v >= 17) ? 1 : 0;\n\tslice = (v >= 1 && v < 17) ? v - 1 : wrap(slice + 1, 0, 16);\n\troll = max(peek(rolls, step, 0), 1);\n\tsv = 1 - clamp(fixnan(peek(vcut, step, 0)), 0, 1);\n\tspt = clamp(fixnan(peek(spit, step, 0)), -12, 12);\n\tif (mute == 0 && noise()*0.5 + 0.5 < chaos) {\n\t\tslice = clamp(floor((noise()*0.5 + 0.5)*16), 0, 15);\n\t\troll = (noise() > 0.5) ? 2 : roll;\n\t}\n\tlastStep = step;\n}\nrl = (rollnow >= 2) ? rollnow : roll;\nfrac = ph*16 - step;\nsub = frac*rl;\nsubfrac = sub - floor(sub);\nenv = clamp(min(subfrac, 1 - subfrac)*(len/16/rl)/fade, 0, 1);\n// pitch: every slice/roll hit gets its own read pointer (rd, in samples) that runs at rate * 2^(semi/12),\n// so hits can be pitched without changing the timing of the pattern\nsubn = floor(sub);\nhit = step*16 + subn;\nif (hit != lastHit) { rd = 0; lastHit = hit; }\nrd = fixnan(rd);\nlph = (lfomode < 0.5) ? ph*lforate : ((lfomode < 1.5) ? frac*lforate : subfrac*lforate);\nlw = lph - floor(lph);\nlfo = (lfoshape < 0.5) ? sin(6.283185307*lw) : 1 - 2*lw;\nsemi = clamp(fixnan(clamp(transpose, -24, 24) + spt + ((prollon > 0.5) ? clamp(prstep, -12, 12)*subn : 0) + ((lfoon > 0.5) ? clamp(lfodepth, 0, 24)*lfo : 0)), -36, 36);\n// GRANULAR: rd moves through the slice at 'scan' (time), each grain reads at 'pratio' (pitch) \u2014 independent\npratio = exp(semi*0.05776226505);   // NOT 'ratio': that is the compressor Param (gen~ refuses to assign to a Param)\nfitk = (fit > 0.5 && dim(ref) > 64) ? clamp(len/dim(ref), 0.125, 8) : 1;   // this loop's length / jongly's length\nrd = clamp(rd + ((freeze > 0.5) ? 0 : clamp(fixnan(rate), -4, 4)*clamp(fixnan(scan), 0, 4)*fitk), -len, len);\nbase = slice*len/16 + rd;\nstepl = ((fit > 0.5 && dim(ref) > 64) ? dim(ref) : len)/16/max(abs(clamp(fixnan(rate), -4, 4)), 0.05);   // one step, in samples\ngsz = (gdiv >= 1) ? clamp(stepl/clamp(floor(gdiv), 1, 16), 0.01*samplerate, 0.5*samplerate) : clamp(fixnan(gsize), 10, 500)*samplerate*0.001;\njit = clamp(fixnan(jitter), 0, 1)*gsz;\ngp = wrap(fixnan(gp + 1/gsz), 0, 1);\nq0 = gp; q1 = wrap(gp + 0.25, 0, 1); q2 = wrap(gp + 0.5, 0, 1); q3 = wrap(gp + 0.75, 0, 1);\nif (q0 < gl0) { gst0 = base + noise()*jit; }\nif (q1 < gl1) { gst1 = base + noise()*jit; }\nif (q2 < gl2) { gst2 = base + noise()*jit; }\nif (q3 < gl3) { gst3 = base + noise()*jit; }\ngl0 = q0; gl1 = q1; gl2 = q2; gl3 = q3;\nr0 = sample(loop, clamp(fixnan(wrap((gst0 + q0*gsz*pratio)/len, 0, 1)), 0, 0.999999))*(0.5 - 0.5*cos(6.283185307*q0));\nr1 = sample(loop, clamp(fixnan(wrap((gst1 + q1*gsz*pratio)/len, 0, 1)), 0, 0.999999))*(0.5 - 0.5*cos(6.283185307*q1));\nr2 = sample(loop, clamp(fixnan(wrap((gst2 + q2*gsz*pratio)/len, 0, 1)), 0, 0.999999))*(0.5 - 0.5*cos(6.283185307*q2));\nr3 = sample(loop, clamp(fixnan(wrap((gst3 + q3*gsz*pratio)/len, 0, 1)), 0, 0.999999))*(0.5 - 0.5*cos(6.283185307*q3));\ndry = ok*fixnan((r0 + r1 + r2 + r3)*0.5)*env*(1 - mute)*(1 - clamp(dyn, 0, 1)*(1 - sv));\n\n// compressor: envelope follower (3 ms attack, 120 ms release) \u2192 gain reduction above thresh at 'ratio'\natt = 1 - exp(-1/(0.003*samplerate));\nrel = 1 - exp(-1/(0.12*samplerate));\na = abs(dry);\nenvf = fixnan(envf + ((a > envf) ? att : rel)*(a - envf));\nover = max(atodb(max(envf, 0.00001)) - thresh, 0);\ngr = over*(1 - 1/max(ratio, 1));\nout1 = (comp > 0) ? dry*dbtoa(makeup - gr) : dry;\nout2 = step;\nout3 = (comp > 0) ? gr : 0;\nout4 = dim(loop)*1000/samplerate;   // CHECK: loaded loop length in ms (0 = not loaded)\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 12.0,
         "outlettype": [
          "",
          "",
          "",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-3",
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
         "id": "obj-4",
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
         "id": "obj-5",
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
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          200,
          510,
          49.0,
          22.0
         ],
         "text": "out 4"
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
          "obj-2",
          0
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
          "obj-2",
          1
         ],
         "destination": [
          "obj-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-2",
          2
         ],
         "destination": [
          "obj-5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-2",
          3
         ],
         "destination": [
          "obj-6",
          0
         ]
        }
       }
      ]
     },
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
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      20,
      508,
      161.0,
      22.0
     ],
     "text": "receive~ jongly_phase",
     "outlettype": [
      "signal"
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
     "id": "obj-56",
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
     "id": "obj-57",
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
     "id": "obj-58",
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
     "id": "obj-59",
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
     "id": "obj-60",
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
     "id": "obj-61",
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
     "id": "obj-62",
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
     "id": "obj-63",
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
     "id": "obj-64",
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
     "id": "obj-65",
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
     "id": "obj-66",
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
     "id": "obj-67",
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
     "id": "obj-68",
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
     "id": "obj-69",
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
     "id": "obj-70",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      586,
      260,
      40.0
     ],
     "text": "PITCH roll st \u00b7 LFO depth st \u00b7 rate \u00b7 on: rolls LFO",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      544.0,
      260,
      40.0
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
     "id": "obj-72",
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
     "id": "obj-73",
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
     "id": "obj-74",
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
     "id": "obj-75",
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
     "id": "obj-76",
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
     "id": "obj-77",
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
     "id": "obj-78",
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
     "id": "obj-79",
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
     "id": "obj-80",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      192,
      606,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      182,
      564.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      598,
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
     "id": "obj-82",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1080,
      598,
      119.0,
      22.0
     ],
     "text": "prepend prollon",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1180,
      598,
      140.0,
      22.0
     ],
     "text": "r av_gchop_prollon",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      220,
      606,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      210,
      564.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      624,
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
     "id": "obj-86",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1080,
      624,
      105.0,
      22.0
     ],
     "text": "prepend lfoon",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-87",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1180,
      624,
      126.0,
      22.0
     ],
     "text": "r av_gchop_lfoon",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-88",
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
     "id": "obj-89",
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
     "id": "obj-90",
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
     "id": "obj-91",
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
     "id": "obj-92",
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
     "id": "obj-93",
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
     "id": "obj-94",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      980,
      70,
      161.0,
      22.0
     ],
     "text": "buffer~ gchopvelcut 2",
     "outlettype": [
      "float",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1140,
      70,
      154.0,
      22.0
     ],
     "text": "buffer~ gchoppitch 2",
     "outlettype": [
      "float",
      "bang"
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
      980,
      104,
      400,
      40.0
     ],
     "text": "VELOCITY \u2014 loudness of each step (builds dynamics into the loop)",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      932,
      62.0,
      400,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "multislider",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      980,
      126,
      400,
      100
     ],
     "size": 16,
     "setminmax": [
      0.0,
      1.0
     ],
     "settype": 1,
     "parameter_enable": 0,
     "slidercolor": [
      0.3,
      0.6,
      0.95,
      1.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      932,
      84.0,
      400,
      100
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
      980,
      236,
      400,
      20.0
     ],
     "text": "STEP PITCH \u2014 semitones per step, down or up (-12..+12)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      932,
      194.0,
      400,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "multislider",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      980,
      258,
      400,
      100
     ],
     "size": 16,
     "setminmax": [
      -12.0,
      12.0
     ],
     "settype": 0,
     "parameter_enable": 0,
     "slidercolor": [
      0.75,
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
      932,
      216.0,
      400,
      100
     ]
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      126,
      112.0,
      22.0
     ],
     "text": "vexpr 1. - $f1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      152,
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
     "id": "obj-102",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      178,
      161.0,
      22.0
     ],
     "text": "peek~ gchopvelcut 1 0",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      258,
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
     "id": "obj-104",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      284,
      154.0,
      22.0
     ],
     "text": "peek~ gchoppitch 1 0",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      1420,
      380,
      77.0,
      22.0
     ],
     "text": "route v p",
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      980,
      368,
      80,
      20.0
     ],
     "text": "DYNAMICS",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      932,
      326.0,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "newobj",
     "numinlets": 9,
     "numoutlets": 9,
     "patching_rect": [
      1620,
      368,
      392.0,
      22.0
     ],
     "text": "route flat groove accents ghosts swell build fade drop",
     "outlettype": [
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
     "id": "obj-108",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1050,
      368,
      78,
      22.0
     ],
     "text": "flat",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1002,
      326.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      428,
      200,
      22.0
     ],
     "text": "v 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1",
     "outlettype": [
      ""
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
      1132,
      368,
      78,
      22.0
     ],
     "text": "groove",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1084,
      326.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1630,
      450,
      200,
      22.0
     ],
     "text": "v 1 0.5 0.7 0.45 0.9 0.5 0.75 0.5 1 0.5 0.7 0.45 0.9 0.55 0.8 0.6",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-112",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1214,
      368,
      78,
      22.0
     ],
     "text": "accents",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1166,
      326.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1640,
      472,
      200,
      22.0
     ],
     "text": "v 1 0.45 0.45 0.6 1 0.45 0.45 0.6 1 0.45 0.45 0.6 1 0.45 0.45 0.6",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1296,
      368,
      78,
      22.0
     ],
     "text": "ghosts",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1248,
      326.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-115",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1650,
      494,
      200,
      22.0
     ],
     "text": "v 1 0.35 1 0.35 1 0.35 1 0.35 1 0.35 1 0.35 1 0.35 1 0.35",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-116",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1050,
      392,
      78,
      22.0
     ],
     "text": "swell",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1002,
      350.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1660,
      516,
      200,
      22.0
     ],
     "text": "v 0.3 0.35 0.39 0.44 0.49 0.53 0.58 0.63 0.67 0.72 0.77 0.81 0.86 0.91 0.95 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-118",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1132,
      392,
      78,
      22.0
     ],
     "text": "build",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1084,
      350.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1670,
      538,
      200,
      22.0
     ],
     "text": "v 0.15 0.15 0.17 0.18 0.21 0.24 0.29 0.34 0.39 0.46 0.53 0.61 0.69 0.79 0.89 1.0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1214,
      392,
      78,
      22.0
     ],
     "text": "fade",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1166,
      350.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1680,
      560,
      200,
      22.0
     ],
     "text": "v 1.0 0.95 0.91 0.86 0.81 0.77 0.72 0.67 0.63 0.58 0.53 0.49 0.44 0.39 0.35 0.3",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1296,
      392,
      78,
      22.0
     ],
     "text": "drop",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1248,
      350.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-123",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1690,
      582,
      200,
      22.0
     ],
     "text": "v 1 0.4 0.4 0.4 0.9 0.4 0.4 0.4 0.2 0.2 0.2 0.2 0.6 0.7 0.85 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      980,
      424,
      80,
      20.0
     ],
     "text": "PITCH",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      932,
      382.0,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "newobj",
     "numinlets": 8,
     "numoutlets": 8,
     "patching_rect": [
      1620,
      424,
      392.0,
      22.0
     ],
     "text": "route flat dropend riseend dubdrop seesaw dive octaves",
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
     "id": "obj-126",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1050,
      424,
      78,
      22.0
     ],
     "text": "flat",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1002,
      382.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      484,
      200,
      22.0
     ],
     "text": "p 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1132,
      424,
      78,
      22.0
     ],
     "text": "dropend",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1084,
      382.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1630,
      506,
      200,
      22.0
     ],
     "text": "p 0 0 0 0 0 0 0 0 0 0 0 0 -3 -5 -7 -12",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1214,
      424,
      78,
      22.0
     ],
     "text": "riseend",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1166,
      382.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1640,
      528,
      200,
      22.0
     ],
     "text": "p 0 0 0 0 0 0 0 0 0 0 0 0 2 3 5 7",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1296,
      424,
      78,
      22.0
     ],
     "text": "dubdrop",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1248,
      382.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1650,
      550,
      200,
      22.0
     ],
     "text": "p -12 0 0 0 -12 0 0 0 -12 0 0 0 -12 0 0 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1050,
      448,
      78,
      22.0
     ],
     "text": "seesaw",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1002,
      406.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1660,
      572,
      200,
      22.0
     ],
     "text": "p 0 -5 0 5 0 -5 0 5 0 -5 0 5 0 -5 0 5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1132,
      448,
      78,
      22.0
     ],
     "text": "dive",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1084,
      406.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1670,
      594,
      200,
      22.0
     ],
     "text": "p 0 -1 -2 -3 -4 -5 -6 -7 -8 -9 -10 -11 -12 -12 -12 -12",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1214,
      448,
      78,
      22.0
     ],
     "text": "octaves",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1166,
      406.0,
      78,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1680,
      616,
      200,
      22.0
     ],
     "text": "p 0 0 12 0 0 -12 0 0 0 0 12 0 0 -12 0 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      980,
      476,
      300,
      40.0
     ],
     "text": "TRANSPOSE whole break (st) \u00b7 dynamics amount",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      932,
      434.0,
      300,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      980,
      496,
      50,
      22
     ],
     "format": 6,
     "minimum": -24.0,
     "maximum": 24.0,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      932,
      454.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1280,
      496,
      50,
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
      1232,
      454.0,
      50,
      22
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
      1036,
      496,
      30,
      22.0
     ],
     "text": "-12",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      988,
      454.0,
      30,
      22.0
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
      1070,
      496,
      30,
      22.0
     ],
     "text": "-7",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1022,
      454.0,
      30,
      22.0
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
      1104,
      496,
      30,
      22.0
     ],
     "text": "-5",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1056,
      454.0,
      30,
      22.0
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
      1138,
      496,
      30,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1090,
      454.0,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1172,
      496,
      30,
      22.0
     ],
     "text": "5",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1124,
      454.0,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-148",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1206,
      496,
      30,
      22.0
     ],
     "text": "7",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1158,
      454.0,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1240,
      496,
      30,
      22.0
     ],
     "text": "12",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1192,
      454.0,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      430,
      84.0,
      22.0
     ],
     "text": "loadmess 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-151",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      430,
      133.0,
      22.0
     ],
     "text": "prepend transpose",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-152",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      456,
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
     "id": "obj-153",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      456,
      91.0,
      22.0
     ],
     "text": "prepend dyn",
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
      1520,
      380,
      154.0,
      22.0
     ],
     "text": "r av_gchop_transpose",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      380,
      112.0,
      22.0
     ],
     "text": "r av_gchop_dyn",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-156",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      330,
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
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      980,
      700,
      420,
      40.0
     ],
     "text": "GRAIN size ms \u00b7 jitter \u00b7 time speed \u00b7 freeze \u00b7 sync to speed chopper",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      932,
      658.0,
      420,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-158",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      980,
      722,
      50,
      22
     ],
     "format": 6,
     "minimum": 10.0,
     "maximum": 500.0,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      932,
      680.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1036,
      722,
      50,
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
      988,
      680.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1092,
      722,
      50,
      22
     ],
     "format": 6,
     "minimum": 0.0,
     "maximum": 4.0,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1044,
      680.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1150,
      722,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1102,
      680.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-162",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1180,
      722,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1132,
      680.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-163",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      700,
      91.0,
      22.0
     ],
     "text": "loadmess 90",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      700,
      105.0,
      22.0
     ],
     "text": "prepend gsize",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-165",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      726,
      105.0,
      22.0
     ],
     "text": "loadmess 0.15",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-166",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      726,
      112.0,
      22.0
     ],
     "text": "prepend jitter",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-167",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      752,
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
     "id": "obj-168",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      752,
      98.0,
      22.0
     ],
     "text": "prepend scan",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-169",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      778,
      84.0,
      22.0
     ],
     "text": "loadmess 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-170",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      778,
      112.0,
      22.0
     ],
     "text": "prepend freeze",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-171",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      804,
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
     "id": "obj-172",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      804,
      98.0,
      22.0
     ],
     "text": "prepend sync",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-173",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      980,
      752,
      40,
      20.0
     ],
     "text": "time:",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      932,
      710.0,
      40,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-174",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1020,
      752,
      36,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      972,
      710.0,
      36,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-175",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1060,
      752,
      36,
      22.0
     ],
     "text": "0.25",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1012,
      710.0,
      36,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-176",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1100,
      752,
      36,
      22.0
     ],
     "text": "0.5",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1052,
      710.0,
      36,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-177",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1140,
      752,
      36,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1092,
      710.0,
      36,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-178",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1180,
      752,
      36,
      22.0
     ],
     "text": "2",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1132,
      710.0,
      36,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-179",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      980,
      784,
      300,
      20.0
     ],
     "text": "LOOP (fitted to jongly's bar) \u00b7 fit",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      932,
      742.0,
      300,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-180",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 6,
     "patching_rect": [
      1620,
      784,
      322.0,
      22.0
     ],
     "text": "route dnblive rolling scatty funkchop jongly",
     "outlettype": [
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
     "id": "obj-181",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      980,
      806,
      66,
      22.0
     ],
     "text": "dnblive",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      932,
      764.0,
      66,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-182",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      840,
      300,
      22.0
     ],
     "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/Loops/Drums/Full/Drum and Bass Live 170 bpm.aif\"",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-183",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1050,
      806,
      66,
      22.0
     ],
     "text": "rolling",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1002,
      764.0,
      66,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-184",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1630,
      862,
      300,
      22.0
     ],
     "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/Loops/Drums/Full/Drum and Bass Rolling 170 bpm.wav\"",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-185",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1120,
      806,
      66,
      22.0
     ],
     "text": "scatty",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1072,
      764.0,
      66,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1640,
      884,
      300,
      22.0
     ],
     "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/Loops/Drums/Full/Break Scatty 174 bpm.wav\"",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-187",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1190,
      806,
      66,
      22.0
     ],
     "text": "funkchop",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1142,
      764.0,
      66,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-188",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1650,
      906,
      300,
      22.0
     ],
     "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/Loops/Drums/Full/Break Funk Chop 115 bpm.wav\"",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-189",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1260,
      806,
      66,
      22.0
     ],
     "text": "jongly",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1212,
      764.0,
      66,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-190",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1660,
      928,
      300,
      22.0
     ],
     "text": "read jongly.aif",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-191",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1340,
      806,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1292,
      764.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-192",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      840,
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
     "id": "obj-193",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      840,
      91.0,
      22.0
     ],
     "text": "prepend fit",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      870,
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
     "id": "obj-195",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1280,
      700,
      130,
      40.0
     ],
     "text": "SYNC grain = step \u00f7",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      1232,
      658.0,
      130,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1280,
      722,
      40,
      22
     ],
     "minimum": 0,
     "maximum": 16,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1232,
      680.0,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-197",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      990,
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
     "id": "obj-198",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1520,
      990,
      98.0,
      22.0
     ],
     "text": "prepend gdiv",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-199",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1280,
      752,
      26,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1232,
      710.0,
      26,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-200",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1308,
      752,
      26,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1260,
      710.0,
      26,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-201",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1336,
      752,
      26,
      22.0
     ],
     "text": "2",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1288,
      710.0,
      26,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-202",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364,
      752,
      26,
      22.0
     ],
     "text": "4",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1316,
      710.0,
      26,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-203",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1392,
      752,
      26,
      22.0
     ],
     "text": "8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      1344,
      710.0,
      26,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-204",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1280,
      776,
      100,
      20.0
     ],
     "text": "(0 = free ms)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      1232,
      734.0,
      100,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-205",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1220,
      862,
      200,
      20.0
     ],
     "text": "AUTO GRAINS \u00b7 every N beats",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      1172,
      820.0,
      200,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-206",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1220,
      884,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1172,
      842.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-207",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      1020,
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
     "id": "obj-208",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1250,
      884,
      40,
      22
     ],
     "minimum": 1,
     "maximum": 32,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1202,
      842.0,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-209",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1420,
      1046,
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
     "id": "obj-210",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      1030,
      112.0,
      22.0
     ],
     "text": "r gjongly_step",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-211",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      1056,
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
     "id": "obj-212",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      1620,
      1082,
      70.0,
      22.0
     ],
     "text": "sel 0 12",
     "outlettype": [
      "bang",
      "bang",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-213",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1700,
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
     "id": "obj-214",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1700,
      1082,
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
     "id": "obj-215",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      1760,
      1082,
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
     "id": "obj-216",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1840,
      1082,
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
     "id": "obj-217",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1900,
      1082,
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
     "id": "obj-218",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1900,
      1108,
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
     "id": "obj-219",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1900,
      1134,
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
     "id": "obj-220",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1960,
      1160,
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
     "id": "obj-221",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1960,
      1186,
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
     "id": "obj-222",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1900,
      1238,
      56.0,
      22.0
     ],
     "text": "zl nth",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-223",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1900,
      1212,
      110,
      22.0
     ],
     "text": "1 2 2 4 4 8",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-224",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2020,
      1134,
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
     "id": "obj-225",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2080,
      1160,
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
     "id": "obj-226",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2080,
      1186,
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
     "id": "obj-227",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      2020,
      1238,
      56.0,
      22.0
     ],
     "text": "zl nth",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-228",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2020,
      1212,
      110,
      22.0
     ],
     "text": "1 1 1 0.5 0.25 2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-229",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2140,
      1134,
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
     "id": "obj-230",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2200,
      1160,
      70.0,
      22.0
     ],
     "text": "random 4",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-231",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2200,
      1186,
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
     "id": "obj-232",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      2140,
      1238,
      56.0,
      22.0
     ],
     "text": "zl nth",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-233",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2140,
      1212,
      110,
      22.0
     ],
     "text": "0.05 0.15 0.15 0.4",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-234",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1700,
      1160,
      70.0,
      22.0
     ],
     "text": "random 4",
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-235",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1700,
      1186,
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
     "id": "obj-236",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      1160,
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
     "id": "obj-237",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1700,
      1212,
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
     "id": "obj-238",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1840,
      1186,
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
     "id": "obj-239",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1760,
      1212,
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
     "id": "obj-240",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      980,
      838,
      300,
      40.0
     ],
     "text": "CHECK: loop ms (0 = not loaded) \u00b7 out level",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      932,
      796.0,
      300,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-241",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      980,
      860,
      70,
      22
     ],
     "format": 6,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      932,
      818.0,
      70,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-242",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      960,
      105.0,
      22.0
     ],
     "text": "snapshot~ 500",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-243",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1060,
      860,
      70,
      22
     ],
     "format": 6,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1012,
      818.0,
      70,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-244",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      1000,
      98.0,
      22.0
     ],
     "text": "peakamp~ 200",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-245",
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
      698.0,
      900,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-246",
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
     "id": "obj-247",
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
     "id": "obj-248",
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
     "id": "obj-249",
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
     "id": "obj-250",
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
      728.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-251",
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
      750.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-252",
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
      728.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-253",
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
      750.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-254",
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
      728.0,
      130,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-255",
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
      750.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-256",
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
      728.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-257",
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
      750.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-258",
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
      780.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-259",
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
      802.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-260",
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
      780.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-261",
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
      802.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-262",
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
      780.0,
      130,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-263",
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
      802.0,
      125,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-264",
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
     "id": "obj-265",
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
     "id": "obj-266",
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
     "id": "obj-267",
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
     "id": "obj-268",
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
     "id": "obj-269",
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
     "id": "obj-270",
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
     "id": "obj-271",
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
      840.0,
      110,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-272",
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
      864.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-273",
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
     "id": "obj-274",
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
     "id": "obj-275",
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
     "id": "obj-276",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      140,
      940,
      147.0,
      22.0
     ],
     "text": "r av_level_granular",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-277",
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
     "id": "obj-278",
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
     "id": "obj-279",
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
     "id": "obj-280",
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
      898.0,
      45,
      45
     ]
    }
   },
   {
    "box": {
     "id": "obj-281",
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
      910.0,
      140,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-282",
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
     "id": "obj-283",
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
     "id": "obj-284",
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
     "id": "obj-285",
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
     "id": "obj-286",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      240,
      668,
      112.0,
      22.0
     ],
     "text": "s gjongly_step"
    }
   },
   {
    "box": {
     "id": "obj-287",
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
     "id": "obj-288",
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
     "id": "obj-289",
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
     "id": "obj-290",
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
     "id": "obj-291",
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
     "id": "obj-292",
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
     "id": "obj-293",
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
     "id": "obj-294",
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
      906.0,
      120,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-295",
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
      904.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-296",
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
     "id": "obj-297",
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
      904.0,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-298",
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
      906.0,
      50,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-299",
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
     "id": "obj-300",
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
     "id": "obj-301",
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
     "id": "obj-302",
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
     "id": "obj-303",
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
     "id": "obj-304",
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
     "id": "obj-305",
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
     "id": "obj-306",
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
     "id": "obj-307",
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
      932.0,
      70,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-308",
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
      930.0,
      22,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-309",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      380,
      140.0,
      22.0
     ],
     "text": "r av_gdrum_pattern",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-310",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      406,
      147.0,
      22.0
     ],
     "text": "r av_gauto_patterns",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-311",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      432,
      133.0,
      22.0
     ],
     "text": "r av_gauto_sweeps",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-312",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      458,
      119.0,
      22.0
     ],
     "text": "r av_gsweep_now",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-313",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      484,
      91.0,
      22.0
     ],
     "text": "r av_gchaos",
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
      "obj-54",
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
      "obj-61",
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
      "obj-62",
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
      "obj-53",
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
      "obj-64",
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
      "obj-53",
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
      "obj-66",
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
      "obj-53",
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
      "obj-59",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-59",
      0
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
      "obj-69",
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
      "obj-60",
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
      "obj-53",
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
      "obj-53",
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
      "obj-73",
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
      "obj-79",
      0
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
      "obj-80",
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
      "obj-82",
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
      "obj-80",
      0
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
      "obj-84",
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
      "obj-84",
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
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-90",
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
      "obj-91",
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
      "obj-92",
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
      "obj-93",
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
      "obj-97",
      0
     ],
     "destination": [
      "obj-100",
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
      "obj-101",
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
      "obj-102",
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
      "obj-103",
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
      "obj-104",
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
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-105",
      1
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
      "obj-108",
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
      "obj-105",
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
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
      1
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
      "obj-111",
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
      "obj-112",
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
      2
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
      "obj-105",
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
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
      3
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
      "obj-105",
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
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
      4
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
      "obj-105",
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
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
      5
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
      "obj-105",
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
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
      6
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
      "obj-105",
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
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
      7
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
      "obj-105",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-126",
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
      "obj-127",
      0
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
      "obj-105",
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
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-125",
      1
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
      "obj-105",
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
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-125",
      2
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
      "obj-131",
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
      "obj-132",
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
      3
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
      "obj-105",
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
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-125",
      4
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
      "obj-135",
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
      "obj-136",
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
      5
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
      "obj-137",
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
      "obj-138",
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
      6
     ],
     "destination": [
      "obj-139",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-139",
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
      "obj-143",
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
      "obj-144",
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
      "obj-145",
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
      "obj-146",
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
      "obj-147",
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
      "obj-148",
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
      "obj-149",
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
      "obj-150",
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
      "obj-141",
      0
     ],
     "destination": [
      "obj-151",
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
      "obj-53",
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
      "obj-153",
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
      "obj-53",
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
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-155",
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
      "obj-156",
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
      "obj-156",
      0
     ],
     "destination": [
      "obj-126",
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
      "obj-158",
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
      "obj-53",
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
      "obj-53",
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
      "obj-53",
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
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-171",
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
      "obj-172",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-172",
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
      "obj-174",
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
      "obj-175",
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
      "obj-176",
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
      "obj-177",
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
      "obj-178",
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
      "obj-181",
      0
     ],
     "destination": [
      "obj-180",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      0
     ],
     "destination": [
      "obj-182",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-182",
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
      "obj-183",
      0
     ],
     "destination": [
      "obj-180",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      1
     ],
     "destination": [
      "obj-184",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-184",
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
      "obj-185",
      0
     ],
     "destination": [
      "obj-180",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      2
     ],
     "destination": [
      "obj-186",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-186",
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
      "obj-187",
      0
     ],
     "destination": [
      "obj-180",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      3
     ],
     "destination": [
      "obj-188",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-188",
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
      "obj-189",
      0
     ],
     "destination": [
      "obj-180",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      4
     ],
     "destination": [
      "obj-190",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-190",
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
      "obj-192",
      0
     ],
     "destination": [
      "obj-191",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-191",
      0
     ],
     "destination": [
      "obj-193",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-193",
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
      "obj-194",
      0
     ],
     "destination": [
      "obj-181",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-197",
      0
     ],
     "destination": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-196",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-198",
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
      "obj-199",
      0
     ],
     "destination": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-200",
      0
     ],
     "destination": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-201",
      0
     ],
     "destination": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      0
     ],
     "destination": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-203",
      0
     ],
     "destination": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-207",
      0
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-209",
      0
     ],
     "destination": [
      "obj-208",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-210",
      0
     ],
     "destination": [
      "obj-211",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-210",
      0
     ],
     "destination": [
      "obj-212",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-211",
      0
     ],
     "destination": [
      "obj-213",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-206",
      0
     ],
     "destination": [
      "obj-214",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-213",
      0
     ],
     "destination": [
      "obj-214",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-214",
      0
     ],
     "destination": [
      "obj-215",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-215",
      0
     ],
     "destination": [
      "obj-216",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-208",
      0
     ],
     "destination": [
      "obj-216",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      0
     ],
     "destination": [
      "obj-217",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-217",
      0
     ],
     "destination": [
      "obj-218",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      0
     ],
     "destination": [
      "obj-219",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      1
     ],
     "destination": [
      "obj-220",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-221",
      0
     ],
     "destination": [
      "obj-222",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      0
     ],
     "destination": [
      "obj-223",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-223",
      0
     ],
     "destination": [
      "obj-222",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-222",
      0
     ],
     "destination": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      1
     ],
     "destination": [
      "obj-224",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      1
     ],
     "destination": [
      "obj-225",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-225",
      0
     ],
     "destination": [
      "obj-226",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-226",
      0
     ],
     "destination": [
      "obj-227",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      0
     ],
     "destination": [
      "obj-228",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      0
     ],
     "destination": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-227",
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
      "obj-218",
      2
     ],
     "destination": [
      "obj-229",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-229",
      1
     ],
     "destination": [
      "obj-230",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      0
     ],
     "destination": [
      "obj-231",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      0
     ],
     "destination": [
      "obj-232",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-229",
      0
     ],
     "destination": [
      "obj-233",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-233",
      0
     ],
     "destination": [
      "obj-232",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-232",
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
      "obj-206",
      0
     ],
     "destination": [
      "obj-236",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      1
     ],
     "destination": [
      "obj-236",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      0
     ],
     "destination": [
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-234",
      0
     ],
     "destination": [
      "obj-235",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-235",
      0
     ],
     "destination": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
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
      "obj-206",
      0
     ],
     "destination": [
      "obj-238",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      0
     ],
     "destination": [
      "obj-238",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-238",
      0
     ],
     "destination": [
      "obj-239",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-239",
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
      "obj-53",
      3
     ],
     "destination": [
      "obj-242",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      0
     ],
     "destination": [
      "obj-241",
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
      "obj-244",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-244",
      0
     ],
     "destination": [
      "obj-243",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-247",
      0
     ],
     "destination": [
      "obj-248",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
      0
     ],
     "destination": [
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-251",
      0
     ],
     "destination": [
      "obj-246",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-251",
      0
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-253",
      0
     ],
     "destination": [
      "obj-246",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-253",
      0
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-255",
      0
     ],
     "destination": [
      "obj-246",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-255",
      0
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-257",
      0
     ],
     "destination": [
      "obj-246",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-257",
      0
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-259",
      0
     ],
     "destination": [
      "obj-246",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-259",
      0
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-261",
      0
     ],
     "destination": [
      "obj-246",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-261",
      0
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-263",
      0
     ],
     "destination": [
      "obj-246",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-263",
      0
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-264",
      0
     ],
     "destination": [
      "obj-265",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-265",
      0
     ],
     "destination": [
      "obj-249",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-249",
      0
     ],
     "destination": [
      "obj-266",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      0
     ],
     "destination": [
      "obj-267",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-267",
      0
     ],
     "destination": [
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      1
     ],
     "destination": [
      "obj-246",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-246",
      0
     ],
     "destination": [
      "obj-268",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-268",
      1
     ],
     "destination": [
      "obj-269",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-269",
      0
     ],
     "destination": [
      "obj-270",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-273",
      0
     ],
     "destination": [
      "obj-272",
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
      "obj-274",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-270",
      0
     ],
     "destination": [
      "obj-274",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      0
     ],
     "destination": [
      "obj-274",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-268",
      0
     ],
     "destination": [
      "obj-275",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-274",
      0
     ],
     "destination": [
      "obj-275",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-274",
      1
     ],
     "destination": [
      "obj-275",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-274",
      2
     ],
     "destination": [
      "obj-275",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-276",
      0
     ],
     "destination": [
      "obj-277",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-277",
      0
     ],
     "destination": [
      "obj-278",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      0
     ],
     "destination": [
      "obj-279",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      0
     ],
     "destination": [
      "obj-279",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-279",
      0
     ],
     "destination": [
      "obj-280",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-279",
      0
     ],
     "destination": [
      "obj-280",
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
      "obj-282",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-282",
      0
     ],
     "destination": [
      "obj-283",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-283",
      0
     ],
     "destination": [
      "obj-284",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-283",
      0
     ],
     "destination": [
      "obj-286",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-283",
      0
     ],
     "destination": [
      "obj-287",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-283",
      0
     ],
     "destination": [
      "obj-264",
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
      "obj-288",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-287",
      0
     ],
     "destination": [
      "obj-288",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-288",
      0
     ],
     "destination": [
      "obj-289",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-289",
      0
     ],
     "destination": [
      "obj-290",
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
      "obj-290",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      0
     ],
     "destination": [
      "obj-291",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-291",
      0
     ],
     "destination": [
      "obj-292",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-292",
      0
     ],
     "destination": [
      "obj-293",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-293",
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
      "obj-296",
      0
     ],
     "destination": [
      "obj-295",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-299",
      0
     ],
     "destination": [
      "obj-297",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-295",
      0
     ],
     "destination": [
      "obj-300",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-287",
      0
     ],
     "destination": [
      "obj-300",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-300",
      0
     ],
     "destination": [
      "obj-301",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-301",
      0
     ],
     "destination": [
      "obj-302",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-297",
      0
     ],
     "destination": [
      "obj-302",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      0
     ],
     "destination": [
      "obj-303",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-303",
      0
     ],
     "destination": [
      "obj-304",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-304",
      0
     ],
     "destination": [
      "obj-305",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-305",
      0
     ],
     "destination": [
      "obj-306",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      0
     ],
     "destination": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      1
     ],
     "destination": [
      "obj-253",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      2
     ],
     "destination": [
      "obj-255",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      3
     ],
     "destination": [
      "obj-257",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      4
     ],
     "destination": [
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      5
     ],
     "destination": [
      "obj-261",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      6
     ],
     "destination": [
      "obj-263",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-308",
      0
     ],
     "destination": [
      "obj-304",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-309",
      0
     ],
     "destination": [
      "obj-293",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-310",
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
      "obj-311",
      0
     ],
     "destination": [
      "obj-295",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-312",
      0
     ],
     "destination": [
      "obj-304",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-313",
      0
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   }
  ],
  "openinpresentation": 1
 }
}
