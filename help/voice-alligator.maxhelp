{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 87.0, 1212.0, 679.0 ],
        "statusbarvisible": 1,
        "showrootpatcherontab": 0,
        "showontab": 0,
        "isolateaudio": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1212.0, 653.0 ],
                        "subpatcher_template": "Default Max 7",
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 14.457142857142854,
                                    "id": "obj-12",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 56.0, 277.0, 55.0 ],
                                    "text": "Here we've set up a duophonic keyboard that has 2 times the same octave, but each octave plays on it's own stream."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 24.0,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 118.0, 33.0 ],
                                    "text": "Streams 2",
                                    "underline": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "stop" ],
                                    "patching_rect": [ 510.0, 76.0, 38.0, 22.0 ],
                                    "text": "t stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 510.0, 48.0, 34.0, 22.0 ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.16078431372549, 0.682352941176471, 1.0, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 637.0, 453.0, 118.0, 22.0 ],
                                    "text": "s example-2-params"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 148.0, 375.0, 119.0, 22.0 ],
                                    "text": "77 0"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 0.34 ],
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 679.0, 202.0, 108.0, 20.0 ],
                                    "text": "<- stream 2 notes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 231.0, 206.0, 104.0, 20.0 ],
                                    "text": "stream 1 notes->"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 335.0, 267.0, 32.0, 22.0 ],
                                    "text": "+ 72"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 740.0, 127.0, 314.0, 270.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 2,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 134.0, 159.0, 753.0, 531.0 ],
                                                        "subpatcher_template": "Default Max 7",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 205.0, 162.0, 29.5, 22.0 ],
                                                                    "text": "$2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 205.0, 130.0, 72.0, 22.0 ],
                                                                    "text": "patcherargs"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 237.0, 37.0, 150.0, 20.0 ],
                                                                    "text": "urn-jb by "
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-29",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 140.235291, 314.0, 127.0, 22.0 ],
                                                                    "text": "…then toggle offset.",
                                                                    "textcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-28",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 176.5, 284.0, 179.0, 22.0 ],
                                                                    "text": "If the new value is a repeat…",
                                                                    "textcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-27",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 127.0, 376.0, 137.0, 22.0 ],
                                                                    "text": "constrain to urn range",
                                                                    "textcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-26",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 237.235291, 61.0, 88.0, 22.0 ],
                                                                    "text": "John Bischoff",
                                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-24",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 17.0, 7.0, 120.0, 22.0 ],
                                                                    "text": "bang for new value",
                                                                    "textcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-21",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 43.0, 401.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-18",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 43.0, 374.0, 29.5, 24.0 ],
                                                                    "text": "%"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 43.0, 344.0, 58.0, 24.0 ],
                                                                    "text": "+"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-16",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 118.0, 284.0, 56.0, 24.0 ],
                                                                    "text": "select 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-15",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 118.0, 314.0, 20.0, 20.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-13",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 118.0, 256.0, 56.0, 24.0 ],
                                                                    "text": "=="
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-8",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "int", "int", "int" ],
                                                                    "patching_rect": [ 43.0, 182.0, 94.0, 24.0 ],
                                                                    "text": "t i i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-7",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "bang" ],
                                                                    "patching_rect": [ 43.0, 129.0, 115.0, 24.0 ],
                                                                    "text": "urn"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-6",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 74.0, 93.0, 71.0, 24.0 ],
                                                                    "text": "clear, bang"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-3",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 43.0, 28.0, 25.0, 25.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "source": [ "obj-13", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 1 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-18", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "midpoints": [ 83.5, 123.0, 52.5, 123.0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "midpoints": [ 148.5, 163.0, 164.5, 163.0, 164.5, 82.0, 83.5, 82.0 ],
                                                                    "source": [ "obj-7", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-8", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 1 ],
                                                                    "source": [ "obj-8", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 193.0, 122.0, 66.0, 22.0 ],
                                                    "text": "p urn-jb 24"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 2,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 134.0, 159.0, 451.0, 443.0 ],
                                                        "subpatcher_template": "Default Max 7",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 205.0, 162.0, 29.5, 22.0 ],
                                                                    "text": "$2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 205.0, 130.0, 72.0, 22.0 ],
                                                                    "text": "patcherargs"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 237.0, 37.0, 150.0, 20.0 ],
                                                                    "text": "urn-jb by "
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-29",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 140.235291, 314.0, 127.0, 22.0 ],
                                                                    "text": "…then toggle offset.",
                                                                    "textcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-28",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 176.5, 284.0, 179.0, 22.0 ],
                                                                    "text": "If the new value is a repeat…",
                                                                    "textcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-27",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 127.0, 376.0, 137.0, 22.0 ],
                                                                    "text": "constrain to urn range",
                                                                    "textcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-26",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 237.235291, 61.0, 88.0, 22.0 ],
                                                                    "text": "John Bischoff",
                                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-24",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 17.0, 7.0, 120.0, 22.0 ],
                                                                    "text": "bang for new value",
                                                                    "textcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-21",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 43.0, 401.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-18",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 43.0, 374.0, 29.5, 24.0 ],
                                                                    "text": "%"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 43.0, 344.0, 58.0, 24.0 ],
                                                                    "text": "+"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-16",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 118.0, 284.0, 56.0, 24.0 ],
                                                                    "text": "select 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-15",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 118.0, 314.0, 20.0, 20.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-13",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 118.0, 256.0, 56.0, 24.0 ],
                                                                    "text": "=="
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-8",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "int", "int", "int" ],
                                                                    "patching_rect": [ 43.0, 182.0, 94.0, 24.0 ],
                                                                    "text": "t i i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-7",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "bang" ],
                                                                    "patching_rect": [ 43.0, 129.0, 115.0, 24.0 ],
                                                                    "text": "urn"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Lato",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-6",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 74.0, 93.0, 71.0, 24.0 ],
                                                                    "text": "clear, bang"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-3",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 43.0, 28.0, 25.0, 25.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "source": [ "obj-13", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 1 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-18", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "midpoints": [ 83.5, 123.0, 52.5, 123.0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "midpoints": [ 148.5, 163.0, 164.5, 163.0, 164.5, 82.0, 83.5, 82.0 ],
                                                                    "source": [ "obj-7", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-8", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 1 ],
                                                                    "source": [ "obj-8", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 51.0, 128.0, 66.0, 22.0 ],
                                                    "text": "p urn-jb 24"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 193.0, 152.0, 37.0, 22.0 ],
                                                    "text": "* 350"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 51.0, 75.0, 32.0, 22.0 ],
                                                    "text": "t b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 193.0, 188.279296875, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-99",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 50.0, 39.999999875, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-100",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 51.0, 188.279296875, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-2", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-100", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-99", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 335.0, 72.0, 59.0, 22.0 ],
                                    "text": "p random"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 335.0, 48.0, 63.0, 22.0 ],
                                    "text": "metro 700"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 335.0, 127.0, 336.0, 22.0 ],
                                    "text": "makenote 30 3520"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.18 ],
                                    "id": "obj-60",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 411.0, 322.0, 272.0, 33.0 ],
                                    "text": "<if a note is higher than MIDI pitch 83, \ntranspose an octave down and set it to stream 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 199.0, 427.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 85.0, 331.0, 59.0, 22.0 ],
                                                    "text": "pack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 85.0, 300.0, 29.5, 22.0 ],
                                                    "text": "- 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 85.0, 259.0, 59.0, 22.0 ],
                                                    "text": "unpack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 52.0, 103.0, 29.5, 22.0 ],
                                                    "text": "$1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 52.0, 209.0, 52.0, 22.0 ],
                                                    "text": "gate 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 52.0, 173.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 52.0, 132.0, 32.0, 22.0 ],
                                                    "text": "> 83"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 36.0, 67.0, 29.5, 22.0 ],
                                                    "text": "t l l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-56",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 36.0, 18.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-57",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 52.0, 291.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-58",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 85.0, 362.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 1 ],
                                                    "source": [ "obj-1", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-13", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-16", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 335.0, 321.0, 70.0, 22.0 ],
                                    "text": "p split at 83"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 386.0, 359.0, 59.0, 22.0 ],
                                    "text": "append 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 335.0, 295.0, 336.0, 22.0 ],
                                    "text": "pack i i"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "bgcolor": [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 0.34 ],
                                    "id": "obj-7",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 504.0, 163.0, 167.0, 98.0 ],
                                    "proportion": 0.5
                                }
                            },
                            {
                                "box": {
                                    "hkeycolor": [ 0.0, 0.082352941176471, 1.0, 1.0 ],
                                    "id": "obj-1",
                                    "maxclass": "kslider",
                                    "mode": 1,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "offset": 0,
                                    "outlettype": [ "int", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 335.0, 163.0, 336.0, 98.0 ],
                                    "range": 24,
                                    "whitekeycolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 335.0, 472.0, 34.0, 34.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
                                    "patching_rect": [ 335.0, 430.0, 272.0, 22.0 ],
                                    "text": "poly~ alligator-example-voice 4 @args example-2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 335.0, 396.0, 148.0, 22.0 ],
                                    "text": "voice-alligator 4 @mono 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 335.0, 19.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-40",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 440.0, 12.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-93",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 471.0, 472.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 359.0, 19.0, 88.0, 25.0 ],
                                    "text": "start metro"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 367.0, 477.0, 110.0, 25.0 ],
                                    "text": "Turn on audio"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 87.0, 1372.0, 779.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "linecount": 5,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 388.0, 18.0, 382.0, 74.0 ],
                                                    "text": "< we picked different sizes for these scales so that no note will go over 20kHz. If you take a pelog_me3 scale for example, and define it all the way up to index 128, index 128 will be 151kHz, way to high. So by setting the scale_def message to have 109 indexes only we make sure that the synth gets reasonable frequencies."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 345.0, 172.0, 136.0, 20.0 ],
                                                    "text": "<optional argument size"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 567.0, 154.0, 80.0, 20.0 ],
                                                    "text": "<default size "
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                    "bgcolor2": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                    "bgfillcolor_angle": 270.0,
                                                    "bgfillcolor_autogradient": 0.0,
                                                    "bgfillcolor_color": [ 0.349019607843137, 0.145098039215686, 1.0, 0.32 ],
                                                    "bgfillcolor_color1": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                                                    "bgfillcolor_proportion": 0.5,
                                                    "bgfillcolor_type": "color",
                                                    "fontname": "Lato",
                                                    "gradient": 1,
                                                    "id": "obj-13",
                                                    "linecount": 3,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 15.0, 660.0, 4450.0, 52.0 ],
                                                    "text": "scale_def 1 0.034669 2 0.040116 3 0.046418 4 0.053711 5 0.059923 6 0.069338 7 0.080231 8 0.092836 9 0.107422 10 0.119846 11 0.138675 12 0.160462 13 0.185673 14 0.214844 15 0.239692 16 0.27735 17 0.320925 18 0.371345 19 0.429688 20 0.479384 21 0.5547 22 0.64185 23 0.742691 24 0.859375 25 0.958769 26 1.109401 27 1.283699 28 1.485381 29 1.71875 30 1.917537 31 2.218802 32 2.567398 33 2.970763 34 3.4375 35 3.835074 36 4.437603 37 5.134796 38 5.941526 39 6.875 40 7.670148 41 8.875207 42 10.269593 43 11.883051 44 13.75 45 15.340296 46 17.750414 47 20.539186 48 23.766102 49 27.5 50 30.680593 51 35.5 52 41.078371 53 47.532204 54 55. 55 61.361185 56 71.001656 57 82.156743 58 95.064408 59 110. 60 122.722371 61 142.003312 62 164.313486 63 190.128816 64 220. 65 245.444741 66 284.006623 67 328.626971 68 380.257633 69 440. 70 490.889483 71 568.013246 72 657.253942 73 760.515266 74 880. 75 981.778965 76 1136.026492 77 1314.507885 78 1521.030531 79 1760. 80 1963.55793 81 2272.052984 82 2629.015769 83 3042.061063 84 3520. 85 3927.115861 86 4544.105968 87 5258.031539 88 6084.122125 89 7040. 90 7854.231722 91 9088.211937 92 10516.063077 93 12168.24425 94 14080. 95 15708.463444 96 18176.423874 97 21032.126155 98 24336.4885 99 28160. 100 31416.926888 101 36352.847748 102 42064.252309 103 48672.977 104 56320. 105 62833.853776 106 72705.695496 107 84128.504618 108 97345.954 109 112640. 110 125667.707551 111 145411.390992 112 168257.009236 113 194691.908 114 225280. 115 251335.415102 116 290822.781983 117 336514.018472 118 389383.816 119 450560. 120 502670.830204 121 581645.563966 122 673028.036945 123 778767.632 124 901120. 125 1005341.660408 126 1163291.127932 127 1346056.073889 128 1557535.264001",
                                                    "textcolor": [ 0.396078431372549, 0.0, 0.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "int", "int", "int" ],
                                                    "patching_rect": [ 42.0, 231.0, 496.0, 22.0 ],
                                                    "text": "t i i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 298.6666666666667, 154.0, 55.0, 22.0 ],
                                                    "text": "zl slice 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 66.0, 584.0, 29.0, 22.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.5, 93.0, 63.0, 22.0 ],
                                                    "text": "13-31 141"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 278.5, 64.0, 82.0, 22.0 ],
                                                    "text": "ps-dorian 106"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.5, 36.0, 78.0, 22.0 ],
                                                    "text": "balafon6 108"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 279.5, 10.0, 91.0, 22.0 ],
                                                    "text": "pelog_me3 108"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 519.0, 315.0, 29.5, 22.0 ],
                                                    "text": "- 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 519.0, 277.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 74.0, 208.0, 30.0, 20.0 ],
                                                    "text": "size"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 42.0, 207.0, 29.5, 22.0 ],
                                                    "text": "i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 280.5, 376.0, 29.5, 22.0 ],
                                                    "text": "* 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 519.0, 375.0, 162.0, 22.0 ],
                                                    "text": "prepend scalearray_maxsize"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 214.0, 542.0, 123.0, 20.0 ],
                                                    "text": "^scale def mode freq "
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-180",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 197.0, 518.0, 107.0, 22.0 ],
                                                    "text": "scale_def_mode 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-178",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 66.0, 492.0, 150.0, 22.0 ],
                                                    "text": "t l b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-68",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 66.0, 518.0, 107.0, 22.0 ],
                                                    "text": "prepend scale_def"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 298.6666666666667, 307.0, 114.0, 22.0 ],
                                                    "text": "prepend scalename"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 171.0, 376.0, 32.0, 22.0 ],
                                                    "text": "mtof"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-71",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 90.0, 307.0, 29.5, 22.0 ],
                                                    "text": "t i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-69",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "bang", "", "int", "zlclear" ],
                                                    "patching_rect": [ 42.0, 121.0, 789.0, 22.0 ],
                                                    "text": "t b l 128 zlclear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 66.0, 459.0, 173.0, 22.0 ],
                                                    "text": "zl group 256 @zlmaxsize 4096"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-64",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "int" ],
                                                    "patching_rect": [ 42.0, 259.0, 67.0, 22.0 ],
                                                    "text": "uzi 128"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-52",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 42.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-53",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 66.0, 622.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 1 ],
                                                    "midpoints": [ 344.1666666666667, 183.0, 62.0, 183.0 ],
                                                    "source": [ "obj-12", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "midpoints": [ 528.5, 569.0, 75.5, 569.0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-180", 0 ],
                                                    "source": [ "obj-178", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 0 ],
                                                    "source": [ "obj-178", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "midpoints": [ 206.5, 552.0, 75.5, 552.0 ],
                                                    "source": [ "obj-180", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-178", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 1 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-69", 0 ],
                                                    "midpoints": [ 289.0, 33.0, 84.0, 33.0, 84.0, 108.0, 51.5, 108.0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-69", 0 ],
                                                    "midpoints": [ 290.0, 117.0, 51.5, 117.0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-4", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 0 ],
                                                    "source": [ "obj-4", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-69", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-69", 0 ],
                                                    "midpoints": [ 290.0, 60.0, 84.0, 60.0, 84.0, 108.0, 51.5, 108.0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-64", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-71", 0 ],
                                                    "source": [ "obj-64", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-68", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-69", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 821.5, 444.0, 75.5, 444.0 ],
                                                    "source": [ "obj-69", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 1 ],
                                                    "midpoints": [ 564.8333333333334, 197.0, 62.0, 197.0 ],
                                                    "source": [ "obj-69", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-69", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-71", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-71", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-69", 0 ],
                                                    "midpoints": [ 288.0, 87.0, 51.5, 87.0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 618.0, 505.0, 118.0, 22.0 ],
                                    "text": "p \"scale name, mtof\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 618.0, 481.0, 82.0, 22.0 ],
                                    "text": "05-19"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-70",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 637.0, 409.0, 153.0, 22.0 ],
                                    "text": "glidetime 150, release 500"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 618.0, 375.0, 58.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 2 ],
                                    "source": [ "obj-101", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 1 ],
                                    "midpoints": [ 471.0, 459.5, 613.921875, 459.5, 613.921875, 393.5, 473.5, 393.5 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 1 ],
                                    "order": 0,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "order": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 627.5, 539.4375, 322.0, 539.4375, 322.0, 389.1015625, 344.5, 389.1015625 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 0,
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-59", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "order": 1,
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-65", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 888.0, 199.0, 82.0, 22.0 ],
                    "text": "p \"Streams 2\""
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 113.0, 1212.0, 653.0 ],
                        "subpatcher_template": "Default Max 7",
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 675.0, 107.0, 137.0, 20.0 ],
                                    "text": "randomize +- semitones"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 626.0, 106.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 677.0, 83.0, 66.0, 20.0 ],
                                    "presentation_linecount": 2,
                                    "text": "duration %"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 676.0, 59.0, 69.0, 20.0 ],
                                    "text": "tempo bpm"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "number",
                                    "minimum": 1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 626.0, 58.0, 50.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 80 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "attr": "basefreq",
                                    "id": "obj-57",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 393.0, 411.0, 112.00000333786011, 22.0 ],
                                    "text_width": 68.33333536982536
                                }
                            },
                            {
                                "box": {
                                    "attr": "active",
                                    "id": "obj-56",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 393.0, 381.0, 81.0, 22.0 ],
                                    "text_width": 57.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 525.0, 296.0, 73.0, 22.0 ],
                                    "text": "endhold last"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 449.0, 296.0, 74.0, 22.0 ],
                                    "presentation_linecount": 2,
                                    "text": "endhold first"
                                }
                            },
                            {
                                "box": {
                                    "attr": "sustain",
                                    "id": "obj-52",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 393.0, 235.0, 80.99998581409454, 22.0 ],
                                    "text_width": 59.33333510160446
                                }
                            },
                            {
                                "box": {
                                    "attr": "steal",
                                    "id": "obj-48",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 393.0, 349.0, 81.0, 22.0 ],
                                    "text_width": 57.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 393.0, 296.0, 51.0, 22.0 ],
                                    "text": "endhold"
                                }
                            },
                            {
                                "box": {
                                    "attr": "hold",
                                    "id": "obj-43",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 393.0, 267.0, 81.0, 22.0 ],
                                    "text_width": 57.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "steal_hold",
                                    "id": "obj-40",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 393.0, 320.0, 100.66666966676712, 22.0 ],
                                    "text_width": 79.00000235438347
                                }
                            },
                            {
                                "box": {
                                    "attr": "mono_steals_release",
                                    "id": "obj-28",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 393.0, 172.0, 161.0, 22.0 ],
                                    "text_width": 139.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "mono_note_priority",
                                    "id": "obj-25",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 393.0, 203.0, 269.0, 22.0 ],
                                    "text_width": 131.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "mono",
                                    "id": "obj-3",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 142.0, 87.0, 22.0 ],
                                    "text_width": 64.0
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                                    "bgoncolor": [ 0.850980392156863, 0.803921568627451, 1.0, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-8",
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 52.0, 231.5, 209.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 115.5, 184.0, 144.0, 27.0 ],
                                    "rounded": 5.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_meter_bg"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_gain_reduction_line_color"
                                        },
                                        "textovercolor": {
                                            "expression": "themecolor.live_gain_reduction_line_color"
                                        }
                                    },
                                    "style": "igk",
                                    "text": "Advanced Voice Design Tutorial",
                                    "textcolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                                    "texton": "Advanced Voice Design Tutorial",
                                    "textoncolor": [ 0.929411764705882, 0.956862745098039, 0.964705882352941, 1.0 ],
                                    "textovercolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 753.0, 531.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-36",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 353.0, 527.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 277.0, 77.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 353.0, 501.0, 115.0, 22.0 ],
                                                    "text": "prepend loadunique"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 353.0, 440.0, 222.0, 22.0 ],
                                                    "text": "append alligator-advanced-voice-tutorial.maxpat"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 352.0, 400.0, 85.0, 22.0 ],
                                                    "text": "append extras"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 353.0, 475.0, 129.0, 22.0 ],
                                                    "text": "tosymbol @separator /"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 352.0, 373.0, 45.0, 22.0 ],
                                                    "text": "zl slice"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 394.0, 340.0, 29.5, 22.0 ],
                                                    "text": "- 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 394.0, 308.0, 37.0, 22.0 ],
                                                    "text": "zl len"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 352.0, 276.0, 61.0, 22.0 ],
                                                    "text": "t l l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 352.0, 172.0, 143.0, 22.0 ],
                                                    "text": "fromsymbol @separator /"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 89.0, 220.0, 469.0, 35.0 ],
                                                    "text": "\"Macintosh HD:\" Users eule Documents \"Max 9\" Packages voice-alligator-package help"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 277.0, 104.0, 32.0, 22.0 ],
                                                    "text": "path"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 277.0, 133.0, 67.0, 22.0 ],
                                                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                                                    "text": "thispatcher"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 277.0, 36.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-11", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 1 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-2", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 147.0, 264.5, 18.0, 22.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 147.0, 284.5, 51.0, 22.0 ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 313.0, 490.0, 35.0, 22.0 ],
                                    "text": "open"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                                    "bgoncolor": [ 0.850980392156863, 0.803921568627451, 1.0, 1.0 ],
                                    "fontsize": 14.0,
                                    "hidden": 1,
                                    "id": "obj-4",
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 105.0, 200.5, 102.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 160.5, 229.0, 144.0, 27.0 ],
                                    "rounded": 5.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_meter_bg"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_gain_reduction_line_color"
                                        },
                                        "textovercolor": {
                                            "expression": "themecolor.live_gain_reduction_line_color"
                                        }
                                    },
                                    "style": "igk",
                                    "text": "Forum",
                                    "textcolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                                    "texton": "Youtube Videos",
                                    "textoncolor": [ 0.929411764705882, 0.956862745098039, 0.964705882352941, 1.0 ],
                                    "textovercolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 753.0, 531.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 100.0, 311.0, 22.0 ],
                                                    "text": "https://cycling74.com/forums/voice-alligator-v100-release"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 130.0, 129.0, 35.0 ],
                                                    "text": ";\rmax launchbrowser $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-14",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 147.0, 236.5, 19.0, 22.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                                    "bgoncolor": [ 0.850980392156863, 0.803921568627451, 1.0, 1.0 ],
                                    "fontsize": 14.0,
                                    "hidden": 1,
                                    "id": "obj-31",
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 105.0, 169.5, 102.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 145.5, 214.0, 144.0, 27.0 ],
                                    "rounded": 5.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_meter_bg"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_gain_reduction_line_color"
                                        },
                                        "textovercolor": {
                                            "expression": "themecolor.live_gain_reduction_line_color"
                                        }
                                    },
                                    "style": "igk",
                                    "text": "Youtube",
                                    "textcolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                                    "texton": "Youtube Videos",
                                    "textoncolor": [ 0.929411764705882, 0.956862745098039, 0.964705882352941, 1.0 ],
                                    "textovercolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 36.0, 78.0, 753.0, 531.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 100.0, 447.0, 22.0 ],
                                                    "text": "https://www.youtube.com/playlist?list=PLYWRknyFqovPvc7j4oG7CuX2z2M7btPob"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 130.0, 129.0, 35.0 ],
                                                    "text": ";\rmax launchbrowser $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-14",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 147.0, 202.5, 19.0, 22.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 709.0, 145.0, 40.0, 22.0 ],
                                    "text": "active"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 354.0, 575.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 39.783562610956935,
                                    "id": "obj-59",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 260.0, 51.0 ],
                                    "text": "voice-alligator"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-60",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 68.0, 207.0, 22.0 ],
                                    "text": "voice-allocation tool for poly~"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 84.0, 131.0, 896.0, 620.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 227.0, 129.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.5, 219.0, 32.0, 22.0 ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-56",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 126.0, 169.0, 29.5, 22.0 ],
                                                    "text": "0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 169.0, 29.5, 22.0 ],
                                                    "text": "1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 126.0, 137.0, 41.0, 22.0 ],
                                                    "text": "sel 32"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 50.0, 137.0, 41.0, 22.0 ],
                                                    "text": "sel 32"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "int", "int", "int" ],
                                                    "patching_rect": [ 50.0, 100.0, 50.5, 22.0 ],
                                                    "text": "key"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "int", "int", "int" ],
                                                    "patching_rect": [ 126.0, 100.0, 50.5, 22.0 ],
                                                    "text": "keyup"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-57",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 82.0, 251.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 1 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 1 ],
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 709.0, 176.0, 69.0, 22.0 ],
                                    "text": "p spacekey"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 615.0, 95.0, 34.0, 22.0 ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 615.0, 58.0, 33.0, 22.0 ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 358.0, 112.0, 252.0, 22.0 ],
                                    "text": "pack i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 803.0, 523.0, 60.0, 20.0 ],
                                    "text": "glide time"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 811.0, 544.0, 104.0, 22.0 ],
                                    "text": "prepend glidetime"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 811.0, 506.0, 44.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 50 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox",
                                            "parameter_mmax": 3000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.numbox",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "varname": "live.numbox"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 84.0, 131.0, 325.0, 576.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 229.0, 279.0, 60.0, 22.0 ],
                                                    "text": "scale_def"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 22.0, 66.0, 226.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "linecount": 29,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 98.0, 104.0, 397.0 ],
                                                    "text": "scale_def 38 90. 39 180. 40 270. 41 360. 42 450. 43 540. 44 630. 45 720. 46 810. 47 900. 48 990. 49 1080. 50 1170. 51 1260. 52 1350. 53 1440. 54 1530. 55 1620. 56 1710. 57 1800. 58 1890. 59 1980. 60 2070. 61 2160. 62 2250. 63 2340. 64 2430. 65 2520. 66 2610. 67 2700. 68 2790. 69 2880. 70 2970. 71 3060. 72 3150. 73 3240. 74 3330. 75 3420. 76 3510. 77 3600. 78 3690. 79 3780. 80 3870. 81 3960. 82 4050."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-45",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 10.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-46",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 512.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-37", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "midpoints": [ 238.5, 500.91015625, 31.5, 500.91015625 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 525.0, 411.0, 92.0, 22.0 ],
                                    "text": "p scale selector"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 1,
                                    "num_lines_presentation": 0,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 525.0, 379.0, 100.0, 20.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "12-TET", "Harmonic" ],
                                            "parameter_longname": "live.tab[1]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.tab[1]",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "live.tab[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "kslider",
                                    "mode": 1,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 358.0, 58.0, 252.0, 53.0 ],
                                    "range": 36
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 84.0, 131.0, 896.0, 620.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-93",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 257.0, 594.0, 29.5, 22.0 ],
                                                    "text": "+"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "bang" ],
                                                    "patching_rect": [ 257.0, 558.0, 29.5, 22.0 ],
                                                    "text": "t i b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-87",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 672.0, 538.0, 39.0, 22.0 ],
                                                    "text": "round"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-84",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 794.0, 468.0, 29.5, 22.0 ],
                                                    "text": "* -1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-83",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 795.0, 429.0, 29.5, 22.0 ],
                                                    "text": "t i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-82",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 672.0, 503.0, 110.0, 22.0 ],
                                                    "text": "scale 0 10000 0. 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-72",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 672.0, 419.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 672.0, 447.0, 86.0, 22.0 ],
                                                    "text": "random 10000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-49",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 257.0, 530.0, 29.0, 22.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "pitchJitterSemitones",
                                                    "id": "obj-48",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 724.0, 350.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 429.0, 525.0, 32.0, 22.0 ],
                                                    "text": "+ 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-46",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 379.0, 525.0, 29.5, 22.0 ],
                                                    "text": "+ 7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 476.0, 473.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 257.0, 493.0, 117.0, 22.0 ],
                                                    "text": "gate 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 456.0, 415.0, 29.5, 22.0 ],
                                                    "text": "< 5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 456.0, 379.0, 79.0, 22.0 ],
                                                    "text": "random 1000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 540.0, 19.0, 40.0, 22.0 ],
                                                    "text": "* 0.01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "note duration as percentage",
                                                    "id": "obj-36",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 522.0, -14.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 533.0, 242.0, 29.5, 22.0 ],
                                                    "text": "* 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 492.0, 227.0, 29.5, 22.0 ],
                                                    "text": "* 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "float" ],
                                                    "patching_rect": [ 530.0, 49.0, 29.5, 22.0 ],
                                                    "text": "t b f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 548.0, 195.0, 33.0, 22.0 ],
                                                    "text": "* 1.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 498.0, 195.0, 33.0, 22.0 ],
                                                    "text": "* 0.9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-27",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 698.0, 185.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 643.0, 128.0, 40.0, 22.0 ],
                                                    "text": "* 0.25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 641.0, 103.0, 52.0, 22.0 ],
                                                    "text": "!/ 60000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "tempo bpm",
                                                    "id": "obj-8",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 324.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 730.0, 231.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 600.0, 369.0, 39.0, 22.0 ],
                                                    "text": "zl join"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "int" ],
                                                    "patching_rect": [ 600.0, 288.0, 29.5, 22.0 ],
                                                    "text": "t b i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 600.0, 328.0, 38.0, 22.0 ],
                                                    "text": "zl reg"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 600.0, 258.0, 59.0, 22.0 ],
                                                    "text": "random 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 600.0, 223.0, 34.0, 22.0 ],
                                                    "text": "sel 7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "", "", "int" ],
                                                    "patching_rect": [ 600.0, 195.0, 61.0, 22.0 ],
                                                    "text": "counter 7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 600.0, 163.0, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 345.0, 158.0, 29.5, 22.0 ],
                                                    "text": "- 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-73",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 345.0, 126.0, 37.0, 22.0 ],
                                                    "text": "zl len"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-68",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 452.0, 46.0, 22.0 ],
                                                    "text": "pack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-66",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "int", "int", "bang" ],
                                                    "patching_rect": [ 255.0, 169.0, 50.5, 22.0 ],
                                                    "text": "t i i i b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-65",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 257.0, 632.0, 61.0, 22.0 ],
                                                    "text": "makenote"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-64",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 292.0, 379.0, 143.0, 22.0 ],
                                                    "text": "loadmess 50 90 64 38 41"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 255.0, 420.0, 56.0, 22.0 ],
                                                    "text": "zl lookup"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 306.0, 276.0, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-62",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 306.0, 237.0, 29.5, 22.0 ],
                                                    "text": "% 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 306.0, 350.0, 32.0, 22.0 ],
                                                    "text": "+ 30"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 306.0, 315.0, 66.0, 22.0 ],
                                                    "text": "random 30"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 391.75, 100.0, 180.0, 22.0 ],
                                                    "text": "loadmess 0 1 2 1 2 3 2 3 4 0 1 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "", "", "int" ],
                                                    "patching_rect": [ 255.0, 135.0, 64.0, 22.0 ],
                                                    "text": "counter 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 255.0, 213.0, 119.0, 22.0 ],
                                                    "text": "zl lookup"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 255.0, 100.0, 63.0, 22.0 ],
                                                    "text": "metro 190"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-77",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 255.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-78",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 542.796875, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 1 ],
                                                    "order": 3,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-31", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-31", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 2 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-43", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-43", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-43", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "source": [ "obj-46", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-83", 0 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 0 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 1 ],
                                                    "source": [ "obj-6", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 1 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 1 ],
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 1 ],
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 1 ],
                                                    "source": [ "obj-65", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 0 ],
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-66", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-66", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-66", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "source": [ "obj-68", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-72", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 4 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-87", 0 ],
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 4 ],
                                                    "source": [ "obj-83", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-84", 0 ],
                                                    "source": [ "obj-83", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 3 ],
                                                    "source": [ "obj-84", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-93", 1 ],
                                                    "source": [ "obj-87", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "source": [ "obj-92", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-93", 0 ],
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 709.0, 203.0, 48.0, 22.0 ],
                                    "text": "p notes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 358.0, 29.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 498.0, 642.0, 125.0, 20.0 ],
                                    "text": "these two must match"
                                }
                            },
                            {
                                "box": {
                                    "arrows": 2,
                                    "border": 2.0,
                                    "hidden": 1,
                                    "id": "obj-21",
                                    "justification": 3,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "orientation": 0,
                                    "patching_rect": [ 591.0, 656.0, 67.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "arrows": 1,
                                    "border": 2.0,
                                    "hidden": 1,
                                    "id": "obj-20",
                                    "justification": 3,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 568.0, 539.0, 26.0, 108.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 835.0, 622.0, 80.0, 22.0 ],
                                    "text": "prepend ffreq"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 697.0, 570.0, 53.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.0,
                                            "parameter_initial": [ 5000 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "filter_freq",
                                            "parameter_mmax": 20000.0,
                                            "parameter_mmin": 20.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "filter_freq",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 3
                                        }
                                    },
                                    "varname": "live.dial[4]"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 904.0, 659.0, 89.0, 22.0 ],
                                    "text": "prepend wform"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 1,
                                    "num_lines_presentation": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 674.0, 545.0, 100.0, 20.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "sine", "saw" ],
                                            "parameter_longname": "live.tab",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.tab",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "live.tab"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 760.0, 715.0, 95.0, 22.0 ],
                                    "text": "prepend release"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 760.0, 495.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.0,
                                            "parameter_initial": [ 150 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "release",
                                            "parameter_mmax": 10000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "release",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "varname": "live.dial[3]"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 717.0, 687.0, 94.0, 22.0 ],
                                    "text": "prepend sustain"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 717.0, 495.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.5 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "sustain",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "sustain",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "varname": "live.dial[2]"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 679.0, 659.0, 88.0, 22.0 ],
                                    "text": "prepend decay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 679.0, 495.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.0,
                                            "parameter_initial": [ 250 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "decay",
                                            "parameter_mmax": 10000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "decay",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "varname": "live.dial[1]"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 640.0, 627.0, 88.0, 22.0 ],
                                    "text": "prepend attack"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 640.0, 495.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.0,
                                            "parameter_initial": [ 7 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "attack",
                                            "parameter_mmax": 10000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "attack",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "varname": "live.dial"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 639.0, 748.0, 85.0, 22.0 ],
                                    "text": "s help-params"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 354.0, 490.0, 93.0, 22.0 ],
                                    "text": "voice-alligator 8"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                                    "bgoncolor": [ 0.850980392156863, 0.803921568627451, 1.0, 1.0 ],
                                    "fontsize": 14.0,
                                    "id": "obj-27",
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 105.0, 139.5, 102.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 115.5, 184.0, 144.0, 27.0 ],
                                    "rounded": 5.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_meter_bg"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_gain_reduction_line_color"
                                        },
                                        "textovercolor": {
                                            "expression": "themecolor.live_gain_reduction_line_color"
                                        }
                                    },
                                    "style": "igk",
                                    "text": "Overview",
                                    "textcolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                                    "texton": "Youtube Videos",
                                    "textoncolor": [ 0.929411764705882, 0.956862745098039, 0.964705882352941, 1.0 ],
                                    "textovercolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 753.0, 531.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-36",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 353.0, 527.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 277.0, 77.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 353.0, 501.0, 115.0, 22.0 ],
                                                    "text": "prepend loadunique"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 353.0, 440.0, 219.0, 22.0 ],
                                                    "text": "append voice-alligator-overview.maxpat"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 352.0, 400.0, 85.0, 22.0 ],
                                                    "text": "append extras"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 353.0, 475.0, 129.0, 22.0 ],
                                                    "text": "tosymbol @separator /"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 352.0, 373.0, 45.0, 22.0 ],
                                                    "text": "zl slice"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 394.0, 340.0, 29.5, 22.0 ],
                                                    "text": "- 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 394.0, 308.0, 37.0, 22.0 ],
                                                    "text": "zl len"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 352.0, 276.0, 61.0, 22.0 ],
                                                    "text": "t l l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 352.0, 172.0, 143.0, 22.0 ],
                                                    "text": "fromsymbol @separator /"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 89.0, 220.0, 469.0, 35.0 ],
                                                    "text": "\"Macintosh HD:\" Users eule Documents \"Max 9\" Packages voice-alligator-package help"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 277.0, 104.0, 32.0, 22.0 ],
                                                    "text": "path"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 277.0, 133.0, 67.0, 22.0 ],
                                                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                                                    "text": "thispatcher"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 277.0, 36.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-11", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 1 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-2", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 118.0, 172.5, 18.0, 22.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 142.0, 172.5, 51.0, 22.0 ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
                                    "patching_rect": [ 354.0, 526.0, 239.0, 22.0 ],
                                    "text": "poly~ alligator-example-voice 8 @args help",
                                    "varname": "poly~_AA"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubblepoint": 1.0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-75",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 709.0, 40.0, 164.0, 25.0 ],
                                    "text": "note generation settings"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-64",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 689.0, 274.0, 220.0, 25.0 ],
                                    "presentation_linecount": 3,
                                    "text": "alligator parameters & commands"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 123.0, 488.0, 188.0, 25.0 ],
                                    "text": "open example voice patcher"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubblepoint": 0.0,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 854.0, 444.0, 111.0, 40.0 ],
                                    "text": "synth parameters"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-67",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 446.0, 490.0, 125.0, 40.0 ],
                                    "text": "<synth has 8 voices"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-93",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 493.0, 571.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "blinktime": 50,
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-51",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 641.0, 11.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 382.0, 26.0, 273.0, 25.0 ],
                                    "text": "click or hold space to generate some notes"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 399.0, 581.0, 110.0, 25.0 ],
                                    "text": "Turn on audio"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-37",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 636.0, 486.0, 227.0, 138.0 ]
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "grad1": [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
                                    "grad2": [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
                                    "id": "obj-63",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 379.0, 138.0, 308.0, 312.0 ],
                                    "proportion": 0.5
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-73",
                                    "maxclass": "number",
                                    "minimum": 1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 626.0, 82.0, 50.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 100 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[1]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 913.5, 739.516914665699, 648.5, 739.516914665699 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 706.5, 618.333320915699, 844.5, 618.333320915699 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 844.5, 742.075508415699, 648.5, 742.075508415699 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 1 ],
                                    "order": 1,
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 600.5, 121.0, 612.5, 121.0, 612.5, 48.0, 624.5, 48.0 ],
                                    "order": 0,
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 402.5, 229.37108125339728, 363.5, 229.37108125339728 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-27", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 402.5, 198.3150917015737, 363.5, 198.3150917015737 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 401.5, 166.274727165699, 363.5, 166.274727165699 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-31", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 1 ],
                                    "order": 0,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "order": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.4371221661567688, 0.2051626443862915, 0.9895049929618835, 1.0 ],
                                    "destination": [ "obj-79", 1 ],
                                    "midpoints": [ 473.5, 554.552070915699, 604.0937358140945, 554.552070915699, 604.0937358140945, 480.122383415699, 437.5, 480.122383415699 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 624.5, 127.0, 637.5, 127.0, 637.5, 1.0, 650.5, 1.0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 402.5, 345.5645384658128, 363.5, 345.5645384658128 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 402.5, 293.458320915699, 363.5, 293.458320915699 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 402.5, 321.35248434823006, 363.5, 321.35248434823006 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 534.5, 463.309883415699, 363.5, 463.309883415699 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 402.5, 375.4056865563616, 363.5, 375.4056865563616 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 820.5, 738.630195915699, 648.5, 738.630195915699 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 402.5, 260.4717152318917, 363.5, 260.4717152318917 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 458.5, 321.909217978362, 363.5, 321.909217978362 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 534.5, 321.3333250954747, 363.5, 321.3333250954747 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 402.5, 406.8567627824377, 363.5, 406.8567627824377 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "midpoints": [ 402.5, 436.3020761599764, 363.5, 436.3020761599764 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 2 ],
                                    "hidden": 1,
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 3 ],
                                    "hidden": 1,
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 724.0, 573.333320915699, 913.5, 573.333320915699 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            }
                        ],
                        "styles": [
                            {
                                "name": "igk",
                                "default": {
                                    "color": [ 0.847058823529412, 0.882352941176471, 0.890196078431372, 1.0 ],
                                    "selectioncolor": [ 0.849573, 1.0, 0.926902, 1.0 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            }
                        ]
                    },
                    "patching_rect": [ 810.0, 122.0, 47.0, 22.0 ],
                    "text": "p basic"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1212.0, 653.0 ],
                        "subpatcher_template": "Default Max 7",
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 72.0, 250.0, 117.0, 22.0 ],
                                    "text": "end (streamnumber)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 179.0, 202.0, 157.0, 22.0 ],
                                    "text": "active (0/1) (streamnumber)"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.457142857142854,
                                    "id": "obj-12",
                                    "linecount": 13,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 56.0, 372.0, 216.0 ],
                                    "text": "Streams also assign priorities to notes, where lower stream = higher priority.\n\nNotes of a given priority by default can't steal notes from a higher priority. This can be disabled with the respect_stream_priorities attribute. More about this attribute can be found in the reference.\n\nNote processing can also be turned on / off on a by-stream basis using \n\nAll notes of a given stream can be send into release using "
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 24.0,
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 118.0, 33.0 ],
                                    "text": "Streams 3",
                                    "underline": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 106.0, 329.0, 388.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-51",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 146.0, 227.0, 65.0, 22.0 ],
                                                    "text": "route flags"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 50.0, 227.0, 69.0, 22.0 ],
                                                    "text": "route notes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 146.0, 169.0, 29.5, 22.0 ],
                                                    "text": "- 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "int" ],
                                                    "patching_rect": [ 50.0, 100.0, 210.0, 22.0 ],
                                                    "text": "t l l 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 50.0, 198.0, 115.0, 22.0 ],
                                                    "text": "zl slice"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 145.5, 128.0, 69.0, 22.0 ],
                                                    "text": "zl sub flags"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "note messages",
                                                    "id": "obj-66",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "notes",
                                                    "id": "obj-67",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 259.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "flags",
                                                    "id": "obj-68",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 146.0, 259.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-21", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-22", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 1 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 517.0, 448.0, 53.0, 22.0 ],
                                    "text": "p parser"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 847.0, 485.0, 118.0, 22.0 ],
                                    "text": "active 1 1, active 2 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 847.0, 519.0, 118.0, 22.0 ],
                                    "text": "active 1 0, active 2 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 847.0, 444.0, 60.0, 22.0 ],
                                    "text": "active 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 883.0, 270.0, 34.0, 22.0 ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "", "", "int" ],
                                    "patching_rect": [ 883.0, 246.0, 65.0, 22.0 ],
                                    "text": "counter 63"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 712.0, 351.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 712.0, 321.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 883.0, 320.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.18 ],
                                    "id": "obj-4",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 495.0, 363.0, 157.0, 60.0 ],
                                    "text": "set the monoflag, telling voice-alligator that this is>   a \"Sequencer Note\" (see reference)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 646.0, 375.0, 59.0, 22.0 ],
                                    "text": "append 0"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.18 ],
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 418.0, 479.0, 102.0, 20.0 ],
                                    "text": "flag 6 is stream>"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.180392156862745 ],
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 909.0, 322.0, 68.0, 20.0 ],
                                    "text": "< stream 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 559.0, 538.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 517.0, 538.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "" ],
                                    "patching_rect": [ 517.0, 505.0, 103.0, 22.0 ],
                                    "text": "sel 1 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 517.0, 477.0, 29.5, 22.0 ],
                                    "text": "$6"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "bang" ],
                                    "patching_rect": [ 527.0, 218.0, 29.5, 22.0 ],
                                    "text": "t i b"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.18 ],
                                    "id": "obj-31",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 488.0, 307.0, 164.0, 47.0 ],
                                    "text": "set the stream, meaning in this case the note stealing  > priority, to 2 "
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.180392156862745 ],
                                    "id": "obj-29",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 949.0, 369.0, 139.0, 60.0 ],
                                    "text": "< generate slower and longer notes, no further argument appended, so automatically stream 1"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.18 ],
                                    "id": "obj-27",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 710.0, 259.0, 66.0, 47.0 ],
                                    "text": "<generate really fast notes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 527.0, 243.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 527.0, 194.0, 29.5, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 527.0, 166.0, 24.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 1 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle[1]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "toggle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 646.0, 321.0, 59.0, 22.0 ],
                                    "text": "append 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 653.0, 125.0, 158.0, 319.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 12.0, 168.0, 101.0, 22.0 ],
                                                    "text": "pack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 12.0, 137.0, 108.0, 22.0 ],
                                                    "text": "makenote 60 620"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 12.0, 105.0, 32.0, 22.0 ],
                                                    "text": "+ 50"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 12.0, 74.0, 66.0, 22.0 ],
                                                    "text": "random 30"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-15",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 12.0, 14.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-16",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 12.0, 250.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 1 ],
                                                    "source": [ "obj-13", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 883.0, 369.0, 62.0, 22.0 ],
                                    "text": "p notegen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 371.0, 334.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "linecount": 7,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 189.0, 114.0, 161.0, 114.0 ],
                                                    "text": "< it is not advised to change the stream during playing, as note ons/offs are matched for a single stream. thats why we send all notes into release on each stream change for this demo"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-3",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 154.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 154.0, 114.0, 31.0, 22.0 ],
                                                    "text": "stop"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 194.0, 101.0, 22.0 ],
                                                    "text": "pack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 50.0, 163.0, 101.0, 22.0 ],
                                                    "text": "makenote 10 100"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 50.0, 129.0, 32.0, 22.0 ],
                                                    "text": "+ 40"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 100.0, 66.0, 22.0 ],
                                                    "text": "random 50"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-15",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-16",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 276.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 1 ],
                                                    "source": [ "obj-13", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 646.0, 257.0, 62.0, 22.0 ],
                                    "text": "p notegen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 646.0, 489.0, 34.0, 34.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
                                    "patching_rect": [ 646.0, 444.0, 174.0, 22.0 ],
                                    "text": "poly~ alligator-example-voice 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 646.0, 412.0, 93.0, 22.0 ],
                                    "text": "voice-alligator 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 646.0, 209.0, 56.0, 22.0 ],
                                    "text": "metro 10"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 646.0, 169.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-47",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 617.0, 98.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-40",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 751.0, 162.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-93",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 782.0, 486.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-52",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 967.0, 484.0, 171.0, 25.0 ],
                                    "text": "hear only stream 1 Notes"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-51",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 967.0, 517.0, 171.0, 25.0 ],
                                    "text": "hear only stream 2 Notes"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 909.0, 442.0, 104.0, 25.0 ],
                                    "text": "hear all notes"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 738.0, 320.0, 129.0, 25.0 ],
                                    "text": "change mono flag"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-48",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 448.0, 112.0, 182.0, 55.0 ],
                                    "text": "change fast source to stream 1 and hear the difference"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 670.0, 169.0, 88.0, 25.0 ],
                                    "text": "start metro"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 678.0, 491.0, 110.0, 25.0 ],
                                    "text": "Turn on audio"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.18 ],
                                    "fontsize": 14.93857493857494,
                                    "id": "obj-5",
                                    "linecount": 31,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 404.0, 56.0, 784.0, 541.0 ],
                                    "text": "This is one example setup using the stream argument to allow the player to play sustained notes that don't get stolen,\nwhile a 2 voice instrument is overloaded with fast notes coming from a different source:\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "order": 0,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "order": 1,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 856.5, 468.5, 832.0, 468.5, 832.0, 399.5, 655.5, 399.5 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 856.5, 551.5, 830.40625, 551.5, 830.40625, 402.5, 655.5, 402.5 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 1 ],
                                    "midpoints": [ 733.0, 474.0, 829.96875, 474.0, 829.96875, 408.0, 729.5, 408.0 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 1 ],
                                    "order": 0,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "order": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 856.5, 517.5, 828.83984375, 517.5, 828.83984375, 402.5, 655.5, 402.5 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-35", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-38", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-42", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "order": 1,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "order": 0,
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 918.0, 223.0, 82.0, 22.0 ],
                    "text": "p \"Streams 3\""
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1212.0, 653.0 ],
                        "subpatcher_template": "Default Max 7",
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-11",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 56.0, 322.0, 310.0, 38.0 ],
                                    "text": "This enables us to play 2 or more portamento melodies at the same time."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.457142857142854,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 38.0, 83.0, 415.0, 23.0 ],
                                    "text": "Monophony for example is only applied to one stream at a time."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.457142857142854,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 58.0, 432.0, 23.0 ],
                                    "text": "Every note that voice-alligator processes has a stream it plays on."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 24.0,
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 118.0, 33.0 ],
                                    "text": "Streams 1",
                                    "underline": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 756.0, 401.0, 157.0, 20.0 ],
                                    "text": "< end all notes of stream $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 713.0, 400.0, 45.0, 22.0 ],
                                    "text": "end $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 713.0, 372.0, 87.0, 20.0 ],
                                    "text": "< end all notes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 679.0, 371.0, 29.5, 22.0 ],
                                    "text": "end"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 134.0, 427.0, 55.0, 20.0 ],
                                    "text": "stream 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 68.0, 385.0, 55.0, 20.0 ],
                                    "text": "stream 1"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-58",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 512.0, 405.0, 23.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "17",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-59",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 412.0, 405.0, 23.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "15",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-60",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 304.0, 405.0, 23.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "13",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-61",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 185.0, 405.0, 23.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "11",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 520.0, 427.0, 42.0, 22.0 ],
                                    "text": "69 0 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 419.0, 427.0, 42.0, 22.0 ],
                                    "text": "66 0 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 310.0, 427.0, 49.0, 22.0 ],
                                    "text": "66 80 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 191.0, 427.0, 49.0, 22.0 ],
                                    "text": "69 80 2"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 753.0, 531.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "color": [ 0.16078431372549, 0.682352941176471, 1.0, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 69.0, 178.0, 118.0, 22.0 ],
                                                    "text": "s example-2-params"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 2,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 34.0, 87.0, 1372.0, 779.0 ],
                                                        "subpatcher_template": "Default Max 7",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "linecount": 5,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 388.0, 18.0, 382.0, 74.0 ],
                                                                    "text": "< we picked different sizes for these scales so that no note will go over 20kHz. If you take a pelog_me3 scale for example, and define it all the way up to index 128, index 128 will be 151kHz, way to high. So by setting the scale_def message to have 109 indexes only we make sure that the synth gets reasonable frequencies."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 345.0, 172.0, 136.0, 20.0 ],
                                                                    "text": "<optional argument size"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-10",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 567.0, 154.0, 80.0, 20.0 ],
                                                                    "text": "<default size "
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgcolor2": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgfillcolor_angle": 270.0,
                                                                    "bgfillcolor_autogradient": 0.0,
                                                                    "bgfillcolor_color": [ 0.349019607843137, 0.145098039215686, 1.0, 0.32 ],
                                                                    "bgfillcolor_color1": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                                                                    "bgfillcolor_proportion": 0.5,
                                                                    "bgfillcolor_type": "color",
                                                                    "fontname": "Lato",
                                                                    "gradient": 1,
                                                                    "id": "obj-13",
                                                                    "linecount": 3,
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 15.0, 660.0, 4450.0, 52.0 ],
                                                                    "text": "scale_def 1 0.034669 2 0.040116 3 0.046418 4 0.053711 5 0.059923 6 0.069338 7 0.080231 8 0.092836 9 0.107422 10 0.119846 11 0.138675 12 0.160462 13 0.185673 14 0.214844 15 0.239692 16 0.27735 17 0.320925 18 0.371345 19 0.429688 20 0.479384 21 0.5547 22 0.64185 23 0.742691 24 0.859375 25 0.958769 26 1.109401 27 1.283699 28 1.485381 29 1.71875 30 1.917537 31 2.218802 32 2.567398 33 2.970763 34 3.4375 35 3.835074 36 4.437603 37 5.134796 38 5.941526 39 6.875 40 7.670148 41 8.875207 42 10.269593 43 11.883051 44 13.75 45 15.340296 46 17.750414 47 20.539186 48 23.766102 49 27.5 50 30.680593 51 35.5 52 41.078371 53 47.532204 54 55. 55 61.361185 56 71.001656 57 82.156743 58 95.064408 59 110. 60 122.722371 61 142.003312 62 164.313486 63 190.128816 64 220. 65 245.444741 66 284.006623 67 328.626971 68 380.257633 69 440. 70 490.889483 71 568.013246 72 657.253942 73 760.515266 74 880. 75 981.778965 76 1136.026492 77 1314.507885 78 1521.030531 79 1760. 80 1963.55793 81 2272.052984 82 2629.015769 83 3042.061063 84 3520. 85 3927.115861 86 4544.105968 87 5258.031539 88 6084.122125 89 7040. 90 7854.231722 91 9088.211937 92 10516.063077 93 12168.24425 94 14080. 95 15708.463444 96 18176.423874 97 21032.126155 98 24336.4885 99 28160. 100 31416.926888 101 36352.847748 102 42064.252309 103 48672.977 104 56320. 105 62833.853776 106 72705.695496 107 84128.504618 108 97345.954 109 112640. 110 125667.707551 111 145411.390992 112 168257.009236 113 194691.908 114 225280. 115 251335.415102 116 290822.781983 117 336514.018472 118 389383.816 119 450560. 120 502670.830204 121 581645.563966 122 673028.036945 123 778767.632 124 901120. 125 1005341.660408 126 1163291.127932 127 1346056.073889 128 1557535.264001",
                                                                    "textcolor": [ 0.396078431372549, 0.0, 0.0, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "int", "int", "int" ],
                                                                    "patching_rect": [ 42.0, 231.0, 496.0, 22.0 ],
                                                                    "text": "t i i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-12",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 298.6666666666667, 154.0, 55.0, 22.0 ],
                                                                    "text": "zl slice 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 66.0, 584.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-39",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 280.5, 93.0, 63.0, 22.0 ],
                                                                    "text": "13-31 141"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-9",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 278.5, 64.0, 82.0, 22.0 ],
                                                                    "text": "ps-dorian 106"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-6",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 280.5, 36.0, 78.0, 22.0 ],
                                                                    "text": "balafon6 108"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-3",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 279.5, 10.0, 91.0, 22.0 ],
                                                                    "text": "pelog_me3 108"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-36",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 519.0, 315.0, 29.5, 22.0 ],
                                                                    "text": "- 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-35",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 519.0, 277.0, 29.5, 22.0 ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-30",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 74.0, 208.0, 30.0, 20.0 ],
                                                                    "text": "size"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-28",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 42.0, 207.0, 29.5, 22.0 ],
                                                                    "text": "i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-20",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 280.5, 376.0, 29.5, 22.0 ],
                                                                    "text": "* 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 519.0, 375.0, 162.0, 22.0 ],
                                                                    "text": "prepend scalearray_maxsize"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 214.0, 542.0, 123.0, 20.0 ],
                                                                    "text": "^scale def mode freq "
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-180",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 197.0, 518.0, 107.0, 22.0 ],
                                                                    "text": "scale_def_mode 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-178",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "patching_rect": [ 66.0, 492.0, 150.0, 22.0 ],
                                                                    "text": "t l b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-68",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 66.0, 518.0, 107.0, 22.0 ],
                                                                    "text": "prepend scale_def"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 298.6666666666667, 307.0, 114.0, 22.0 ],
                                                                    "text": "prepend scalename"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-34",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 171.0, 376.0, 32.0, 22.0 ],
                                                                    "text": "mtof"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-71",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "int" ],
                                                                    "patching_rect": [ 90.0, 307.0, 29.5, 22.0 ],
                                                                    "text": "t i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-69",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "bang", "", "int", "zlclear" ],
                                                                    "patching_rect": [ 42.0, 121.0, 789.0, 22.0 ],
                                                                    "text": "t b l 128 zlclear"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 66.0, 459.0, 173.0, 22.0 ],
                                                                    "text": "zl group 256 @zlmaxsize 4096"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-64",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "bang", "bang", "int" ],
                                                                    "patching_rect": [ 42.0, 259.0, 67.0, 22.0 ],
                                                                    "text": "uzi 128"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-52",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 42.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-53",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 66.0, 622.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 1 ],
                                                                    "midpoints": [ 344.1666666666667, 183.0, 62.0, 183.0 ],
                                                                    "source": [ "obj-12", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "midpoints": [ 528.5, 569.0, 75.5, 569.0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-180", 0 ],
                                                                    "source": [ "obj-178", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-68", 0 ],
                                                                    "source": [ "obj-178", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "midpoints": [ 206.5, 552.0, 75.5, 552.0 ],
                                                                    "source": [ "obj-180", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-178", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 1 ],
                                                                    "source": [ "obj-20", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-28", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "midpoints": [ 289.0, 33.0, 84.0, 33.0, 84.0, 108.0, 51.5, 108.0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-36", 0 ],
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-36", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "midpoints": [ 290.0, 117.0, 51.5, 117.0 ],
                                                                    "source": [ "obj-39", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-20", 0 ],
                                                                    "source": [ "obj-4", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-4", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-64", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "source": [ "obj-52", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "midpoints": [ 290.0, 60.0, 84.0, 60.0, 84.0, 108.0, 51.5, 108.0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-64", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-71", 0 ],
                                                                    "source": [ "obj-64", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-68", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-69", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "midpoints": [ 821.5, 444.0, 75.5, 444.0 ],
                                                                    "source": [ "obj-69", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 1 ],
                                                                    "midpoints": [ 564.8333333333334, 197.0, 62.0, 197.0 ],
                                                                    "source": [ "obj-69", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 0 ],
                                                                    "source": [ "obj-69", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-71", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-71", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "midpoints": [ 288.0, 87.0, 51.5, 87.0 ],
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 50.0, 230.0, 118.0, 22.0 ],
                                                    "text": "p \"scale name, mtof\""
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-9",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 206.0, 82.0, 22.0 ],
                                                    "text": "05-19"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-70",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 69.0, 134.0, 153.0, 22.0 ],
                                                    "text": "glidetime 150, release 500"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-68",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 50.0, 100.0, 58.0, 22.0 ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-56",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 312.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-70", 0 ],
                                                    "hidden": 1,
                                                    "order": 0,
                                                    "source": [ "obj-68", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "hidden": 1,
                                                    "order": 1,
                                                    "source": [ "obj-68", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-70", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 618.0, 503.0, 55.0, 22.0 ],
                                    "text": "p startup"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-46",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 452.0, 362.0, 23.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "16",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-47",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 352.0, 362.0, 23.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "14",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-48",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 244.0, 362.0, 23.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "12",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-49",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 125.0, 362.0, 23.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "10",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 460.0, 384.0, 42.0, 22.0 ],
                                    "text": "67 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 359.0, 384.0, 42.0, 22.0 ],
                                    "text": "63 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 384.0, 49.0, 22.0 ],
                                    "text": "63 80 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 131.0, 384.0, 49.0, 22.0 ],
                                    "text": "67 80 1"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-44",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 426.0, 232.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "9",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-45",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 374.0, 231.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "8",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-43",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 520.0, 179.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "7",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-42",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 474.0, 179.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "6",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-40",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 426.0, 179.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "5",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-41",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 372.0, 179.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "4",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-39",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 455.0, 129.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-38",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 372.0, 129.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 528.0, 201.0, 45.0, 22.0 ],
                                    "text": "67 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 481.0, 201.0, 39.0, 22.0 ],
                                    "text": "63 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 432.0, 201.0, 39.0, 22.0 ],
                                    "text": "63 80"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 378.0, 201.0, 45.0, 22.0 ],
                                    "text": "67 80"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 228.0, 201.0, 145.0, 22.0 ],
                                    "text": "Here we trigger glides"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 496.0, 152.0, 22.0, 20.0 ],
                                    "text": "off"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 152.0, 22.0, 20.0 ],
                                    "text": "on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 432.0, 253.0, 42.0, 22.0 ],
                                    "text": "67 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 376.0, 253.0, 49.0, 22.0 ],
                                    "text": "67 80 1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-22",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 72.0, 238.0, 310.0, 53.0 ],
                                    "text": "A third argument can be used (an integer) that will indicate to voice-alligator the stream of the note-on / note-off."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 462.0, 151.0, 32.0, 22.0 ],
                                    "text": "67 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 378.0, 151.0, 45.0, 22.0 ],
                                    "text": "67 80"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-14",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 84.0, 143.0, 317.0, 38.0 ],
                                    "text": "Notes can be queued in the usual midi format. These are automatically assigned to stream 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 679.0, 579.0, 34.0, 34.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
                                    "patching_rect": [ 679.0, 537.0, 272.0, 22.0 ],
                                    "text": "poly~ alligator-example-voice 4 @args example-2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 679.0, 503.0, 148.0, 22.0 ],
                                    "text": "voice-alligator 4 @mono 1"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "bgoncolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-93",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 815.0, 579.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textovercolor": [ 0.1, 0.1, 0.1, 1.0 ],
                                    "usebgoncolor": 1,
                                    "usetextovercolor": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 711.0, 584.0, 110.0, 25.0 ],
                                    "text": "Turn on audio"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubblepoint": 0.1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 783.0, 461.0, 103.0, 40.0 ],
                                    "text": "we are in mono!"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.4371221661567688, 0.2051626443862915, 0.9895049929618835, 1.0 ],
                                    "destination": [ "obj-10", 1 ],
                                    "midpoints": [ 815.0, 566.5, 957.921875, 566.5, 957.921875, 494.640625, 817.5, 494.640625 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 1 ],
                                    "order": 0,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "order": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 853.0, 173.0, 82.0, 22.0 ],
                    "text": "p \"Streams 1\""
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1212.0, 653.0 ],
                        "subpatcher_template": "Default Max 7",
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.0 ],
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "fontsize": 14.0,
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 29.0, 297.0, 468.0, 22.0 ],
                                    "text": "Pitches can be defined using frequencies or floating point midi notes."
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 386.0, 349.0, 78.0, 40.0 ],
                                    "text": "double click"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 581.0, 504.0, 140.0, 33.0 ],
                                    "text": "< print the current scale \nas midinote or frequency"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 492.0, 532.0, 85.0, 22.0 ],
                                    "text": "printscale midi"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 492.0, 500.0, 84.0, 22.0 ],
                                    "text": "printscale freq"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 226.0, 248.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 177.0, 178.0, 65.0, 22.0 ],
                                                    "text": "scale_fill 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 155.25, 126.0, 107.0, 22.0 ],
                                                    "text": "scale_def_mode 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 123.25, 70.0, 29.5, 22.0 ],
                                                    "text": "t l b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-3",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 123.0, 29.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-5",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 173.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 70.0, 133.0, 107.0, 22.0 ],
                                                    "text": "scale_def_mode 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 38.0, 77.0, 29.5, 22.0 ],
                                                    "text": "t l b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 38.0, 29.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-2", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-7", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-7", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 165.0, 484.0, 18.0, 22.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.16078431372549, 0.682352941176471, 1.0, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 283.0, 605.0, 118.0, 22.0 ],
                                    "text": "s example-3-params"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 753.0, 531.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 139.0, 168.0, 49.0, 22.0 ],
                                                    "text": "target 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 50.0, 132.0, 29.5, 22.0 ],
                                                    "text": "t l b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 100.0, 126.0, 22.0 ],
                                                    "text": "loadmess release 800"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-26",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 49.5, 250.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-11", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 283.0, 575.0, 75.0, 22.0 ],
                                    "text": "p initsettings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 151.0, 288.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 19.0, 143.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 19.0, 52.0, 63.0, 22.0 ],
                                                    "text": "metro 180"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "", "", "int" ],
                                                    "patching_rect": [ 19.0, 81.0, 64.0, 22.0 ],
                                                    "text": "counter 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 19.0, 202.0, 46.0, 22.0 ],
                                                    "text": "pack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 19.0, 171.0, 101.0, 22.0 ],
                                                    "text": "makenote 60 150"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 19.0, 113.0, 32.0, 22.0 ],
                                                    "text": "+ 60"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-41",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 19.0, 13.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-42",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 19.0, 230.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 1 ],
                                                    "source": [ "obj-28", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 185.0, 423.0, 79.0, 22.0 ],
                                    "text": "p makeNotes"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 581.0, 253.0, 36.0, 40.0 ],
                                    "text": "click"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 390.0, 93.0, 51.0, 25.0 ],
                                    "text": "click"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 285.0, 199.0, 51.0, 25.0 ],
                                    "text": "click"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 171.0, 324.0, 73.0, 40.0 ],
                                    "text": "start metro"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 70.0, 573.0, 110.0, 25.0 ],
                                    "text": "Turn on audio"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 18.0,
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 87.0, 1212.0, 679.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 649.5, 263.0, 29.5, 22.0 ],
                                                    "text": "- 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1372.0, 199.0, 42.0, 22.0 ],
                                                    "text": "60 2.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1328.0, 199.0, 42.0, 22.0 ],
                                                    "text": "60 0.3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1276.0, 199.0, 42.0, 22.0 ],
                                                    "text": "60 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "linecount": 4,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1276.0, 135.0, 217.0, 60.0 ],
                                                    "text": "4) cent distances:\n[which note should be \"correct\" in mtof terms, what cent distance to previous / next note?, optional size argument]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 2,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 34.0, 87.0, 1212.0, 679.0 ],
                                                        "subpatcher_template": "Default Max 7",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-37",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 253.0, 388.0, 190.0, 22.0 ],
                                                                    "text": "if $f1 < 0 || $f1 > 128 then 0 else 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-28",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 160.0, 419.0, 52.0, 22.0 ],
                                                                    "text": "gate 1 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-25",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 447.0, 382.5, 168.0, 33.0 ],
                                                                    "text": "prevent negatives & prevent anything above midipitch 128"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-20",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "bang", "float" ],
                                                                    "patching_rect": [ 193.0, 345.0, 40.0, 22.0 ],
                                                                    "text": "t f b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-19",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 214.0, 384.0, 29.5, 22.0 ],
                                                                    "text": "i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-9",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 97.0, 9.0, 187.0, 20.0 ],
                                                                    "text": "[center_note, cent_distance, size]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-3",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 193.0, 96.0, 29.5, 22.0 ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-32",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 383.0, 156.0, 55.0, 22.0 ],
                                                                    "text": "zl slice 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-31",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 232.0, 59.0, 55.0, 22.0 ],
                                                                    "text": "zl slice 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 291.0, 127.0, 55.0, 22.0 ],
                                                                    "text": "zl slice 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "bang", "", "", "int" ],
                                                                    "patching_rect": [ 65.0, 41.0, 57.0, 22.0 ],
                                                                    "text": "t b l l 127"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-18",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 193.0, 164.0, 29.5, 22.0 ],
                                                                    "text": "- 36"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 193.0, 317.0, 36.0, 22.0 ],
                                                                    "text": "+ 36."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-16",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 193.0, 200.0, 29.5, 22.0 ],
                                                                    "text": "- 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "int" ],
                                                                    "patching_rect": [ 193.0, 246.0, 104.0, 22.0 ],
                                                                    "text": "t i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-10",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 278.0, 352.0, 32.0, 22.0 ],
                                                                    "text": "+ 36"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 193.0, 286.0, 33.0, 22.0 ],
                                                                    "text": "* 0.5"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "bang", "bang", "int" ],
                                                                    "patching_rect": [ 65.0, 127.0, 147.0, 22.0 ],
                                                                    "text": "uzi 127"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-21",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "zlclear" ],
                                                                    "patching_rect": [ 65.0, 72.0, 60.0, 22.0 ],
                                                                    "text": "t b zlclear"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgcolor2": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgfillcolor_angle": 270.0,
                                                                    "bgfillcolor_autogradient": 0.0,
                                                                    "bgfillcolor_color": [ 0.349019607843137, 0.145098039215686, 1.0, 0.32 ],
                                                                    "bgfillcolor_color1": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                                                                    "bgfillcolor_proportion": 0.5,
                                                                    "bgfillcolor_type": "color",
                                                                    "fontname": "Lato",
                                                                    "gradient": 1,
                                                                    "id": "obj-13",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 15.0, 660.0, 4205.0, 23.0 ],
                                                                    "text": "scale_def 36 0. 37 2.5 38 5. 39 7.5 40 10. 41 12.5 42 15. 43 17.5 44 20. 45 22.5 46 25. 47 27.5 48 30. 49 32.5 50 35. 51 37.5 52 40. 53 42.5 54 45. 55 47.5 56 50. 57 52.5 58 55. 59 57.5 60 60. 61 62.5 62 65. 63 67.5 64 70. 65 72.5 66 75. 67 77.5 68 80. 69 82.5 70 85. 71 87.5 72 90. 73 92.5 74 95. 75 97.5 76 100. 77 102.5 78 105. 79 107.5 80 110. 81 112.5 82 115. 83 117.5 84 120. 85 122.5 86 125. 87 127.5",
                                                                    "textcolor": [ 0.396078431372549, 0.0, 0.0, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 66.0, 584.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 214.0, 542.0, 123.0, 20.0 ],
                                                                    "text": "^scale def mode midi"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-180",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 197.0, 518.0, 107.0, 22.0 ],
                                                                    "text": "scale_def_mode 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-178",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "patching_rect": [ 66.0, 492.0, 150.0, 22.0 ],
                                                                    "text": "t l b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-68",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 66.0, 518.0, 107.0, 22.0 ],
                                                                    "text": "prepend scale_def"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 66.0, 459.0, 179.0, 22.0 ],
                                                                    "text": "zl group 4096 @zlmaxsize 4096"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "start_note, cent_between_notes",
                                                                    "id": "obj-52",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 65.0, 4.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-53",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 66.0, 622.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 0 ],
                                                                    "source": [ "obj-1", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-1", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 1 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 0 ],
                                                                    "source": [ "obj-11", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-11", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 1 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 0 ],
                                                                    "source": [ "obj-14", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-11", 0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-20", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-180", 0 ],
                                                                    "source": [ "obj-178", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-68", 0 ],
                                                                    "source": [ "obj-178", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "source": [ "obj-18", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "midpoints": [ 206.5, 552.0, 75.5, 552.0 ],
                                                                    "source": [ "obj-180", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 1 ],
                                                                    "source": [ "obj-19", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-178", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "source": [ "obj-20", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 1 ],
                                                                    "source": [ "obj-20", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-20", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-21", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-21", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-28", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 1 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-3", 0 ],
                                                                    "source": [ "obj-31", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 1 ],
                                                                    "source": [ "obj-32", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 0 ],
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "source": [ "obj-52", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-6", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-3", 0 ],
                                                                    "source": [ "obj-6", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 0 ],
                                                                    "source": [ "obj-6", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-68", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 1276.0, 238.0, 104.0, 22.0 ],
                                                    "text": "p \"cent distances\""
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1143.0, 173.0, 65.0, 22.0 ],
                                                    "text": "50. 45 59"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1076.0, 173.0, 59.0, 22.0 ],
                                                    "text": "55. 45 59"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1036.0, 135.0, 212.0, 33.0 ],
                                                    "text": "3) harmonics:\n[basefreq, noOfHarmonics, midiOffset]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 2,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 34.0, 87.0, 1372.0, 779.0 ],
                                                        "subpatcher_template": "Default Max 7",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-22",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 355.5, 177.0, 29.5, 22.0 ],
                                                                    "text": "- 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-21",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "zlclear" ],
                                                                    "patching_rect": [ 65.0, 72.0, 56.0, 22.0 ],
                                                                    "text": "t l zlclear"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-18",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 267.0, 343.0, 29.5, 22.0 ],
                                                                    "text": "* 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 163.0, 282.0, 29.5, 22.0 ],
                                                                    "text": "* 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-16",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 65.5, 150.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-15",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "int" ],
                                                                    "patching_rect": [ 210.5, 210.0, 29.5, 22.0 ],
                                                                    "text": "t i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 221.0, 258.0, 153.5, 22.0 ],
                                                                    "text": "+"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-12",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "bang", "bang", "int" ],
                                                                    "patching_rect": [ 189.5, 177.0, 40.0, 22.0 ],
                                                                    "text": "uzi"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "int", "int" ],
                                                                    "patching_rect": [ 65.5, 99.0, 309.0, 22.0 ],
                                                                    "text": "unpack f i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-5",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 140.0, 37.5, 212.0, 33.0 ],
                                                                    "text": "3) harmonics:\n[basefreq, noOfHarmonics, midiOffset]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgcolor2": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgfillcolor_angle": 270.0,
                                                                    "bgfillcolor_autogradient": 0.0,
                                                                    "bgfillcolor_color": [ 0.349019607843137, 0.145098039215686, 1.0, 0.32 ],
                                                                    "bgfillcolor_color1": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                                                                    "bgfillcolor_proportion": 0.5,
                                                                    "bgfillcolor_type": "color",
                                                                    "fontname": "Lato",
                                                                    "gradient": 1,
                                                                    "id": "obj-13",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 15.0, 660.0, 4205.0, 23.0 ],
                                                                    "text": "scale_def 59 50. 60 100. 61 150. 62 200. 63 250. 64 300. 65 350. 66 400. 67 450. 68 500. 69 550. 70 600. 71 650. 72 700. 73 750. 74 800. 75 850. 76 900. 77 950. 78 1000. 79 1050. 80 1100. 81 1150. 82 1200. 83 1250. 84 1300. 85 1350. 86 1400. 87 1450. 88 1500. 89 1550. 90 1600. 91 1650. 92 1700. 93 1750. 94 1800. 95 1850. 96 1900. 97 1950. 98 2000. 99 2050. 100 2100. 101 2150. 102 2200. 103 2250.",
                                                                    "textcolor": [ 0.396078431372549, 0.0, 0.0, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 66.0, 584.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 214.0, 542.0, 123.0, 20.0 ],
                                                                    "text": "^scale def mode freq "
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-180",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 197.0, 518.0, 107.0, 22.0 ],
                                                                    "text": "scale_def_mode 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-178",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "patching_rect": [ 66.0, 492.0, 150.0, 22.0 ],
                                                                    "text": "t l b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-68",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 66.0, 518.0, 107.0, 22.0 ],
                                                                    "text": "prepend scale_def"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 66.0, 459.0, 173.0, 22.0 ],
                                                                    "text": "zl group 256 @zlmaxsize 4096"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-52",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 65.5, 37.5, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-53",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 66.0, 622.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-11", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "source": [ "obj-11", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-11", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 0 ],
                                                                    "source": [ "obj-11", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "source": [ "obj-12", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-15", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 1 ],
                                                                    "source": [ "obj-16", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-180", 0 ],
                                                                    "source": [ "obj-178", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-68", 0 ],
                                                                    "source": [ "obj-178", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 1 ],
                                                                    "source": [ "obj-18", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "midpoints": [ 206.5, 552.0, 75.5, 552.0 ],
                                                                    "source": [ "obj-180", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-178", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-11", 0 ],
                                                                    "source": [ "obj-21", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-21", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 1 ],
                                                                    "source": [ "obj-22", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-52", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-68", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 1076.0, 201.0, 118.0, 22.0 ],
                                                    "text": "p \"scale name, mtof\""
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 2,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 34.0, 87.0, 1212.0, 679.0 ],
                                                        "subpatcher_template": "Default Max 7",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "linecount": 5,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 388.0, 18.0, 418.0, 74.0 ],
                                                                    "text": "< we picked different sizes for these scales so that the highest note will be ~20kHz. If you take a pelog_me3 scale for example, and define it all the way up to index 128, the value at that index will be 151kHz, way too high. So by setting the scale_def message to have 108 indexes we make sure that the synth only gets reasonable frequencies."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 345.0, 172.0, 136.0, 20.0 ],
                                                                    "text": "<optional argument size"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-10",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 567.0, 154.0, 108.0, 20.0 ],
                                                                    "text": "<default size (128)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgcolor2": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgfillcolor_angle": 270.0,
                                                                    "bgfillcolor_autogradient": 0.0,
                                                                    "bgfillcolor_color": [ 0.349019607843137, 0.145098039215686, 1.0, 0.32 ],
                                                                    "bgfillcolor_color1": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                                                                    "bgfillcolor_proportion": 0.5,
                                                                    "bgfillcolor_type": "color",
                                                                    "fontname": "Lato",
                                                                    "gradient": 1,
                                                                    "id": "obj-13",
                                                                    "linecount": 17,
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 15.0, 660.0, 478.0, 599.0 ],
                                                                    "text": "scale_def 1 0.604248 2 0.75531 3 0.77689 4 0.805664 5 0.835503 6 0.859375 7 1.074219 8 1.208496 9 1.51062 10 1.553781 11 1.611328 12 1.671007 13 1.71875 14 2.148437 15 2.416992 16 3.02124 17 3.107561 18 3.222656 19 3.342014 20 3.4375 21 4.296875 22 4.833984 23 6.04248 24 6.215122 25 6.445312 26 6.684027 27 6.875 28 8.59375 29 9.667968 30 12.08496 31 12.430245 32 12.890624 33 13.368055 34 13.75 35 17.1875 36 19.335936 37 24.17 38 24.86049 39 25.781249 40 26.736109 41 27.5 42 34.374999 43 38.671873 44 48.34 45 49.72098 46 51.562497 47 53.472218 48 55. 49 68.75 50 77.343745 51 96.679681 52 99.44196 53 103.124995 54 106.944437 55 110. 56 137.5 57 154.68749 58 193.359361 59 198.88392 60 206.25 61 213.888873 62 220. 63 275. 64 309.374981 65 386.718723 66 397.76784 67 412.5 68 427.777746 69 440. 70 550. 71 618.75 72 773.437446 73 795.53568 74 825. 75 855.555493 76 880. 77 1100. 78 1237.5 79 1546.874892 80 1591.07136 81 1650. 82 1711.110986 83 1760. 84 2200. 85 2475. 86 3093.749783 87 3182.142719 88 3300. 89 3422.221972 90 3520. 91 4400. 92 4950. 93 6187.5 94 6364.285438 95 6600. 96 6844.443943 97 7040. 98 8800. 99 9900. 100 12375. 101 12728.570877 102 13200. 103 13688.887886 104 14080. 105 17600. 106 19799.998763",
                                                                    "textcolor": [ 0.396078431372549, 0.0, 0.0, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "int", "int", "int" ],
                                                                    "patching_rect": [ 42.0, 231.0, 496.0, 22.0 ],
                                                                    "text": "t i i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-12",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 298.6666666666667, 154.0, 55.0, 22.0 ],
                                                                    "text": "zl slice 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 66.0, 584.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-39",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 280.5, 93.0, 63.0, 22.0 ],
                                                                    "text": "13-31 141"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-9",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 278.5, 64.0, 82.0, 22.0 ],
                                                                    "text": "ps-dorian 106"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-6",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 280.5, 36.0, 78.0, 22.0 ],
                                                                    "text": "balafon6 108"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-3",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 279.5, 10.0, 91.0, 22.0 ],
                                                                    "text": "pelog_me3 108"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-36",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 519.0, 315.0, 29.5, 22.0 ],
                                                                    "text": "- 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-35",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 519.0, 277.0, 29.5, 22.0 ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-30",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 74.0, 208.0, 30.0, 20.0 ],
                                                                    "text": "size"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-28",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 42.0, 207.0, 29.5, 22.0 ],
                                                                    "text": "i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-20",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 280.5, 376.0, 29.5, 22.0 ],
                                                                    "text": "* 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 519.0, 375.0, 162.0, 22.0 ],
                                                                    "text": "prepend scalearray_maxsize"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 214.0, 542.0, 123.0, 20.0 ],
                                                                    "text": "^scale def mode freq "
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-180",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 197.0, 518.0, 107.0, 22.0 ],
                                                                    "text": "scale_def_mode 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-178",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "patching_rect": [ 66.0, 492.0, 150.0, 22.0 ],
                                                                    "text": "t l b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-68",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 66.0, 518.0, 107.0, 22.0 ],
                                                                    "text": "prepend scale_def"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 298.6666666666667, 307.0, 114.0, 22.0 ],
                                                                    "text": "prepend scalename"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-34",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 171.0, 376.0, 32.0, 22.0 ],
                                                                    "text": "mtof"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-71",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "int" ],
                                                                    "patching_rect": [ 90.0, 307.0, 29.5, 22.0 ],
                                                                    "text": "t i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-69",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "bang", "", "int", "zlclear" ],
                                                                    "patching_rect": [ 42.0, 121.0, 789.0, 22.0 ],
                                                                    "text": "t b l 128 zlclear"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 66.0, 459.0, 173.0, 22.0 ],
                                                                    "text": "zl group 256 @zlmaxsize 4096"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-64",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "bang", "bang", "int" ],
                                                                    "patching_rect": [ 42.0, 259.0, 67.0, 22.0 ],
                                                                    "text": "uzi 128"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-52",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 42.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-53",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 66.0, 622.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 1 ],
                                                                    "midpoints": [ 344.1666666666667, 183.0, 62.0, 183.0 ],
                                                                    "source": [ "obj-12", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "midpoints": [ 528.5, 569.0, 75.5, 569.0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-180", 0 ],
                                                                    "source": [ "obj-178", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-68", 0 ],
                                                                    "source": [ "obj-178", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "midpoints": [ 206.5, 552.0, 75.5, 552.0 ],
                                                                    "source": [ "obj-180", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-178", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 1 ],
                                                                    "source": [ "obj-20", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-28", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "midpoints": [ 289.0, 33.0, 84.0, 33.0, 84.0, 108.0, 51.5, 108.0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-36", 0 ],
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-36", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "midpoints": [ 290.0, 117.0, 51.5, 117.0 ],
                                                                    "source": [ "obj-39", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-20", 0 ],
                                                                    "source": [ "obj-4", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-4", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-64", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "source": [ "obj-52", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "midpoints": [ 290.0, 60.0, 84.0, 60.0, 84.0, 108.0, 51.5, 108.0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-64", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-71", 0 ],
                                                                    "source": [ "obj-64", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-68", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-69", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "midpoints": [ 821.5, 444.0, 75.5, 444.0 ],
                                                                    "source": [ "obj-69", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 1 ],
                                                                    "midpoints": [ 564.8333333333334, 197.0, 62.0, 197.0 ],
                                                                    "source": [ "obj-69", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 0 ],
                                                                    "source": [ "obj-69", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-71", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-71", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "midpoints": [ 288.0, 87.0, 51.5, 87.0 ],
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 15.0, 263.0, 118.0, 22.0 ],
                                                    "text": "p \"scale name, mtof\""
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 300.0, 201.0, 96.0, 22.0 ],
                                                    "text": "dow_middle 200"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 14.0,
                                                    "id": "obj-7",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 11.0, 56.0, 437.0, 53.0 ],
                                                    "text": "Here we demonstrate different ways of creating scale_def messages.\nThe blue message box displays the output sent to [voice-alligator]. We could copy this message box to save scale settings that we like.",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 24.0,
                                                    "id": "obj-15",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 61.0, 11.0, 333.0, 33.0 ],
                                                    "text": "Creating scale_def Messages",
                                                    "underline": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 12,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 2,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 34.0, 87.0, 1212.0, 679.0 ],
                                                        "subpatcher_template": "Default Max 7",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-125",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 869.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-128",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 879.0, 192.0, 68.0, 22.0 ],
                                                                    "text": "prepend 11"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-130",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 879.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-118",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 781.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-121",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 791.0, 192.0, 69.0, 22.0 ],
                                                                    "text": "prepend 10"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-123",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 791.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-111",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 707.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-114",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 717.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 9"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-116",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 717.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-104",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 634.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-107",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 644.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 8"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-109",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 644.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-97",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 560.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-100",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 570.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 7"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-102",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 570.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-90",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 487.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-93",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 497.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 6"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-95",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 497.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-83",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 413.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-86",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 423.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 5"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-88",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 423.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-76",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 340.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-79",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 350.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 4"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-81",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 350.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-66",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 266.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-72",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 276.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 3"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-74",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 276.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-58",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 193.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-61",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 203.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-63",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 203.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-51",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 123.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-54",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 133.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-56",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 133.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-48",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 50.0, 100.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-37",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patcher": {
                                                                        "fileversion": 1,
                                                                        "appversion": {
                                                                            "major": 9,
                                                                            "minor": 1,
                                                                            "revision": 2,
                                                                            "architecture": "x64",
                                                                            "modernui": 1
                                                                        },
                                                                        "classnamespace": "box",
                                                                        "rect": [ 134.0, 159.0, 753.0, 531.0 ],
                                                                        "subpatcher_template": "Default Max 7",
                                                                        "boxes": [
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-35",
                                                                                    "maxclass": "message",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 50.0, 132.0, 294.0, 22.0 ],
                                                                                    "text": "0 0, 1 0, 2 0, 3 0, 4 0, 5 0, 6 0, 7 0, 8 0, 9 0, 10 0, 11 0"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-32",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "bang" ],
                                                                                    "patching_rect": [ 50.0, 100.0, 58.0, 22.0 ],
                                                                                    "text": "loadbang"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-36",
                                                                                    "index": 1,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 50.0, 214.0, 30.0, 30.0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "lines": [
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-35", 0 ],
                                                                                    "source": [ "obj-32", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-36", 0 ],
                                                                                    "source": [ "obj-35", 0 ]
                                                                                }
                                                                            }
                                                                        ]
                                                                    },
                                                                    "patching_rect": [ 105.0, 239.0, 73.0, 22.0 ],
                                                                    "text": "p init zeroes"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-19",
                                                                    "linecount": 2,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "", "", "", "" ],
                                                                    "patching_rect": [ 60.0, 275.0, 99.0, 22.0 ],
                                                                    "saved_object_attributes": {
                                                                        "embed": 0,
                                                                        "precision": 6
                                                                    },
                                                                    "text": "coll #0-detunings"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-18",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 60.0, 192.0, 63.0, 22.0 ],
                                                                    "text": "prepend 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-16",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 60.0, 151.0, 40.0, 22.0 ],
                                                                    "text": "* 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-15",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-20",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 123.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-21",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 193.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-22",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 266.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 5,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 340.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-29",
                                                                    "index": 6,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 413.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-30",
                                                                    "index": 7,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 487.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-31",
                                                                    "index": 8,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 560.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-32",
                                                                    "index": 9,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 634.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-33",
                                                                    "index": 10,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 707.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-35",
                                                                    "index": 11,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 781.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-36",
                                                                    "index": 12,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 869.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-39",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 36.0, 353.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 579.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-100", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-100", 0 ],
                                                                    "midpoints": [ 579.5, 174.0, 579.5, 174.0 ],
                                                                    "source": [ "obj-102", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-109", 0 ],
                                                                    "midpoints": [ 654.0, 147.0, 653.5, 147.0 ],
                                                                    "source": [ "obj-104", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 643.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-104", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 653.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-107", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-107", 0 ],
                                                                    "midpoints": [ 653.5, 174.0, 653.5, 174.0 ],
                                                                    "source": [ "obj-109", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-116", 0 ],
                                                                    "midpoints": [ 727.0, 123.0, 726.5, 123.0 ],
                                                                    "source": [ "obj-111", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 716.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-111", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 726.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-114", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-114", 0 ],
                                                                    "midpoints": [ 726.5, 174.0, 726.5, 174.0 ],
                                                                    "source": [ "obj-116", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-123", 0 ],
                                                                    "midpoints": [ 801.0, 147.0, 800.5, 147.0 ],
                                                                    "source": [ "obj-118", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 790.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-118", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 800.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-121", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-121", 0 ],
                                                                    "midpoints": [ 800.5, 174.0, 800.5, 174.0 ],
                                                                    "source": [ "obj-123", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-130", 0 ],
                                                                    "midpoints": [ 889.0, 123.0, 888.5, 123.0 ],
                                                                    "source": [ "obj-125", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 878.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-125", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 888.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-128", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-128", 0 ],
                                                                    "midpoints": [ 888.5, 174.0, 888.5, 174.0 ],
                                                                    "source": [ "obj-130", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-48", 0 ],
                                                                    "midpoints": [ 59.5, 72.0, 59.5, 72.0 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 0 ],
                                                                    "midpoints": [ 69.5, 174.0, 69.5, 174.0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 69.5, 216.0, 69.5, 216.0 ],
                                                                    "source": [ "obj-18", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-51", 0 ],
                                                                    "midpoints": [ 132.5, 72.0, 132.5, 72.0 ],
                                                                    "source": [ "obj-20", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-58", 0 ],
                                                                    "midpoints": [ 202.5, 72.0, 202.5, 72.0 ],
                                                                    "source": [ "obj-21", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-66", 0 ],
                                                                    "midpoints": [ 275.5, 72.0, 275.5, 72.0 ],
                                                                    "source": [ "obj-22", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-76", 0 ],
                                                                    "midpoints": [ 349.5, 72.0, 349.5, 72.0 ],
                                                                    "source": [ "obj-28", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-83", 0 ],
                                                                    "midpoints": [ 422.5, 72.0, 422.5, 72.0 ],
                                                                    "source": [ "obj-29", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-90", 0 ],
                                                                    "midpoints": [ 496.5, 72.0, 496.5, 72.0 ],
                                                                    "source": [ "obj-30", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-97", 0 ],
                                                                    "midpoints": [ 569.5, 72.0, 569.5, 72.0 ],
                                                                    "source": [ "obj-31", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-104", 0 ],
                                                                    "midpoints": [ 643.5, 72.0, 643.5, 72.0 ],
                                                                    "source": [ "obj-32", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-111", 0 ],
                                                                    "midpoints": [ 716.5, 72.0, 716.5, 72.0 ],
                                                                    "source": [ "obj-33", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-118", 0 ],
                                                                    "midpoints": [ 790.5, 72.0, 790.5, 72.0 ],
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-125", 0 ],
                                                                    "midpoints": [ 878.5, 72.0, 878.5, 72.0 ],
                                                                    "source": [ "obj-36", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 114.5, 264.0, 72.0, 264.0, 72.0, 270.0, 69.5, 270.0 ],
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "midpoints": [ 70.0, 123.0, 69.5, 123.0 ],
                                                                    "source": [ "obj-48", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 59.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-48", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 132.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-51", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-56", 0 ],
                                                                    "midpoints": [ 143.0, 123.0, 142.5, 123.0 ],
                                                                    "source": [ "obj-51", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 142.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-54", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-54", 0 ],
                                                                    "midpoints": [ 142.5, 174.0, 142.5, 174.0 ],
                                                                    "source": [ "obj-56", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 202.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-58", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-63", 0 ],
                                                                    "midpoints": [ 213.0, 147.0, 212.5, 147.0 ],
                                                                    "source": [ "obj-58", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 212.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-61", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-61", 0 ],
                                                                    "midpoints": [ 212.5, 174.0, 212.5, 174.0 ],
                                                                    "source": [ "obj-63", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 275.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-66", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-74", 0 ],
                                                                    "midpoints": [ 286.0, 123.0, 285.5, 123.0 ],
                                                                    "source": [ "obj-66", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 285.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-72", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-72", 0 ],
                                                                    "midpoints": [ 285.5, 174.0, 285.5, 174.0 ],
                                                                    "source": [ "obj-74", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 349.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-76", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-81", 0 ],
                                                                    "midpoints": [ 360.0, 147.0, 359.5, 147.0 ],
                                                                    "source": [ "obj-76", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 359.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-79", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-79", 0 ],
                                                                    "midpoints": [ 359.5, 174.0, 359.5, 174.0 ],
                                                                    "source": [ "obj-81", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 422.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-83", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-88", 0 ],
                                                                    "midpoints": [ 433.0, 123.0, 432.5, 123.0 ],
                                                                    "source": [ "obj-83", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 432.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-86", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-86", 0 ],
                                                                    "midpoints": [ 432.5, 174.0, 432.5, 174.0 ],
                                                                    "source": [ "obj-88", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 496.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-90", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-95", 0 ],
                                                                    "midpoints": [ 507.0, 147.0, 506.5, 147.0 ],
                                                                    "source": [ "obj-90", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "midpoints": [ 506.5, 225.0, 69.5, 225.0 ],
                                                                    "source": [ "obj-93", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-93", 0 ],
                                                                    "midpoints": [ 506.5, 174.0, 506.5, 174.0 ],
                                                                    "source": [ "obj-95", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-102", 0 ],
                                                                    "midpoints": [ 580.0, 123.0, 579.5, 123.0 ],
                                                                    "source": [ "obj-97", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 1.0, 0.9282712429, 0.0009430405719, 1.0 ],
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "midpoints": [ 569.5, 138.0, 45.0, 138.0, 45.0, 342.0, 45.5, 342.0 ],
                                                                    "source": [ "obj-97", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 495.0, 201.0, 475.5, 22.0 ],
                                                    "text": "p set detuning and bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 658.0, 450.0, 150.0, 20.0 ],
                                                    "text": "^scale def mode midi pitch"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 495.0, 426.0, 107.0, 22.0 ],
                                                    "text": "prepend scale_def"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-182",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 610.0, 426.0, 243.0, 22.0 ],
                                                    "text": "scale_def_mode 0, scalearray_maxsize 128"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-181",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 495.0, 389.0, 133.5, 22.0 ],
                                                    "text": "t l b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-174",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 871.0, 175.0, 19.0, 20.0 ],
                                                    "text": "B"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "format": 6,
                                                    "id": "obj-175",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 951.0, 164.0, 50.0, 22.0 ],
                                                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-170",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 950.0, 141.0, 24.0, 20.0 ],
                                                    "text": "A#"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-172",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 898.0, 140.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "format": 6,
                                                    "id": "obj-173",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 880.0, 164.0, 50.0, 22.0 ],
                                                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-159",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 872.0, 141.0, 25.0, 20.0 ],
                                                    "text": "G#"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-160",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 854.0, 165.0, 19.0, 20.0 ],
                                                    "text": "G"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-161",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 820.0, 140.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "format": 6,
                                                    "id": "obj-162",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 802.0, 164.0, 50.0, 22.0 ],
                                                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-163",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 792.0, 141.0, 24.0, 20.0 ],
                                                    "text": "F#"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-164",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 774.0, 165.0, 19.0, 20.0 ],
                                                    "text": "F"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-165",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 740.0, 140.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "format": 6,
                                                    "id": "obj-166",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 722.0, 164.0, 50.0, 22.0 ],
                                                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-154",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 706.0, 165.0, 19.0, 20.0 ],
                                                    "text": "E"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "format": 6,
                                                    "id": "obj-156",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 651.0, 164.0, 50.0, 22.0 ],
                                                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-149",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 648.0, 141.0, 24.0, 20.0 ],
                                                    "text": "D#"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-150",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 630.0, 165.0, 19.0, 20.0 ],
                                                    "text": "D"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-151",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 596.0, 140.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "format": 6,
                                                    "id": "obj-152",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 578.0, 164.0, 50.0, 22.0 ],
                                                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-148",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 565.0, 141.0, 24.0, 20.0 ],
                                                    "text": "C#"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-147",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 547.0, 165.0, 19.0, 20.0 ],
                                                    "text": "C"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-57",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 513.0, 140.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "format": 6,
                                                    "id": "obj-14",
                                                    "maxclass": "flonum",
                                                    "maximum": 50.0,
                                                    "minimum": -50.0,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 495.0, 164.0, 50.0, 22.0 ],
                                                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 495.0, 118.0, 420.0, 20.0 ],
                                                    "text": "2) FM8 inspired: create scale_def with detune in cent for each note of 12-TET"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                    "bgcolor2": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                    "bgfillcolor_angle": 270.0,
                                                    "bgfillcolor_autogradient": 0.0,
                                                    "bgfillcolor_color": [ 0.031372549019608, 0.156862745098039, 0.686274509803922, 1.0 ],
                                                    "bgfillcolor_color1": [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 0.3 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                                                    "bgfillcolor_proportion": 0.5,
                                                    "bgfillcolor_type": "color",
                                                    "fontname": "Lato",
                                                    "gradient": 1,
                                                    "id": "obj-13",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 11.0, 574.0, 1347.0, 37.0 ],
                                                    "text": "scale_def 36 0. 37 2.5 38 5. 39 7.5 40 10. 41 12.5 42 15. 43 17.5 44 20. 45 22.5 46 25. 47 27.5 48 30. 49 32.5 50 35. 51 37.5 52 40. 53 42.5 54 45. 55 47.5 56 50. 57 52.5 58 55. 59 57.5 60 60. 61 62.5 62 65. 63 67.5 64 70. 65 72.5 66 75. 67 77.5 68 80. 69 82.5 70 85. 71 87.5 72 90. 73 92.5 74 95. 75 97.5 76 100. 77 102.5 78 105. 79 107.5 80 110. 81 112.5 82 115. 83 117.5 84 120. 85 122.5 86 125. 87 127.5",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 15.0, 162.0, 325.0, 47.0 ],
                                                    "text": "1) create scale_def using scalename (see mtof helpfile) and optional size argument\n"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 208.0, 201.0, 82.0, 22.0 ],
                                                    "text": "ps-dorian 106"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 117.0, 201.0, 78.0, 22.0 ],
                                                    "text": "balafon6 108"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-4",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 15.0, 514.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 15.0, 201.0, 91.0, 22.0 ],
                                                    "text": "pelog_me3 108"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 573.0, 354.0, 29.5, 22.0 ],
                                                    "text": "+ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 627.0, 354.0, 99.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 0,
                                                        "precision": 6
                                                    },
                                                    "text": "coll #0-detunings"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 627.0, 324.0, 36.0, 22.0 ],
                                                    "text": "% 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "int", "int", "int" ],
                                                    "patching_rect": [ 573.0, 283.0, 40.0, 22.0 ],
                                                    "text": "t i i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "zlclear" ],
                                                    "patching_rect": [ 495.0, 232.0, 85.0, 22.0 ],
                                                    "text": "t b b zlclear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 495.0, 354.0, 75.0, 22.0 ],
                                                    "text": "zl group 256"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "int" ],
                                                    "patching_rect": [ 621.5, 232.0, 47.0, 22.0 ],
                                                    "text": "uzi 127"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 3 ],
                                                    "source": [ "obj-151", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 2 ],
                                                    "source": [ "obj-152", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 4 ],
                                                    "source": [ "obj-156", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 8 ],
                                                    "source": [ "obj-161", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 7 ],
                                                    "source": [ "obj-162", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 6 ],
                                                    "source": [ "obj-165", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 5 ],
                                                    "source": [ "obj-166", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 10 ],
                                                    "source": [ "obj-172", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 9 ],
                                                    "source": [ "obj-173", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 11 ],
                                                    "source": [ "obj-175", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-182", 0 ],
                                                    "source": [ "obj-181", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-181", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-182", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-23", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-23", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-24", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-24", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-181", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-26", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 1 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 1 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 311.0, 391.0, 257.0, 29.0 ],
                                    "text": "p creating scale_def messages"
                                }
                            },
                            {
                                "box": {
                                    "attr": "scale_fill",
                                    "id": "obj-17",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 293.0, 444.0, 249.0, 22.0 ],
                                    "text_width": 128.1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.0 ],
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "fontsize": 14.0,
                                    "id": "obj-15",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 628.0, 236.0, 126.0, 38.0 ],
                                    "text": "<-ignores scale_fill attribute."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgcolor2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgfillcolor_color1": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "gradient",
                                    "gradient": 1,
                                    "id": "obj-34",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 569.0, 236.0, 60.0, 22.0 ],
                                    "text": "scale_def"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.0 ],
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "fontsize": 14.0,
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 29.0, 236.0, 538.0, 22.0 ],
                                    "text": "If we want to reset to mtof / 12-TET, we can simply use an empty scale_def message:"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgcolor2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgfillcolor_color1": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "gradient",
                                    "gradient": 1,
                                    "id": "obj-31",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 338.0, 200.0, 283.0, 22.0 ],
                                    "text": "scale_fill 0, scale_def 60 150 61 300 62 450 63 600"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.0 ],
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "fontsize": 14.0,
                                    "id": "obj-30",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 29.0, 159.0, 715.0, 53.0 ],
                                    "text": "The pitches that are not defined will default to 12-TET. We can change this behaviour by setting the scale_fill attribute to 0 and defining the scale again. This way, note-ons with pitches that are not defined in our internal scale array will be ignored."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 185.0, 366.0, 46.0, 46.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.0 ],
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "fontsize": 14.0,
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 119.0, 714.0, 38.0 ],
                                    "text": "This message will set new pitches for notes 60, 61, 62 and 63 with frequencies of 150hz, 300hz, 450hz and 600hz\n"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgcolor2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgfillcolor_color1": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "gradient",
                                    "gradient": 1,
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 171.0, 94.0, 220.0, 22.0 ],
                                    "text": "scale_def 60 150 61 300 62 450 63 600"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.0 ],
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "fontsize": 14.0,
                                    "id": "obj-12",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 74.0, 692.0, 38.0 ],
                                    "text": "We define pitches using scale_def messages. A scale_def message is a single, long message that consist of index/value pairs i.e.:"
                                }
                            },
                            {
                                "box": {
                                    "attr": "scale_def_mode",
                                    "id": "obj-9",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 29.0, 268.0, 259.0, 22.0 ],
                                    "text_width": 128.1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.0 ],
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "fontsize": 14.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 50.0, 436.0, 22.0 ],
                                    "text": "voice-alligator was designed for easy handling of alternative tunings. ",
                                    "textjustification": 0
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 24.0,
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 245.0, 33.0 ],
                                    "text": "Scales/Microtonality",
                                    "underline": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 185.0, 563.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
                                    "patching_rect": [ 185.0, 521.0, 272.0, 22.0 ],
                                    "text": "poly~ alligator-example-voice 8 @args example-3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 185.0, 484.0, 206.0, 22.0 ],
                                    "text": "voice-alligator 8 @scale_def_mode 1"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-20",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 237.0, 315.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-37",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 559.0, 269.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "5",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-35",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 438.0, 96.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-23",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 263.0, 202.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "4",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-93",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 48.0, 530.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "midpoints": [ 501.5, 525.0, 469.0, 525.0, 469.0, 480.0, 194.5, 480.0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "midpoints": [ 501.5, 555.0, 151.0, 555.0, 151.0, 471.0, 194.5, 471.0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.87431001663208, 0.0, 0.503332495689392, 0.337341861782477 ],
                                    "destination": [ "obj-4", 1 ],
                                    "hidden": 1,
                                    "midpoints": [ 180.5, 348.0, 176.0, 348.0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.87431001663208, 0.0, 0.503332495689392, 0.337341861782477 ],
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 347.5, 399.0, 172.0, 399.0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "order": 0,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "midpoints": [ 321.0, 556.0, 477.28515625, 556.0, 477.28515625, 474.0, 381.5, 474.0 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.87431001663208, 0.0, 0.503332495689392, 0.337341861782477 ],
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 578.5, 417.0, 172.0, 417.0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.87431001663208, 0.0, 0.503332495689392, 0.337341861782477 ],
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 38.5, 510.9375, 194.5, 510.9375 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 825.0, 143.0, 94.0, 22.0 ],
                    "text": "p Microtonality"
                }
            }
        ],
        "lines": [],
        "parameters": {
            "obj-69::obj-21": [ "toggle[1]", "toggle", 0 ],
            "obj-71::obj-11": [ "filter_freq", "filter_freq", 0 ],
            "obj-71::obj-13": [ "decay", "decay", 0 ],
            "obj-71::obj-15": [ "sustain", "sustain", 0 ],
            "obj-71::obj-17": [ "release", "release", 0 ],
            "obj-71::obj-44": [ "live.tab[1]", "live.tab[1]", 0 ],
            "obj-71::obj-49": [ "live.numbox", "live.numbox", 0 ],
            "obj-71::obj-6": [ "attack", "attack", 0 ],
            "obj-71::obj-66": [ "number", "number", 0 ],
            "obj-71::obj-73": [ "number[1]", "number", 0 ],
            "obj-71::obj-9": [ "live.tab", "live.tab", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "styles": [
            {
                "name": "default_style",
                "newobj": {
                    "accentcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "button": {
                    "bgcolor": [ 0.682032, 0.698052, 0.748716, 1.0 ],
                    "color": [ 0.960784, 0.827451, 0.156863, 1.0 ]
                },
                "toggle": {
                    "bgcolor": [ 0.636487, 0.648652, 0.683149, 1.0 ],
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "elementcolor": [ 0.786675, 0.801885, 0.845022, 1.0 ]
                },
                "parentstyle": "",
                "multi": 1
            },
            {
                "name": "default_style-1",
                "newobj": {
                    "accentcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "button": {
                    "bgcolor": [ 0.682032, 0.698052, 0.748716, 1.0 ],
                    "color": [ 0.960784, 0.827451, 0.156863, 1.0 ]
                },
                "toggle": {
                    "bgcolor": [ 0.636487, 0.648652, 0.683149, 1.0 ],
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "elementcolor": [ 0.786675, 0.801885, 0.845022, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "igk",
                "default": {
                    "color": [ 0.847058823529412, 0.882352941176471, 0.890196078431372, 1.0 ],
                    "selectioncolor": [ 0.849573, 1.0, 0.926902, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "master_style",
                "newobj": {
                    "accentcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "attrui": {
                    "bgcolor": [ 0.786675, 0.801885, 0.845022, 1.0 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "button": {
                    "bgcolor": [ 0.682032, 0.698052, 0.748716, 1.0 ],
                    "color": [ 1.0, 0.95051, 0.0, 1.0 ],
                    "elementcolor": [ 0.786675, 0.801885, 0.845022, 1.0 ]
                },
                "ezadc~": {
                    "bgcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "elementcolor": [ 0.862745, 0.870588, 0.878431, 1.0 ]
                },
                "ezdac~": {
                    "bgcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "elementcolor": [ 0.862745, 0.870588, 0.878431, 1.0 ]
                },
                "function": {
                    "bgcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                    "color": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "multislider": {
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "color": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "slider": {
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "color": [ 0.461105, 0.492646, 0.591878, 1.0 ],
                    "elementcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ]
                },
                "toggle": {
                    "bgcolor": [ 0.682032, 0.698052, 0.748716, 1.0 ],
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "elementcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ]
                },
                "message": {
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.786675, 0.801885, 0.845022, 1.0 ],
                        "color2": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                        "proportion": 0.39,
                        "type": "gradient"
                    },
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "umenu": {
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.786675, 0.801885, 0.845022, 1.0 ],
                        "color2": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                        "proportion": 0.39,
                        "type": "gradient"
                    }
                },
                "gain~": {
                    "color": [ 1.0, 0.861448, 0.16921, 1.0 ],
                    "elementcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ]
                },
                "kslider": {
                    "color": [ 1.0, 1.0, 1.0, 1.0 ],
                    "elementcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ]
                },
                "parentstyle": "",
                "multi": 1
            }
        ]
    }
}