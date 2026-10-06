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
   940.0,
   840.0
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
      880,
      40.0
     ],
     "text": "SINE TEST = LOW TAMPURA \u2014 two drifting FM voices tuned to the shared key (av_root): Sa (root) on the left, Pa (fifth) on the right, plucked in the tampura cycle Pa \u00b7 Sa \u00b7 Sa \u00b7 Sa, through the FFT smear. Play the bassline / bells on top.",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      10,
      880,
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
      60,
      240,
      40.0
     ],
     "text": "key (MIDI, from the bassline patch)",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      62,
      240,
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
      84,
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
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      100,
      84,
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
     "id": "obj-5",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      110,
      50,
      22
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      112,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20,
      136,
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
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      162,
      91.0,
      22.0
     ],
     "text": "pack 0. 800",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      20,
      188,
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
     "id": "obj-9",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      300,
      60,
      200,
      40.0
     ],
     "text": "pluck cycle Pa \u00b7 Sa \u00b7 Sa \u00b7 Sa",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      290,
      62,
      200,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      300,
      84,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      290,
      86,
      22,
      22
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
      330,
      84,
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
     "id": "obj-12",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      86,
      90,
      20.0
     ],
     "text": "ms per pluck",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      410,
      88,
      90,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      510,
      84,
      50,
      22
     ],
     "minimum": 200,
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      500,
      86,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      570,
      84,
      98.0,
      22.0
     ],
     "text": "loadmess 800",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300,
      112,
      77.0,
      22.0
     ],
     "text": "metro 800",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      300,
      138,
      91.0,
      22.0
     ],
     "text": "counter 0 3",
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
     "id": "obj-17",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 5,
     "patching_rect": [
      300,
      164,
      91.0,
      22.0
     ],
     "text": "sel 0 1 2 3",
     "outlettype": [
      "bang",
      "bang",
      "bang",
      "bang",
      ""
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
      460,
      200,
      116.0,
      22.0
     ],
     "text": "1 80, 0.5 3000",
     "outlettype": [
      ""
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
      300,
      200,
      116.0,
      22.0
     ],
     "text": "1 80, 0.5 3000",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      300,
      230,
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
     "id": "obj-21",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      460,
      230,
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
     "id": "obj-22",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      201,
      30,
      20.0
     ],
     "text": "Sa",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      410,
      146,
      30,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      580,
      201,
      30,
      20.0
     ],
     "text": "Pa",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      570,
      146,
      30,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      300,
      56.0,
      22.0
     ],
     "text": "*~ 1.0",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      90,
      300,
      98.0,
      22.0
     ],
     "text": "cycle~ 0.011",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      90,
      326,
      70.0,
      22.0
     ],
     "text": "*~ 0.004",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      90,
      352,
      56.0,
      22.0
     ],
     "text": "+~ 1.0",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      380,
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
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      180,
      300,
      98.0,
      22.0
     ],
     "text": "cycle~ 0.007",
     "outlettype": [
      "signal"
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
      180,
      326,
      63.0,
      22.0
     ],
     "text": "*~ 0.25",
     "outlettype": [
      "signal"
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
      180,
      352,
      56.0,
      22.0
     ],
     "text": "+~ 1.5",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      270,
      300,
      98.0,
      22.0
     ],
     "text": "cycle~ 0.019",
     "outlettype": [
      "signal"
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
      270,
      326,
      56.0,
      22.0
     ],
     "text": "*~ 1.2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      270,
      352,
      56.0,
      22.0
     ],
     "text": "+~ 1.8",
     "outlettype": [
      "signal"
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
      180,
      410,
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
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      180,
      436,
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
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      270,
      436,
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
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      180,
      462,
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
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      488,
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
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      514,
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
     "id": "obj-41",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      460,
      300,
      56.0,
      22.0
     ],
     "text": "*~ 1.5",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      300,
      105.0,
      22.0
     ],
     "text": "cycle~ 0.0089",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      326,
      70.0,
      22.0
     ],
     "text": "*~ 0.004",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      530,
      352,
      56.0,
      22.0
     ],
     "text": "+~ 1.0",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      460,
      380,
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
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      300,
      105.0,
      22.0
     ],
     "text": "cycle~ 0.0053",
     "outlettype": [
      "signal"
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
      326,
      63.0,
      22.0
     ],
     "text": "*~ 0.25",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      352,
      56.0,
      22.0
     ],
     "text": "+~ 1.5",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      710,
      300,
      98.0,
      22.0
     ],
     "text": "cycle~ 0.023",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      710,
      326,
      56.0,
      22.0
     ],
     "text": "*~ 1.2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      710,
      352,
      56.0,
      22.0
     ],
     "text": "+~ 1.8",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      410,
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
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      436,
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
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      710,
      436,
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
     "id": "obj-55",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      462,
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
     "id": "obj-56",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      460,
      488,
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
     "id": "obj-57",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      460,
      514,
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
     "id": "obj-58",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      640,
      60,
      290,
      40.0
     ],
     "text": "EVOLVE every N cycles \u00b7 Pa wanders 5th / 4th / octave / octave+5th; tone drifts",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      630,
      62,
      290,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      640,
      84,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      630,
      86,
      22,
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
      670,
      84,
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
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      750,
      84,
      91.0,
      22.0
     ],
     "text": "r av_evolve",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      840,
      84,
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
      830,
      86,
      40,
      22
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
      885,
      84,
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
     "id": "obj-64",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      840,
      108,
      50,
      20.0
     ],
     "text": "cycles",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      830,
      110,
      50,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      640,
      140,
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
     "id": "obj-66",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640,
      166,
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
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      640,
      192,
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
     "id": "obj-68",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      710,
      192,
      36.0,
      22.0
     ],
     "text": "% 3",
     "outlettype": [
      "int"
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
      760,
      192,
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
     "id": "obj-70",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      760,
      218,
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
     "id": "obj-71",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      760,
      244,
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
     "id": "obj-72",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      760,
      270,
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
     "id": "obj-73",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      840,
      244,
      154.0,
      22.0
     ],
     "text": "loadmess 7 5 12 19 7",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      840,
      270,
      40,
      22
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      830,
      178.0,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      885,
      271,
      70,
      20.0
     ],
     "text": "semitones",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      875,
      179.0,
      70,
      20.0
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
      760,
      296,
      203.0,
      22.0
     ],
     "text": "expr exp($f1*0.05776226505)",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      760,
      322,
      98.0,
      22.0
     ],
     "text": "pack 0. 4000",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      760,
      348,
      77.0,
      22.0
     ],
     "text": "line~ 1.5",
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640,
      380,
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
     "id": "obj-80",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      640,
      406,
      140.0,
      22.0
     ],
     "text": "scale 0 99 0.8 3.5",
     "outlettype": [
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640,
      432,
      98.0,
      22.0
     ],
     "text": "pack 0. 8000",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      640,
      458,
      77.0,
      22.0
     ],
     "text": "line~ 1.8",
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      750,
      380,
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
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      750,
      406,
      140.0,
      22.0
     ],
     "text": "scale 0 99 0.8 3.5",
     "outlettype": [
      "float"
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
      750,
      432,
      98.0,
      22.0
     ],
     "text": "pack 0. 8000",
     "outlettype": [
      ""
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
      750,
      458,
      77.0,
      22.0
     ],
     "text": "line~ 1.8",
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-87",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      300,
      520,
      60,
      20.0
     ],
     "text": "LEVEL",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      290,
      212.0,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-88",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      300,
      542,
      24,
      140
     ],
     "floatoutput": 1,
     "size": 1.0,
     "min": 0.0,
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      290,
      234.0,
      24,
      140
     ]
    }
   },
   {
    "box": {
     "id": "obj-89",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      390,
      542,
      140.0,
      22.0
     ],
     "text": "r av_level_tampura",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      330,
      660,
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
      320,
      352.0,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      330,
      542,
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
     "id": "obj-92",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      390,
      570,
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
     "id": "obj-93",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      390,
      596,
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
     "id": "obj-94",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      550,
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
     "id": "obj-95",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20,
      580,
      196.0,
      22.0
     ],
     "text": "pfft~ buddha_smear~ 2048 4",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      220,
      580,
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
     "id": "obj-97",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      610,
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
     "id": "obj-98",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      20,
      640,
      119.0,
      22.0
     ],
     "text": "degrade~ 0.6 12",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      670,
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
     "id": "obj-100",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      460,
      550,
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
     "id": "obj-101",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460,
      580,
      196.0,
      22.0
     ],
     "text": "pfft~ buddha_smear~ 2048 4",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      660,
      580,
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
     "id": "obj-103",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      460,
      610,
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
     "id": "obj-104",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      460,
      640,
      119.0,
      22.0
     ],
     "text": "degrade~ 0.6 12",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      460,
      670,
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
     "id": "obj-106",
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      300,
      700,
      45,
      45
     ],
     "presentation": 1,
     "presentation_rect": [
      290,
      386.0,
      45,
      45
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
      350,
      712,
      160,
      20.0
     ],
     "text": "click to start audio",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      340,
      398.0,
      160,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-108",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1034.0,
      10,
      300,
      60.0
     ],
     "text": "SAVED STATE \u2014 re-applied on load (recipes/max/state/sine_test.maxpat.json; recapture with state_capture.maxpat)",
     "linecount": 3
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1034.0,
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
     "id": "obj-110",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1034.0,
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
     "id": "obj-111",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1114.0,
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
     "id": "obj-112",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1034.0,
      130,
      260,
      22.0
     ],
     "text": "0.1649",
     "outlettype": [
      ""
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
      1034.0,
      156,
      260,
      22.0
     ],
     "text": "651",
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
      1034.0,
      182,
      260,
      22.0
     ],
     "text": "1",
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
      "obj-3",
      0
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
      "obj-4",
      0
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
      "obj-5",
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
      "obj-11",
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
      "obj-14",
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
      "obj-10",
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
      "obj-13",
      0
     ],
     "destination": [
      "obj-15",
      1
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
      "obj-16",
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
      "obj-17",
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
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      1
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
      "obj-17",
      2
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
      "obj-17",
      3
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
      "obj-19",
      0
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
      "obj-18",
      0
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
      "obj-8",
      0
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
      "obj-25",
      0
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
      "obj-26",
      0
     ],
     "destination": [
      "obj-27",
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
      "obj-28",
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
      "obj-28",
      1
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
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
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
      "obj-31",
      0
     ],
     "destination": [
      "obj-35",
      1
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
      "obj-34",
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
      "obj-35",
      0
     ],
     "destination": [
      "obj-37",
      1
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
      "obj-38",
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
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-39",
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
      "obj-39",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      0
     ],
     "destination": [
      "obj-40",
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
      "obj-41",
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
      "obj-41",
      0
     ],
     "destination": [
      "obj-45",
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
      "obj-45",
      1
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
      "obj-48",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-49",
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
      "obj-45",
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
      "obj-48",
      0
     ],
     "destination": [
      "obj-52",
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
      "obj-53",
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
      "obj-54",
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
      "obj-54",
      1
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
      "obj-55",
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
      "obj-55",
      1
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
      "obj-56",
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
      "obj-56",
      1
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
      "obj-57",
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
      "obj-59",
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
      "obj-59",
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
      "obj-62",
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
      "obj-65",
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
      "obj-66",
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
      "obj-66",
      1
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
      "obj-68",
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
      "obj-68",
      1
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
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
      2
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
      "obj-72",
      1
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
      "obj-72",
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
      "obj-78",
      0
     ],
     "destination": [
      "obj-41",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
      1
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
      "obj-34",
      1
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
      "obj-83",
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
      "obj-85",
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
      "obj-51",
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
      "obj-88",
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
      "obj-90",
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
      "obj-92",
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
      "obj-93",
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
      "obj-94",
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
      "obj-94",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-94",
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
      "obj-94",
      0
     ],
     "destination": [
      "obj-96",
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
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-96",
      0
     ],
     "destination": [
      "obj-97",
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
      "obj-98",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-98",
      0
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
      "obj-93",
      0
     ],
     "destination": [
      "obj-99",
      1
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
      "obj-100",
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
      "obj-100",
      1
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
      "obj-100",
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
      "obj-101",
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
      "obj-102",
      0
     ],
     "destination": [
      "obj-103",
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
      "obj-104",
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
      "obj-93",
      0
     ],
     "destination": [
      "obj-105",
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
      "obj-106",
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
      "obj-106",
      1
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
      "obj-109",
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
      "obj-111",
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
      "obj-112",
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
      "obj-110",
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
      "obj-13",
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
      "obj-10",
      0
     ]
    }
   }
  ],
  "openinpresentation": 1
 }
}
