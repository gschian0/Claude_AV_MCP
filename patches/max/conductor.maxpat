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
   980.0,
   640.0
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
      920,
      40.0
     ],
     "text": "CONDUCTOR \u2014 one place to run everything: key, scale, new lines, mix, drone evolve, drums, visuals, audio. Basslines snap to the scale, so changing it keeps everything in key.",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      10,
      920,
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
      50,
      40,
      20.0
     ],
     "text": "KEY",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      52,
      40,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      74,
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
      10,
      76,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      100,
      77.0,
      22.0
     ],
     "text": "s av_root"
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      80,
      74,
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
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      80,
      100,
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
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      160,
      74,
      119.0,
      22.0
     ],
     "text": "loadmess set 33",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      130,
      30,
      20.0
     ],
     "text": "A",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      132,
      30,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      150,
      34,
      22.0
     ],
     "text": "33",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      152,
      34,
      22.0
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
      60,
      130,
      30,
      20.0
     ],
     "text": "B\u266d",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      50,
      132,
      30,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      60,
      150,
      34,
      22.0
     ],
     "text": "34",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      50,
      152,
      34,
      22.0
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
      100,
      130,
      30,
      20.0
     ],
     "text": "B",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      90,
      132,
      30,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      100,
      150,
      34,
      22.0
     ],
     "text": "35",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      90,
      152,
      34,
      22.0
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
      140,
      130,
      30,
      20.0
     ],
     "text": "C",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      130,
      132,
      30,
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
      140,
      150,
      34,
      22.0
     ],
     "text": "36",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      130,
      152,
      34,
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
      180,
      130,
      30,
      20.0
     ],
     "text": "D",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      170,
      132,
      30,
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
      180,
      150,
      34,
      22.0
     ],
     "text": "38",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      170,
      152,
      34,
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
      220,
      130,
      30,
      20.0
     ],
     "text": "E",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      210,
      132,
      30,
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
      220,
      150,
      34,
      22.0
     ],
     "text": "40",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      210,
      152,
      34,
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
      260,
      130,
      30,
      20.0
     ],
     "text": "F",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      250,
      132,
      30,
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
      260,
      150,
      34,
      22.0
     ],
     "text": "41",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      250,
      152,
      34,
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
      300,
      130,
      30,
      20.0
     ],
     "text": "G",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      290,
      132,
      30,
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
      300,
      150,
      34,
      22.0
     ],
     "text": "43",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      290,
      152,
      34,
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
      20,
      190,
      60,
      20.0
     ],
     "text": "SCALE",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      192,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      330,
      84.0,
      22.0
     ],
     "text": "s av_scale"
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      214,
      90,
      20.0
     ],
     "text": "minor",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      216,
      90,
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
      20,
      234,
      88,
      22.0
     ],
     "text": "0 0 7 12 0 2 3 5 7 8 10 12 14 15 17 19 20 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      236,
      88,
      22.0
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
      115,
      214,
      90,
      20.0
     ],
     "text": "dorian",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      105,
      216,
      90,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      115,
      234,
      88,
      22.0
     ],
     "text": "0 0 7 12 0 2 3 5 7 9 10 12 14 15 17 19 21 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      105,
      236,
      88,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      210,
      214,
      90,
      20.0
     ],
     "text": "phrygian",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      200,
      216,
      90,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      210,
      234,
      88,
      22.0
     ],
     "text": "0 0 7 12 0 1 3 5 7 8 10 12 13 15 17 19 20 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      200,
      236,
      88,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      305,
      214,
      90,
      20.0
     ],
     "text": "harm. minor",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      295,
      216,
      90,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      305,
      234,
      88,
      22.0
     ],
     "text": "0 0 7 12 0 2 3 5 7 8 11 12 14 15 17 19 20 23 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      295,
      236,
      88,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      264,
      90,
      20.0
     ],
     "text": "major",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      266,
      90,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      284,
      88,
      22.0
     ],
     "text": "0 0 7 12 0 2 4 5 7 9 11 12 14 16 17 19 21 23 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      286,
      88,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      115,
      264,
      90,
      20.0
     ],
     "text": "minor pent.",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      105,
      266,
      90,
      20.0
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
      115,
      284,
      88,
      22.0
     ],
     "text": "0 0 7 12 0 3 5 7 10 12 15 17 19 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      105,
      286,
      88,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      210,
      264,
      90,
      20.0
     ],
     "text": "blues",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      200,
      266,
      90,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      210,
      284,
      88,
      22.0
     ],
     "text": "0 0 7 12 0 3 5 6 7 10 12 15 17 18 19 22 24",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      200,
      286,
      88,
      22.0
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
      420,
      50,
      90,
      20.0
     ],
     "text": "NEW LINES",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      410,
      52,
      90,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      420,
      74,
      26,
      26
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      410,
      76,
      26,
      26
     ]
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      450,
      77,
      70,
      20.0
     ],
     "text": "bassline",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      440,
      79,
      70,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520,
      74,
      126.0,
      22.0
     ],
     "text": "s av_reroll_bass"
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      420,
      108,
      26,
      26
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      410,
      110,
      26,
      26
     ]
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      450,
      111,
      70,
      20.0
     ],
     "text": "jungle",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      440,
      113,
      70,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520,
      108,
      140.0,
      22.0
     ],
     "text": "s av_reroll_jungle"
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      50,
      340,
      20.0
     ],
     "text": "MIX (moves take over each instrument's level)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      590,
      52,
      340,
      20.0
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
      600,
      262,
      120,
      20.0
     ],
     "text": "bass pocket (0-1)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      590,
      264,
      120,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      720,
      262,
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
      710,
      264,
      50,
      22
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
      780,
      262,
      126.0,
      22.0
     ],
     "text": "loadmess set 0.5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      600,
      91.0,
      22.0
     ],
     "text": "s av_pocket"
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      600,
      74,
      26,
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
      590,
      76,
      26,
      140
     ]
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      600,
      330,
      126.0,
      22.0
     ],
     "text": "loadmess set 0.5",
     "outlettype": [
      ""
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
      596,
      218,
      60,
      20.0
     ],
     "text": "drums",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      586,
      220,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      360,
      140.0,
      22.0
     ],
     "text": "s av_level_chopper"
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      664,
      74,
      26,
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
      654,
      76,
      26,
      140
     ]
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      664,
      330,
      126.0,
      22.0
     ],
     "text": "loadmess set 0.2",
     "outlettype": [
      ""
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
      660,
      218,
      60,
      20.0
     ],
     "text": "tampura",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      650,
      220,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      664,
      360,
      140.0,
      22.0
     ],
     "text": "s av_level_tampura"
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      728,
      74,
      26,
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
      718,
      76,
      26,
      140
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
      728,
      330,
      126.0,
      22.0
     ],
     "text": "loadmess set 0.5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      724,
      218,
      60,
      20.0
     ],
     "text": "acid",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      714,
      220,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      728,
      360,
      147.0,
      22.0
     ],
     "text": "s av_level_bassline"
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      792,
      74,
      26,
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
      782,
      76,
      26,
      140
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
      792,
      330,
      133.0,
      22.0
     ],
     "text": "loadmess set 0.45",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      788,
      218,
      60,
      20.0
     ],
     "text": "jungle",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      778,
      220,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      792,
      360,
      133.0,
      22.0
     ],
     "text": "s av_level_jungle"
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      856,
      74,
      26,
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
      846,
      76,
      26,
      140
     ]
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      856,
      330,
      133.0,
      22.0
     ],
     "text": "loadmess set 0.35",
     "outlettype": [
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
      852,
      218,
      60,
      20.0
     ],
     "text": "bells",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      842,
      220,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-71",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      856,
      360,
      126.0,
      22.0
     ],
     "text": "s av_level_bells"
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      920,
      74,
      26,
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
      910,
      76,
      26,
      140
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
      920,
      330,
      126.0,
      22.0
     ],
     "text": "loadmess set 0.4",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      916,
      218,
      60,
      20.0
     ],
     "text": "vox",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      906,
      220,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      360,
      112.0,
      22.0
     ],
     "text": "s av_level_vox"
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      984,
      74,
      26,
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
      974,
      76,
      26,
      140
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
      984,
      330,
      133.0,
      22.0
     ],
     "text": "loadmess set 0.35",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      980,
      218,
      60,
      20.0
     ],
     "text": "gran",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      970,
      220,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      984,
      360,
      147.0,
      22.0
     ],
     "text": "s av_level_granular"
    }
   },
   {
    "box": {
     "id": "obj-80",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      150,
      100,
      20.0
     ],
     "text": "drone evolve",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      410,
      152,
      100,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      420,
      172,
      24,
      24
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      410,
      174,
      24,
      24
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
      480,
      172,
      112.0,
      22.0
     ],
     "text": "loadmess set 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      360,
      91.0,
      22.0
     ],
     "text": "s av_evolve"
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520,
      150,
      100,
      20.0
     ],
     "text": "bass evolve",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      510,
      152,
      100,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      520,
      172,
      24,
      24
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      510,
      174,
      24,
      24
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
      560,
      172,
      112.0,
      22.0
     ],
     "text": "loadmess set 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-87",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520,
      360,
      126.0,
      22.0
     ],
     "text": "s av_bass_evolve"
    }
   },
   {
    "box": {
     "id": "obj-88",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      290,
      170,
      40.0
     ],
     "text": "evolve presets (acid + jungle)",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      410,
      292,
      170,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-89",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      380,
      175.0,
      22.0
     ],
     "text": "s av_bass_evolve_preset"
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      560,
      380,
      189.0,
      22.0
     ],
     "text": "s av_jungle_evolve_preset"
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      312,
      80,
      20.0
     ],
     "text": "steady",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      410,
      314,
      80,
      20.0
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
      420,
      332,
      40,
      22.0
     ],
     "text": "4 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      410,
      334,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-93",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      505,
      312,
      80,
      20.0
     ],
     "text": "drift",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      495,
      314,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-94",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      505,
      332,
      40,
      22.0
     ],
     "text": "2 3",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      495,
      334,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      356,
      80,
      20.0
     ],
     "text": "restless",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      410,
      358,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      420,
      376,
      40,
      22.0
     ],
     "text": "1 5",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      410,
      378,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      505,
      356,
      80,
      20.0
     ],
     "text": "wild",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      495,
      358,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      505,
      376,
      40,
      22.0
     ],
     "text": "1 8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      495,
      378,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520,
      214,
      100,
      20.0
     ],
     "text": "jungle evolve",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      510,
      216,
      100,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      520,
      236,
      24,
      24
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      510,
      238,
      24,
      24
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
      560,
      236,
      112.0,
      22.0
     ],
     "text": "loadmess set 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      660,
      360,
      140.0,
      22.0
     ],
     "text": "s av_jungle_evolve"
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      214,
      100,
      20.0
     ],
     "text": "audio on/off",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      410,
      216,
      100,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-104",
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      420,
      236,
      45,
      45
     ],
     "presentation": 1,
     "presentation_rect": [
      410,
      238,
      45,
      45
     ]
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      760,
      380,
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
     "id": "obj-106",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      840,
      380,
      84.0,
      22.0
     ],
     "text": "delay 1500",
     "outlettype": [
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
      920,
      380,
      25.0,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      910,
      382,
      25.0,
      22.0
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
      20,
      400,
      140,
      20.0
     ],
     "text": "DRUMS \u2014 pattern",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      402,
      140,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      600,
      133.0,
      22.0
     ],
     "text": "s av_drum_pattern"
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      422,
      90,
      20.0
     ],
     "text": "straight",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      424,
      90,
      20.0
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
      20,
      442,
      30,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      444,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-112",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      112,
      422,
      90,
      20.0
     ],
     "text": "stutter",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      102,
      424,
      90,
      20.0
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
      112,
      442,
      30,
      22.0
     ],
     "text": "1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      102,
      444,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      204,
      422,
      90,
      20.0
     ],
     "text": "chop",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      194,
      424,
      90,
      20.0
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
      204,
      442,
      30,
      22.0
     ],
     "text": "2",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      194,
      444,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-116",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      296,
      422,
      90,
      20.0
     ],
     "text": "roll",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      286,
      424,
      90,
      20.0
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
      296,
      442,
      30,
      22.0
     ],
     "text": "3",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      286,
      444,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-118",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      388,
      422,
      90,
      20.0
     ],
     "text": "shuffle",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      378,
      424,
      90,
      20.0
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
      388,
      442,
      30,
      22.0
     ],
     "text": "4",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      378,
      444,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      480,
      422,
      90,
      20.0
     ],
     "text": "half",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      470,
      424,
      90,
      20.0
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
      480,
      442,
      30,
      22.0
     ],
     "text": "5",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      470,
      444,
      30,
      22.0
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
      20,
      466,
      90,
      20.0
     ],
     "text": "backwards",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      468,
      90,
      20.0
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
      20,
      486,
      30,
      22.0
     ],
     "text": "6",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      488,
      30,
      22.0
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
      112,
      466,
      90,
      20.0
     ],
     "text": "jump 2-2-3",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      102,
      468,
      90,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      112,
      486,
      30,
      22.0
     ],
     "text": "7",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      102,
      488,
      30,
      22.0
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
      204,
      466,
      90,
      20.0
     ],
     "text": "jump 3-3-2",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      194,
      468,
      90,
      20.0
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
      204,
      486,
      30,
      22.0
     ],
     "text": "8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      194,
      488,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      296,
      466,
      90,
      20.0
     ],
     "text": "jump roll",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      286,
      468,
      90,
      20.0
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
      296,
      486,
      30,
      22.0
     ],
     "text": "9",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      286,
      488,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      388,
      466,
      90,
      20.0
     ],
     "text": "breakdown",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      378,
      468,
      90,
      20.0
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
      388,
      486,
      30,
      22.0
     ],
     "text": "10",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      378,
      488,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      480,
      466,
      90,
      20.0
     ],
     "text": "break build",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      470,
      468,
      90,
      20.0
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
      480,
      486,
      30,
      22.0
     ],
     "text": "11",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      470,
      488,
      30,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      400,
      110,
      20.0
     ],
     "text": "auto patterns",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      590,
      402,
      110,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      600,
      422,
      24,
      24
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      590,
      424,
      24,
      24
     ]
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      600,
      620,
      112.0,
      22.0
     ],
     "text": "loadmess set 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      640,
      620,
      140.0,
      22.0
     ],
     "text": "s av_auto_patterns"
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      400,
      110,
      20.0
     ],
     "text": "auto sweeps",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      710,
      402,
      110,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      720,
      422,
      24,
      24
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      710,
      424,
      24,
      24
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
      720,
      620,
      112.0,
      22.0
     ],
     "text": "loadmess set 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      760,
      620,
      126.0,
      22.0
     ],
     "text": "s av_auto_sweeps"
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      840,
      400,
      80,
      20.0
     ],
     "text": "sweep now",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      830,
      402,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      840,
      422,
      24,
      24
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      830,
      424,
      24,
      24
     ]
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      880,
      620,
      112.0,
      22.0
     ],
     "text": "s av_sweep_now"
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      456,
      90,
      20.0
     ],
     "text": "chaos (0-1)",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      590,
      458,
      90,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      690,
      456,
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
      680,
      458,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      750,
      620,
      126.0,
      22.0
     ],
     "text": "loadmess set 0.2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-148",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      690,
      600,
      84.0,
      22.0
     ],
     "text": "s av_chaos"
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      494,
      80,
      20.0
     ],
     "text": "VISUALS",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      590,
      496,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      520,
      85,
      20.0
     ],
     "text": "render",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      590,
      522,
      85,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-151",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      600,
      542,
      24,
      24
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      590,
      544,
      24,
      24
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
      600,
      640,
      112.0,
      22.0
     ],
     "text": "loadmess set 1",
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
     "numoutlets": 0,
     "patching_rect": [
      640,
      640,
      91.0,
      22.0
     ],
     "text": "s av_render"
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      690,
      520,
      85,
      20.0
     ],
     "text": "fullscreen",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      680,
      522,
      85,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      690,
      542,
      24,
      24
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      680,
      544,
      24,
      24
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
      690,
      640,
      112.0,
      22.0
     ],
     "text": "loadmess set 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      730,
      640,
      119.0,
      22.0
     ],
     "text": "s av_fullscreen"
    }
   },
   {
    "box": {
     "id": "obj-158",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      780,
      520,
      85,
      20.0
     ],
     "text": "cubes",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      770,
      522,
      85,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      780,
      542,
      24,
      24
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      770,
      544,
      24,
      24
     ]
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      780,
      640,
      112.0,
      22.0
     ],
     "text": "loadmess set 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      820,
      640,
      84.0,
      22.0
     ],
     "text": "s av_cubes"
    }
   },
   {
    "box": {
     "id": "obj-162",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      860,
      600,
      63.0,
      22.0
     ],
     "text": "s av_fb"
    }
   },
   {
    "box": {
     "id": "obj-163",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      600,
      574,
      60,
      20.0
     ],
     "text": "trails",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      590,
      576,
      60,
      20.0
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
      650,
      574,
      84,
      22.0
     ],
     "text": "decay 0.9",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      640,
      576,
      84,
      22.0
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
      740,
      574,
      84,
      22.0
     ],
     "text": "decay 0.985",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      730,
      576,
      84,
      22.0
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
      830,
      574,
      84,
      22.0
     ],
     "text": "decay 1.",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      820,
      576,
      84,
      22.0
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
      "obj-4",
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
      "obj-3",
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
      "obj-3",
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
      "obj-3",
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
      "obj-3",
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
      "obj-3",
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
      "obj-3",
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
      "obj-3",
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
      "obj-3",
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
      "obj-3",
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
      "obj-3",
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
      "obj-25",
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
      "obj-25",
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
      "obj-25",
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
      "obj-25",
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
      "obj-25",
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
      "obj-25",
      0
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
      "obj-25",
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
      "obj-43",
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
      "obj-46",
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
      "obj-49",
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
      "obj-51",
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
      "obj-52",
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
      "obj-55",
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
      "obj-60",
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
      "obj-63",
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
      "obj-67",
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
      "obj-71",
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
      "obj-75",
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
      "obj-79",
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
      "obj-83",
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
      "obj-87",
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
      "obj-89",
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
      "obj-90",
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
      "obj-89",
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
      "obj-90",
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
      "obj-89",
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
      "obj-90",
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
      "obj-89",
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
      "obj-90",
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
      "obj-102",
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
      "obj-104",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-109",
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
      "obj-137",
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
      "obj-141",
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
      "obj-144",
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
      "obj-148",
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
      "obj-153",
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
      "obj-155",
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
      "obj-157",
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
      "obj-161",
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
      "obj-162",
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
      "obj-162",
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
      "obj-162",
      0
     ]
    }
   }
  ],
  "openinpresentation": 1
 }
}
