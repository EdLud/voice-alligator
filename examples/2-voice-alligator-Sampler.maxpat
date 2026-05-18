{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 87.0, 1212.0, 679.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 106.0, 896.0, 620.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 164.0, 161.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 10,
                                    "presentation_rect": [ 393.0, 173.0, 29.5, 143.0 ],
                                    "text": "if $f1 <= 0.05 then 0 else $f1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-22",
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
                                    "id": "obj-23",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 246.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 442.0, 160.0, 29.5, 22.0 ],
                    "text": "p"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 215.0, 119.0, 170.0, 40.0 ],
                    "text": "increase density to start playback"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 407.0, 804.0, 110.0, 25.0 ],
                    "text": "Turn on audio"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-4",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3.0, 13.0, 371.0, 100.0 ],
                    "text": "This is a Signal-controlled 32 Voice sampler impemented with va-audio~.\n\nIn One-Shot mode the note needs to be freed when the sample-playback ends. To see how that works look into \n\"p calculate business\""
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 390.0, 261.0, 74.0, 43.0 ],
                    "range": [ -0.1, 1.1 ]
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 376.0, 113.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_longname": "live.dial",
                            "parameter_mmax": 0.9,
                            "parameter_mmin": 0.05,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.dial",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 250.0, 182.0, 100.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "noise", "ramp" ],
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.tab[1]",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab[1]"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 522.0, 86.0, 29.0, 20.0 ],
                    "text": "freq"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 373.0, 91.0, 47.0, 20.0 ],
                    "text": "density"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 359.0, 228.0, 135.5, 22.0 ],
                    "text": "selector~ 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 417.0, 189.0, 44.0, 22.0 ],
                    "text": "<~"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 417.0, 58.0, 176.0, 22.0 ],
                    "text": "scale~ -1 1 0 1 0.23 @classic 0"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 417.0, 28.0, 44.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 79.0, 437.0, 153.0, 20.0 ],
                    "text": "drag and drop sample here"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 691.0, 221.0, 65.0, 20.0 ],
                    "text": "scale pitch"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 359.0, 598.0, 55.0, 22.0 ],
                    "text": "mc.dup~"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 472.0, 627.0, 48.0, 86.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "mc.live.gain~[2]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mc.live.gain~[1]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~[2]"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 359.0, 631.0, 48.0, 86.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mc.live.gain~[1]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 580.0, 113.0, 100.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "noise", "ramp", "sin" ],
                            "parameter_longname": "live.tab",
                            "parameter_mmax": 2,
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
                    "id": "obj-130",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 106.0, 218.0, 266.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 127.0, 108.0, 22.0 ],
                                    "text": "scale~ -1 1 0.7 0.9"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 100.0, 76.0, 22.0 ],
                                    "text": "cycle~ 0.125"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-129",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 209.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-129", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 612.0, 282.0, 34.0, 22.0 ],
                    "text": "p vel"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 797.0, 141.0, 34.0, 22.0 ],
                    "text": "cos~"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 797.0, 112.0, 46.0, 22.0 ],
                    "text": "rate~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 685.0, 112.0, 88.0, 22.0 ],
                    "text": "scale~ 0 1 -1 1"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 685.0, 58.0, 46.0, 22.0 ],
                    "text": "rate~ 8"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 580.0, 148.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 580.0, 189.0, 175.9999999999999, 22.0 ],
                    "text": "selector~ 3 1"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 106.0, 896.0, 620.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 101.0, 76.0, 37.0, 22.0 ],
                                    "text": "* 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 85.0, 178.0, 30.0, 22.0 ],
                                    "text": "*~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 209.0, 54.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 85.0, 154.0, 44.0, 22.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 127.0, 70.0, 22.0 ],
                                    "text": "round~ 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 100.0, 121.0, 22.0 ],
                                    "text": "scale~ -1 1 100 1000"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-108",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-109",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 101.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-110",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 291.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-110", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 1 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 1 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 580.0, 255.0, 107.0, 22.0 ],
                    "text": "p pitch"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2181.0, 401.0, 150.0, 20.0 ]
                }
            },
            {
                "box": {
                    "attr": "steal",
                    "id": "obj-69",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 846.0, 254.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 32.0, 147.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 32.0, 175.0, 70.0, 22.0 ],
                    "text": "vibes-a1.aif"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 32.0, 204.0, 80.0, 22.0 ],
                    "text": "prepend read"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 32.0, 415.0, 259.4039473801852, 63.649122804403305 ],
                    "types": [ "AIFF", "FLAC", "MPEG", "WAVE" ]
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 32.0, 302.0, 190.0, 22.0 ],
                    "text": "loadmess buffername #0-sound"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 233.0, 302.0, 111.0, 22.0 ],
                    "text": "prepend sample_sr"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 10,
                    "outlettype": [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
                    "patching_rect": [ 233.0, 272.0, 113.5, 22.0 ],
                    "text": "info~ #0-sound"
                }
            },
            {
                "box": {
                    "fontsize": 16.62359379750684,
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 32.0, 233.0, 220.0, 27.0 ],
                    "text": "buffer~ #0-sound"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 668.0, 219.0, 24.0, 24.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "toggle",
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
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 87.0, 1212.0, 679.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 455.5, 87.0, 37.0, 22.0 ],
                                    "text": "* 100"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 459.0, 30.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 150.0, 446.0, 157.0, 22.0 ],
                                    "text": "mc.pack~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 150.0, 382.0, 157.0, 22.0 ],
                                    "text": "mc.unpack~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "signal" ],
                                    "patching_rect": [ 150.0, 414.0, 295.0, 22.0 ],
                                    "text": "abl.device.limiter~ 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 150.0, 351.0, 56.0, 22.0 ],
                                    "text": "mc.*~ 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 150.0, 321.0, 92.0, 22.0 ],
                                    "text": "mc.mixdown~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 106.0, 896.0, 620.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patching_rect": [ 154.0, 133.0, 42.0, 22.0 ],
                                                    "text": "mc.+~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 154.0, 28.0, 58.0, 22.0 ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 154.0, 67.0, 145.0, 22.0 ],
                                                    "text": "spreadinclusive 120 130"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-62",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patching_rect": [ 466.8333333333333, 178.0, 86.0, 22.0 ],
                                                    "text": "mcs.sig~ 3700"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patching_rect": [ 362.8333333333333, 178.0, 80.0, 22.0 ],
                                                    "text": "mcs.sig~ 100"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patching_rect": [ 154.0, 100.0, 138.0, 22.0 ],
                                                    "text": "mc.sig~ 120 @chans 32"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-57",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patching_rect": [ 258.8333333333333, 178.0, 83.0, 22.0 ],
                                                    "text": "mcs.sig~ 0.73"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 7,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 4,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 34.0, 87.0, 771.0, 679.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-15",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 98.0, 345.0, 53.0, 22.0 ],
                                                                    "text": "mc.limi~"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 390.0, 106.0, 100.0, 22.0 ],
                                                                    "text": "mc.clip~ 5 22000"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-13",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 551.0, 133.0, 90.0, 22.0 ],
                                                                    "text": "mc.clip~ 0 0.99"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-12",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 205.0, 76.0, 90.0, 22.0 ],
                                                                    "text": "mc.clip~ 0 0.99"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-10",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 267.0, 95.0, 93.0, 22.0 ],
                                                                    "text": "mc.clip~ 0. 100."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "feedback",
                                                                    "id": "obj-2",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 205.0, 16.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "drywet",
                                                                    "id": "obj-9",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 267.0, 16.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 502.0, 54.0, 52.0, 22.0 ],
                                                                    "text": "mc.+~ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "fil_type",
                                                                    "id": "obj-7",
                                                                    "index": 7,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 502.0, 16.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "fil q",
                                                                    "id": "obj-6",
                                                                    "index": 6,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 437.0, 16.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 5,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 276.0, 283.0, 279.0, 22.0 ],
                                                                    "text": "mc.selector~ 4 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "fil freq",
                                                                    "id": "obj-3",
                                                                    "index": 5,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 385.0, 16.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "time",
                                                                    "id": "obj-1",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 159.0, 16.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-51",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 276.0, 349.0, 248.0, 22.0 ],
                                                                    "text": "mc.*~ 0.7"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-46",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 98.0, 211.0, 92.0, 22.0 ],
                                                                    "text": "mc.tapout~ 100"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-44",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "tapconnect" ],
                                                                    "patching_rect": [ 98.0, 133.0, 98.0, 22.0 ],
                                                                    "text": "mc.tapin~ 60000"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "signal in",
                                                                    "id": "obj-17",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 78.0, 16.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-45",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 77.0, 591.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
                                                                    "patching_rect": [ 341.0, 203.0, 229.0, 22.0 ],
                                                                    "text": "mc.svf~"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 214.0, 375.0, 52.0, 22.0 ],
                                                                    "text": "mc.!-~ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-49",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 77.0, 535.0, 50.0, 22.0 ],
                                                                    "text": "mc.*~ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-35",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 119.0, 445.0, 50.0, 22.0 ],
                                                                    "text": "mc.*~ 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 9.0,
                                                                    "id": "obj-375",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "multichannelsignal" ],
                                                                    "patching_rect": [ 148.0, 294.0, 52.0, 19.0 ],
                                                                    "text": "mc.*~ 0.01"
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-375", 0 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 1 ],
                                                                    "source": [ "obj-11", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-51", 1 ],
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 2 ],
                                                                    "source": [ "obj-13", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 1 ],
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-44", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-45", 0 ],
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-11", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-375", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-375", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-51", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "source": [ "obj-44", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-46", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-46", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-45", 0 ],
                                                                    "source": [ "obj-49", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 4 ],
                                                                    "source": [ "obj-5", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 3 ],
                                                                    "source": [ "obj-5", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 2 ],
                                                                    "source": [ "obj-5", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 1 ],
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-44", 0 ],
                                                                    "source": [ "obj-51", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-6", 0 ]
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
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 0 ],
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 49.833333333333314, 215.0, 644.0, 22.0 ],
                                                    "text": "p delay"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-79",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-80",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 252.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 1 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 2 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 3 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 4 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-79", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 150.0, 293.0, 47.0, 22.0 ],
                                    "text": "p delay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 275.0, 141.0, 147.0, 22.0 ],
                                    "text": "mc.scale~ -1 1 500 60000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 119.0, 206.0, 89.0, 22.0 ],
                                    "text": "mc.round~ 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 119.0, 172.0, 331.0, 22.0 ],
                                    "text": "mc.rampsmooth~ 15000 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 119.0, 93.0, 92.0, 22.0 ],
                                    "text": "mc.sah~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 119.0, 141.0, 140.0, 22.0 ],
                                    "text": "mc.scale~ -1 1 100 3000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 119.0, 63.0, 44.0, 22.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 26.0, 186.0, 80.0, 22.0 ],
                                    "text": "mc.*~ 0.0007"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [ "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
                                    "patching_rect": [ 26.0, 266.0, 205.0, 22.0 ],
                                    "text": "mc.svf~ 50 0.95"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-53",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 26.0, 18.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-54",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 192.0, 14.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-55",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 150.0, 508.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 1 ],
                                    "source": [ "obj-11", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-18", 2 ]
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
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "order": 1,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "order": 0,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 1 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 1 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-81", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 472.0, 561.0, 278.0, 22.0 ],
                    "text": "p resonant delay"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 647.0, 418.0, 196.0, 20.0 ],
                    "text": "< impulse triggers sample playback"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 921.0, 682.0, 146.0, 20.0 ],
                    "text": "< what is our adsr status?"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 695.0, 675.0, 128.0, 33.0 ],
                    "text": "is the sample playing>\nor in loop mode?"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 632.0, 148.0, 44.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 359.0, 764.0, 58.0, 22.0 ],
                    "text": "mc.tanh~"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 359.0, 736.0, 60.0, 22.0 ],
                    "text": "mc.*~ 0.7"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-61",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 476.0, 85.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
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
                    "attr": "release",
                    "id": "obj-19",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 846.0, 225.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "sustain_dur",
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 846.0, 194.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "decay",
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 846.0, 160.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "attack",
                    "id": "obj-7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 846.0, 126.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 180.0, 146.0, 418.0, 400.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 82.0, 40.0, 82.0, 20.0 ],
                                    "text": "playing status"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 7,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 215.0, 130.0, 150.0, 100.0 ],
                                    "text": "To calculate business, multiply playing status with ADSR.\n\nIf one of them is 0, we consider the voice done and free it."
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
                                    "patching_rect": [ 50.0, 323.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 219.0, 40.0, 42.0, 20.0 ],
                                    "text": "ADSR"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 194.0, 135.0, 22.0 ],
                                    "text": "mc.rampsmooth~ 0 200"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 277.0, 68.0, 22.0 ],
                                    "text": "mc.tapout~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "tapconnect" ],
                                    "patching_rect": [ 50.0, 235.0, 61.0, 22.0 ],
                                    "text": "mc.tapin~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 151.0, 154.0, 22.0 ],
                                    "text": "mc.*~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-38",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-39",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 185.0, 40.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 1 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 813.0, 699.0, 117.0, 22.0 ],
                    "text": "p calculate business"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 4,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 105.0, 87.0, 755.0, 551.0 ],
                            "integercoordinates": 1,
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "param basenote 60 @min 0. @max 127.",
                                        "patching_rect": [ 472.0, 81.0, 225.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-20",
                                        "color": [ 0.792156862745098, 0.792156862745098, 0.031372549019608, 1.0 ],
                                        "outlettype": [ "" ],
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": ">",
                                        "patching_rect": [ 419.0, 441.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-14",
                                        "outlettype": [ "" ],
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "sound",
                                        "patching_rect": [ 74.0, 513.0, 41.0, 20.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-19",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "where is playback at?",
                                        "patching_rect": [ 606.0, 512.0, 124.0, 20.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "is sample playing?",
                                        "patching_rect": [ 459.0, 512.0, 107.0, 20.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 569.0, 441.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-17",
                                        "outlettype": [ "" ],
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 3",
                                        "patching_rect": [ 569.0, 511.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "abs",
                                        "patching_rect": [ 419.0, 410.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-12",
                                        "outlettype": [ "" ],
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 419.0, 378.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-10",
                                        "outlettype": [ "" ],
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "copied from philip meyer and slightly modified\nhttps://www.youtube.com/playlist?list=PLyrJzbPfiEyD1S3eIGK-cZmqa3WeWU9vW",
                                        "linecount": 3,
                                        "patching_rect": [ 300.0, 1.0, 311.0, 47.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "dcblock",
                                        "patching_rect": [ 37.0, 382.0, 49.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-3",
                                        "outlettype": [ "" ],
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "philip meyer 2023\n\nedited by Edis Ludwig\n2026",
                                        "linecount": 4,
                                        "patching_rect": [ 202.0, 442.0, 125.0, 60.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "pitch (midi note)",
                                        "patching_rect": [ 174.0, 50.0, 94.0, 20.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-91",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "pulse triggers playback",
                                        "patching_rect": [ 37.0, 50.0, 131.0, 20.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-90",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "region start (samps)",
                                        "linecount": 2,
                                        "patching_rect": [ 493.0, 232.0, 75.0, 33.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-89",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "region length (samps)",
                                        "linecount": 2,
                                        "patching_rect": [ 350.0, 232.0, 86.0, 33.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-88",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "comment",
                                        "text": "0 = one shot\n1 = loop",
                                        "linecount": 2,
                                        "patching_rect": [ 551.0, 283.0, 75.0, 33.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-87",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "gen @title normalize",
                                        "patching_rect": [ 419.0, 346.0, 118.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-85",
                                        "outlettype": [ "" ],
                                        "numinlets": 1,
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [ 59.0, 106.0, 640.0, 480.0 ],
                                            "integercoordinates": 1,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "dim buffername",
                                                        "patching_rect": [ 67.0, 100.0, 92.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-26",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "/",
                                                        "patching_rect": [ 50.0, 130.0, 35.5, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-25",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1",
                                                        "patching_rect": [ 50.0, 40.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-83",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1",
                                                        "patching_rect": [ 50.0, 212.0, 35.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-84",
                                                        "numinlets": 1
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-25", 0 ],
                                                        "destination": [ "obj-84", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-83", 0 ],
                                                        "destination": [ "obj-25", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-26", 0 ],
                                                        "destination": [ "obj-25", 1 ]
                                                    }
                                                }
                                            ]
                                        }
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "gen @t loop",
                                        "patching_rect": [ 312.0, 338.0, 73.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-82",
                                        "outlettype": [ "" ],
                                        "numinlets": 3,
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [ 59.0, 106.0, 640.0, 480.0 ],
                                            "integercoordinates": 1,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "if loop mode is on, retrigger playback whenever the loop region changes",
                                                        "linecount": 6,
                                                        "patching_rect": [ 263.5, 151.0, 95.0, 87.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-4",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "if yes and loop mode is enabled, re-trigger the playback",
                                                        "linecount": 6,
                                                        "patching_rect": [ 16.0, 151.0, 72.0, 87.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-3",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "is ramp value == region end?",
                                                        "linecount": 3,
                                                        "patching_rect": [ 11.0, 75.0, 72.0, 47.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-2",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "+ start_pct+end_pct",
                                                        "patching_rect": [ 213.5, 124.0, 115.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-52",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "&&",
                                                        "patching_rect": [ 203.0, 175.0, 29.5, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-80",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "change",
                                                        "patching_rect": [ 213.5, 151.0, 48.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-79",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "&&",
                                                        "patching_rect": [ 90.0, 180.0, 98.5, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-77",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "> 0",
                                                        "patching_rect": [ 90.0, 151.0, 26.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-75",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "change",
                                                        "patching_rect": [ 90.0, 127.0, 48.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-74",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": ">=",
                                                        "patching_rect": [ 90.0, 100.0, 52.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-72",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1",
                                                        "patching_rect": [ 90.0, 40.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-68",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 2",
                                                        "patching_rect": [ 123.0, 40.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-69",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 3",
                                                        "patching_rect": [ 156.0, 40.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-70",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1",
                                                        "patching_rect": [ 90.0, 240.0, 35.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-81",
                                                        "numinlets": 1
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-80", 0 ],
                                                        "destination": [ "obj-81", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-79", 0 ],
                                                        "destination": [ "obj-80", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-77", 0 ],
                                                        "destination": [ "obj-81", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-75", 0 ],
                                                        "destination": [ "obj-77", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-74", 0 ],
                                                        "destination": [ "obj-75", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-72", 0 ],
                                                        "destination": [ "obj-74", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-70", 0 ],
                                                        "destination": [ "obj-80", 0 ],
                                                        "order": 0
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-70", 0 ],
                                                        "destination": [ "obj-77", 1 ],
                                                        "order": 1
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-69", 0 ],
                                                        "destination": [ "obj-72", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-68", 0 ],
                                                        "destination": [ "obj-72", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-52", 0 ],
                                                        "destination": [ "obj-79", 0 ]
                                                    }
                                                }
                                            ]
                                        }
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "gen @title playback-ramp",
                                        "patching_rect": [ 37.0, 245.0, 300.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-67",
                                        "outlettype": [ "" ],
                                        "numinlets": 3,
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [ 606.0, 122.0, 640.0, 480.0 ],
                                            "integercoordinates": 1,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "region length (samps)",
                                                        "linecount": 2,
                                                        "patching_rect": [ 264.5, 14.0, 92.0, 33.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-4",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "delta to accum",
                                                        "patching_rect": [ 161.5, 18.0, 89.0, 20.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-3",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "pulse",
                                                        "patching_rect": [ 58.5, 18.0, 55.0, 20.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-2",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "?",
                                                        "patching_rect": [ 58.5, 181.5, 122.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-12",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 3
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "history",
                                                        "patching_rect": [ 200.5, 112.5, 44.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-9",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "clip",
                                                        "patching_rect": [ 161.5, 152.5, 122.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-8",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 3
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1",
                                                        "patching_rect": [ 58.5, 40.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-63",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 2",
                                                        "patching_rect": [ 161.5, 40.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-64",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 3",
                                                        "patching_rect": [ 264.5, 40.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-65",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1",
                                                        "patching_rect": [ 58.5, 281.0, 35.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-66",
                                                        "numinlets": 1
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-64", 0 ],
                                                        "destination": [ "obj-8", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-9", 0 ],
                                                        "destination": [ "obj-8", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-8", 0 ],
                                                        "destination": [ "obj-12", 2 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-65", 0 ],
                                                        "destination": [ "obj-8", 2 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-63", 0 ],
                                                        "destination": [ "obj-12", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-12", 0 ],
                                                        "destination": [ "obj-9", 0 ],
                                                        "midpoints": [ 68.0, 218.5, 51.875, 218.5, 51.875, 101.5, 210.0, 101.5 ],
                                                        "order": 0
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-12", 0 ],
                                                        "destination": [ "obj-66", 0 ],
                                                        "order": 1
                                                    }
                                                }
                                            ]
                                        }
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "gen @title pb_speed",
                                        "patching_rect": [ 178.0, 163.0, 159.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-62",
                                        "outlettype": [ "" ],
                                        "numinlets": 2,
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [ 59.0, 106.0, 640.0, 480.0 ],
                                            "integercoordinates": 1,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "*",
                                                        "patching_rect": [ 50.0, 176.0, 62.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-23",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "/ samplerate",
                                                        "patching_rect": [ 178.0, 138.0, 75.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-22",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "exp2",
                                                        "patching_rect": [ 50.0, 150.0, 35.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-20",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "/ 12.",
                                                        "patching_rect": [ 50.0, 126.0, 32.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-19",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "- basenote",
                                                        "patching_rect": [ 50.0, 100.0, 65.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-18",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1",
                                                        "patching_rect": [ 50.0, 40.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-59",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 2",
                                                        "patching_rect": [ 178.0, 32.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-60",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1",
                                                        "patching_rect": [ 50.0, 258.0, 35.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-61",
                                                        "numinlets": 1
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-60", 0 ],
                                                        "destination": [ "obj-22", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-23", 0 ],
                                                        "destination": [ "obj-61", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-22", 0 ],
                                                        "destination": [ "obj-23", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-20", 0 ],
                                                        "destination": [ "obj-23", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-19", 0 ],
                                                        "destination": [ "obj-20", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-18", 0 ],
                                                        "destination": [ "obj-19", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-59", 0 ],
                                                        "destination": [ "obj-18", 0 ]
                                                    }
                                                }
                                            ]
                                        }
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "gen @title pulse-detect",
                                        "linecount": 2,
                                        "patching_rect": [ 37.0, 113.0, 87.0, 35.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-55",
                                        "outlettype": [ "" ],
                                        "numinlets": 1,
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [ 59.0, 106.0, 640.0, 480.0 ],
                                            "integercoordinates": 1,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "> 0",
                                                        "patching_rect": [ 50.0, 150.0, 26.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-17",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "change",
                                                        "patching_rect": [ 50.0, 126.0, 48.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-16",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "bool",
                                                        "patching_rect": [ 50.0, 100.0, 31.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-15",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1",
                                                        "patching_rect": [ 50.0, 40.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-53",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1",
                                                        "patching_rect": [ 50.0, 232.0, 35.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-54",
                                                        "numinlets": 1
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-53", 0 ],
                                                        "destination": [ "obj-15", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-17", 0 ],
                                                        "destination": [ "obj-54", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-16", 0 ],
                                                        "destination": [ "obj-17", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-15", 0 ],
                                                        "destination": [ "obj-16", 0 ]
                                                    }
                                                }
                                            ]
                                        }
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "param mode 0 @min 0 @max 1",
                                        "patching_rect": [ 366.0, 288.0, 183.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-76",
                                        "color": [ 0.792156862745098, 0.792156862745098, 0.031372549019608, 1.0 ],
                                        "outlettype": [ "" ],
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pass",
                                        "patching_rect": [ 37.0, 288.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-73",
                                        "outlettype": [ "" ],
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "gen @title region",
                                        "patching_rect": [ 339.0, 208.0, 158.0, 22.0 ],
                                        "numoutlets": 2,
                                        "id": "obj-71",
                                        "outlettype": [ "", "" ],
                                        "numinlets": 3,
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [ 59.0, 106.0, 640.0, 480.0 ],
                                            "integercoordinates": 1,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "end",
                                                        "patching_rect": [ 239.0, 17.0, 43.0, 20.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-12",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "start",
                                                        "patching_rect": [ 190.0, 17.0, 43.0, 20.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-11",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "pulse",
                                                        "patching_rect": [ 119.0, 17.0, 43.0, 20.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-9",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "start pos in samps",
                                                        "linecount": 2,
                                                        "patching_rect": [ 227.0, 229.0, 58.0, 33.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-8",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "don't update until there's a new playback pulse",
                                                        "linecount": 4,
                                                        "patching_rect": [ 314.0, 278.0, 85.0, 60.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-7",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "minimum of 100 samples",
                                                        "linecount": 3,
                                                        "patching_rect": [ 36.0, 220.0, 66.0, 47.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-6",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "region length in samps",
                                                        "linecount": 3,
                                                        "patching_rect": [ 36.0, 167.0, 66.0, 47.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-5",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": ">",
                                                        "patching_rect": [ 211.0, 80.0, 29.5, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-4",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "normalized region length (if start is > than end, use end + 1 to cause playback to wrap)",
                                                        "linecount": 4,
                                                        "patching_rect": [ 260.0, 76.0, 152.0, 60.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-3",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "maximum 100",
                                                        "patching_rect": [ 104.0, 229.0, 84.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-1",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "latch",
                                                        "patching_rect": [ 190.0, 278.0, 113.5, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-48",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "latch",
                                                        "patching_rect": [ 104.0, 282.0, 34.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-47",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "*",
                                                        "patching_rect": [ 190.0, 229.0, 29.5, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-46",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "*",
                                                        "patching_rect": [ 104.0, 192.0, 174.5, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-45",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "!-",
                                                        "patching_rect": [ 104.0, 114.0, 154.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-44",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 2
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "dim buffername",
                                                        "patching_rect": [ 260.0, 157.0, 92.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-10",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 2",
                                                        "patching_rect": [ 190.0, 39.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-66",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1",
                                                        "patching_rect": [ 119.0, 39.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-67",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 3",
                                                        "patching_rect": [ 239.0, 39.0, 28.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-68",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1",
                                                        "patching_rect": [ 104.0, 351.0, 35.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-69",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 2",
                                                        "patching_rect": [ 190.0, 351.0, 35.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-70",
                                                        "numinlets": 1
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-68", 0 ],
                                                        "destination": [ "obj-44", 1 ],
                                                        "order": 0
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-68", 0 ],
                                                        "destination": [ "obj-4", 1 ],
                                                        "order": 1
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-67", 0 ],
                                                        "destination": [ "obj-48", 1 ],
                                                        "midpoints": [ 128.5, 271.0, 294.0, 271.0 ],
                                                        "order": 0
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-67", 0 ],
                                                        "destination": [ "obj-47", 1 ],
                                                        "order": 1
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-66", 0 ],
                                                        "destination": [ "obj-46", 0 ],
                                                        "order": 1
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-66", 0 ],
                                                        "destination": [ "obj-44", 0 ],
                                                        "order": 2
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-66", 0 ],
                                                        "destination": [ "obj-4", 0 ],
                                                        "order": 0
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-48", 0 ],
                                                        "destination": [ "obj-70", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-47", 0 ],
                                                        "destination": [ "obj-69", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-46", 0 ],
                                                        "destination": [ "obj-48", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-45", 0 ],
                                                        "destination": [ "obj-1", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-44", 0 ],
                                                        "destination": [ "obj-45", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-4", 0 ],
                                                        "destination": [ "obj-44", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-1", 0 ],
                                                        "destination": [ "obj-47", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-10", 0 ],
                                                        "destination": [ "obj-45", 1 ],
                                                        "order": 0
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-10", 0 ],
                                                        "destination": [ "obj-46", 1 ],
                                                        "order": 1
                                                    }
                                                }
                                            ]
                                        }
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "param end_pct 1. @min 0. @max 1.",
                                        "linecount": 2,
                                        "patching_rect": [ 478.0, 163.0, 112.0, 35.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-43",
                                        "color": [ 0.792156862745098, 0.792156862745098, 0.031372549019608, 1.0 ],
                                        "outlettype": [ "" ],
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "param start_pct 0. @min 0. @max 1.",
                                        "linecount": 2,
                                        "patching_rect": [ 409.0, 119.0, 118.0, 35.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-42",
                                        "color": [ 0.792156862745098, 0.792156862745098, 0.031372549019608, 1.0 ],
                                        "outlettype": [ "" ],
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pass",
                                        "patching_rect": [ 37.0, 163.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-41",
                                        "outlettype": [ "" ],
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "param sample_sr 44100",
                                        "linecount": 2,
                                        "patching_rect": [ 318.0, 74.0, 105.0, 35.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-21",
                                        "color": [ 0.792156862745098, 0.792156862745098, 0.031372549019608, 1.0 ],
                                        "outlettype": [ "" ],
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 2",
                                        "patching_rect": [ 419.0, 511.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-11",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "peek buffername @interp linear @boundmode wrap",
                                        "patching_rect": [ 37.0, 325.0, 285.0, 22.0 ],
                                        "numoutlets": 2,
                                        "id": "obj-6",
                                        "outlettype": [ "", "" ],
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "buffer buffername",
                                        "patching_rect": [ 85.0, 435.0, 103.0, 22.0 ],
                                        "numoutlets": 2,
                                        "id": "obj-5",
                                        "outlettype": [ "", "" ],
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 37.0, 74.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-1",
                                        "outlettype": [ "" ],
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 178.0, 74.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-2",
                                        "outlettype": [ "" ],
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 37.0, 512.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 312.0, 389.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "id": "obj-78",
                                        "outlettype": [ "" ],
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-62", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-55", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-85", 0 ],
                                        "destination": [ "obj-17", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-85", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-73", 0 ],
                                        "destination": [ "obj-85", 0 ],
                                        "midpoints": [ 46.5, 317.75, 428.5, 317.75 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-82", 0 ],
                                        "destination": [ "obj-78", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-78", 0 ],
                                        "destination": [ "obj-41", 0 ],
                                        "midpoints": [ 321.5, 422.0, 16.0, 422.0, 16.0, 156.0, 46.5, 156.0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-76", 0 ],
                                        "destination": [ "obj-82", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-73", 0 ],
                                        "destination": [ "obj-82", 0 ],
                                        "midpoints": [ 46.5, 317.5, 321.5, 317.5 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-71", 0 ],
                                        "destination": [ "obj-82", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-71", 1 ],
                                        "destination": [ "obj-82", 1 ],
                                        "midpoints": [ 487.5, 278.0, 348.5, 278.0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-71", 1 ],
                                        "destination": [ "obj-73", 0 ],
                                        "midpoints": [ 487.5, 278.5, 46.5, 278.5 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-71", 0 ],
                                        "destination": [ "obj-67", 2 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-67", 0 ],
                                        "destination": [ "obj-73", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-62", 0 ],
                                        "destination": [ "obj-67", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-55", 0 ],
                                        "destination": [ "obj-41", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-43", 0 ],
                                        "destination": [ "obj-71", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-42", 0 ],
                                        "destination": [ "obj-71", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-41", 0 ],
                                        "destination": [ "obj-71", 0 ],
                                        "midpoints": [ 46.5, 193.0, 348.5, 193.0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-41", 0 ],
                                        "destination": [ "obj-67", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-62", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-73", 0 ],
                                        "destination": [ "obj-6", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 359.0, 450.0, 295.0, 22.0 ],
                    "text": "mc.gen~ @title sampler @basenote 45",
                    "wrapper_uniquekey": "u915011317"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 998.0, 129.0, 210.0, 114.0 ],
                    "text": "the vibraphone has a clean start, meaning it does not start mid-waveform, but it has a natural attack that we want to keep. \n\nfor this we set the attack time to 0ms. a declick will still be performed, should the note be stolen"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 359.0, 379.0, 58.0, 22.0 ],
                    "text": "mc.ftom~"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 424.0, 417.0, 55.0, 22.0 ],
                    "text": "mode $1"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "items": [ "One", "Shot", ",", "Loop" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 424.0, 379.0, 77.0, 22.0 ]
                }
            },
            {
                "box": {
                    "buffername": "#0-sound",
                    "id": "obj-27",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 32.0, 349.0, 259.4039473801852, 63.649122804403305 ],
                    "selectioncolor": [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 0.47 ],
                    "setmode": 1
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 476.0, 123.0, 52.0, 22.0 ],
                    "text": "phasor~"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "local": 1,
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 359.0, 794.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "int" ],
                    "patching_rect": [ 476.0, 171.0, 41.0, 22.0 ],
                    "text": "what~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 359.0, 317.0, 571.0, 22.0 ],
                    "text": "voice-alligator-audio~ 32 @attack 0 @sustain_dur 3000"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 359.0, 570.0, 66.0, 22.0 ],
                    "text": "mc.*~ 0.35"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 359.0, 544.0, 92.0, 22.0 ],
                    "text": "mc.mixdown~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 359.0, 499.0, 135.0, 22.0 ],
                    "text": "mc.*~"
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
                    "patching_rect": [ 511.0, 795.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "text": "1",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                    "fontface": 1,
                    "hint": "",
                    "id": "obj-15",
                    "ignoreclick": 1,
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 206.0, 105.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "text": "2",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 0,
                    "source": [ "obj-1", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "order": 1,
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 1 ],
                    "midpoints": [ 506.5, 359.70703125, 920.5, 359.70703125 ],
                    "order": 0,
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 1 ],
                    "order": 1,
                    "source": [ "obj-1", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "midpoints": [ 855.5, 309.90673828125, 368.5, 309.90673828125 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "midpoints": [ 855.5, 309.9638671875, 368.5, 309.9638671875 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "order": 1,
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "midpoints": [ 694.5, 87.0, 806.5, 87.0 ],
                    "order": 0,
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 2 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 3 ],
                    "midpoints": [ 806.5, 177.0625, 746.4999999999999, 177.0625 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 1 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "midpoints": [ 855.5, 309.4951171875, 368.5, 309.4951171875 ],
                    "source": [ "obj-19", 0 ]
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
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 506.5, 486.94140625, 822.5, 486.94140625 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "order": 0,
                    "source": [ "obj-24", 0 ]
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
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 485.5, 158.44140625, 564.66796875, 158.44140625, 564.66796875, 96.54296875, 658.8203125, 96.54296875, 658.8203125, 42.20703125, 694.5, 42.20703125 ],
                    "order": 0,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "midpoints": [ 368.5, 535.28125, 481.5, 535.28125 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 0,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 1,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 4 ],
                    "midpoints": [ 822.5, 761.2578125, 1074.3984375, 761.2578125, 1074.3984375, 298.64453125, 920.5, 298.64453125 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 41.5, 490.921875, 9.8515625, 490.921875, 9.8515625, 196.5078125, 41.5, 196.5078125 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 2 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 1 ],
                    "order": 1,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 2 ],
                    "midpoints": [ 677.5, 248.2265625, 740.5, 248.2265625 ],
                    "order": 0,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "midpoints": [ 855.5, 309.25341796875, 368.5, 309.25341796875 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "midpoints": [ 855.5, 308.86328125, 368.5, 308.86328125 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-133": [ "live.tab", "live.tab", 0 ],
            "obj-140": [ "mc.live.gain~[1]", "mc.live.gain~[1]", 0 ],
            "obj-141": [ "mc.live.gain~[2]", "mc.live.gain~[1]", 0 ],
            "obj-31": [ "live.tab[1]", "live.tab", 0 ],
            "obj-35": [ "live.dial", "live.dial", 0 ],
            "obj-61": [ "number", "number", 0 ],
            "obj-63": [ "toggle", "toggle", 0 ],
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
                "name": "igk",
                "default": {
                    "color": [ 0.847058823529412, 0.882352941176471, 0.890196078431372, 1.0 ],
                    "selectioncolor": [ 0.849573, 1.0, 0.926902, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ]
    }
}