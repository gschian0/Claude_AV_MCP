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
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300,
      36,
      84.0,
      22.0
     ],
     "text": "delay 2000",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      300,
      10,
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
     "id": "obj-11",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380,
      10,
      46.0,
      22.0
     ],
     "text": "0, 1",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      370,
      12,
      46.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
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
     "id": "obj-13",
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
     "id": "obj-14",
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
     "id": "obj-15",
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
     "id": "obj-16",
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
     "id": "obj-17",
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
     "id": "obj-18",
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
     "id": "obj-19",
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
     "id": "obj-20",
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
     "id": "obj-21",
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
     "id": "obj-22",
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
     "id": "obj-23",
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
     "id": "obj-24",
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
     "id": "obj-25",
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
     "id": "obj-26",
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
     "id": "obj-27",
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
     "id": "obj-28",
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
     "id": "obj-29",
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
     "id": "obj-30",
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
     "id": "obj-31",
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
     "id": "obj-32",
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
     "id": "obj-33",
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
     "id": "obj-34",
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
     "id": "obj-35",
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
     "id": "obj-36",
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
     "id": "obj-37",
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
     "id": "obj-38",
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
     "id": "obj-39",
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
     "id": "obj-40",
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
     "id": "obj-41",
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
     "id": "obj-42",
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
     "id": "obj-43",
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
     "id": "obj-44",
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
     "id": "obj-45",
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
     "id": "obj-46",
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
     "id": "obj-47",
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
     "id": "obj-48",
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
     "id": "obj-49",
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
     "id": "obj-50",
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
     "id": "obj-51",
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
     "id": "obj-52",
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
     "id": "obj-53",
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
     "id": "obj-54",
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
     "id": "obj-55",
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
     "id": "obj-56",
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
     "id": "obj-57",
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
     "id": "obj-58",
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
     "id": "obj-59",
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
     "id": "obj-60",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      140,
      860,
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
     "id": "obj-61",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      140,
      912,
      91.0,
      22.0
     ],
     "text": "clip 0.5 1.",
     "outlettype": [
      "float"
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
     "id": "obj-63",
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
     "id": "obj-64",
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
     "id": "obj-65",
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
     "id": "obj-66",
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
     "id": "obj-67",
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
     "id": "obj-68",
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
     "id": "obj-69",
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
     "id": "obj-70",
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
     "id": "obj-71",
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
     "id": "obj-72",
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
     "id": "obj-73",
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
     "id": "obj-74",
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
     "id": "obj-75",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      260,
      938,
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
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      260,
      964,
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
     "id": "obj-77",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      330,
      938,
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
     "id": "obj-78",
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
     "id": "obj-79",
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
     "id": "obj-80",
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
     "id": "obj-81",
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
     "id": "obj-82",
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
     "id": "obj-83",
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
     "id": "obj-84",
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
     "id": "obj-85",
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
     "id": "obj-86",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      380,
      938,
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
     "id": "obj-87",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      380,
      964,
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
     "id": "obj-88",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      450,
      938,
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
     "id": "obj-89",
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
     "id": "obj-90",
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
     "id": "obj-91",
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
     "id": "obj-92",
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
     "id": "obj-93",
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
     "id": "obj-94",
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
     "id": "obj-95",
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
     "id": "obj-96",
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
     "id": "obj-97",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      500,
      938,
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
     "id": "obj-98",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      500,
      964,
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
     "id": "obj-99",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      570,
      938,
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
     "id": "obj-100",
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
     "id": "obj-101",
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
     "id": "obj-102",
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
     "id": "obj-103",
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
     "id": "obj-104",
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
     "id": "obj-105",
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
     "id": "obj-106",
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
     "id": "obj-107",
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
     "id": "obj-108",
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
     "id": "obj-109",
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
     "id": "obj-110",
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
     "id": "obj-111",
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
     "id": "obj-112",
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
     "id": "obj-113",
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
     "id": "obj-114",
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
     "id": "obj-115",
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
     "id": "obj-116",
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
     "id": "obj-117",
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
     "id": "obj-118",
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
     "id": "obj-119",
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
     "id": "obj-120",
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
     "id": "obj-121",
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
     "id": "obj-122",
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
     "id": "obj-123",
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
     "id": "obj-124",
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
     "id": "obj-125",
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
     "id": "obj-126",
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
     "id": "obj-127",
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
     "id": "obj-128",
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
     "id": "obj-129",
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
     "id": "obj-130",
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
     "id": "obj-131",
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
     "id": "obj-132",
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
     "id": "obj-133",
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
     "id": "obj-134",
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
     "id": "obj-135",
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
     "id": "obj-136",
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
     "id": "obj-137",
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
     "id": "obj-138",
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
     "id": "obj-139",
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
     "id": "obj-140",
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
     "id": "obj-141",
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
     "id": "obj-142",
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
     "id": "obj-143",
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
     "id": "obj-144",
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
     "id": "obj-145",
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
     "id": "obj-146",
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
     "id": "obj-147",
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
     "id": "obj-148",
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
     "id": "obj-149",
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
     "id": "obj-150",
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
     "id": "obj-151",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      900,
      700,
      77.0,
      22.0
     ],
     "text": "r av_grab",
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
      900,
      726,
      147.0,
      22.0
     ],
     "text": "prepend exportimage",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900,
      752,
      84.0,
      22.0
     ],
     "text": "append png",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      900,
      778,
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
     "id": "obj-155",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1060,
      700,
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
     "id": "obj-156",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1060,
      726,
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
     "id": "obj-157",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1100,
      726,
      74.0,
      22.0
     ],
     "text": "enable 1",
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
     "numoutlets": 2,
     "patching_rect": [
      1100,
      752,
      224.0,
      22.0
     ],
     "text": "jit.gl.asyncread fbw @enable 0",
     "outlettype": [
      "jit_matrix",
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
      1060,
      778,
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
     "id": "obj-160",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1060,
      804,
      63.0,
      22.0
     ],
     "text": "t b b l",
     "outlettype": [
      "bang",
      "bang",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      900,
      830,
      238.0,
      22.0
     ],
     "text": "jit.matrix avgrab 4 char 192 108",
     "outlettype": [
      "jit_matrix",
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
      1060,
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
     "id": "obj-163",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1100,
      856,
      74.0,
      22.0
     ],
     "text": "enable 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-164",
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
     "id": "obj-165",
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
     "id": "obj-166",
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
     "id": "obj-167",
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
     "id": "obj-168",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1364.0,
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
     "id": "obj-169",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-170",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-171",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1444.0,
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
     "id": "obj-172",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-173",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-174",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-175",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-176",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-177",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-178",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-179",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
     "id": "obj-180",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1364.0,
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
      "obj-10",
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
      "obj-11",
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
      "obj-12",
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
      "obj-17",
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
      "obj-18",
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
      "obj-23",
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
      "obj-27",
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
      "obj-22",
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
      "obj-24",
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
      "obj-20",
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
      "obj-20",
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
      "obj-22",
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
      "obj-21",
      1
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
      "obj-34",
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
      "obj-21",
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
      "obj-22",
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
      "obj-22",
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
      "obj-22",
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
      "obj-22",
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
      "obj-22",
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
      "obj-22",
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
      "obj-22",
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
      "obj-22",
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
      "obj-54",
      14
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
      "obj-55",
      1
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
      "obj-55",
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
      "obj-22",
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
      "obj-55",
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
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
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
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      3
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
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      4
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
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      5
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
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-68",
      1
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
      "obj-67",
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
      "obj-22",
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
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      1
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
      "obj-22",
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
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-87",
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
      "obj-87",
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
      "obj-90",
      1
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
      "obj-93",
      1
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
      "obj-94",
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
      "obj-93",
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
      "obj-89",
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
      "obj-94",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      6
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
      "obj-68",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      7
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
      "obj-68",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      8
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
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      9
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
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      10
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
      "obj-90",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      11
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
      "obj-90",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      12
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
      1
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
      "obj-22",
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
      "obj-54",
      13
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
      "obj-110",
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
      "obj-109",
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
      "obj-71",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-109",
      2
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
      "obj-82",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-109",
      3
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
      "obj-93",
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
      "obj-117",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      15
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
      "obj-121",
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
      "obj-124",
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
      "obj-127",
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
      "obj-117",
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
      "obj-128",
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
      "obj-120",
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
      "obj-22",
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
      "obj-133",
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
      "obj-138",
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
      "obj-22",
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
      "obj-139",
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
      "obj-140",
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
      "obj-140",
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
      "obj-141",
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
      "obj-142",
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
      "obj-123",
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
      "obj-145",
      0
     ],
     "destination": [
      "obj-146",
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
      "obj-147",
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
      "obj-22",
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
      "obj-153",
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
      "obj-151",
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
      "obj-155",
      1
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
      "obj-158",
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
      "obj-159",
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
      "obj-159",
      1
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
      "obj-160",
      1
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
      "obj-161",
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
      "obj-159",
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
      "obj-158",
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
      "obj-6",
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
      "obj-2",
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
      "obj-26",
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
      "obj-22",
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
      "obj-169",
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
      "obj-170",
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
      "obj-126",
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
      "obj-123",
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
      "obj-120",
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
      "obj-175",
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
      "obj-117",
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
      "obj-176",
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
      "obj-49",
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
      "obj-177",
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
      "obj-30",
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
      "obj-178",
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
      "obj-26",
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
      "obj-179",
      0
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
      "obj-6",
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
      "obj-2",
      0
     ]
    }
   }
  ],
  "openinpresentation": 1
 }
}
