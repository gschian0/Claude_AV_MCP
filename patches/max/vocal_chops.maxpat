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
