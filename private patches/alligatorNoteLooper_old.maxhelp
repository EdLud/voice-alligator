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
        "showrootpatcherontab": 0,
        "showontab": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-10",
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
                                    "bgcolor": [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 0.18 ],
                                    "id": "obj-25",
                                    "linecount": 6,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 725.0, 572.0, 150.0, 87.0 ],
                                    "text": "                  <\n\n<the dict as well as the parameter send gets the argument with which the poly~ was instantiated"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.18 ],
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 635.0, 327.0, 154.0, 20.0 ],
                                    "text": "<noteLooper has stream 4"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.16078431372549, 0.682352941176471, 1.0, 1.0 ],
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 605.0, 600.0, 118.0, 22.0 ],
                                    "text": "s example-5-params"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 41.0, 119.0, 97.0, 20.0 ],
                                    "text": "work in progress"
                                }
                            },
                            {
                                "box": {
                                    "dontreplace": 1,
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 508.0, 375.0, 105.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 244.0, 190.0, 74.0 ],
                                    "text": "<we can loop parameter changes by recording them to the auxilary in of our looper, noteLooper will then insert it's stream (argument 1) to the parameter message"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1145.0, 211.0, 150.0, 60.0 ],
                                    "text": "<we need some sort of storage to remember parameter changes per stream"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 604.0, 287.0, 78.0, 22.0 ],
                                    "text": "prepend play"
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
                                    "patching_rect": [ 676.0, 425.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 676.0, 399.0, 61.0, 22.0 ],
                                    "text": "route play"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0 ],
                                    "id": "obj-73",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 635.0, 252.0, 31.0, 20.0 ],
                                    "text": "play"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 604.0, 250.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 512.0, 287.0, 90.0, 22.0 ],
                                    "text": "prepend record"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 716.0, 375.0, 111.0, 22.0 ],
                                    "text": "s toAdvancedVoice",
                                    "textcolor": [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-20",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 697.0, 244.0, 86.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 697.0, 279.0, 72.0, 22.0 ],
                                    "text": "ffreq $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 512.0, 250.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 512.0, 326.0, 123.0, 22.0 ],
                                    "text": "voice-alligator-looper 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 1012.0, 173.0, 58.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "dictionary", "", "", "", "" ],
                                    "patching_rect": [ 1012.0, 211.0, 131.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "dict example-5-params"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "dict.view",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1012.0, 279.0, 163.0, 333.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-101",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1150.0, 40.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "6",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-96",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 934.0, 40.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "5",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-89",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 679.0, 40.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "4",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-86",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 406.0, 40.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.18 ],
                                    "id": "obj-85",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 406.0, 421.0, 104.0, 20.0 ],
                                    "text": "<stream 3 notes"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 0.18 ],
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 113.0, 421.0, 104.0, 20.0 ],
                                    "text": "stream 2 notes >"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
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
                                    "patching_rect": [ 325.0, 240.5, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
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
                                    "patching_rect": [ 406.0, 587.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 224.0, 250.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 224.0, 294.0, 63.0, 22.0 ],
                                    "text": "metro 700"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1023.5, 84.0, 73.0, 22.0 ],
                                    "text": "2 attack 7"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 790.5, 84.0, 77.0, 22.0 ],
                                    "text": "2 wform sine"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "dictionary", "", "", "", "" ],
                                    "patching_rect": [ 654.0, 572.0, 131.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "dict example-5-params"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 344.0, 420.0, 59.0, 22.0 ],
                                    "text": "append 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 344.0, 346.0, 26.0, 26.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
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
                                        "rect": [ 134.0, 159.0, 470.0, 386.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
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
                                                                    "patching_rect": [ 43.0, 374.0, 81.0, 24.0 ],
                                                                    "text": "% #1"
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
                                                    "patching_rect": [ 50.0, 92.0, 66.0, 22.0 ],
                                                    "text": "p urn-jb 50"
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
                                                    "text": "makenote 10 400"
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
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 344.0, 386.0, 62.0, 22.0 ],
                                    "text": "p notegen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 224.0, 420.0, 59.0, 22.0 ],
                                    "text": "append 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 224.0, 346.0, 26.0, 26.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
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
                                        "rect": [ 134.0, 159.0, 470.0, 386.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
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
                                                                    "patching_rect": [ 43.0, 374.0, 81.0, 24.0 ],
                                                                    "text": "% #1"
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
                                                    "patching_rect": [ 50.0, 76.0, 66.0, 22.0 ],
                                                    "text": "p urn-jb 50"
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
                                                    "text": "makenote 10 400"
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
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 224.0, 386.0, 62.0, 22.0 ],
                                    "text": "p notegen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
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
                                        "rect": [ 324.0, 267.0, 363.0, 326.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 83.0, 17.5, 261.0, 33.0 ],
                                                    "text": "either [param name, param value]\nor [stream number, param name, param value]"
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
                                                    "patching_rect": [ 38.0, 19.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 172.0, 227.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 38.0, 214.0, 49.0, 22.0 ],
                                                    "text": "append"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 38.0, 156.0, 124.0, 22.0 ],
                                                    "text": "sprintf replace %s::%i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 38.0, 100.0, 153.0, 22.0 ],
                                                    "text": "zl slice 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-14",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 270.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-86",
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
                                                        "rect": [ 319.0, 137.0, 585.0, 529.0 ],
                                                        "subpatcher_template": "Default Max 7",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 345.0, 408.0, 65.0, 22.0 ],
                                                                    "text": "remove $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-5",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 345.0, 456.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 327.0, 265.0, 195.0, 33.0 ],
                                                                    "text": "< if no stream was supplied, delete param infos for all streams"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 225.0, 264.0, 92.0, 22.0 ],
                                                                    "text": "t l l"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-22",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 50.0, 309.0, 103.0, 22.0 ],
                                                                    "text": "zl indexmap 1 0 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-21",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 331.0, 211.0, 29.5, 22.0 ],
                                                                    "text": "2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-19",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 298.0, 211.0, 29.5, 22.0 ],
                                                                    "text": "1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-15",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 50.0, 215.0, 52.0, 22.0 ],
                                                                    "text": "gate 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-13",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 298.0, 172.0, 52.0, 22.0 ],
                                                                    "text": "route int"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-12",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 298.25, 137.0, 29.5, 22.0 ],
                                                                    "text": "$1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 82.0, 466.0, 247.0, 20.0 ],
                                                                    "text": "[param name, stream number, param value]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 82.0, 38.5, 261.0, 33.0 ],
                                                                    "text": "either [param name, param value]\nor [stream number, param name, param value]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-83",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 286.0, 342.0, 274.0, 20.0 ],
                                                                    "text": "<set stream to 0 (all)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-64",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 225.0, 376.0, 55.0, 22.0 ],
                                                                    "text": "zl join"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-63",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 225.0, 342.0, 59.0, 22.0 ],
                                                                    "text": "append 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-62",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 225.0, 302.0, 55.0, 22.0 ],
                                                                    "text": "zl slice 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-34",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 50.0, 92.0, 267.25, 22.0 ],
                                                                    "text": "t l l"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-84",
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
                                                                    "id": "obj-85",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 50.0, 461.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-62", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "source": [ "obj-1", 1 ]
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
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "source": [ "obj-13", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-13", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-15", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 0 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "source": [ "obj-19", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "source": [ "obj-21", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-85", 0 ],
                                                                    "source": [ "obj-22", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-34", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 1 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-63", 0 ],
                                                                    "source": [ "obj-62", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-64", 1 ],
                                                                    "source": [ "obj-62", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-64", 0 ],
                                                                    "source": [ "obj-63", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-85", 0 ],
                                                                    "source": [ "obj-64", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-84", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 38.0, 64.0, 53.0, 22.0 ],
                                                    "text": "p parser"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-1", 0 ]
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
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-20", 1 ]
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
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-86", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-86", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 654.0, 541.0, 77.0, 22.0 ],
                                    "text": "p writeToDict"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 275.0, 84.0, 64.0, 22.0 ],
                                    "text": "attack 700"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 546.0, 84.0, 67.0, 22.0 ],
                                    "text": "wform saw"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 275.0, 171.0, 111.0, 22.0 ],
                                    "text": "s toAdvancedVoice",
                                    "textcolor": [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 604.0, 513.0, 69.0, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 604.0, 480.0, 109.0, 22.0 ],
                                    "text": "r toAdvancedVoice",
                                    "textcolor": [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 251.0, 582.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
                                    "patching_rect": [ 251.0, 513.0, 329.0, 22.0 ],
                                    "text": "poly~ alligator-advanced-example-voice 4 @args example-5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 251.0, 480.0, 93.0, 22.0 ],
                                    "text": "voice-alligator 4"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 469.5, 48.0, 220.0, 40.0 ],
                                    "text": "set waveform for all streams to saw"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-102",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 966.0, 48.0, 188.0, 40.0 ],
                                    "text": "set attack for stream 2 to 7ms"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-97",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 725.0, 48.0, 220.0, 40.0 ],
                                    "text": "set waveform for stream 2 to sine"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-90",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 200.0, 48.0, 214.0, 40.0 ],
                                    "text": "set attack for all streams to 700ms"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-88",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 250.0, 249.5, 88.0, 25.0 ],
                                    "text": "start metro"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-84",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 302.0, 592.0, 110.0, 25.0 ],
                                    "text": "Turn on audio"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 1 ],
                                    "order": 1,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 685.5, 470.87109375, 984.68359375, 470.87109375, 984.68359375, 227.0, 613.5, 227.0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "order": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "order": 0,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-23", 0 ]
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
                                    "destination": [ "obj-6", 1 ],
                                    "midpoints": [ 415.5, 549.37890625, 594.8984375, 549.37890625, 594.8984375, 472.74609375, 334.5, 472.74609375 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-60", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "order": 1,
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "order": 0,
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 219.0, 38.0, 113.0, 22.0 ],
                    "text": "p \"Advanced Voice\""
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
                        "rect": [ 34.0, 113.0, 1212.0, 653.0 ],
                        "subpatcher_template": "Default Max 7",
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-82",
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
                                        "rect": [ 36.0, 78.0, 753.0, 531.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-8",
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
                                                    "hidden": 1,
                                                    "id": "obj-20",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 128.0, 62.0, 22.0 ],
                                                    "text": "120 45 59"
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
                                                                    "text": "scale_def 59 120. 60 240. 61 360. 62 480. 63 600. 64 720. 65 840. 66 960. 67 1080. 68 1200. 69 1320. 70 1440. 71 1560. 72 1680. 73 1800. 74 1920. 75 2040. 76 2160. 77 2280. 78 2400. 79 2520. 80 2640. 81 2760. 82 2880. 83 3000. 84 3120. 85 3240. 86 3360. 87 3480. 88 3600. 89 3720. 90 3840. 91 3960. 92 4080. 93 4200. 94 4320. 95 4440. 96 4560. 97 4680. 98 4800. 99 4920. 100 5040. 101 5160. 102 5280. 103 5400.",
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
                                                    "patching_rect": [ 50.0, 156.0, 78.0, 22.0 ],
                                                    "text": "p set_scale"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-81",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 238.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-81", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            }
                                        ],
                                        "bgfillcolor_type": "gradient",
                                        "bgfillcolor_color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                                        "bgfillcolor_color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "bgfillcolor_color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "bgfillcolor_angle": 270.0,
                                        "bgfillcolor_proportion": 0.39
                                    },
                                    "patching_rect": [ 517.0, 305.0, 19.0, 22.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 321.0, 401.0, 248.0, 20.0 ],
                                    "text": "pitchwheel gets ignored for note looper notes"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-78",
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
                                        "rect": [ 36.0, 78.0, 753.0, 531.0 ],
                                        "subpatcher_template": "Default Max 7",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 177.0, 280.0, 113.0, 22.0 ],
                                                    "text": "prepend pitchwheel"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-71",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 88.0, 242.0, 32.0, 22.0 ],
                                                    "text": "$1 5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-69",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 152.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-66",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 177.0, 251.0, 109.0, 22.0 ],
                                                    "text": "line @floatoutput 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-65",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 177.0, 205.0, 39.0, 22.0 ],
                                                    "text": "64 50"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 177.0, 100.0, 106.0, 22.0 ],
                                                    "text": "metro 5 @active 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 177.0, 167.0, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 10,
                                                    "outlettype": [ "int", "int", "int", "int", "int", "int", "int", "float", "float", "list" ],
                                                    "patching_rect": [ 177.0, 132.0, 113.5, 22.0 ],
                                                    "text": "mousestate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-68",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 66.0, 317.0, 172.0, 22.0 ],
                                                    "text": "s example-noteLooper-params"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-76",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 88.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-77",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 399.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-37", 0 ]
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
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-69", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "source": [ "obj-69", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-71", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-71", 0 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            }
                                        ],
                                        "bgfillcolor_type": "gradient",
                                        "bgfillcolor_color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                                        "bgfillcolor_color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "bgfillcolor_color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "bgfillcolor_angle": 270.0,
                                        "bgfillcolor_proportion": 0.39
                                    },
                                    "patching_rect": [ 403.0, 349.0, 19.0, 22.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "floatoutput": 1,
                                    "id": "obj-67",
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 428.0, 313.0, 23.0, 95.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 487.0, 80.0, 191.0, 40.0 ],
                                    "presentation_linecount": 2,
                                    "text": "turn off to only hear note looper"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-59",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1070.0, 129.0, 189.0, 40.0 ],
                                    "text": "play around with these settings"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-54",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 884.0, 121.0, 148.0, 55.0 ],
                                    "text": "click record, record some notes, click again"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-47",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 597.0, 121.0, 148.0, 25.0 ],
                                    "text": "generate some notes"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 453.0, 433.0, 110.0, 25.0 ],
                                    "text": "Turn on audio"
                                }
                            },
                            {
                                "box": {
                                    "arrows": 2,
                                    "id": "obj-45",
                                    "justification": 3,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 825.0, 174.0, 119.0, 84.5 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "linecount": 6,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 707.0, 161.0, 139.0, 87.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.live_dial_triangle"
                                        }
                                    },
                                    "text": "< this will steal from this,\nbut not the other way around. this is especially noticable, if the note looper playback is set to a high speed."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1151.0, 207.0, 89.0, 22.0 ],
                                    "text": "prepend speed"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-27",
                                    "maxclass": "flonum",
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1151.0, 174.0, 50.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 1 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[3]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[3]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "number",
                                    "maximum": 100,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1570.0, 174.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1570.0, 207.0, 97.0, 22.0 ],
                                    "text": "prepend volJitter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1453.0, 207.0, 107.0, 22.0 ],
                                    "text": "prepend pitchJitter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1362.0, 207.0, 78.0, 22.0 ],
                                    "text": "prepend vol"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-17",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1362.0, 174.0, 50.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 100 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[1]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[6]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1246.0, 207.0, 109.0, 22.0 ],
                                    "text": "prepend transpose"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-25",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1246.0, 174.0, 50.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0 ],
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[2]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[14]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1433.0, 157.0, 104.0, 20.0 ],
                                    "text": "jitter semitones +-"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-43",
                                    "maxclass": "flonum",
                                    "maximum": 127.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1453.0, 174.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.6941176470588235, 0.0, 0.0, 1.0 ],
                                    "bgcolor2": [ 0.6941176470588235, 0.0, 0.0, 1.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.6941176470588235, 0.0, 0.0, 1.0 ],
                                    "bgfillcolor_color1": [ 0.6941176470588235, 0.0, 0.0, 1.0 ],
                                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "color",
                                    "gradient": 1,
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 637.0, 519.0, 229.0, 22.0 ],
                                    "text": "3 6. 2 1 960."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
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
                                                    "id": "obj-36",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 354.5, 559.0, 49.0, 22.0 ],
                                                    "text": "mono 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 405.5, 559.0, 49.0, 22.0 ],
                                                    "text": "mono 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "int", "bang" ],
                                                    "patching_rect": [ 359.0, 328.0, 40.0, 22.0 ],
                                                    "text": "t b i b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 183.5, 469.0, 29.5, 22.0 ],
                                                    "text": "400"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 215.0, 398.0, 33.0, 22.0 ],
                                                    "text": "* 1.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 230.0, 469.0, 29.5, 22.0 ],
                                                    "text": "i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 168.5, 430.0, 34.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 168.5, 400.0, 32.0, 22.0 ],
                                                    "text": "< 20"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 168.5, 365.0, 73.0, 22.0 ],
                                                    "text": "random 100"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 304.0, 480.0, 89.0, 22.0 ],
                                                    "text": "append 60 400"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 304.0, 175.0, 29.5, 22.0 ],
                                                    "text": "% 8"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 188.0, 103.81396484375, 29.5, 22.0 ],
                                                    "text": "% 4"
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
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 50.0, 600.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 304.0, 274.0, 22.0, 22.0 ],
                                                    "text": "t 7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "int" ],
                                                    "patching_rect": [ 304.0, 374.0, 40.0, 22.0 ],
                                                    "text": "uzi 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 304.0, 438.0, 32.0, 22.0 ],
                                                    "text": "+ 60"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "", "", "int" ],
                                                    "patching_rect": [ 304.0, 405.0, 65.0, 22.0 ],
                                                    "text": "counter 40"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 304.0, 231.0, 34.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-62",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 188.0, 263.0, 32.0, 22.0 ],
                                                    "text": "+ 50"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 188.0, 216.0, 73.0, 22.0 ],
                                                    "text": "random 430"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 188.0, 159.0, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "", "", "int" ],
                                                    "patching_rect": [ 188.0, 62.0, 65.0, 22.0 ],
                                                    "text": "counter 15"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 50.0, 103.81396484375, 63.0, 22.0 ],
                                                    "text": "metro 230"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 549.0, 46.0, 22.0 ],
                                                    "text": "pack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 469.0, 89.0, 22.0 ],
                                                    "text": "append 60 400"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 50.0, 438.0, 32.0, 22.0 ],
                                                    "text": "+ 59"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 405.0, 66.0, 22.0 ],
                                                    "text": "random 13"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 50.0, 514.0, 153.0, 22.0 ],
                                                    "text": "makenote 60 400"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 1 ],
                                                    "source": [ "obj-11", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "source": [ "obj-19", 0 ]
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
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
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
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-27", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 2 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 1 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 2 ],
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-32", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-32", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
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
                                                    "destination": [ "obj-15", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-7", 0 ]
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
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 571.0, 160.0, 131.0, 22.0 ],
                                    "text": "p generate some notes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 571.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.968627450980392, 0.968627450980392, 0.968627450980392, 1.0 ],
                                    "bgcolor2": [ 0.968627450980392, 0.968627450980392, 0.968627450980392, 1.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.031372549019608, 0.156862745098039, 0.686274509803922, 1.0 ],
                                    "bgfillcolor_color1": [ 0.968627450980392, 0.968627450980392, 0.968627450980392, 1.0 ],
                                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "color",
                                    "gradient": 1,
                                    "id": "obj-36",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 637.0, 464.0, 229.0, 22.0 ],
                                    "text": "notes 1440. 0 flags 0 0 0 0 1 1",
                                    "textcolor": [ 0.968627450980392, 0.968627450980392, 0.968627450980392, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 571.0, 423.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1466.0, 505.0, 196.0, 20.0 ],
                                    "text": "<----------------- sets playback speed"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1521.0, 492.0, 499.0, 20.0 ],
                                    "text": "<--- if a note is already pressed when record starts, this will transform the note into a note-on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1530.0, 478.0, 407.0, 20.0 ],
                                    "text": "<- sets how much semitones the pitch will jitter. goes positive and negative."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1530.0, 465.0, 201.0, 20.0 ],
                                    "text": "<- transposes the pitch in semitones"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1530.0, 451.0, 358.0, 20.0 ],
                                    "text": "<- will randomize how much to substract from the volume of notes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1530.0, 439.0, 257.0, 20.0 ],
                                    "text": "<- will play back recorded notes louder / quiter "
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 946.0, 207.0, 90.0, 22.0 ],
                                    "text": "prepend record"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 946.0, 174.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1035.0, 331.0, 310.0, 20.0 ],
                                    "text": "< note looper records frequencies instead of midi pitches"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-46",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 984.0, 330.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 984.0, 298.0, 50.0, 22.0 ],
                                    "text": "$5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 983.0, 415.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1002.0, 380.0, 325.0, 20.0 ],
                                    "text": "<Note looper will end all notes of it's stream on end of loop"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 946.0, 414.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 946.0, 379.0, 59.0, 22.0 ],
                                    "text": "route end"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1070.0, 250.0, 297.0, 20.0 ],
                                    "text": "argument 1= stream of the looper instance (default 2)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1048.0, 207.0, 78.0, 22.0 ],
                                    "text": "prepend play"
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
                                    "patching_rect": [ 1050.0, 305.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1050.0, 281.0, 61.0, 22.0 ],
                                    "text": "route play"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.6941176470588235, 0.0, 0.0, 1.0 ],
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 946.0, 249.0, 123.0, 22.0 ],
                                    "text": "voice-alligator-looper 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1048.0, 174.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
                                    "patching_rect": [ 571.0, 371.0, 327.0, 22.0 ],
                                    "text": "poly~ alligator-example-voice 8 @args example-noteLooper"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.031372549019608, 0.156862745098039, 0.686274509803922, 1.0 ],
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 571.0, 339.0, 288.0, 22.0 ],
                                    "text": "voice-alligator 8 @mono 1 @mono_steals_release 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "linecount": 13,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1333.0, 371.0, 289.0, 181.0 ],
                                    "text": "methods:\nrecord         1/0\nplay             1/0\n\nattributes:\nvol               (percent) (default 100)\nvolJitter       (percent) (default 0)\ntranspose    (semitones) (default 0.)\npitchJitter    (semitones) (default 0.)\nrecordPressed (bool) (default 1)\nspeed (ratio) (default 1.)\n\nAll other messages to the object get passed to MTR"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 24.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 23.0, 5.0, 258.0, 33.0 ],
                                    "text": "Alligator Note Looper"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-28",
                                    "linecount": 18,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 23.0, 34.0, 489.0, 288.0 ],
                                    "text": "This note looper is designed to record and play back the output of voice-alligator.\n\n\nIt will remember the exact pitches and portamento / glide settings of a musical sequence that was played using voice-alligator.\n\nAfter recording, it will start playback automatically and play the loops on the set stream (argument 1) to voice-alligator (for a detailed description of streams, see the helpfile of voice-alligator).\n\nIf the note looper is set to a higher stream than an input going into voice-alligator, it will by default not steal notes from that input.\n\nvoice-alligator also recognizes pre-recorded notes, gives them a special flag, and will output that information to the voice, so that we can customize our voice patch to ignore the pitch-wheel for recorded sequences / the midi looper for example."
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
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
                                    "patching_rect": [ 1155.0, 111.0, 20.0, 20.0 ],
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
                                    "id": "obj-5",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 572.0, 62.0, 20.0, 20.0 ],
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
                                    "patching_rect": [ 431.0, 435.0, 20.0, 20.0 ],
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
                                    "id": "obj-55",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 948.0, 102.0, 20.0, 20.0 ],
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
                                    "id": "obj-51",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 745.0, 124.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "midpoints": [ 1057.5, 230.0, 955.5, 230.0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 1059.5, 329.2890625, 1337.3359375, 329.2890625, 1337.3359375, 306.0, 1337.515625, 306.0, 1337.515625, 161.671875, 1057.5, 161.671875 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "order": 2,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.4371221661567688, 0.2051626443862915, 0.9895049929618835, 1.0 ],
                                    "destination": [ "obj-36", 1 ],
                                    "order": 1,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.021550785750151, 0.0, 0.998149752616882, 1.0 ],
                                    "destination": [ "obj-72", 0 ],
                                    "order": 0,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 1 ],
                                    "midpoints": [ 734.5, 407.08984375, 899.515625, 407.08984375, 899.515625, 333.0, 849.5, 333.0 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "order": 0,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "order": 0,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "order": 1,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-72", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.9733813405, 0.03151500273, 0.1206076789, 1.0 ],
                                    "destination": [ "obj-16", 1 ],
                                    "order": 2,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.952947199344635, 0.0, 0.097229599952698, 1.0 ],
                                    "destination": [ "obj-19", 0 ],
                                    "order": 3,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "order": 0,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "order": 1,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 29.0, 37.0, 87.0, 22.0 ],
                    "text": "p Description"
                }
            },
            {
                "box": {
                    "id": "obj-7",
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
                                    "color": [ 0.16078431372549, 0.682352941176471, 1.0, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 571.0, 508.0, 118.0, 22.0 ],
                                    "text": "s example-4-params"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 447.0, 271.0, 90.0, 22.0 ],
                                    "text": "prepend record"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 447.0, 238.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-32",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 15.0, 58.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "4",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 248.0, 68.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-4",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 785.0, 74.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
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
                                    "patching_rect": [ 355.0, 4.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
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
                                    "patching_rect": [ 396.0, 508.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "" ],
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
                                                    "id": "obj-49",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 247.0, 119.0, 77.0, 22.0 ],
                                                    "text": "onebang 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 305.0, 151.0, 65.0, 22.0 ],
                                                    "text": "onebang 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 148.0, 100.0, 54.5, 22.0 ],
                                                    "text": "t i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "" ],
                                                    "patching_rect": [ 183.5, 127.0, 44.0, 22.0 ],
                                                    "text": "sel 0 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 305.0, 204.0, 29.5, 22.0 ],
                                                    "text": "0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 247.0, 151.0, 29.5, 22.0 ],
                                                    "text": "1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 148.0, 211.0, 29.5, 22.0 ],
                                                    "text": "% 5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-4",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 148.0, 40.0, 30.0, 30.0 ]
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
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 270.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-41",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 194.666656, 328.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 148.0, 328.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-26", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-49", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 248.0, 192.0, 217.5, 35.0 ],
                                    "text": "p start record\\, run through loop once\\, stop record"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "number",
                                    "maximum": 100,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1080.0, 152.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1080.0, 181.0, 97.0, 22.0 ],
                                    "text": "prepend volJitter"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 571.0, 471.0, 121.0, 22.0 ],
                                    "text": "loadmess wform saw"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 980.0, 186.0, 89.0, 22.0 ],
                                    "text": "prepend speed"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-10",
                                    "maxclass": "flonum",
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 980.0, 152.0, 50.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 1.0125 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[13]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[13]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 478.0, 140.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 325.0, 101.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 447.0, 101.0, 50.5, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 248.0, 41.0, 217.5, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 248.0, 396.0, 101.0, 22.0 ],
                                    "text": "pack i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 248.0, 370.0, 121.0, 22.0 ],
                                    "text": "makenote 60 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 248.0, 339.0, 32.0, 22.0 ],
                                    "text": "+ 66"
                                }
                            },
                            {
                                "box": {
                                    "coll_data": {
                                        "count": 6,
                                        "data": [
                                            {
                                                "key": 0,
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": 1,
                                                "value": [ 5 ]
                                            },
                                            {
                                                "key": 2,
                                                "value": [ 3 ]
                                            },
                                            {
                                                "key": 3,
                                                "value": [ 7 ]
                                            },
                                            {
                                                "key": 4,
                                                "value": [ 2 ]
                                            },
                                            {
                                                "key": 5,
                                                "value": [ 10 ]
                                            }
                                        ]
                                    },
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 248.0, 308.0, 184.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "embed": 1,
                                        "precision": 6
                                    },
                                    "text": "coll noteLooperNotes @embed 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "", "", "int" ],
                                    "patching_rect": [ 248.0, 140.0, 173.5, 22.0 ],
                                    "text": "counter 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 248.0, 101.0, 63.0, 22.0 ],
                                    "text": "metro 240"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 248.0, 11.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 860.0, 186.0, 107.0, 22.0 ],
                                    "text": "prepend pitchJitter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 781.0, 186.0, 78.0, 22.0 ],
                                    "text": "prepend vol"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-17",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 781.0, 152.0, 50.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 100 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[12]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[6]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 665.0, 186.0, 109.0, 22.0 ],
                                    "text": "prepend transpose"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-13",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 665.0, 152.0, 50.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0 ],
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[14]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[14]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 576.0, 186.0, 78.0, 22.0 ],
                                    "text": "prepend play"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 856.0, 380.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 856.0, 354.0, 61.0, 22.0 ],
                                    "text": "route play"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 840.0, 136.0, 104.0, 20.0 ],
                                    "text": "jitter semitones +-"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-43",
                                    "maxclass": "flonum",
                                    "maximum": 127.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 860.0, 152.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.090196078431373, 0.545098039215686, 0.0, 1.0 ],
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 576.0, 328.0, 123.0, 22.0 ],
                                    "text": "voice-alligator-looper 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 576.0, 152.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 248.0, 503.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
                                    "patching_rect": [ 248.0, 471.0, 272.0, 22.0 ],
                                    "text": "poly~ alligator-example-voice 4 @args example-4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 248.0, 439.0, 93.0, 22.0 ],
                                    "text": "voice-alligator 4"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 68.0, 228.0, 25.0 ],
                                    "text": "turn off to only hear the note looper"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 796.0, 83.0, 179.0, 40.0 ],
                                    "text": "play around with the settings "
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 274.0, 11.0, 88.0, 25.0 ],
                                    "text": "start metro"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 292.0, 513.0, 110.0, 25.0 ],
                                    "text": "Turn on audio"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "midpoints": [ 989.5, 315.0, 585.5, 315.0 ],
                                    "source": [ "obj-11", 0 ]
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
                                    "destination": [ "obj-72", 0 ],
                                    "midpoints": [ 674.5, 315.0, 585.5, 315.0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "midpoints": [ 790.5, 315.0, 585.5, 315.0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "midpoints": [ 869.5, 315.0, 585.5, 315.0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 865.5, 417.0, 1182.671875, 417.0, 1182.671875, 129.0, 585.5, 129.0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "midpoints": [ 1089.5, 315.0, 585.5, 315.0 ],
                                    "source": [ "obj-23", 0 ]
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
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "order": 1,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 1 ],
                                    "order": 0,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-31", 1 ]
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
                                    "destination": [ "obj-6", 1 ],
                                    "midpoints": [ 384.0, 497.0, 539.09375, 497.0, 539.09375, 433.0, 331.5, 433.0 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 1 ],
                                    "source": [ "obj-34", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 2 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-47", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.021550785750151, 0.0, 0.998149752616882, 1.0 ],
                                    "destination": [ "obj-72", 0 ],
                                    "order": 0,
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
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-72", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.952947199344635, 0.0, 0.097229599952698, 1.0 ],
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "midpoints": [ 585.5, 210.0, 585.5, 210.0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 124.0, 38.0, 74.0, 22.0 ],
                    "text": "p Example"
                }
            }
        ],
        "lines": [],
        "parameters": {
            "obj-7::obj-10": [ "number[13]", "number[13]", 0 ],
            "obj-7::obj-13": [ "number[14]", "number[14]", 0 ],
            "obj-7::obj-17": [ "number[12]", "number[6]", 0 ],
            "obj-8::obj-17": [ "number[1]", "number[6]", 0 ],
            "obj-8::obj-25": [ "number[2]", "number[14]", 0 ],
            "obj-8::obj-27": [ "number[3]", "number[3]", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}