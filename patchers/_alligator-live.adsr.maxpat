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
        "rect": [ 350.0, 90.0, 896.0, 620.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "comment": "preset",
                    "id": "obj-5",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 138.0, 20.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 138.0, 69.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-49", "live.numbox", "float", 50.0, 5, "obj-123", "live.numbox", "float", 50.0, 5, "obj-121", "live.numbox", "float", 7.0, 5, "obj-120", "live.numbox", "float", 250.0, 5, "obj-119", "live.numbox", "float", 150.0, 5, "obj-30", "live.numbox", "float", 0.0, 5, "obj-118", "live.numbox", "float", 0.0, 5, "obj-117", "live.numbox", "float", 0.0, 5, "obj-6", "live.numbox", "float", 0.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-49", "live.numbox", "float", 3000.0, 5, "obj-123", "live.numbox", "float", 20.0, 5, "obj-121", "live.numbox", "float", 7.0, 5, "obj-120", "live.numbox", "float", 250.0, 5, "obj-119", "live.numbox", "float", 10000.0, 5, "obj-30", "live.numbox", "float", 0.0, 5, "obj-118", "live.numbox", "float", 0.0, 5, "obj-117", "live.numbox", "float", 0.0, 5, "obj-6", "live.numbox", "float", 0.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-49", "live.numbox", "float", 5.0, 5, "obj-123", "live.numbox", "float", 100.0, 5, "obj-121", "live.numbox", "float", 7.0, 5, "obj-120", "live.numbox", "float", 250.0, 5, "obj-119", "live.numbox", "float", 1070.0, 5, "obj-30", "live.numbox", "float", 0.0, 5, "obj-118", "live.numbox", "float", 0.0, 5, "obj-117", "live.numbox", "float", 0.0, 5, "obj-6", "live.numbox", "float", 0.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-49", "live.numbox", "float", 5.0, 5, "obj-123", "live.numbox", "float", 100.0, 5, "obj-121", "live.numbox", "float", 7.0, 5, "obj-120", "live.numbox", "float", 250.0, 5, "obj-119", "live.numbox", "float", 1070.0, 5, "obj-30", "live.numbox", "float", 0.0, 5, "obj-118", "live.numbox", "float", 0.0, 5, "obj-117", "live.numbox", "float", 0.0, 5, "obj-6", "live.numbox", "float", 0.0 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-49", "live.numbox", "float", 5.0, 5, "obj-123", "live.numbox", "float", 15.0, 5, "obj-121", "live.numbox", "float", 7.0, 5, "obj-120", "live.numbox", "float", 3.559999942779541, 5, "obj-119", "live.numbox", "float", 1360.0, 5, "obj-30", "live.numbox", "float", 0.0, 5, "obj-118", "live.numbox", "float", 0.0, 5, "obj-117", "live.numbox", "float", 0.0, 5, "obj-6", "live.numbox", "float", 0.0 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-49", "live.numbox", "float", 3000.0, 5, "obj-123", "live.numbox", "float", 15.0, 5, "obj-121", "live.numbox", "float", 7.0, 5, "obj-120", "live.numbox", "float", 3.559999942779541, 5, "obj-119", "live.numbox", "float", 1360.0, 5, "obj-30", "live.numbox", "float", 0.0, 5, "obj-118", "live.numbox", "float", 0.0, 5, "obj-117", "live.numbox", "float", 0.0, 5, "obj-6", "live.numbox", "float", 0.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 264.0, 541.0, 29.0, 22.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 426.0, 300.0, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 167.0, 200.0, 70.0, 20.0 ],
                    "text": "glide_curve"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 594.0, 480.0, 117.0, 22.0 ],
                    "text": "prepend glide_curve"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 797.0, 156.5, 39.0, 22.0 ],
                    "text": "/ 100."
                }
            },
            {
                "box": {
                    "activeslidercolor": [ 0.897483, 0.462425, 0.452459, 1.0 ],
                    "appearance": 2,
                    "id": "obj-6",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 383.0, 303.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 124.0, 203.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activeslidercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Release Slope[2]",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "ReleaseSlope",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "live.numbox[1]"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1115.0, 480.0, 131.0, 22.0 ],
                    "text": "prepend release_curve"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 480.0, 124.0, 22.0 ],
                    "text": "prepend decay_curve"
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 829.0, 480.0, 124.0, 22.0 ],
                    "text": "prepend attack_curve"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 728.0, 480.0, 95.0, 22.0 ],
                    "text": "prepend release"
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 464.0, 480.0, 125.0, 22.0 ],
                    "text": "prepend sustain_level"
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 368.5, 480.0, 88.0, 22.0 ],
                    "text": "prepend decay"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 50.0, 442.0, 88.0, 22.0 ],
                    "text": "prepend attack"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 417.0, 139.0, 44.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 158.0, 39.0, 44.0, 18.0 ],
                    "text": "R. Slope",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 321.0, 137.0, 44.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 37.0, 44.0, 18.0 ],
                    "text": "D. Slope",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 273.0, 137.0, 44.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 37.0, 44.0, 18.0 ],
                    "text": "A. Slope",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 417.0, 106.0, 44.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 158.0, 6.0, 44.0, 18.0 ],
                    "text": "Release",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 369.0, 106.0, 44.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 110.0, 6.0, 44.0, 18.0 ],
                    "text": "Sustain",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 325.0, 106.0, 35.11110177305011, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 66.0, 6.0, 35.11110177305011, 18.0 ],
                    "text": "Decay",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 273.0, 106.0, 38.11110177305011, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 6.0, 38.11110177305011, 18.0 ],
                    "text": "Attack",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 705.0, 156.5, 40.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 665.5, 156.5, 40.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 616.0, 156.5, 40.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 550.0, 122.0, 39.0, 22.0 ],
                    "text": "/ 100."
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 519.0, 149.0, 39.0, 22.0 ],
                    "text": "/ 100."
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 488.0, 122.0, 39.0, 22.0 ],
                    "text": "/ 100."
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 750.0, 156.5, 40.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 369.0, 151.5, 39.0, 22.0 ],
                    "text": "/ 100."
                }
            },
            {
                "box": {
                    "attack_time": 7.0,
                    "decay_slope": 0.0,
                    "decay_time": 250.0,
                    "enable_final": 0,
                    "enable_initial": 0,
                    "enable_peak": 0,
                    "id": "obj-116",
                    "maxclass": "live.adsrui",
                    "numinlets": 10,
                    "numoutlets": 10,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 273.0, 182.0, 296.0, 119.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 77.0, 296.0, 119.0 ],
                    "release_slope": 0.0,
                    "release_time": 150.0,
                    "sustain": 0.5,
                    "sustain_exponent": 2.0,
                    "varname": "live.adsrui"
                }
            },
            {
                "box": {
                    "activeslidercolor": [ 0.897483, 0.462425, 0.452459, 1.0 ],
                    "appearance": 2,
                    "id": "obj-117",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 417.0, 157.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 158.0, 57.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activeslidercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Release Slope[3]",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "ReleaseSlope",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "live.numbox[8]"
                }
            },
            {
                "box": {
                    "activeslidercolor": [ 0.897483, 0.462425, 0.452459, 1.0 ],
                    "appearance": 2,
                    "id": "obj-118",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 321.0, 155.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 55.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activeslidercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Decay Slope[1]",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "DecaySlope",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "live.numbox[9]"
                }
            },
            {
                "box": {
                    "activeslidercolor": [ 0.897483, 0.462425, 0.452459, 1.0 ],
                    "appearance": 2,
                    "id": "obj-30",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 273.0, 155.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 55.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activeslidercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Atack Slope[1]",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "AttackSlope",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "live.numbox[10]"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-119",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 417.0, 124.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 158.0, 24.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 8.0,
                            "parameter_initial": [ 150 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Release[1]",
                            "parameter_mmax": 60000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "live.numbox[7]"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-120",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 321.0, 124.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 24.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 8.0,
                            "parameter_initial": [ 250 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Decay[1]",
                            "parameter_mmax": 60000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Decay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "live.numbox[6]"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-121",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 273.0, 124.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 24.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 8.0,
                            "parameter_initial": [ 7 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Attack[1]",
                            "parameter_mmax": 20000.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Attack",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "live.numbox[5]"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-123",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 369.0, 124.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 110.0, 24.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 50 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Sustain[1]",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Sustain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "live.numbox[3]"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 320.0, 300.0, 57.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 61.0, 200.0, 57.0, 20.0 ],
                    "text": "glidetime",
                    "textcolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 155.0, 442.0, 104.0, 22.0 ],
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
                    "patching_rect": [ 273.0, 302.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 202.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 50 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.numbox[4]",
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
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.376470588235294, 0.0, 0.0, 1.0 ],
                    "id": "obj-15",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 259.0, 100.0, 326.0, 311.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 326.0, 311.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "comment": "Messages to voice-alligator~",
                    "id": "obj-3",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 264.0, 577.0, 30.0, 30.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 9 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 8 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 7 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "order": 1,
                    "source": [ "obj-116", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "order": 1,
                    "source": [ "obj-116", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "order": 1,
                    "source": [ "obj-116", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "order": 0,
                    "source": [ "obj-116", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "midpoints": [ 374.8333333333333, 306.0, 204.95182291666674, 306.0, 204.95182291666674, 114.0, 426.5, 114.0 ],
                    "order": 1,
                    "source": [ "obj-116", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "midpoints": [ 313.27777777777777, 306.0, 228.3107638888889, 306.0, 228.3107638888889, 114.0, 330.5, 114.0 ],
                    "order": 1,
                    "source": [ "obj-116", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "midpoints": [ 282.5, 306.0, 249.50390625, 306.0, 249.50390625, 114.0, 282.5, 114.0 ],
                    "order": 0,
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "order": 0,
                    "source": [ "obj-116", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "order": 0,
                    "source": [ "obj-116", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "order": 0,
                    "source": [ "obj-116", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "order": 0,
                    "source": [ "obj-116", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 0 ],
                    "order": 1,
                    "source": [ "obj-116", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "order": 0,
                    "source": [ "obj-116", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "order": 1,
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 3 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 1 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-131", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 2 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-50", 0 ]
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
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-117": [ "Release Slope[3]", "ReleaseSlope", 0 ],
            "obj-118": [ "Decay Slope[1]", "DecaySlope", 0 ],
            "obj-119": [ "Release[1]", "Release", 0 ],
            "obj-120": [ "Decay[1]", "Decay", 0 ],
            "obj-121": [ "Attack[1]", "Attack", 0 ],
            "obj-123": [ "Sustain[1]", "Sustain", 0 ],
            "obj-30": [ "Atack Slope[1]", "AttackSlope", 0 ],
            "obj-49": [ "live.numbox[4]", "live.numbox", 0 ],
            "obj-6": [ "Release Slope[2]", "ReleaseSlope", 0 ],
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
        "autosave": 0
    }
}