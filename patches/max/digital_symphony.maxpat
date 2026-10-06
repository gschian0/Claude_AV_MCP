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
   0.0,
   40.0,
   1500.0,
   940.0
  ],
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      6,
      1400,
      40.0
     ],
     "text": "DIGITAL SYMPHONY (all-in-one) \u2014 every instrument embedded in this one file; the conductor on top runs everything. Keep it in patches/max next to the av_*.js scripts and buddha_smear~.maxpat.",
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      40,
      300,
      20.0
     ],
     "text": "CONDUCTOR",
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      10,
      62,
      976,
      608.0
     ],
     "offset": [
      0.0,
      0.0
     ],
     "embed": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1,
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
         "text": "loadmess set 0.25",
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
         "id": "obj-77",
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
         "id": "obj-78",
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
         "id": "obj-79",
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
         "id": "obj-80",
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
         "id": "obj-81",
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
         "id": "obj-82",
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
         "id": "obj-83",
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
         "id": "obj-84",
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
         "id": "obj-85",
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
         "id": "obj-86",
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
         "id": "obj-87",
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
         "id": "obj-88",
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
         "id": "obj-89",
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
         "id": "obj-90",
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
         "id": "obj-91",
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
         "id": "obj-92",
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
         "id": "obj-93",
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
         "id": "obj-94",
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
         "id": "obj-95",
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
         "id": "obj-96",
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
         "id": "obj-97",
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
         "id": "obj-98",
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
         "id": "obj-99",
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
         "id": "obj-100",
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
         "id": "obj-101",
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
         "id": "obj-102",
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
         "id": "obj-103",
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
         "id": "obj-104",
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
         "id": "obj-105",
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
         "id": "obj-106",
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
         "id": "obj-107",
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
         "id": "obj-108",
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
         "id": "obj-109",
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
         "id": "obj-110",
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
         "id": "obj-111",
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
         "id": "obj-112",
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
         "id": "obj-113",
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
         "id": "obj-114",
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
         "id": "obj-115",
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
         "id": "obj-116",
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
         "id": "obj-117",
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
         "id": "obj-118",
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
         "id": "obj-119",
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
         "id": "obj-120",
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
         "id": "obj-121",
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
         "id": "obj-122",
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
         "id": "obj-123",
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
         "id": "obj-124",
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
         "id": "obj-125",
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
         "id": "obj-126",
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
         "id": "obj-127",
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
         "id": "obj-128",
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
         "id": "obj-129",
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
         "id": "obj-130",
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
         "id": "obj-131",
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
         "id": "obj-132",
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
         "id": "obj-133",
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
         "id": "obj-134",
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
         "id": "obj-135",
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
         "id": "obj-136",
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
         "id": "obj-137",
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
         "id": "obj-138",
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
         "id": "obj-139",
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
         "id": "obj-140",
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
         "id": "obj-141",
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
         "id": "obj-142",
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
         "id": "obj-143",
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
         "id": "obj-144",
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
         "id": "obj-145",
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
         "id": "obj-146",
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
         "id": "obj-147",
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
         "id": "obj-148",
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
         "id": "obj-149",
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
         "id": "obj-150",
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
         "id": "obj-151",
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
         "id": "obj-152",
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
         "id": "obj-153",
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
         "id": "obj-154",
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
         "id": "obj-155",
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
         "id": "obj-156",
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
         "id": "obj-157",
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
         "id": "obj-158",
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
         "id": "obj-159",
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
         "id": "obj-160",
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
         "id": "obj-161",
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
         "id": "obj-162",
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
          "obj-78",
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
          "obj-88",
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
          "obj-88",
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
          "obj-90",
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
          "obj-90",
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
          "obj-92",
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
          "obj-92",
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
          "obj-94",
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
          "obj-94",
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
          "obj-97",
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
          "obj-96",
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
          "obj-102",
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
          "obj-100",
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
          "obj-105",
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
          "obj-125",
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
          "obj-132",
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
          "obj-131",
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
          "obj-139",
          0
         ],
         "destination": [
          "obj-140",
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
          "obj-144",
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
          "obj-149",
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
          "obj-158",
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
          "obj-158",
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
          "obj-158",
          0
         ]
        }
       }
      ],
      "openinpresentation": 1
     }
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      690.0,
      300,
      20.0
     ],
     "text": "JONGLY CHOPPER",
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      10,
      712.0,
      1342,
      934.0
     ],
     "offset": [
      0.0,
      0.0
     ],
     "embed": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1,
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
             "code": "// ModSquad-style beat chopper (after Atau Tanaka's ModSquad, 2003).\n// 16 steps. Step n plays slice chopsteps[n] (1-16); 0 = keep going into the next slice; 17 = rest.\n// choprolls[n] = how many times step n re-fires (1 = normal, 2/3/4/8 = roll).\n// chaos = chance per step of jumping to a random slice (sometimes rolled) instead.\nBuffer loop(\"jongly\");\nBuffer steps(\"chopsteps\");\nBuffer rolls(\"choprolls\");\nBuffer vcut(\"chopvelcut\");   // per-step VELOCITY, stored as cut = 1 - velocity (empty buffer = full volume)\nBuffer spit(\"choppitch\");    // per-step PITCH in semitones (-12..+12)\nParam rate(1);      // 1 = original tempo (~170 bpm); tape-style, pitch follows\nParam fade(48);     // samples of fade at slice/roll edges (kills clicks)\nParam chaos(0.15);  // 0 = play the pattern exactly, 1 = every step random\nParam rollnow(0);   // live roll: >= 2 re-fires every step this many times\nParam comp(1);      // compressor on/off: evens out the loop's hits\nParam thresh(-20);  // dB where compression starts\nParam ratio(3);     // 3:1 above the threshold\nParam makeup(4);    // dB of gain back after compressing\nParam prstep(1);    // PITCH ROLL: semitones added on each roll repeat (negative = falling rolls)\nParam lfodepth(0.5);  // PITCH LFO depth in semitones\nParam lforate(1);  // LFO cycles per loop (mode 0) / per step (mode 1) / per roll hit (mode 2)\nParam lfomode(2);  // 0 = synced to the loop, 1 = retriggers every step, 2 = retriggers every roll hit (multi-trigger)\nParam lfoshape(0); // 0 = sine wobble, 1 = saw dive (starts high, drops)\nParam transpose(0); // global pitch, semitones -24..+24: drops the whole break down or up (rate/timing unchanged)\nParam dyn(1);       // dynamics amount: 0 = flat, 1 = full per-step velocity\nHistory ph(0), lastStep(-1), slice(0), roll(1), mute(0), envf(0), rd(0), lastHit(-1), sv(1), spt(0);\n\n// SAFETY: an empty/reloading buffer (len 0) or a bad value would make the read index NaN/inf and\n// sample() would read outside the buffer and crash Max (it did, 2026-10-06). Keep every value finite.\nlen = max(dim(loop), 1);\nok = (dim(loop) > 64) ? 1 : 0;\nph = wrap(fixnan(ph + clamp(fixnan(rate), -4, 4)/len), 0, 1);\nstep = floor(ph*16);\nif (step != lastStep) {\n\tv = peek(steps, step, 0);\n\tmute = (v >= 17) ? 1 : 0;\n\tslice = (v >= 1 && v < 17) ? v - 1 : wrap(slice + 1, 0, 16);\n\troll = max(peek(rolls, step, 0), 1);\n\tsv = 1 - clamp(fixnan(peek(vcut, step, 0)), 0, 1);\n\tspt = clamp(fixnan(peek(spit, step, 0)), -12, 12);\n\tif (mute == 0 && noise()*0.5 + 0.5 < chaos) {\n\t\tslice = clamp(floor((noise()*0.5 + 0.5)*16), 0, 15);\n\t\troll = (noise() > 0.5) ? 2 : roll;\n\t}\n\tlastStep = step;\n}\nrl = (rollnow >= 2) ? rollnow : roll;\nfrac = ph*16 - step;\nsub = frac*rl;\nsubfrac = sub - floor(sub);\nenv = clamp(min(subfrac, 1 - subfrac)*(len/16/rl)/fade, 0, 1);\n// pitch: every slice/roll hit gets its own read pointer (rd, in samples) that runs at rate * 2^(semi/12),\n// so hits can be pitched without changing the timing of the pattern\nsubn = floor(sub);\nhit = step*16 + subn;\nif (hit != lastHit) { rd = 0; lastHit = hit; }\nrd = fixnan(rd);\nlph = (lfomode < 0.5) ? ph*lforate : ((lfomode < 1.5) ? frac*lforate : subfrac*lforate);\nlw = lph - floor(lph);\nlfo = (lfoshape < 0.5) ? sin(6.283185307*lw) : 1 - 2*lw;\nsemi = clamp(fixnan(clamp(transpose, -24, 24) + spt + clamp(prstep, -12, 12)*subn + clamp(lfodepth, 0, 24)*lfo), -36, 36);\nrd = clamp(rd + clamp(fixnan(rate), -4, 4)*exp(semi*0.05776226505), -len, len);\nidx = clamp(fixnan(wrap((slice*len/16 + rd)/len, 0, 1)), 0, 0.999999);\ndry = ok*sample(loop, idx)*env*(1 - mute)*(1 - clamp(dyn, 0, 1)*(1 - sv));\n\n// compressor: envelope follower (3 ms attack, 120 ms release) \u2192 gain reduction above thresh at 'ratio'\natt = 1 - exp(-1/(0.003*samplerate));\nrel = 1 - exp(-1/(0.12*samplerate));\na = abs(dry);\nenvf = fixnan(envf + ((a > envf) ? att : rel)*(a - envf));\nover = max(atodb(max(envf, 0.00001)) - thresh, 0);\ngr = over*(1 - 1/max(ratio, 1));\nout1 = (comp > 0) ? dry*dbtoa(makeup - gr) : dry;\nout2 = step;\nout3 = (comp > 0) ? gr : 0;\n",
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
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          980,
          70,
          154.0,
          22.0
         ],
         "text": "buffer~ chopvelcut 2",
         "outlettype": [
          "float",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-86",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          1140,
          70,
          147.0,
          22.0
         ],
         "text": "buffer~ choppitch 2",
         "outlettype": [
          "float",
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
         "id": "obj-88",
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
         "id": "obj-89",
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
         "id": "obj-90",
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
         "id": "obj-91",
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
         "id": "obj-92",
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
         "id": "obj-93",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          1420,
          178,
          154.0,
          22.0
         ],
         "text": "peek~ chopvelcut 1 0",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-94",
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
         "id": "obj-95",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          1420,
          284,
          147.0,
          22.0
         ],
         "text": "peek~ choppitch 1 0",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-96",
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
         "id": "obj-97",
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
         "id": "obj-98",
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
         "id": "obj-99",
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
         "id": "obj-100",
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
         "id": "obj-101",
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
         "id": "obj-102",
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
         "id": "obj-103",
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
         "id": "obj-104",
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
         "id": "obj-105",
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
         "id": "obj-106",
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
         "id": "obj-107",
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
         "id": "obj-108",
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
         "id": "obj-109",
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
         "id": "obj-110",
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
         "id": "obj-111",
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
         "id": "obj-112",
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
         "id": "obj-113",
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
         "id": "obj-114",
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
         "id": "obj-115",
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
         "id": "obj-116",
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
         "id": "obj-117",
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
         "id": "obj-118",
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
         "id": "obj-119",
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
         "id": "obj-120",
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
         "id": "obj-121",
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
         "id": "obj-122",
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
         "id": "obj-123",
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
         "id": "obj-124",
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
         "id": "obj-125",
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
         "id": "obj-126",
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
         "id": "obj-127",
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
         "id": "obj-128",
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
         "id": "obj-129",
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
         "id": "obj-130",
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
         "id": "obj-131",
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
         "id": "obj-132",
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
         "id": "obj-133",
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
         "id": "obj-134",
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
         "id": "obj-135",
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
         "id": "obj-136",
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
         "id": "obj-137",
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
         "id": "obj-138",
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
         "id": "obj-139",
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
         "id": "obj-140",
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
         "id": "obj-141",
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
         "id": "obj-142",
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
         "id": "obj-143",
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
         "id": "obj-144",
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
         "id": "obj-145",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1520,
          380,
          147.0,
          22.0
         ],
         "text": "r av_chop_transpose",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-146",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1620,
          380,
          105.0,
          22.0
         ],
         "text": "r av_chop_dyn",
         "outlettype": [
          ""
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
         "id": "obj-148",
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
         "id": "obj-149",
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
         "id": "obj-150",
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
         "id": "obj-151",
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
         "id": "obj-152",
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
         "id": "obj-153",
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
         "id": "obj-154",
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
         "id": "obj-155",
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
         "id": "obj-156",
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
         "id": "obj-157",
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
         "id": "obj-158",
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
         "id": "obj-159",
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
         "id": "obj-160",
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
         "id": "obj-161",
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
         "id": "obj-162",
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
         "id": "obj-163",
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
         "id": "obj-164",
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
         "id": "obj-165",
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
         "id": "obj-166",
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
         "id": "obj-167",
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
         "id": "obj-168",
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
         "id": "obj-169",
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
         "id": "obj-170",
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
         "id": "obj-171",
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
         "id": "obj-172",
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
         "id": "obj-173",
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
         "id": "obj-174",
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
         "id": "obj-175",
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
         "id": "obj-176",
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
         "id": "obj-177",
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
         "id": "obj-178",
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
         "id": "obj-179",
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
         "id": "obj-180",
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
         "id": "obj-181",
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
         "id": "obj-182",
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
         "id": "obj-183",
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
         "id": "obj-184",
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
         "id": "obj-185",
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
         "id": "obj-186",
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
         "id": "obj-187",
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
         "id": "obj-188",
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
         "id": "obj-189",
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
         "id": "obj-190",
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
         "id": "obj-191",
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
         "id": "obj-192",
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
         "id": "obj-193",
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
         "id": "obj-194",
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
         "id": "obj-195",
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
         "id": "obj-196",
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
         "id": "obj-197",
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
         "id": "obj-198",
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
         "id": "obj-199",
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
         "id": "obj-200",
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
         "id": "obj-201",
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
         "id": "obj-202",
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
         "id": "obj-203",
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
         "id": "obj-204",
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
         "id": "obj-205",
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
         "id": "obj-206",
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
         "id": "obj-207",
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
         "id": "obj-208",
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
         "id": "obj-209",
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
         "id": "obj-210",
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
         "id": "obj-211",
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
         "id": "obj-212",
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
         "id": "obj-213",
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
         "id": "obj-214",
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
         "id": "obj-215",
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
         "id": "obj-216",
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
         "id": "obj-217",
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
         "id": "obj-218",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          2052.0,
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
         "id": "obj-219",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-220",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-221",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2132.0,
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
         "id": "obj-222",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-223",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-224",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-225",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-226",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-227",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-228",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-229",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-230",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-231",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-232",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
         "id": "obj-233",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2052.0,
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
          "obj-88",
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
          "obj-91",
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
          "obj-90",
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
          "obj-96",
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
          "obj-96",
          1
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
          "obj-99",
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
          "obj-96",
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
          "obj-98",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-98",
          1
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
          "obj-102",
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
          "obj-103",
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
          2
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
          "obj-96",
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
          "obj-98",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-98",
          3
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
          "obj-96",
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
          "obj-98",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-98",
          4
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
          "obj-109",
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
          5
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
          "obj-110",
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
          "obj-111",
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
          6
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
          "obj-96",
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
          "obj-98",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-98",
          7
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
          "obj-96",
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
          "obj-116",
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
          "obj-96",
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
          "obj-116",
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
          "obj-96",
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
          "obj-116",
          0
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
          "obj-96",
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
          "obj-116",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-116",
          3
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
          "obj-96",
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
          "obj-116",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-116",
          4
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
          "obj-126",
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
          "obj-127",
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
          "obj-116",
          5
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
          "obj-96",
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
          "obj-116",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-116",
          6
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
          "obj-96",
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
          "obj-132",
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
          "obj-132",
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
          "obj-132",
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
          "obj-132",
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
          "obj-132",
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
          "obj-132",
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
          "obj-132",
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
          "obj-53",
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
          "obj-53",
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
          "obj-132",
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
          "obj-133",
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
          "obj-101",
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
          "obj-117",
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
          "obj-152",
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
          "obj-149",
          1
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
          "obj-150",
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
          "obj-149",
          1
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
          "obj-150",
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
          "obj-149",
          1
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
          "obj-150",
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
          "obj-149",
          1
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
          "obj-150",
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
          "obj-149",
          1
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
          "obj-150",
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
          "obj-149",
          1
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
          "obj-150",
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
          "obj-149",
          1
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
          "obj-150",
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
          "obj-152",
          1
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
          "obj-152",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-169",
          1
         ],
         "destination": [
          "obj-149",
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
          "obj-171",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-171",
          1
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
          "obj-173",
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
          "obj-175",
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
          "obj-177",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-173",
          0
         ],
         "destination": [
          "obj-177",
          1
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
          "obj-177",
          2
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
          "obj-178",
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
          "obj-178",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-177",
          1
         ],
         "destination": [
          "obj-178",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-177",
          2
         ],
         "destination": [
          "obj-178",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-179",
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
          "obj-181",
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
          "obj-182",
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
          "obj-182",
          1
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
          "obj-183",
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
          "obj-184",
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
          "obj-184",
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
          "obj-187",
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
          "obj-188",
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
          "obj-190",
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
          "obj-191",
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
          "obj-167",
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
          "obj-192",
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
          "obj-192",
          1
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
          "obj-194",
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
          "obj-194",
          1
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
          "obj-195",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-195",
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
          "obj-197",
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
          "obj-15",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-197",
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
          "obj-197",
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
          "obj-197",
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
          "obj-197",
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
          "obj-197",
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
          "obj-197",
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
          "obj-197",
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
          "obj-197",
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
          "obj-197",
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
          "obj-197",
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
          "obj-197",
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
          "obj-200",
          0
         ],
         "destination": [
          "obj-199",
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
          "obj-201",
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
          "obj-204",
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
          "obj-204",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-204",
          0
         ],
         "destination": [
          "obj-205",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-205",
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
          "obj-201",
          0
         ],
         "destination": [
          "obj-206",
          1
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
          "obj-207",
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
          "obj-208",
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
          "obj-209",
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
          "obj-210",
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
          "obj-154",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-210",
          1
         ],
         "destination": [
          "obj-156",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-210",
          2
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
          "obj-210",
          3
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
          "obj-210",
          4
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
          "obj-210",
          5
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
          "obj-210",
          6
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
          "obj-212",
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
          "obj-213",
          0
         ],
         "destination": [
          "obj-197",
          0
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
          "obj-34",
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
          "obj-199",
          0
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
          "obj-208",
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
          "obj-41",
          0
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
          "obj-220",
          0
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
          "obj-221",
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
          "obj-201",
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
          "obj-199",
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
          "obj-224",
          0
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
          "obj-175",
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
          "obj-58",
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
          "obj-57",
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
          "obj-56",
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
          "obj-55",
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
          "obj-229",
          0
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
          "obj-41",
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
          "obj-36",
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
          "obj-34",
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
          "obj-8",
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
          "obj-6",
          0
         ]
        }
       }
      ],
      "openinpresentation": 1
     }
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      1666.0,
      300,
      20.0
     ],
     "text": "GEN FEEDBACK",
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      10,
      1688.0,
      810,
      740.0
     ],
     "offset": [
      0.0,
      0.0
     ],
     "embed": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1,
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
       900.0,
       1180.0
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
          660,
          40.0
         ],
         "text": "gen feedback \u2014 jit.gl.pix reads its own last frame (copied by jit.gl.slab, held in zl reg) and draws it back zoomed + twisted. Render toggle seeds the loop and enables window 'fbw'.",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          10,
          10,
          660,
          40.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          60,
          24,
          24
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          10,
          62,
          24,
          24
         ]
        }
       },
       {
        "box": {
         "id": "obj-3",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          48,
          62,
          80,
          20.0
         ],
         "text": "fullscreen",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          38,
          64,
          80,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          92,
          109.0,
          22.0
         ],
         "text": "fullscreen $1",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-5",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 3,
         "patching_rect": [
          20,
          130,
          364.0,
          22.0
         ],
         "text": "jit.world fbw @enable 0 @size 1280 720 @floating 0",
         "outlettype": [
          "",
          "",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          140,
          60,
          24,
          24
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          130,
          62,
          24,
          24
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
          168,
          62,
          120,
          20.0
         ],
         "text": "render (auto-on)",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          158,
          64,
          120,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          300,
          60,
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
         "id": "obj-9",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          140,
          92,
          49.0,
          22.0
         ],
         "text": "t i i",
         "outlettype": [
          "int",
          "int"
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
          200,
          92,
          81.0,
          22.0
         ],
         "text": "enable $1",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          290,
          92,
          49.0,
          22.0
         ],
         "text": "sel 1",
         "outlettype": [
          "bang",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-12",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          360,
          36,
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
         "id": "obj-13",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          440,
          36,
          207.0,
          22.0
         ],
         "text": "visible 1, sendwindow front",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          430,
          38,
          207.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          20,
          170,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 4,
         "patching_rect": [
          170,
          200,
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
         "id": "obj-16",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          170,
          230,
          49.0,
          22.0
         ],
         "text": "/ 60.",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-17",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          170,
          260,
          98.0,
          22.0
         ],
         "text": "prepend tick",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-18",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          230,
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
         "id": "obj-19",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          300,
          371.0,
          22.0
         ],
         "text": "jit.gl.pix fbw @dim 1280 720 @adapt 0 @type float16",
         "patcher": {
          "fileversion": 1,
          "appversion": {
           "major": 9,
           "minor": 0,
           "revision": 0,
           "architecture": "x64",
           "modernui": 1
          },
          "classnamespace": "jit.gen",
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
             "maxclass": "newobj",
             "numinlets": 0,
             "numoutlets": 1,
             "patching_rect": [
              80,
              15,
              42.0,
              22.0
             ],
             "text": "in 2",
             "outlettype": [
              ""
             ]
            }
           },
           {
            "box": {
             "id": "obj-3",
             "maxclass": "codebox",
             "numinlets": 2,
             "numoutlets": 1,
             "patching_rect": [
              20,
              50,
              700,
              440
             ],
             "code": "// Infinite feedback: last frame (in1) is zoomed, twisted and colour-bled back into itself,\n// with a wandering ring and spinning wireframe cubes as the seeds. decay 1 = nothing ever fades.\nParam tick(0);\nParam zoom(0.99);\nParam twist(0.02);\nParam decay(0.985);\nParam drift(0.003);\nParam cubes(1);    // how much of the wireframe-cube layer (in2) feeds the loop\nParam amp(0);      // drum loudness 0-1 (from the patch's envelope follower)\nParam react(0.15); // how much amp moves zoom / twist / ring size (keep it small)\nParam splash(0);   // 1 on a drum transient, decaying to 0: flashes the cube texture + a burst ring\n\nasp = dim.x/dim.y;\ncx = (norm.x - 0.5)*asp;\ncy = norm.y - 0.5;\n\n// sample the previous frame through a slowly wobbling zoom + rotation\nmv = amp*react;\na = twist*sin(tick*0.11) + mv*0.15;\nz = zoom + 0.01*sin(tick*0.07) - mv*0.03;\nrx = (cx*cos(a) - cy*sin(a))*z;\nry = (cx*sin(a) + cy*cos(a))*z;\nu = rx/asp + 0.5 + drift*sin(tick*0.7);\nv = ry + 0.5 + drift*cos(tick*0.53);\np = sample(in1, vec(u, v));\n\n// bleed each channel into the next so colours slowly rotate\nhr = mix(p.r, p.g, 0.03);\nhg = mix(p.g, p.b, 0.03);\nhb = mix(p.b, p.r, 0.03);\n\n// seed: a breathing ring drifting around the frame\nsx = cx - 0.45*sin(tick*0.37);\nsy = cy - 0.3*cos(tick*0.29);\nd = sqrt(sx*sx + sy*sy);\nrad = 0.07 + 0.03*sin(tick*1.7) + mv*0.06;\nring = 1 - smoothstep(0, 0.008, abs(d - rad));\ncr = 0.5 + 0.5*sin(tick*0.5);\ncg = 0.5 + 0.5*sin(tick*0.5 + 2.094);\ncb = 0.5 + 0.5*sin(tick*0.5 + 4.188);\n\n// second seed: the wireframe cubes rendered by jit.gl.node 'cubes'\ncu = sample(in2, norm)*cubes*(0.35 + 1.65*splash);   // cubes glow faintly, flare on each hit\n\n// splash: a ring bursting out from the centre as the hit decays, in the ring's complementary colours\nsd = sqrt(cx*cx + cy*cy);\nbr_ = 0.6*(1 - splash);\nburst = splash*(1 - smoothstep(0, 0.015 + 0.03*splash, abs(sd - br_)));\n\nout1 = vec(clamp(hr*decay + cr*ring + cu.r + cg*burst, 0, 1),\n           clamp(hg*decay + cg*ring + cu.g + cb*burst, 0, 1),\n           clamp(hb*decay + cb*ring + cu.b + cr*burst, 0, 1), 1);\n",
             "fontface": 0,
             "fontname": "<Monospaced>",
             "fontsize": 12.0,
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
             "numoutlets": 0,
             "patching_rect": [
              20,
              510,
              49.0,
              22.0
             ],
             "text": "out 1"
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
              "obj-3",
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
              1
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
              "obj-4",
              0
             ]
            }
           }
          ]
         },
         "outlettype": [
          "jit_gl_texture",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-20",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          520,
          300,
          588.0,
          22.0
         ],
         "text": "jit.gl.node fbw @name cubes @capture 1 @adapt 0 @dim 1280 720 @erase_color 0 0 0 0",
         "outlettype": [
          "jit_gl_texture",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-21",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          520,
          270,
          112.0,
          22.0
         ],
         "text": "js av_cubes.js"
        }
       },
       {
        "box": {
         "id": "obj-22",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          600,
          200,
          100,
          20.0
         ],
         "text": "CUBES (x key)",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          590,
          202,
          100,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-23",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          222,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          590,
          224,
          22,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          630,
          222,
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
         "id": "obj-25",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          248,
          105.0,
          22.0
         ],
         "text": "prepend cubes",
         "outlettype": [
          ""
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
          700,
          200,
          70,
          20.0
         ],
         "text": "how many",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          690,
          202,
          70,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-27",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          700,
          222,
          40,
          22
         ],
         "minimum": 1,
         "maximum": 24,
         "outlettype": [
          "",
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          690,
          224,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-28",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          745,
          222,
          84.0,
          22.0
         ],
         "text": "loadmess 5",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-29",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          700,
          248,
          105.0,
          22.0
         ],
         "text": "prepend count",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-30",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          350,
          217.0,
          22.0
         ],
         "text": "jit.gl.slab fbw @type float16",
         "outlettype": [
          "jit_gl_texture",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-31",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          280,
          350,
          294.0,
          22.0
         ],
         "text": "jit.gl.videoplane fbw @transform_reset 2",
         "outlettype": [
          "jit_gl_texture",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-32",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          280,
          420,
          329.0,
          22.0
         ],
         "text": "jit.gl.texture fbw @name fbseed @dim 1280 720",
         "outlettype": [
          "jit_gl_texture",
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
          380,
          450,
          165.0,
          22.0
         ],
         "text": "jit_gl_texture fbseed",
         "outlettype": [
          ""
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
          380,
          475,
          280,
          40.0
         ],
         "text": "sent the moment render turns on: starts the loop from a black frame",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          370,
          304.0,
          280,
          40.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-35",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          420,
          60,
          120,
          20.0
         ],
         "text": "try these:",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          410,
          62,
          120,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-36",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          86,
          74.0,
          22.0
         ],
         "text": "decay 1.",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          410,
          88,
          74.0,
          22.0
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
          420,
          112,
          95.0,
          22.0
         ],
         "text": "decay 0.985",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          410,
          114,
          95.0,
          22.0
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
          420,
          138,
          81.0,
          22.0
         ],
         "text": "decay 0.9",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          410,
          140,
          81.0,
          22.0
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
          420,
          164,
          81.0,
          22.0
         ],
         "text": "zoom 0.97",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          410,
          166,
          81.0,
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
          420,
          190,
          81.0,
          22.0
         ],
         "text": "zoom 1.02",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          410,
          192,
          81.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          216,
          81.0,
          22.0
         ],
         "text": "twist 0.2",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          410,
          218,
          81.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-42",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          242,
          88.0,
          22.0
         ],
         "text": "twist 0.02",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          410,
          244,
          88.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-43",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          268,
          88.0,
          22.0
         ],
         "text": "drift 0.02",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          410,
          270,
          88.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-44",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          520,
          90,
          180,
          80.0
         ],
         "text": "decay 1. = infinite (never fades) \u00b7 zoom > 1 pulls inward \u00b7 'decay 0.' a moment to clear",
         "linecount": 4,
         "presentation": 1,
         "presentation_rect": [
          510,
          92,
          180,
          80.0
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
          20,
          540,
          660,
          40.0
         ],
         "text": "KEYS (when 'keys on'): f fullscreen \u00b7 1-5 decay (0.9 \u2192 \u221e) \u00b7 \u2191\u2193 zoom in/out \u00b7 \u2190\u2192 twist \u00b7 w/s drift more/less \u00b7 c clear \u00b7 r reset \u00b7 x cubes on/off \u00b7 a react on/off",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          10,
          356.0,
          660,
          40.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-46",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          584,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          10,
          400.0,
          22,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          46,
          586,
          60,
          20.0
         ],
         "text": "keys on",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          36,
          402.0,
          60,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-48",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          110,
          584,
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
         "id": "obj-49",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 4,
         "patching_rect": [
          20,
          616,
          36.0,
          22.0
         ],
         "text": "key",
         "outlettype": [
          "int",
          "int",
          "int",
          "int"
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
          20,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 17,
         "patching_rect": [
          20,
          668,
          406.0,
          22.0
         ],
         "text": "sel 102 49 50 51 52 53 30 31 28 29 119 115 99 114 120 97",
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
         "id": "obj-52",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          20,
          756,
          49.0,
          22.0
         ],
         "text": "t f f",
         "outlettype": [
          "float",
          "float"
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
          90,
          782,
          63.0,
          22.0
         ],
         "text": "f 0.985",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-54",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          782,
          105.0,
          22.0
         ],
         "text": "prepend decay",
         "outlettype": [
          ""
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
          20,
          886,
          50,
          20.0
         ],
         "text": "decay",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          10,
          612.0,
          50,
          20.0
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
          70,
          886,
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
          60,
          612.0,
          60,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-57",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          730,
          39.0,
          22.0
         ],
         "text": "0.9",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          10,
          456.0,
          39.0,
          22.0
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
          66,
          730,
          46.0,
          22.0
         ],
         "text": "0.95",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          56,
          456.0,
          46.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-59",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          112,
          730,
          53.0,
          22.0
         ],
         "text": "0.985",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          102,
          456.0,
          53.0,
          22.0
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
          158,
          730,
          53.0,
          22.0
         ],
         "text": "0.995",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          148,
          456.0,
          53.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-61",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          204,
          730,
          39.0,
          22.0
         ],
         "text": "1.0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          194,
          456.0,
          39.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-62",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          260,
          756,
          56.0,
          22.0
         ],
         "text": "f 0.99",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-63",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          260,
          730,
          49.0,
          22.0
         ],
         "text": "t b f",
         "outlettype": [
          "bang",
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-64",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          260,
          782,
          42.0,
          22.0
         ],
         "text": "+ 0.",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-65",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          260,
          808,
          98.0,
          22.0
         ],
         "text": "clip 0.9 1.1",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-66",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          260,
          834,
          49.0,
          22.0
         ],
         "text": "t f f",
         "outlettype": [
          "float",
          "float"
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
          260,
          860,
          98.0,
          22.0
         ],
         "text": "prepend zoom",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-68",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          886,
          50,
          20.0
         ],
         "text": "zoom",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          250,
          612.0,
          50,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-69",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          310,
          886,
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
          300,
          612.0,
          60,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-70",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          756,
          56.0,
          22.0
         ],
         "text": "f 0.02",
         "outlettype": [
          "float"
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
          380,
          730,
          49.0,
          22.0
         ],
         "text": "t b f",
         "outlettype": [
          "bang",
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-72",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          782,
          42.0,
          22.0
         ],
         "text": "+ 0.",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-73",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          380,
          808,
          105.0,
          22.0
         ],
         "text": "clip -0.5 0.5",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-74",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          380,
          834,
          49.0,
          22.0
         ],
         "text": "t f f",
         "outlettype": [
          "float",
          "float"
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
          380,
          860,
          105.0,
          22.0
         ],
         "text": "prepend twist",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-76",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          886,
          50,
          20.0
         ],
         "text": "twist",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          370,
          612.0,
          50,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-77",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          430,
          886,
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
          420,
          612.0,
          60,
          22
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
          500,
          756,
          63.0,
          22.0
         ],
         "text": "f 0.003",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-79",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          500,
          730,
          49.0,
          22.0
         ],
         "text": "t b f",
         "outlettype": [
          "bang",
          "float"
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
          500,
          782,
          42.0,
          22.0
         ],
         "text": "+ 0.",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-81",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          500,
          808,
          105.0,
          22.0
         ],
         "text": "clip 0.0 0.05",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-82",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          500,
          834,
          49.0,
          22.0
         ],
         "text": "t f f",
         "outlettype": [
          "float",
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-83",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          500,
          860,
          105.0,
          22.0
         ],
         "text": "prepend drift",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-84",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          886,
          50,
          20.0
         ],
         "text": "drift",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          490,
          612.0,
          50,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-85",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          550,
          886,
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
          540,
          612.0,
          60,
          22
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
          640,
          730,
          60.0,
          22.0
         ],
         "text": "-0.004",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          630,
          456.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-87",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          640,
          756,
          53.0,
          22.0
         ],
         "text": "0.004",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          630,
          482.0,
          53.0,
          22.0
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
          640,
          782,
          53.0,
          22.0
         ],
         "text": "-0.02",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          630,
          508.0,
          53.0,
          22.0
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
          640,
          808,
          46.0,
          22.0
         ],
         "text": "0.02",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          630,
          534.0,
          46.0,
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
          640,
          834,
          53.0,
          22.0
         ],
         "text": "0.002",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          630,
          560.0,
          53.0,
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
          640,
          860,
          60.0,
          22.0
         ],
         "text": "-0.002",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          630,
          586.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-92",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          760,
          730,
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
         "id": "obj-93",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          756,
          67.0,
          22.0
         ],
         "text": "decay 0",
         "outlettype": [
          ""
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
          760,
          782,
          77.0,
          22.0
         ],
         "text": "delay 120",
         "outlettype": [
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-95",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          760,
          820,
          77.0,
          22.0
         ],
         "text": "t b b b b",
         "outlettype": [
          "bang",
          "bang",
          "bang",
          "bang"
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
          760,
          846,
          53.0,
          22.0
         ],
         "text": "0.985",
         "outlettype": [
          ""
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
          810,
          846,
          46.0,
          22.0
         ],
         "text": "0.99",
         "outlettype": [
          ""
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
          860,
          846,
          46.0,
          22.0
         ],
         "text": "0.02",
         "outlettype": [
          ""
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
          910,
          846,
          53.0,
          22.0
         ],
         "text": "0.003",
         "outlettype": [
          ""
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
          760,
          708,
          50,
          20.0
         ],
         "text": "c / r",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          750,
          434.0,
          50,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-101",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          960,
          660,
          40.0
         ],
         "text": "REACT \u2014 listens to the drums (send~ av_drums): loudness gently moves zoom / twist / ring; each hit flares the cubes + bursts a ring. 'a' key toggles.",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          10,
          646.0,
          660,
          40.0
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
          20,
          1004,
          60,
          20.0
         ],
         "text": "react on",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          10,
          690.0,
          60,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-103",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          80,
          1002,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          70,
          688.0,
          22,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-104",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          520,
          1110,
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
         "id": "obj-105",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          120,
          1004,
          50,
          20.0
         ],
         "text": "amount",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          110,
          690.0,
          50,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-106",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          170,
          1002,
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
          160,
          688.0,
          50,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-107",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          1110,
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
         "id": "obj-108",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          240,
          1004,
          65,
          20.0
         ],
         "text": "splash on",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          230,
          690.0,
          65,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-109",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          305,
          1002,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          295,
          688.0,
          22,
          22
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
          1110,
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
         "id": "obj-111",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          345,
          1004,
          90,
          40.0
         ],
         "text": "hit threshold",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          335,
          690.0,
          90,
          40.0
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
          435,
          1002,
          50,
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
          425,
          688.0,
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
          760,
          1110,
          98.0,
          22.0
         ],
         "text": "loadmess 1.6",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-114",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 3,
         "patching_rect": [
          20,
          1036,
          63.0,
          22.0
         ],
         "text": "sel 0 1",
         "outlettype": [
          "bang",
          "bang",
          ""
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
          20,
          1062,
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
         "id": "obj-116",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          170,
          1062,
          105.0,
          22.0
         ],
         "text": "prepend react",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-117",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          1100,
          133.0,
          22.0
         ],
         "text": "receive~ av_drums",
         "outlettype": [
          "signal"
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
          20,
          1126,
          42.0,
          22.0
         ],
         "text": "abs~",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-119",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          1152,
          112.0,
          22.0
         ],
         "text": "slide~ 10 2000",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-120",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          160,
          1152,
          126.0,
          22.0
         ],
         "text": "slide~ 4000 8000",
         "outlettype": [
          "signal"
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
          300,
          1152,
          98.0,
          22.0
         ],
         "text": "snapshot~ 33",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-122",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          1178,
          42.0,
          22.0
         ],
         "text": "* 3.",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-123",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          300,
          1204,
          84.0,
          22.0
         ],
         "text": "clip 0. 1.",
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
         "numoutlets": 1,
         "patching_rect": [
          300,
          1230,
          91.0,
          22.0
         ],
         "text": "prepend amp",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-125",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          400,
          1230,
          70.0,
          22.0
         ],
         "text": "s av_amp"
        }
       },
       {
        "box": {
         "id": "obj-126",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          160,
          1178,
          56.0,
          22.0
         ],
         "text": "*~ 1.6",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-127",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          1204,
          36.0,
          22.0
         ],
         "text": ">~",
         "outlettype": [
          "signal"
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
          90,
          1204,
          63.0,
          22.0
         ],
         "text": ">~ 0.02",
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
          20,
          1230,
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
         "id": "obj-130",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          20,
          1256,
          49.0,
          22.0
         ],
         "text": "edge~",
         "outlettype": [
          "bang",
          "bang"
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
          1282,
          91.0,
          22.0
         ],
         "text": "speedlim 90",
         "outlettype": [
          "bang"
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
          1308,
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
         "id": "obj-133",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          120,
          1308,
          70.0,
          22.0
         ],
         "text": "s av_hit"
        }
       },
       {
        "box": {
         "id": "obj-134",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          1334,
          74.0,
          22.0
         ],
         "text": "1, 0 350",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-135",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 2,
         "patching_rect": [
          20,
          1360,
          84.0,
          22.0
         ],
         "text": "line 0. 20",
         "outlettype": [
          "float",
          "bang"
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
          20,
          1386,
          112.0,
          22.0
         ],
         "text": "prepend splash",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-137",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          800,
          300,
          91.0,
          22.0
         ],
         "text": "r av_render",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-138",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          800,
          326,
          119.0,
          22.0
         ],
         "text": "r av_fullscreen",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-139",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          800,
          352,
          84.0,
          22.0
         ],
         "text": "r av_cubes",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-140",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          800,
          378,
          63.0,
          22.0
         ],
         "text": "r av_fb",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-141",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1148.0,
          10,
          300,
          60.0
         ],
         "text": "SAVED STATE \u2014 re-applied on load (recipes/max/state/gen_feedback.maxpat.json; recapture with state_capture.maxpat)",
         "linecount": 3
        }
       },
       {
        "box": {
         "id": "obj-142",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
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
         "id": "obj-143",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
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
         "id": "obj-144",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1228.0,
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
         "id": "obj-145",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
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
         "id": "obj-146",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
          156,
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
         "id": "obj-147",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
          182,
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
         "id": "obj-148",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
          208,
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
         "id": "obj-149",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
          234,
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
         "id": "obj-150",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
          260,
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
         "id": "obj-151",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
          286,
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
         "id": "obj-152",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
          312,
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
         "id": "obj-153",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1148.0,
          338,
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
          "obj-2",
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
          "obj-8",
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
          "obj-10",
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
          "obj-9",
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
          "obj-13",
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
          1
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
          1
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
          "obj-14",
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
          "obj-20",
          0
         ],
         "destination": [
          "obj-19",
          1
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
          "obj-23",
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
          "obj-25",
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
          "obj-19",
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
          "obj-27",
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
          "obj-29",
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
          "obj-21",
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
          "obj-19",
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
          "obj-19",
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
          "obj-21",
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
          "obj-18",
          1
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
          "obj-31",
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
          "obj-18",
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
          "obj-19",
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
          "obj-19",
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
          "obj-19",
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
          "obj-19",
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
          "obj-19",
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
          "obj-19",
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
          "obj-19",
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
          "obj-19",
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
          "obj-50",
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
          1
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
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          14
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
          "obj-52",
          1
         ],
         "destination": [
          "obj-53",
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
          "obj-54",
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
          "obj-19",
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
          "obj-56",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          1
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
          "obj-52",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          2
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
          "obj-52",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          3
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
          "obj-52",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          4
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
          "obj-52",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          5
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
          "obj-52",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          1
         ],
         "destination": [
          "obj-64",
          1
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
          "obj-62",
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
          "obj-66",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-66",
          1
         ],
         "destination": [
          "obj-62",
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
          "obj-19",
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
          "obj-69",
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
          "obj-72",
          1
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
          "obj-74",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-74",
          1
         ],
         "destination": [
          "obj-70",
          1
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
          "obj-19",
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
          "obj-77",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-79",
          1
         ],
         "destination": [
          "obj-80",
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
          1
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
          "obj-82",
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
          "obj-19",
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
          "obj-85",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          6
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
          "obj-63",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          7
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
          "obj-87",
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
          "obj-51",
          8
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
          "obj-71",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          9
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
          "obj-89",
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
          "obj-51",
          10
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
          "obj-90",
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
          "obj-51",
          11
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
          "obj-91",
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
          "obj-51",
          12
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
          "obj-93",
          0
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
          "obj-92",
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
          "obj-94",
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
          "obj-51",
          13
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
          "obj-95",
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
          "obj-96",
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
          "obj-95",
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
          "obj-97",
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
          "obj-95",
          2
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
          "obj-74",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-95",
          3
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
          "obj-99",
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
          "obj-104",
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
          "obj-51",
          15
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
          "obj-107",
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
          "obj-110",
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
          "obj-112",
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
          "obj-115",
          0
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
          "obj-106",
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
          "obj-106",
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
          "obj-116",
          0
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
          "obj-118",
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
          "obj-19",
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
          "obj-125",
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
          "obj-126",
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
          "obj-126",
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
          "obj-127",
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
          "obj-127",
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
          "obj-128",
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
          "obj-109",
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
          "obj-131",
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
          "obj-131",
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
          "obj-132",
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
          "obj-135",
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
          "obj-136",
          0
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
          "obj-137",
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
          "obj-138",
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
          "obj-139",
          0
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
          "obj-140",
          0
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
          "obj-142",
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
          "obj-143",
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
          "obj-112",
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
          "obj-109",
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
          "obj-106",
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
          "obj-148",
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
          "obj-103",
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
          "obj-149",
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
          "obj-46",
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
          "obj-150",
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
          "obj-27",
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
          "obj-23",
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
          "obj-152",
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
          "obj-6",
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
          "obj-2",
          0
         ]
        }
       }
      ],
      "openinpresentation": 1
     }
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      840,
      1666.0,
      300,
      20.0
     ],
     "text": "VOCAL CHOPS",
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      840,
      1688.0,
      970,
      388.0
     ],
     "offset": [
      0.0,
      0.0
     ],
     "embed": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1,
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
       1100.0,
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
          900,
          40.0
         ],
         "text": "VOCAL CHOPS \u2014 jungle yells that drop in every now and then on the jongly beat: clean, chopped (oi-oi-oi), pitched or reversed, into a dub delay. Samples: Ableton Core Library one-shots.",
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
         "numoutlets": 1,
         "patching_rect": [
          20,
          420,
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
             "numoutlets": 1,
             "patching_rect": [
              20,
              50,
              700,
              440
             ],
             "code": "// one-shot vocal voice: 'trig' changes -> play buffer 'which' (0-5), with 'stut' repeats of the first 'stutlen' seconds,\n// pitched 'pitch' semitones, optionally reversed. Every index is kept finite and inside the buffer (see the chopper crash fix).\nBuffer b0(\"vox0\"); Buffer b1(\"vox1\"); Buffer b2(\"vox2\"); Buffer b3(\"vox3\"); Buffer b4(\"vox4\"); Buffer b5(\"vox5\");\nParam trig(0); Param which(0); Param pitch(0); Param stut(1); Param stutlen(0.08); Param rev(0);\nParam sr0(44100); Param sr1(44100); Param sr2(44100); Param sr3(44100); Param sr4(44100); Param sr5(44100);\nHistory lastT(0), pos(0), rep(0), playing(0), w(0);\nif (trig != lastT) { lastT = trig; pos = 0; rep = 0; playing = 1; w = clamp(floor(fixnan(which)), 0, 5); }\nd = (w < 0.5) ? dim(b0) : (w < 1.5) ? dim(b1) : (w < 2.5) ? dim(b2) : (w < 3.5) ? dim(b3) : (w < 4.5) ? dim(b4) : dim(b5);\nbsr = (w < 0.5) ? sr0 : (w < 1.5) ? sr1 : (w < 2.5) ? sr2 : (w < 3.5) ? sr3 : (w < 4.5) ? sr4 : sr5;\nlen = max(d, 1);\nok = (d > 64) ? 1 : 0;\nrate = exp(clamp(fixnan(pitch), -24, 24)*0.05776226505)*clamp(fixnan(bsr), 8000, 192000)/samplerate;\nseg = min(clamp(fixnan(stutlen), 0.02, 0.5)*clamp(fixnan(bsr), 8000, 192000), len);\nnst = clamp(floor(fixnan(stut)), 1, 8);\nif (playing > 0) {\n\tpos = fixnan(pos + rate);\n\tif (rep < nst - 1 && pos >= seg) { pos = 0; rep = rep + 1; }\n\tif (pos >= len) { playing = 0; pos = 0; }\n}\nph = clamp(fixnan(pos/len), 0, 0.999999);\nph = (rev > 0.5) ? 0.999999 - ph : ph;\ns = (w < 0.5) ? sample(b0, ph) : (w < 1.5) ? sample(b1, ph) : (w < 2.5) ? sample(b2, ph) : (w < 3.5) ? sample(b3, ph) : (w < 4.5) ? sample(b4, ph) : sample(b5, ph);\nedge = (rep < nst - 1) ? seg : len;\nenv = clamp(pos/64, 0, 1)*clamp((edge - pos)/256, 0, 1);\nout1 = fixnan(s*env*playing*ok);\n",
             "fontface": 0,
             "fontname": "<Monospaced>",
             "fontsize": 12.0,
             "outlettype": [
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
           }
          ]
         },
         "outlettype": [
          "signal"
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
          540,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          620,
          60,
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
         "id": "obj-5",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          90,
          420,
          22.0
         ],
         "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/One Shots/Vocal/Vocal Chop Jungle.aif\"",
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
         "numoutlets": 2,
         "patching_rect": [
          1060,
          90,
          98.0,
          22.0
         ],
         "text": "buffer~ vox0",
         "outlettype": [
          "float",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 10,
         "patching_rect": [
          1180,
          90,
          84.0,
          22.0
         ],
         "text": "info~ vox0",
         "outlettype": [
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1300,
          90,
          91.0,
          22.0
         ],
         "text": "prepend sr0",
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
          620,
          116,
          420,
          22.0
         ],
         "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/One Shots/Vocal/Vocal Chop Oi.aif\"",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-10",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          1060,
          116,
          98.0,
          22.0
         ],
         "text": "buffer~ vox1",
         "outlettype": [
          "float",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 10,
         "patching_rect": [
          1180,
          116,
          84.0,
          22.0
         ],
         "text": "info~ vox1",
         "outlettype": [
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float"
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
          1300,
          116,
          91.0,
          22.0
         ],
         "text": "prepend sr1",
         "outlettype": [
          ""
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
          620,
          142,
          420,
          22.0
         ],
         "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/One Shots/Vocal/Vocal Shout Wha.aif\"",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          1060,
          142,
          98.0,
          22.0
         ],
         "text": "buffer~ vox2",
         "outlettype": [
          "float",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-15",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 10,
         "patching_rect": [
          1180,
          142,
          84.0,
          22.0
         ],
         "text": "info~ vox2",
         "outlettype": [
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-16",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1300,
          142,
          91.0,
          22.0
         ],
         "text": "prepend sr2",
         "outlettype": [
          ""
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
          620,
          168,
          420,
          22.0
         ],
         "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/One Shots/Vocal/Vocal Crowd Hey.aif\"",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-18",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          1060,
          168,
          98.0,
          22.0
         ],
         "text": "buffer~ vox3",
         "outlettype": [
          "float",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-19",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 10,
         "patching_rect": [
          1180,
          168,
          84.0,
          22.0
         ],
         "text": "info~ vox3",
         "outlettype": [
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-20",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1300,
          168,
          91.0,
          22.0
         ],
         "text": "prepend sr3",
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
          620,
          194,
          420,
          22.0
         ],
         "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/One Shots/Vocal/Vocal Check It Out.wav\"",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-22",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          1060,
          194,
          98.0,
          22.0
         ],
         "text": "buffer~ vox4",
         "outlettype": [
          "float",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-23",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 10,
         "patching_rect": [
          1180,
          194,
          84.0,
          22.0
         ],
         "text": "info~ vox4",
         "outlettype": [
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1300,
          194,
          91.0,
          22.0
         ],
         "text": "prepend sr4",
         "outlettype": [
          ""
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
          620,
          220,
          420,
          22.0
         ],
         "text": "read \"/Applications/Ableton Live 12 Suite.app/Contents/App-Resources/Core Library/Samples/One Shots/Vocal/Vocal That Bass.wav\"",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-26",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          1060,
          220,
          98.0,
          22.0
         ],
         "text": "buffer~ vox5",
         "outlettype": [
          "float",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-27",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 10,
         "patching_rect": [
          1180,
          220,
          84.0,
          22.0
         ],
         "text": "info~ vox5",
         "outlettype": [
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float",
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-28",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1300,
          220,
          91.0,
          22.0
         ],
         "text": "prepend sr5",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-29",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          40,
          900,
          20.0
         ],
         "text": "samples: Chop Jungle \u00b7 Chop Oi \u00b7 Shout Wha \u00b7 Crowd Hey \u00b7 Check It Out \u00b7 That Bass",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          10,
          42,
          900,
          20.0
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
          20,
          70,
          340,
          40.0
         ],
         "text": "AUTO YELLS on \u00b7 chance per step (\u2030) \u00b7 cooldown ms",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          10,
          72,
          340,
          40.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-31",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          92,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          10,
          94,
          22,
          22
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
          380,
          120,
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
         "id": "obj-33",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          60,
          92,
          50,
          22
         ],
         "minimum": 0,
         "maximum": 1000,
         "outlettype": [
          "",
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          50,
          94,
          50,
          22
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
          380,
          146,
          91.0,
          22.0
         ],
         "text": "loadmess 30",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-35",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          130,
          92,
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
          120,
          94,
          60,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-36",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          380,
          172,
          105.0,
          22.0
         ],
         "text": "loadmess 2500",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-37",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          140,
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
         "id": "obj-38",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          166,
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
         "id": "obj-39",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
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
         "id": "obj-40",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          218,
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
         "id": "obj-41",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          244,
          91.0,
          22.0
         ],
         "text": "random 1000",
         "outlettype": [
          "int"
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
          20,
          270,
          36.0,
          22.0
         ],
         "text": "<",
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-43",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          296,
          49.0,
          22.0
         ],
         "text": "sel 1",
         "outlettype": [
          "bang",
          ""
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
          20,
          322,
          70.0,
          22.0
         ],
         "text": "gate 1 1",
         "outlettype": [
          ""
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
          220,
          92,
          70,
          20.0
         ],
         "text": "YELL NOW",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          210,
          94,
          70,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-46",
         "maxclass": "button",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          290,
          90,
          26,
          26
         ],
         "outlettype": [
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          280,
          92,
          26,
          26
         ]
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          20,
          348,
          77.0,
          22.0
         ],
         "text": "t b b b b",
         "outlettype": [
          "bang",
          "bang",
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-48",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          220,
          140,
          105.0,
          22.0
         ],
         "text": "r av_vox_yell",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-49",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          300,
          140,
          119.0,
          22.0
         ],
         "text": "r av_vox_chance",
         "outlettype": [
          ""
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
          140,
          374,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          180,
          374,
          84.0,
          22.0
         ],
         "text": "delay 2500",
         "outlettype": [
          "bang"
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
          260,
          374,
          25.0,
          22.0
         ],
         "text": "1",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          250,
          226,
          25.0,
          22.0
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
          460,
          348,
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
         "id": "obj-54",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          460,
          374,
          105.0,
          22.0
         ],
         "text": "prepend which",
         "outlettype": [
          ""
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
          560,
          348,
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
         "id": "obj-56",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 6,
         "patching_rect": [
          560,
          374,
          105.0,
          22.0
         ],
         "text": "sel 0 1 2 3 4",
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
         "id": "obj-57",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          470,
          500,
          40.0
         ],
         "text": "CHOP STYLES (picked at random each yell; click to audition the next one)",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          10,
          260.0,
          500,
          40.0
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
          492,
          105,
          20.0
         ],
         "text": "clean",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          10,
          282.0,
          105,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-59",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          512,
          105,
          22.0
         ],
         "text": "stut 1, rev 0, pitch 0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          10,
          302.0,
          105,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-60",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          492,
          105,
          20.0
         ],
         "text": "chopped",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          120,
          282.0,
          105,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-61",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          130,
          512,
          105,
          22.0
         ],
         "text": "stut 3, stutlen 0.08, rev 0, pitch 0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          120,
          302.0,
          105,
          22.0
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
          240,
          492,
          105,
          20.0
         ],
         "text": "machine gun",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          230,
          282.0,
          105,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-63",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          240,
          512,
          105,
          22.0
         ],
         "text": "stut 4, stutlen 0.05, rev 0, pitch 3",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          230,
          302.0,
          105,
          22.0
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
          350,
          492,
          105,
          20.0
         ],
         "text": "dropped",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          340,
          282.0,
          105,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-65",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          350,
          512,
          105,
          22.0
         ],
         "text": "stut 1, rev 0, pitch -5",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          340,
          302.0,
          105,
          22.0
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
          460,
          492,
          105,
          20.0
         ],
         "text": "reverse",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          450,
          282.0,
          105,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-67",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          512,
          105,
          22.0
         ],
         "text": "stut 2, stutlen 0.12, rev 1, pitch 0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          450,
          302.0,
          105,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-68",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 4,
         "patching_rect": [
          700,
          348,
          133.0,
          22.0
         ],
         "text": "counter 1 1000000",
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
         "id": "obj-69",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          700,
          374,
          98.0,
          22.0
         ],
         "text": "prepend trig",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-70",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          260,
          420,
          91.0,
          22.0
         ],
         "text": "tapin~ 2000",
         "outlettype": [
          "tapconnect"
         ]
        }
       },
       {
        "box": {
         "id": "obj-71",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          260,
          446,
          91.0,
          22.0
         ],
         "text": "tapout~ 265",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-72",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          446,
          105.0,
          22.0
         ],
         "text": "onepole~ 2500",
         "outlettype": [
          "signal"
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
          260,
          560,
          180,
          20.0
         ],
         "text": "echo feedback \u00b7 echo mix",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          250,
          336.0,
          180,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-74",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          260,
          580,
          50,
          22
         ],
         "format": 6,
         "minimum": 0.0,
         "maximum": 0.85,
         "outlettype": [
          "",
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          250,
          356.0,
          50,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-75",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          320,
          580,
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
          310,
          356.0,
          50,
          22
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
          500,
          580,
          105.0,
          22.0
         ],
         "text": "loadmess 0.45",
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
          580,
          580,
          105.0,
          22.0
         ],
         "text": "loadmess 0.35",
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
         "numoutlets": 1,
         "patching_rect": [
          380,
          472,
          63.0,
          22.0
         ],
         "text": "*~ 0.45",
         "outlettype": [
          "signal"
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
          260,
          472,
          63.0,
          22.0
         ],
         "text": "*~ 0.35",
         "outlettype": [
          "signal"
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
          20,
          600,
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
         "id": "obj-81",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          660,
          420,
          112.0,
          22.0
         ],
         "text": "r av_level_vox",
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
         "numoutlets": 1,
         "patching_rect": [
          660,
          446,
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
         "id": "obj-83",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          660,
          472,
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
         "id": "obj-84",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          700,
          70,
          60,
          20.0
         ],
         "text": "LEVEL",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          690,
          72,
          60,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-85",
         "maxclass": "slider",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          700,
          92,
          26,
          120
         ],
         "floatoutput": 1,
         "size": 1.0,
         "min": 0.0,
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          690,
          94,
          26,
          120
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
          760,
          92,
          98.0,
          22.0
         ],
         "text": "loadmess 0.4",
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
         "numoutlets": 1,
         "patching_rect": [
          20,
          630,
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
         "id": "obj-88",
         "maxclass": "ezdac~",
         "numinlets": 2,
         "numoutlets": 0,
         "patching_rect": [
          780,
          92,
          45,
          45
         ],
         "presentation": 1,
         "presentation_rect": [
          770,
          94,
          45,
          45
         ]
        }
       },
       {
        "box": {
         "id": "obj-89",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          830,
          104,
          140,
          40.0
         ],
         "text": "click to start audio",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          820,
          106,
          140,
          40.0
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
          1
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
          "obj-8",
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
          "obj-10",
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
          "obj-12",
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
          "obj-13",
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
          1
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
          "obj-2",
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
          "obj-18",
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
          "obj-20",
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
          "obj-21",
          0
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
          "obj-22",
          1
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
          "obj-23",
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
          "obj-24",
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
          1
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
          "obj-27",
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
          "obj-32",
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
          "obj-34",
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
          "obj-36",
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
          "obj-38",
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
          "obj-31",
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
          "obj-39",
          0
         ],
         "destination": [
          "obj-40",
          1
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
          "obj-33",
          0
         ],
         "destination": [
          "obj-42",
          1
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
          1
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
          "obj-47",
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
          "obj-47",
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
          "obj-33",
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
          "obj-44",
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
          "obj-51",
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
          "obj-51",
          1
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
          "obj-52",
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
          "obj-47",
          3
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
          "obj-54",
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
          "obj-47",
          2
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
          "obj-59",
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
          "obj-56",
          1
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
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-56",
          2
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
          "obj-56",
          3
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
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-56",
          4
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
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-47",
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
          "obj-76",
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
          "obj-77",
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
          "obj-74",
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
          "obj-70",
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
          "obj-79",
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
          "obj-79",
          1
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
          "obj-80",
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
          1
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
          "obj-82",
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
          "obj-87",
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
          "obj-87",
          1
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
          "obj-87",
          0
         ],
         "destination": [
          "obj-88",
          1
         ]
        }
       }
      ],
      "openinpresentation": 1
     }
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      2448.0,
      300,
      20.0
     ],
     "text": "SINE TEST",
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      10,
      2470.0,
      955,
      441.0
     ],
     "offset": [
      0.0,
      0.0
     ],
     "embed": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1,
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
         "text": "loadmess 0.2",
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
         "text": "0.5866",
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
         "text": "696",
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
         "text": "0",
         "outlettype": [
          ""
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
          1034.0,
          208,
          260,
          22.0
         ],
         "text": "523",
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
          1034.0,
          234,
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
         "id": "obj-117",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1034.0,
          260,
          260,
          22.0
         ],
         "text": "12",
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
          "obj-62",
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
          "obj-59",
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
          "obj-116",
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
          "obj-10",
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
          "obj-5",
          0
         ]
        }
       }
      ],
      "openinpresentation": 1
     }
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      985,
      2448.0,
      300,
      20.0
     ],
     "text": "GLASS BELLS",
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      985,
      2470.0,
      860,
      388.0
     ],
     "offset": [
      0.0,
      0.0
     ],
     "embed": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1,
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
       80.0,
       80.0,
       900.0,
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
         "text": "GLASS BELLS \u2014 FM bells that play notes from the bass patch's scale (av_scale) and key (av_root), clocked by the jongly chopper (jongly_step), through a ping-pong delay synced to 170 bpm.",
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
          60,
          50,
          20.0
         ],
         "text": "clock",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          10,
          62,
          50,
          20.0
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
          140,
          84,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          130,
          86,
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
          166,
          86,
          70,
          20.0
         ],
         "text": "free-run",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          156,
          88,
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
          140,
          112,
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
          140,
          138,
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
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          170,
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
         "id": "obj-9",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          196,
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
         "id": "obj-10",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          222,
          42.0,
          22.0
         ],
         "text": "< 35",
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          250,
          170,
          80,
          20.0
         ],
         "text": "density %",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          240,
          120,
          80,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-12",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          250,
          194,
          50,
          22
         ],
         "minimum": 0,
         "maximum": 100,
         "outlettype": [
          "",
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          240,
          144,
          50,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-13",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          310,
          194,
          91.0,
          22.0
         ],
         "text": "loadmess 35",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          248,
          49.0,
          22.0
         ],
         "text": "sel 1",
         "outlettype": [
          "bang",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-15",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          250,
          230,
          170,
          20.0
         ],
         "text": "arp (off = random notes)",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          240,
          180,
          170,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-16",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          250,
          252,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          240,
          202,
          22,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-17",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          278,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          280,
          252,
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
         "id": "obj-19",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          300,
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
         "id": "obj-20",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          330,
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
         "id": "obj-21",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 4,
         "patching_rect": [
          120,
          330,
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
         "id": "obj-22",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          120,
          356,
          42.0,
          22.0
         ],
         "text": "% 15",
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-23",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          450,
          60,
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
         "id": "obj-24",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          450,
          86,
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
         "id": "obj-25",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          450,
          112,
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
         "id": "obj-26",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          520,
          138,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          390,
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
         "id": "obj-28",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          450,
          176,
          170,
          20.0
         ],
         "text": "octave above bass root",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          440,
          126,
          170,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-29",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          450,
          200,
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
         "id": "obj-30",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          540,
          200,
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
         "id": "obj-31",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          640,
          200,
          40,
          22
         ],
         "outlettype": [
          "",
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          630,
          150,
          40,
          22
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
          690,
          200,
          91.0,
          22.0
         ],
         "text": "loadmess 24",
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
          450,
          230,
          77.0,
          22.0
         ],
         "text": "pak 33 24",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-34",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          450,
          256,
          56.0,
          22.0
         ],
         "text": "zl sum",
         "outlettype": [
          "",
          ""
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
          20,
          416,
          42.0,
          22.0
         ],
         "text": "+ 57",
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-36",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          442,
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
         "id": "obj-37",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 3,
         "patching_rect": [
          20,
          468,
          63.0,
          22.0
         ],
         "text": "t b f f",
         "outlettype": [
          "bang",
          "float",
          "float"
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
          120,
          494,
          49.0,
          22.0
         ],
         "text": "* 3.5",
         "outlettype": [
          "float"
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
          120,
          520,
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
         "id": "obj-40",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          260,
          494,
          88.0,
          22.0
         ],
         "text": "3, 0.1 900",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          260,
          520,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          120,
          546,
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
         "id": "obj-43",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          120,
          572,
          42.0,
          22.0
         ],
         "text": "*~ 0",
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
          20,
          598,
          42.0,
          22.0
         ],
         "text": "+~ 0",
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
          20,
          624,
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
         "id": "obj-46",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          470,
          70,
          20.0
         ],
         "text": "decay ms",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          370,
          236,
          70,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          380,
          494,
          50,
          22
         ],
         "minimum": 50,
         "outlettype": [
          "",
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          370,
          260,
          50,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-48",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          440,
          494,
          105.0,
          22.0
         ],
         "text": "loadmess 1600",
         "outlettype": [
          ""
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
          380,
          520,
          56.0,
          22.0
         ],
         "text": "f 1600",
         "outlettype": [
          "float"
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
          380,
          546,
          81.0,
          22.0
         ],
         "text": "1 2, 0 $1",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-51",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          380,
          572,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          650,
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
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          560,
          560,
          91.0,
          22.0
         ],
         "text": "tapin~ 3000",
         "outlettype": [
          "tapconnect"
         ]
        }
       },
       {
        "box": {
         "id": "obj-54",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          560,
          590,
          119.0,
          22.0
         ],
         "text": "tapout~ 353 529",
         "outlettype": [
          "signal",
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
          680,
          590,
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
         "id": "obj-56",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          591,
          70,
          20.0
         ],
         "text": "feedback",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          730,
          294,
          70,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-57",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          800,
          620,
          126.0,
          22.0
         ],
         "text": "r av_level_bells",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-58",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          800,
          646,
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
         "id": "obj-59",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          800,
          672,
          84.0,
          22.0
         ],
         "text": "line~ 0.25",
         "outlettype": [
          "signal",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-60",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          620,
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
         "id": "obj-61",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          646,
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
         "id": "obj-62",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          672,
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
         "id": "obj-63",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          680,
          620,
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
         "id": "obj-64",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          680,
          646,
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
         "id": "obj-65",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          680,
          672,
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
         "id": "obj-66",
         "maxclass": "ezdac~",
         "numinlets": 2,
         "numoutlets": 0,
         "patching_rect": [
          620,
          700,
          45,
          45
         ],
         "presentation": 1,
         "presentation_rect": [
          610,
          326.0,
          45,
          45
         ]
        }
       },
       {
        "box": {
         "id": "obj-67",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          670,
          712,
          140,
          40.0
         ],
         "text": "click to start audio",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          660,
          338.0,
          140,
          40.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-68",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          966.0,
          10,
          300,
          60.0
         ],
         "text": "SAVED STATE \u2014 re-applied on load (recipes/max/state/glass_bells.maxpat.json; recapture with state_capture.maxpat)",
         "linecount": 3
        }
       },
       {
        "box": {
         "id": "obj-69",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          966.0,
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
         "id": "obj-70",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          966.0,
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
         "id": "obj-71",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1046.0,
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
         "id": "obj-72",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          966.0,
          130,
          260,
          22.0
         ],
         "text": "79",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-73",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          966.0,
          156,
          260,
          22.0
         ],
         "text": "263",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-74",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          966.0,
          182,
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
         "id": "obj-75",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          966.0,
          208,
          260,
          22.0
         ],
         "text": "87",
         "outlettype": [
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
          966.0,
          234,
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
          "obj-10",
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
          "obj-10",
          1
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
          "obj-12",
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
          "obj-16",
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
          "obj-19",
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
          "obj-19",
          1
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
          "obj-19",
          1
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
          "obj-21",
          0
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
          "obj-23",
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
          "obj-24",
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
          "obj-25",
          1
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
          "obj-20",
          1
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
          "obj-22",
          1
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
          "obj-27",
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
          "obj-27",
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
          "obj-27",
          1
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
          "obj-31",
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
          "obj-33",
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
          "obj-33",
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
          "obj-33",
          1
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
          "obj-27",
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
          "obj-34",
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
          "obj-36",
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
          1
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
          "obj-39",
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
          "obj-40",
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
          "obj-39",
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
          "obj-41",
          0
         ],
         "destination": [
          "obj-42",
          1
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
          "obj-38",
          0
         ],
         "destination": [
          "obj-43",
          1
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
          "obj-37",
          2
         ],
         "destination": [
          "obj-44",
          1
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
          "obj-47",
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
          "obj-49",
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
          "obj-49",
          1
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
          "obj-51",
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
          "obj-53",
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
          "obj-54",
          1
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
          "obj-53",
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
          "obj-59",
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
          "obj-60",
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
          "obj-61",
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
          "obj-61",
          1
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
          "obj-62",
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
          "obj-62",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-54",
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
          "obj-52",
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
          "obj-63",
          0
         ],
         "destination": [
          "obj-64",
          1
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
          "obj-65",
          1
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
          "obj-69",
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
          "obj-70",
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
          "obj-47",
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
          "obj-31",
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
          "obj-16",
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
          "obj-12",
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
          "obj-4",
          0
         ]
        }
       }
      ],
      "openinpresentation": 1
     }
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      2931.0,
      300,
      20.0
     ],
     "text": "BASSLINE",
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      10,
      2953.0,
      1300,
      610.0
     ],
     "offset": [
      0.0,
      0.0
     ],
     "embed": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1,
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
          570.0,
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
          571.0,
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
         "text": "line~ 0.5",
         "outlettype": [
          "signal",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-136",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          920,
          660,
          330,
          60.0
         ],
         "text": "POCKET \u2014 each beat the filter dips + level ducks a touch, then opens (amount 0-1; conductor: av_pocket)",
         "linecount": 3,
         "presentation": 1,
         "presentation_rect": [
          910,
          534.0,
          330,
          60.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-137",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          920,
          704,
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
          910,
          578.0,
          50,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-138",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          980,
          704,
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
         "id": "obj-139",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1070,
          704,
          91.0,
          22.0
         ],
         "text": "r av_pocket",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-140",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          734,
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
         "id": "obj-141",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          920,
          760,
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
         "id": "obj-142",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          786,
          74.0,
          22.0
         ],
         "text": "0, 1 260",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-143",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          920,
          812,
          63.0,
          22.0
         ],
         "text": "line~ 1",
         "outlettype": [
          "signal",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-144",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          838,
          49.0,
          22.0
         ],
         "text": "!-~ 1",
         "outlettype": [
          "signal"
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
          920,
          864,
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
         "id": "obj-146",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1010,
          890,
          70.0,
          22.0
         ],
         "text": "*~ -2000",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-147",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1010,
          916,
          63.0,
          22.0
         ],
         "text": "+~ 2500",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-148",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          890,
          63.0,
          22.0
         ],
         "text": "*~ -0.3",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-149",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          916,
          49.0,
          22.0
         ],
         "text": "+~ 1.",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-150",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          100,
          606,
          126.0,
          22.0
         ],
         "text": "lores~ 2500 0.15",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-151",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          100,
          632,
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
         "id": "obj-152",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          580,
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
         "id": "obj-153",
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
         "id": "obj-154",
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
         "id": "obj-155",
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
         "id": "obj-156",
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
         "id": "obj-157",
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
         "id": "obj-158",
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
         "id": "obj-159",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          130,
          260,
          22.0
         ],
         "text": "0.5727",
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
          1426.0,
          156,
          260,
          22.0
         ],
         "text": "16",
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
          1426.0,
          182,
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
         "id": "obj-162",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          208,
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
         "id": "obj-163",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          234,
          260,
          22.0
         ],
         "text": "2200",
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
          1426.0,
          260,
          260,
          22.0
         ],
         "text": "30",
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
          1426.0,
          286,
          260,
          22.0
         ],
         "text": "1 20 0 20 0 9 0 15 23 8 16 20 13 23 16 0",
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
          1426.0,
          312,
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
          "obj-138",
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
          "obj-139",
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
          "obj-3",
          0
         ],
         "destination": [
          "obj-140",
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
          "obj-140",
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
          "obj-137",
          0
         ],
         "destination": [
          "obj-145",
          1
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
          "obj-145",
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
          "obj-148",
          0
         ],
         "destination": [
          "obj-149",
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
          "obj-150",
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
          "obj-150",
          1
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
          "obj-151",
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
          "obj-151",
          1
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
          "obj-152",
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
          "obj-152",
          1
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
          "obj-153",
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
          "obj-153",
          1
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
          "obj-125",
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
          "obj-97",
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
          "obj-95",
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
          "obj-91",
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
          "obj-83",
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
          "obj-43",
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
          "obj-11",
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
          "obj-4",
          0
         ]
        }
       }
      ],
      "openinpresentation": 1
     }
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      3583.0,
      300,
      20.0
     ],
     "text": "JUNGLE BASS",
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      10,
      3605.0,
      1360,
      756.0
     ],
     "offset": [
      0.0,
      0.0
     ],
     "embed": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1,
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
       1400.0,
       1200.0
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
          1180,
          40.0
         ],
         "text": "JUNGLE BASS \u2014 deep FM sub for the tampura: long gliding notes with an FM growl that blooms on each note, optional tempo-synced wobble, driven through tanh~. Clocked by the jongly chopper; key + scale follow the bassline patch (av_root / av_scale).",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          10,
          10,
          1180,
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
          320,
          40.0
         ],
         "text": "clock: follows the jongly chopper; or free-run",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          10,
          62,
          320,
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
          84,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          150,
          86,
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
          86,
          70,
          20.0
         ],
         "text": "free-run",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          176,
          88,
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
          112,
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
          138,
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
          168,
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
          194,
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
          340,
          60,
          460,
          40.0
         ],
         "text": "pattern: 1 = root, 13 = octave up \u00b7 0 = tie (hold + let the glide sing)",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          330,
          62,
          460,
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
          340,
          84,
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
          0.9,
          0.25,
          0.3,
          1.0
         ],
         "outlettype": [
          "",
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          330,
          86,
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
         "id": "obj-13",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          830,
          60,
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
          760,
          85,
          70,
          20.0
         ],
         "text": "roller",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          750,
          87,
          70,
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
          830,
          84,
          120,
          22.0
         ],
         "text": "1 0 0 0 0 0 1 0 0 0 4 0 0 0 0 0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          820,
          86,
          120,
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
          760,
          111,
          70,
          20.0
         ],
         "text": "drop",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          750,
          113,
          70,
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
          830,
          110,
          120,
          22.0
         ],
         "text": "1 0 0 0 0 0 0 0 8 0 0 0 6 0 4 0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          820,
          112,
          120,
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
          760,
          137,
          70,
          20.0
         ],
         "text": "steppy",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          750,
          139,
          70,
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
          830,
          136,
          120,
          22.0
         ],
         "text": "1 0 0 1 0 0 1 0 1 0 0 1 0 0 11 0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          820,
          138,
          120,
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
          760,
          163,
          70,
          20.0
         ],
         "text": "dread",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          750,
          165,
          70,
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
          830,
          162,
          120,
          22.0
         ],
         "text": "1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          820,
          164,
          120,
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
          760,
          189,
          70,
          20.0
         ],
         "text": "walk-down",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          750,
          191,
          70,
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
          830,
          188,
          120,
          22.0
         ],
         "text": "13 0 0 0 11 0 0 0 8 0 0 0 6 0 4 0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          820,
          190,
          120,
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
          980,
          60,
          220,
          20.0
         ],
         "text": "random in scale (from bassline)",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          970,
          62,
          220,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-25",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          980,
          84,
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
         "id": "obj-26",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          980,
          110,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          980,
          136,
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
         "id": "obj-28",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          1060,
          162,
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
         "id": "obj-29",
         "maxclass": "button",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          980,
          190,
          24,
          24
         ],
         "outlettype": [
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          970,
          192,
          24,
          24
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
          1008,
          192,
          60,
          20.0
         ],
         "text": "random",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          998,
          194,
          60,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-31",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1080,
          190,
          140.0,
          22.0
         ],
         "text": "r av_reroll_jungle",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-32",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 3,
         "patching_rect": [
          980,
          220,
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
         "id": "obj-33",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          980,
          246,
          70.0,
          22.0
         ],
         "text": "random 3",
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-34",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          980,
          272,
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
         "id": "obj-35",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          980,
          298,
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
         "id": "obj-36",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1040,
          298,
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
         "id": "obj-37",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          980,
          324,
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
         "id": "obj-38",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          980,
          350,
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
         "id": "obj-39",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          980,
          376,
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
         "id": "obj-40",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          980,
          402,
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
         "id": "obj-41",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          340,
          204,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          340,
          230,
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
         "id": "obj-43",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          520,
          204,
          260,
          20.0
         ],
         "text": "key from bassline \u00b7 octave \u00b7 glide ms",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          510,
          206,
          260,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-44",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          520,
          230,
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
         "id": "obj-45",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          230,
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
         "id": "obj-46",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          690,
          230,
          40,
          22
         ],
         "minimum": -24,
         "maximum": 24,
         "outlettype": [
          "",
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          680,
          232,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          740,
          230,
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
         "id": "obj-48",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          520,
          256,
          70.0,
          22.0
         ],
         "text": "pak 33 0",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-49",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          520,
          282,
          56.0,
          22.0
         ],
         "text": "zl sum",
         "outlettype": [
          "",
          ""
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
          520,
          308,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
          256,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          260,
          256,
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
         "id": "obj-53",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          260,
          282,
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
         "id": "obj-54",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          260,
          308,
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
         "id": "obj-55",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          400,
          282,
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
         "id": "obj-56",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          800,
          230,
          50,
          22
         ],
         "minimum": 0,
         "outlettype": [
          "",
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          790,
          232,
          50,
          22
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
          860,
          230,
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
         "id": "obj-58",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
          308,
          84.0,
          22.0
         ],
         "text": "pack 0. 90",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-59",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          400,
          334,
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
         "id": "obj-60",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          340,
          370,
          109.0,
          22.0
         ],
         "text": "1 5, 0.85 500",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-61",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          340,
          396,
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
         "id": "obj-62",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          560,
          344,
          150,
          20.0
         ],
         "text": "growl (FM index peak)",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          550,
          310,
          150,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-63",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          560,
          368,
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
          550,
          334,
          50,
          22
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
          620,
          368,
          98.0,
          22.0
         ],
         "text": "loadmess 2.5",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-65",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          480,
          370,
          49.0,
          22.0
         ],
         "text": "f 2.5",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-66",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          480,
          396,
          109.0,
          22.0
         ],
         "text": "$1 8, 0.4 700",
         "outlettype": [
          ""
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
          480,
          422,
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
         "id": "obj-68",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          300,
          150,
          20.0
         ],
         "text": "wobble rate (170 bpm)",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          730,
          266,
          150,
          20.0
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
          740,
          396,
          91.0,
          22.0
         ],
         "text": "cycle~ 1.42",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-70",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          324,
          25.0,
          22.0
         ],
         "text": "0",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          730,
          290,
          25.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-71",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          348,
          46,
          20.0
         ],
         "text": "off",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          730,
          314,
          46,
          20.0
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
          680,
          370,
          46.0,
          22.0
         ],
         "text": "0.25",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-73",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          792,
          324,
          46.0,
          22.0
         ],
         "text": "1.42",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          782,
          290,
          46.0,
          22.0
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
          792,
          348,
          46,
          20.0
         ],
         "text": "1/2",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          782,
          314,
          46,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-75",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          844,
          324,
          46.0,
          22.0
         ],
         "text": "2.83",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          834,
          290,
          46.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-76",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          844,
          348,
          46,
          20.0
         ],
         "text": "1/4",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          834,
          314,
          46,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-77",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          896,
          324,
          46.0,
          22.0
         ],
         "text": "5.67",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          886,
          290,
          46.0,
          22.0
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
          896,
          348,
          46,
          20.0
         ],
         "text": "1/8",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          886,
          314,
          46,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-79",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          948,
          324,
          53.0,
          22.0
         ],
         "text": "11.33",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          938,
          290,
          53.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-80",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          948,
          348,
          46,
          20.0
         ],
         "text": "1/16",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          938,
          314,
          46,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-81",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          900,
          372,
          50,
          20.0
         ],
         "text": "depth",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          890,
          338,
          50,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-82",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          950,
          372,
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
          940,
          338,
          50,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-83",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1010,
          372,
          98.0,
          22.0
         ],
         "text": "loadmess 0.6",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-84",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          422,
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
         "id": "obj-85",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          480,
          452,
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
         "id": "obj-86",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          452,
          50,
          20.0
         ],
         "text": "ratio",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          10,
          384,
          50,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-87",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          70,
          452,
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
          60,
          384,
          50,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-88",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          130,
          452,
          91.0,
          22.0
         ],
         "text": "loadmess 1.",
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
          20,
          480,
          49.0,
          22.0
         ],
         "text": "*~ 1.",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-90",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          506,
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
         "id": "obj-91",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          120,
          506,
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
         "id": "obj-92",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          532,
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
         "id": "obj-93",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          558,
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
         "id": "obj-94",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          584,
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
         "id": "obj-95",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          584,
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
         "id": "obj-96",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          610,
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
         "id": "obj-97",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          610,
          56.0,
          22.0
         ],
         "text": "*~ 0.7",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-98",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          636,
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
         "id": "obj-99",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          662,
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
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          320,
          690,
          50,
          20.0
         ],
         "text": "drive",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          310,
          536.0,
          50,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-101",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          370,
          690,
          50,
          22
         ],
         "format": 6,
         "minimum": 0.1,
         "outlettype": [
          "",
          "bang"
         ],
         "presentation": 1,
         "presentation_rect": [
          360,
          536.0,
          50,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-102",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          430,
          690,
          91.0,
          22.0
         ],
         "text": "loadmess 2.",
         "outlettype": [
          ""
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
          20,
          690,
          49.0,
          22.0
         ],
         "text": "*~ 2.",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-104",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          716,
          49.0,
          22.0
         ],
         "text": "tanh~",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-105",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          742,
          119.0,
          22.0
         ],
         "text": "lores~ 1400 0.1",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-106",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          140,
          742,
          133.0,
          22.0
         ],
         "text": "r av_level_jungle",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-107",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          140,
          768,
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
         "id": "obj-108",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          140,
          794,
          84.0,
          22.0
         ],
         "text": "line~ 0.45",
         "outlettype": [
          "signal",
          "bang"
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
          1000,
          440,
          330,
          60.0
         ],
         "text": "POCKET \u2014 each beat the filter dips + level ducks a touch, then opens (amount 0-1; conductor: av_pocket)",
         "linecount": 3,
         "presentation": 1,
         "presentation_rect": [
          990,
          372,
          330,
          60.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-110",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          1000,
          484,
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
          990,
          416,
          50,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-111",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1060,
          484,
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
         "id": "obj-112",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1150,
          484,
          91.0,
          22.0
         ],
         "text": "r av_pocket",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-113",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          514,
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
         "id": "obj-114",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          1000,
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
         "id": "obj-115",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          566,
          74.0,
          22.0
         ],
         "text": "0, 1 260",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-116",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          1000,
          592,
          63.0,
          22.0
         ],
         "text": "line~ 1",
         "outlettype": [
          "signal",
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
          1000,
          618,
          49.0,
          22.0
         ],
         "text": "!-~ 1",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-118",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          644,
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
         "id": "obj-119",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1090,
          670,
          63.0,
          22.0
         ],
         "text": "*~ -980",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-120",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1090,
          696,
          63.0,
          22.0
         ],
         "text": "+~ 1400",
         "outlettype": [
          "signal"
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
          1000,
          670,
          63.0,
          22.0
         ],
         "text": "*~ -0.3",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-122",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          696,
          49.0,
          22.0
         ],
         "text": "+~ 1.",
         "outlettype": [
          "signal"
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
          100,
          794,
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
         "id": "obj-124",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          768,
          63.0,
          22.0
         ],
         "text": "*~ 0.45",
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-125",
         "maxclass": "ezdac~",
         "numinlets": 2,
         "numoutlets": 0,
         "patching_rect": [
          20,
          798,
          45,
          45
         ],
         "presentation": 1,
         "presentation_rect": [
          10,
          628.0,
          45,
          45
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
          70,
          810,
          160,
          20.0
         ],
         "text": "click to start audio",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          60,
          640.0,
          160,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-127",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          560,
          480,
          420,
          40.0
         ],
         "text": "EVOLVE \u2014 every N loops: rewrite some steps from the scale (60% ties) and re-roll growl, ratio, wobble rate + depth",
         "linecount": 2,
         "presentation": 1,
         "presentation_rect": [
          550,
          412,
          420,
          40.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-128",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          560,
          524,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          550,
          456,
          22,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-129",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          860,
          524,
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
         "id": "obj-130",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          940,
          524,
          140.0,
          22.0
         ],
         "text": "r av_jungle_evolve",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-131",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          590,
          526,
          40,
          20.0
         ],
         "text": "every",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          580,
          458,
          40,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-132",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          632,
          524,
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
          622,
          456,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-133",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          676,
          526,
          50,
          20.0
         ],
         "text": "loops \u00b7",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          666,
          458,
          50,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-134",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          730,
          524,
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
          720,
          456,
          40,
          22
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
          774,
          526,
          60,
          20.0
         ],
         "text": "changes",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          764,
          458,
          60,
          20.0
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
          860,
          550,
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
         "id": "obj-137",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          940,
          550,
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
         "id": "obj-138",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          560,
          780,
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
         "id": "obj-139",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          660,
          780,
          189.0,
          22.0
         ],
         "text": "r av_jungle_evolve_preset",
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
          560,
          550,
          66,
          20.0
         ],
         "text": "steady",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          550,
          482,
          66,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-141",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          570,
          40,
          22.0
         ],
         "text": "4 1",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          550,
          502,
          40,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-142",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          630,
          550,
          66,
          20.0
         ],
         "text": "drift",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          620,
          482,
          66,
          20.0
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
          630,
          570,
          40,
          22.0
         ],
         "text": "2 3",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          620,
          502,
          40,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-144",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          700,
          550,
          66,
          20.0
         ],
         "text": "restless",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          690,
          482,
          66,
          20.0
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
          700,
          570,
          40,
          22.0
         ],
         "text": "1 5",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          690,
          502,
          40,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-146",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          770,
          550,
          66,
          20.0
         ],
         "text": "wild",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          760,
          482,
          66,
          20.0
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
          770,
          570,
          40,
          22.0
         ],
         "text": "1 8",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          760,
          502,
          40,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-148",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          560,
          600,
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
         "id": "obj-149",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          626,
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
         "id": "obj-150",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 4,
         "patching_rect": [
          620,
          626,
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
         "id": "obj-151",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          690,
          626,
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
         "id": "obj-152",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          740,
          626,
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
         "id": "obj-153",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 5,
         "patching_rect": [
          740,
          652,
          91.0,
          22.0
         ],
         "text": "t b b b b b",
         "outlettype": [
          "bang",
          "bang",
          "bang",
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-154",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          678,
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
         "id": "obj-155",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          704,
          91.0,
          22.0
         ],
         "text": "pack 0. 0.6",
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
          560,
          730,
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
         "id": "obj-157",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          560,
          756,
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
         "id": "obj-158",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          720,
          730,
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
         "id": "obj-159",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          840,
          678,
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
         "id": "obj-160",
         "maxclass": "newobj",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          840,
          704,
          126.0,
          22.0
         ],
         "text": "scale 0 99 1. 6.",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-161",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          960,
          678,
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
         "id": "obj-162",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          960,
          704,
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
         "id": "obj-163",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          960,
          730,
          161.0,
          22.0
         ],
         "text": "loadmess 0.5 1. 1. 2.",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-164",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1000,
          740,
          360,
          60.0
         ],
         "text": "WOBBLE SEQ \u2014 rate per beat from a 4-beat pattern (Hz at 170 bpm: 1.42 = 1/2 \u00b7 2.83 = 1/4 \u00b7 5.67 = 1/8 \u00b7 8.5 = 1/8T \u00b7 11.33 = 1/16); LFO restarts each beat",
         "linecount": 3,
         "presentation": 1,
         "presentation_rect": [
          990,
          570.0,
          360,
          60.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-165",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          804,
          22,
          22
         ],
         "outlettype": [
          "int"
         ],
         "presentation": 1,
         "presentation_rect": [
          990,
          634.0,
          22,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-166",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1026,
          806,
          90,
          20.0
         ],
         "text": "auto wobble",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          1016,
          636.0,
          90,
          20.0
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
          1120,
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
         "id": "obj-168",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          1000,
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
         "id": "obj-169",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          1000,
          1026,
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
         "id": "obj-170",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          1052,
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
         "id": "obj-171",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          1000,
          1078,
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
         "id": "obj-172",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1080,
          1104,
          32.0,
          22.0
         ],
         "text": "0.",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-173",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 4,
         "patching_rect": [
          1000,
          1104,
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
         "id": "obj-174",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          1000,
          1130,
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
         "id": "obj-175",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1000,
          830,
          110,
          20.0
         ],
         "text": "steady",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          990,
          660.0,
          110,
          20.0
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
          1000,
          850,
          116,
          22.0
         ],
         "text": "2.83 2.83 2.83 2.83",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          990,
          680.0,
          116,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-177",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1120,
          830,
          110,
          20.0
         ],
         "text": "build",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          1110,
          660.0,
          110,
          20.0
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
          1120,
          850,
          116,
          22.0
         ],
         "text": "1.42 2.83 5.67 11.33",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          1110,
          680.0,
          116,
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
          1240,
          830,
          110,
          20.0
         ],
         "text": "talk",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          1230,
          660.0,
          110,
          20.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-180",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1240,
          850,
          116,
          22.0
         ],
         "text": "5.67 2.83 8.5 2.83",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          1230,
          680.0,
          116,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-181",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1000,
          874,
          110,
          20.0
         ],
         "text": "triplet",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          990,
          704.0,
          110,
          20.0
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
          1000,
          894,
          116,
          22.0
         ],
         "text": "8.5 8.5 5.67 8.5",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          990,
          724.0,
          116,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-183",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1120,
          874,
          110,
          20.0
         ],
         "text": "stutter",
         "linecount": 1,
         "presentation": 1,
         "presentation_rect": [
          1110,
          704.0,
          110,
          20.0
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
          1120,
          894,
          116,
          22.0
         ],
         "text": "11.33 5.67 11.33 2.83",
         "outlettype": [
          ""
         ],
         "presentation": 1,
         "presentation_rect": [
          1110,
          724.0,
          116,
          22.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-185",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1200,
          1000,
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
         "id": "obj-186",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          840,
          756,
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
         "id": "obj-187",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 6,
         "patching_rect": [
          840,
          782,
          105.0,
          22.0
         ],
         "text": "sel 0 1 2 3 4",
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
         "id": "obj-188",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          960,
          756,
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
         "id": "obj-189",
         "maxclass": "newobj",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          960,
          782,
          126.0,
          22.0
         ],
         "text": "scale 0 99 0. 1.",
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-190",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1426.0,
          10,
          300,
          60.0
         ],
         "text": "SAVED STATE \u2014 re-applied on load (recipes/max/state/jungle_bass.maxpat.json; recapture with state_capture.maxpat)",
         "linecount": 3
        }
       },
       {
        "box": {
         "id": "obj-191",
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
         "id": "obj-192",
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
         "id": "obj-193",
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
         "id": "obj-194",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          130,
          260,
          22.0
         ],
         "text": "9",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-195",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          156,
          260,
          22.0
         ],
         "text": "9",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-196",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          182,
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
         "id": "obj-197",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          208,
          260,
          22.0
         ],
         "text": "11",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-198",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          234,
          260,
          22.0
         ],
         "text": "52",
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
          1426.0,
          260,
          260,
          22.0
         ],
         "text": "0.4848",
         "outlettype": [
          ""
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
          1426.0,
          286,
          260,
          22.0
         ],
         "text": "4.283",
         "outlettype": [
          ""
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
          1426.0,
          312,
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
         "id": "obj-202",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
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
         "id": "obj-203",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          364,
          260,
          22.0
         ],
         "text": "1 13 0 18 21 4 0 0 0 21 3 0 0 0 0 0",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-204",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1426.0,
          390,
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
          "obj-27",
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
          "obj-27",
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
          "obj-31",
          0
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
          "obj-34",
          1
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
          "obj-35",
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
          "obj-28",
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
          "obj-27",
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
          "obj-38",
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
          "obj-36",
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
          "obj-40",
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
          "obj-41",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-41",
          1
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
          "obj-47",
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
          "obj-44",
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
          "obj-45",
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
          "obj-46",
          0
         ],
         "destination": [
          "obj-48",
          1
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
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-42",
          1
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
          "obj-53",
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
          "obj-54",
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
          "obj-51",
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
          "obj-55",
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
          "obj-56",
          0
         ],
         "destination": [
          "obj-58",
          1
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
          "obj-59",
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
          "obj-61",
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
          "obj-63",
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
          "obj-65",
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
          "obj-65",
          1
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
          "obj-70",
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
          "obj-70",
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
          "obj-69",
          1
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
          "obj-69",
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
          "obj-69",
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
          "obj-69",
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
          "obj-69",
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
          "obj-82",
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
          "obj-84",
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
          "obj-84",
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
          "obj-85",
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
          1
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
          "obj-87",
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
          "obj-89",
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
          "obj-85",
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
          "obj-89",
          0
         ],
         "destination": [
          "obj-91",
          1
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
          "obj-92",
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
          "obj-92",
          1
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
          "obj-93",
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
          "obj-94",
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
          "obj-98",
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
          "obj-98",
          1
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
          "obj-61",
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
          "obj-101",
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
          "obj-108",
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
          "obj-110",
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
          "obj-110",
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
          "obj-113",
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
          "obj-110",
          0
         ],
         "destination": [
          "obj-118",
          1
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
          "obj-118",
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
          "obj-120",
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
          "obj-105",
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
          "obj-122",
          0
         ],
         "destination": [
          "obj-123",
          1
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
          "obj-108",
          0
         ],
         "destination": [
          "obj-124",
          1
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
          "obj-125",
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
          "obj-128",
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
          "obj-128",
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
          "obj-132",
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
          "obj-134",
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
          "obj-132",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-138",
          1
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
          "obj-139",
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
          "obj-141",
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
          "obj-143",
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
          "obj-145",
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
          "obj-147",
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
          "obj-3",
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
          "obj-7",
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
          "obj-128",
          0
         ],
         "destination": [
          "obj-149",
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
          "obj-149",
          1
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
          "obj-150",
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
          "obj-151",
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
          "obj-151",
          1
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
          "obj-152",
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
          "obj-153",
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
          "obj-154",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-153",
          4
         ],
         "destination": [
          "obj-154",
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
          "obj-156",
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
          "obj-11",
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
          "obj-157",
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
          "obj-157",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-153",
          3
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
          "obj-63",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-153",
          2
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
          "obj-87",
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
          "obj-162",
          1
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
          "obj-165",
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
          "obj-168",
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
          "obj-169",
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
          "obj-170",
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
          "obj-170",
          1
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
          "obj-171",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-171",
          1
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
          "obj-69",
          1
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
          "obj-173",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-173",
          0
         ],
         "destination": [
          "obj-174",
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
          "obj-69",
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
          "obj-174",
          1
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
          "obj-174",
          1
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
          "obj-174",
          1
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
          "obj-174",
          1
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
          "obj-174",
          1
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
          "obj-153",
          1
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
          "obj-187",
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
          "obj-176",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-187",
          1
         ],
         "destination": [
          "obj-178",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-187",
          2
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
          "obj-187",
          3
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
          "obj-187",
          4
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
          "obj-153",
          0
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
          "obj-189",
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
          "obj-82",
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
          "obj-192",
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
          "obj-192",
          0
         ],
         "destination": [
          "obj-194",
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
          "obj-134",
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
          "obj-195",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-195",
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
          "obj-193",
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
          "obj-128",
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
          "obj-197",
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
          "obj-101",
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
          "obj-87",
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
          "obj-199",
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
          "obj-82",
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
          "obj-200",
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
          "obj-63",
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
          "obj-201",
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
          "obj-56",
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
          "obj-202",
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
          "obj-46",
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
          "obj-203",
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
          "obj-11",
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
          "obj-204",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-204",
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
   }
  ],
  "lines": []
 }
}
