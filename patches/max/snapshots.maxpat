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
   100.0,
   100.0,
   460.0,
   440.0
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
      430,
      60.0
     ],
     "text": "LAUNCH \u2014 click a tile to launch its preset (sound + visuals). store = save now into the tile (+ picture) \u00b7 star = open with it",
     "linecount": 3,
     "presentation": 1,
     "presentation_rect": [
      10,
      10,
      430,
      60.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      500,
      380,
      140.0,
      22.0
     ],
     "text": "js av_snapshots.js",
     "outlettype": [
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
     "numoutlets": 1,
     "patching_rect": [
      500,
      120,
      36.0,
      22.0
     ],
     "text": "t l",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 9,
     "numoutlets": 9,
     "patching_rect": [
      500,
      420,
      161.0,
      22.0
     ],
     "text": "route 1 2 3 4 5 6 7 8",
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
     "id": "obj-5",
     "maxclass": "fpic",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      40,
      96,
      54
     ],
     "autofit": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      42,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "ubutton",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      20,
      40,
      96,
      54
     ],
     "outlettype": [
      "bang",
      "bang",
      "",
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      42,
      96,
      54
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
      22,
      42,
      20,
      20.0
     ],
     "text": "1",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      12,
      44,
      20,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600,
      160,
      74.0,
      22.0
     ],
     "text": "recall 1",
     "outlettype": [
      ""
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
      98,
      50,
      22.0
     ],
     "text": "store 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      100,
      50,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      74,
      98,
      40,
      22.0
     ],
     "text": "star 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      64,
      100,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "fpic",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      124,
      40,
      96,
      54
     ],
     "autofit": 1,
     "presentation": 1,
     "presentation_rect": [
      114,
      42,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "ubutton",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      124,
      40,
      96,
      54
     ],
     "outlettype": [
      "bang",
      "bang",
      "",
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      114,
      42,
      96,
      54
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
      126,
      42,
      20,
      20.0
     ],
     "text": "2",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      116,
      44,
      20,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      610,
      184,
      74.0,
      22.0
     ],
     "text": "recall 2",
     "outlettype": [
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
      124,
      98,
      50,
      22.0
     ],
     "text": "store 2",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      114,
      100,
      50,
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
      178,
      98,
      40,
      22.0
     ],
     "text": "star 2",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      168,
      100,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "fpic",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      228,
      40,
      96,
      54
     ],
     "autofit": 1,
     "presentation": 1,
     "presentation_rect": [
      218,
      42,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "ubutton",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      228,
      40,
      96,
      54
     ],
     "outlettype": [
      "bang",
      "bang",
      "",
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      218,
      42,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      230,
      42,
      20,
      20.0
     ],
     "text": "3",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      220,
      44,
      20,
      20.0
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
      620,
      208,
      74.0,
      22.0
     ],
     "text": "recall 3",
     "outlettype": [
      ""
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
      228,
      98,
      50,
      22.0
     ],
     "text": "store 3",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      218,
      100,
      50,
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
      282,
      98,
      40,
      22.0
     ],
     "text": "star 3",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      272,
      100,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "fpic",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      332,
      40,
      96,
      54
     ],
     "autofit": 1,
     "presentation": 1,
     "presentation_rect": [
      322,
      42,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "ubutton",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      332,
      40,
      96,
      54
     ],
     "outlettype": [
      "bang",
      "bang",
      "",
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      322,
      42,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      334,
      42,
      20,
      20.0
     ],
     "text": "4",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      324,
      44,
      20,
      20.0
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
      630,
      232,
      74.0,
      22.0
     ],
     "text": "recall 4",
     "outlettype": [
      ""
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
      332,
      98,
      50,
      22.0
     ],
     "text": "store 4",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      322,
      100,
      50,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      386,
      98,
      40,
      22.0
     ],
     "text": "star 4",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      376,
      100,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "fpic",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      134,
      96,
      54
     ],
     "autofit": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      134.0,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "ubutton",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      20,
      134,
      96,
      54
     ],
     "outlettype": [
      "bang",
      "bang",
      "",
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      134.0,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      22,
      136,
      20,
      20.0
     ],
     "text": "5",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      12,
      136.0,
      20,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640,
      256,
      74.0,
      22.0
     ],
     "text": "recall 5",
     "outlettype": [
      ""
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
      20,
      192,
      50,
      22.0
     ],
     "text": "store 5",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      192.0,
      50,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      74,
      192,
      40,
      22.0
     ],
     "text": "star 5",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      64,
      192.0,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "fpic",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      124,
      134,
      96,
      54
     ],
     "autofit": 1,
     "presentation": 1,
     "presentation_rect": [
      114,
      134.0,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "ubutton",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      124,
      134,
      96,
      54
     ],
     "outlettype": [
      "bang",
      "bang",
      "",
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      114,
      134.0,
      96,
      54
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
      126,
      136,
      20,
      20.0
     ],
     "text": "6",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      116,
      136.0,
      20,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      650,
      280,
      74.0,
      22.0
     ],
     "text": "recall 6",
     "outlettype": [
      ""
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
      124,
      192,
      50,
      22.0
     ],
     "text": "store 6",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      114,
      192.0,
      50,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      178,
      192,
      40,
      22.0
     ],
     "text": "star 6",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      168,
      192.0,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "fpic",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      228,
      134,
      96,
      54
     ],
     "autofit": 1,
     "presentation": 1,
     "presentation_rect": [
      218,
      134.0,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "ubutton",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      228,
      134,
      96,
      54
     ],
     "outlettype": [
      "bang",
      "bang",
      "",
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      218,
      134.0,
      96,
      54
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
      230,
      136,
      20,
      20.0
     ],
     "text": "7",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      220,
      136.0,
      20,
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
      660,
      304,
      74.0,
      22.0
     ],
     "text": "recall 7",
     "outlettype": [
      ""
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
      228,
      192,
      50,
      22.0
     ],
     "text": "store 7",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      218,
      192.0,
      50,
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
      282,
      192,
      40,
      22.0
     ],
     "text": "star 7",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      272,
      192.0,
      40,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "fpic",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      332,
      134,
      96,
      54
     ],
     "autofit": 1,
     "presentation": 1,
     "presentation_rect": [
      322,
      134.0,
      96,
      54
     ]
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "ubutton",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      332,
      134,
      96,
      54
     ],
     "outlettype": [
      "bang",
      "bang",
      "",
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      322,
      134.0,
      96,
      54
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
      334,
      136,
      20,
      20.0
     ],
     "text": "8",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      324,
      136.0,
      20,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      670,
      328,
      74.0,
      22.0
     ],
     "text": "recall 8",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      332,
      192,
      50,
      22.0
     ],
     "text": "store 8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      322,
      192.0,
      50,
      22.0
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
      386,
      192,
      40,
      22.0
     ],
     "text": "star 8",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      376,
      192.0,
      40,
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
      20,
      234,
      150,
      40.0
     ],
     "text": "save as (type + Return)",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      228.0,
      150,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "textedit",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      170,
      232,
      150,
      24
     ],
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      160,
      226.0,
      150,
      24
     ]
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      500,
      60,
      84.0,
      22.0
     ],
     "text": "route text",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      500,
      86,
      70.0,
      22.0
     ],
     "text": "tosymbol",
     "outlettype": [
      ""
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
      580,
      86,
      98.0,
      22.0
     ],
     "text": "prepend save",
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
      20,
      266,
      100,
      20.0
     ],
     "text": "recall saved",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      260.0,
      100,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      120,
      264,
      200,
      22
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      110,
      258.0,
      200,
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
      580,
      360,
      98.0,
      22.0
     ],
     "text": "prepend load",
     "outlettype": [
      ""
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
      20,
      298,
      60,
      20.0
     ],
     "text": "scope",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      292.0,
      60,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      120,
      296,
      200,
      22
     ],
     "items": [
      "all",
      ",",
      "conductor",
      ",",
      "jongly_chopper",
      ",",
      "jongly_granular",
      ",",
      "sine_test",
      ",",
      "bassline",
      ",",
      "jungle_bass",
      ",",
      "glass_bells",
      ",",
      "vocal_chops",
      ",",
      "gen_feedback"
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      110,
      290.0,
      200,
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
      680,
      360,
      105.0,
      22.0
     ],
     "text": "prepend scope",
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
      340,
      266,
      80,
      20.0
     ],
     "text": "on the bar",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      330,
      260.0,
      80,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      340,
      288,
      22,
      22
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      330,
      282.0,
      22,
      22
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
      760,
      120,
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
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      500,
      150,
      70.0,
      22.0
     ],
     "text": "gate 2 1",
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
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      500,
      240,
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
     "id": "obj-69",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      760,
      200,
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
     "id": "obj-70",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      760,
      226,
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
     "id": "obj-71",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      760,
      252,
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
     "id": "obj-72",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      840,
      278,
      67.0,
      22.0
     ],
     "text": "zlclear",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      330,
      420,
      20.0
     ],
     "text": "\u2014",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      324.0,
      420,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      900,
      60,
      91.0,
      22.0
     ],
     "text": "r av_launch",
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
      900,
      86,
      112.0,
      22.0
     ],
     "text": "prepend recall",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1020,
      60,
      84.0,
      22.0
     ],
     "text": "r av_store",
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
      1020,
      86,
      105.0,
      22.0
     ],
     "text": "prepend store",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1140,
      60,
      133.0,
      22.0
     ],
     "text": "r av_snapshot_cmd",
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
      760,
      60,
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
     "id": "obj-80",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      760,
      86,
      77.0,
      22.0
     ],
     "text": "delay 800",
     "outlettype": [
      "bang"
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
      840,
      86,
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
     "id": "obj-82",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      840,
      112,
      46.0,
      22.0
     ],
     "text": "list",
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
      "obj-2",
      2
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
      "obj-6",
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
      "obj-2",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      1
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
      "obj-14",
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
      "obj-2",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
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
      "obj-18",
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
      "obj-20",
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
      "obj-2",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      3
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
      "obj-24",
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
      "obj-2",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      4
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
      "obj-30",
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
      "obj-3",
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
      "obj-2",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      5
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
      "obj-38",
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
      "obj-39",
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
      "obj-40",
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
      "obj-4",
      6
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
      "obj-44",
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
      "obj-3",
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
      "obj-2",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      7
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
      "obj-48",
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
      "obj-3",
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
      "obj-2",
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
      "obj-2",
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
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-55",
      1
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-59",
      1
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
      "obj-59",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-62",
      1
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
      "obj-2",
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
      "obj-3",
      0
     ],
     "destination": [
      "obj-67",
      1
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
      "obj-2",
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
      "obj-68",
      1
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
      1
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
      "obj-2",
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
      "obj-72",
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
      "obj-2",
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
      "obj-3",
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
      "obj-2",
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
      "obj-2",
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
      "obj-2",
      0
     ]
    }
   }
  ],
  "openinpresentation": 1
 }
}
