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
     "text": "DIGITAL SYMPHONY \u2014 the conductor on top runs everything; every instrument's panel below. Open this instead of the single patches (it runs one copy of each). Turn audio on with any speaker. Visuals: keys work in fullscreen (see the feedback panel).",
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
      1040,
      608.0
     ],
     "name": "conductor.maxpat",
     "varname": "conductor",
     "offset": [
      0.0,
      0.0
     ],
     "embed": 0,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1070,
      40,
      300,
      20.0
     ],
     "text": "SNAPSHOTS",
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
      1070,
      62,
      450,
      354.0
     ],
     "name": "snapshots.maxpat",
     "varname": "snapshots",
     "offset": [
      0.0,
      0.0
     ],
     "embed": 0,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1
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
     "id": "obj-7",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      10,
      712.0,
      1382,
      958.0
     ],
     "name": "jongly_chopper.maxpat",
     "varname": "jongly_chopper",
     "offset": [
      0.0,
      0.0
     ],
     "embed": 0,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      1690.0,
      300,
      20.0
     ],
     "text": "GEN FEEDBACK",
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
      10,
      1712.0,
      810,
      740.0
     ],
     "name": "gen_feedback.maxpat",
     "varname": "gen_feedback",
     "offset": [
      0.0,
      0.0
     ],
     "embed": 0,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      840,
      1690.0,
      300,
      20.0
     ],
     "text": "VOCAL CHOPS",
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
      840,
      1712.0,
      970,
      400.0
     ],
     "name": "vocal_chops.maxpat",
     "varname": "vocal_chops",
     "offset": [
      0.0,
      0.0
     ],
     "embed": 0,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      2472.0,
      300,
      20.0
     ],
     "text": "SINE TEST",
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
      10,
      2494.0,
      955,
      441.0
     ],
     "name": "sine_test.maxpat",
     "varname": "sine_test",
     "offset": [
      0.0,
      0.0
     ],
     "embed": 0,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      985,
      2472.0,
      300,
      20.0
     ],
     "text": "GLASS BELLS",
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
      985,
      2494.0,
      860,
      388.0
     ],
     "name": "glass_bells.maxpat",
     "varname": "glass_bells",
     "offset": [
      0.0,
      0.0
     ],
     "embed": 0,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1
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
      2955.0,
      300,
      20.0
     ],
     "text": "BASSLINE",
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
      2977.0,
      1300,
      610.0
     ],
     "name": "bassline.maxpat",
     "varname": "bassline",
     "offset": [
      0.0,
      0.0
     ],
     "embed": 0,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      10,
      3607.0,
      300,
      20.0
     ],
     "text": "JUNGLE BASS",
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "bpatcher",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      10,
      3629.0,
      1360,
      756.0
     ],
     "name": "jungle_bass.maxpat",
     "varname": "jungle_bass",
     "offset": [
      0.0,
      0.0
     ],
     "embed": 0,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "viewvisibility": 1
    }
   }
  ],
  "lines": []
 }
}
