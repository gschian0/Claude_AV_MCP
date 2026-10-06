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
   360.0,
   200.0
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
      10,
      320,
      40.0
     ],
     "text": "DIGITAL SYMPHONY \u2014 opening the set, starting the visuals, recalling the starred preset",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      10,
      10,
      320,
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
     "id": "obj-3",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20,
      200,
      70.0,
      22.0
     ],
     "text": "pcontrol",
     "outlettype": [
      ""
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
      90,
      320,
      22.0
     ],
     "text": "load digital_symphony.maxpat, load granular_side.maxpat",
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
      120,
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
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      200,
      150,
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
     "id": "obj-7",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      200,
      176,
      25.0,
      22.0
     ],
     "text": "0",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      190,
      62.0,
      25.0,
      22.0
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
      260,
      176,
      77.0,
      22.0
     ],
     "text": "delay 300",
     "outlettype": [
      "bang"
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
      260,
      202,
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
      88.0,
      25.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      200,
      230,
      91.0,
      22.0
     ],
     "text": "s av_render"
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380,
      150,
      84.0,
      22.0
     ],
     "text": "delay 3500",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380,
      176,
      46.0,
      22.0
     ],
     "text": "boot",
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      342,
      62.0,
      46.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      380,
      202,
      133.0,
      22.0
     ],
     "text": "s av_snapshot_cmd"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      260,
      50,
      20.0
     ],
     "text": "again:",
     "linecount": 1,
     "presentation": 1,
     "presentation_rect": [
      10,
      124.0,
      50,
      20.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      70,
      258,
      24,
      24
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      60,
      122.0,
      24,
      24
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
      120,
      260,
      90,
      40.0
     ],
     "text": "kick visuals:",
     "linecount": 2,
     "presentation": 1,
     "presentation_rect": [
      110,
      124.0,
      90,
      40.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      210,
      258,
      24,
      24
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      200,
      122.0,
      24,
      24
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
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
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
      "obj-5",
      1
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
      "obj-9",
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
      "obj-10",
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
      "obj-5",
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
      "obj-5",
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
      "obj-6",
      0
     ]
    }
   }
  ],
  "openinpresentation": 1
 }
}
