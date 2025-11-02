{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 9,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 61.0, 87.0, 1268.0, 779.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1268.0, 753.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"subpatcher_template" : "Default Max 7",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 30.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 117.0, 611.0, 38.0, 46.0 ],
									"text" : "🐊"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 683.0, 382.0, 20.0 ],
									"text" : "< an example of a simple voice design you can use as a starting point "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 652.0, 336.0, 20.0 ],
									"text" : "< a note looper which records glides and frequencies of notes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 110.0, 622.0, 31.0, 20.0 ],
									"text" : "< "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "", "" ],
									"patching_rect" : [ 29.0, 682.0, 289.0, 22.0 ],
									"text" : "poly~ alligator-example-voice.maxpat 1 @args name"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 651.0, 113.0, 22.0 ],
									"text" : "alligatorNoteLooper"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 621.0, 83.0, 22.0 ],
									"text" : "voice-alligator"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 24.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 578.0, 489.0, 28.0, 33.0 ],
									"text" : ".",
									"textcolor" : [ 0.341176470588235, 0.341176470588235, 0.407843137254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.32 ],
									"color" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 0.34 ],
									"fontface" : 2,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "", "" ],
									"patching_rect" : [ 241.0, 411.0, 174.0, 22.0 ],
									"text" : "poly~ alligator-example-voice 1",
									"textcolor" : [ 0.968627450980392, 0.968627450980392, 0.968627450980392, 0.7 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.33 ],
									"color" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 0.32 ],
									"fontface" : 2,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 241.0, 374.0, 93.0, 22.0 ],
									"text" : "voice-alligator 1",
									"textcolor" : [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-4",
									"linecount" : 16,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 152.0, 61.0, 814.0, 257.0 ],
									"text" : "[voice-alligator] is an external that manages voice allocation. It is designed to work with the [poly~] object and offers several additional features compared to the built-in voice allocation system.\n\nThe primary focus is to allow all settings of [voice-alligator] to be adjustable on the fly while maintaining coherent and intuitive behavior. The differences from [poly~]'s voice allocation are best demonstrated through musical examples, which can be found in the \"Demo Sequences\" tab.\n\nFeatures:\n\n    - Switch between monophony and polyphony while playing (see demos 1-mono and 2-monoAndHold).\n    - Fast and easy scale definition format for alternative scales/microtonal tunings.\n    - Differentiate between notes of higher and lower priority on different \"streams\". (see demo 8-notePriorities)\n    - \"Hold\" notes: notes that stay sustained after key de-press, end/release them at a later time. (see demo 3-portamentoAndHold)\n    - Remember pitches during scale changes (see demo 5-scale).\n    - Treat notes of different kinds or streams differently, e.g. regarding parameter changes (see demo 4-holdAndPitchwheel)\n    - Record pitches instead of MIDI notes for playback after scale changes. (see demo 6-noteLooper and 7-noteLooper2)"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 24.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 479.0, 20.0, 129.0, 33.0 ],
									"text" : "Description",
									"underline" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"midpoints" : [ 328.0, 512.0, 398.0, 512.0, 435.0, 433.0, 469.0, 509.0, 492.0, 509.0, 492.0, 448.0, 492.0, 519.0, 536.0, 519.0, 536.0, 477.0, 536.0, 547.0, 585.0, 547.0, 585.0, 513.0, 585.0, 543.0, 628.0, 543.0, 628.0, 498.0, 672.0, 498.0, 672.0, 545.0, 629.0, 545.0, 629.0, 501.0, 669.0, 501.0, 669.0, 595.0, 627.0, 595.0, 664.0, 595.0, 702.0, 518.0, 730.0, 592.0, 764.0, 592.0, 764.0, 538.0, 738.0, 538.0, 782.0, 538.0, 762.0, 538.0, 762.0, 588.0, 810.0, 588.0, 810.0, 564.0, 847.0, 564.0, 847.0, 616.0, 816.0, 616.0, 816.0, 589.0, 816.0, 615.0, 846.0, 615.0, 865.0, 615.0, 865.0, 523.0, 914.0, 523.0, 914.0, 557.0, 868.0, 557.0, 922.0, 619.0, 961.0, 619.0, 961.0, 360.0, 324.5, 360.0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 99.0, 205.0, 87.0, 22.0 ],
					"text" : "p Description"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 61.0, 113.0, 1268.0, 753.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"subpatcher_template" : "Default Max 7",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 0.15 ],
									"bgcolor2" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 0.15 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.145098039215686, 0.423529411764706, 0.137254901960784, 1.0 ],
									"bgfillcolor_color1" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 0.15 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"dontreplace" : 1,
									"fontname" : "Arial",
									"fontsize" : 14.0,
									"gradient" : 1,
									"id" : "obj-4",
									"ignoreclick" : 1,
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 571.0, 124.0, 40.0 ],
									"text" : "notes 739.988845 0 flags 0 1 0 0 1 1",
									"textcolor" : [ 0.850980392156863, 0.803921568627451, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.16078431372549, 0.682352941176471, 1.0, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1120.0, 514.0, 98.0, 22.0 ],
									"text" : "s demos-params"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 177.0, 657.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 0.15 ],
									"bgcolor2" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 0.15 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.145098039215686, 0.137254901960784, 0.423529411764706, 1.0 ],
									"bgfillcolor_color1" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 0.15 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"dontreplace" : 1,
									"fontname" : "Arial",
									"fontsize" : 14.0,
									"gradient" : 1,
									"id" : "obj-9",
									"ignoreclick" : 1,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 513.0, 124.0, 24.0 ],
									"text" : "end"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1091.0, 589.0, 128.0, 20.0 ],
									"text" : "<- parameters to voice"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"ignoreclick" : 1,
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1010.0, 630.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-18",
									"ignoreclick" : 1,
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 951.0, 630.0, 57.0, 24.0 ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-16",
									"ignoreclick" : 1,
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 893.0, 630.0, 57.0, 24.0 ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-13",
									"ignoreclick" : 1,
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 834.0, 630.0, 57.0, 24.0 ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 834.0, 588.0, 253.666666666666742, 22.0 ],
									"text" : "route attack release glidetime glide_retrigger"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "alligatorVis.maxpat",
									"numinlets" : 1,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 9,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 87.0, 1372.0, 779.0 ],
										"openinpresentation" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-248",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 723.0, 135.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 176.0, 174.0, 32.0, 22.0 ],
																	"text" : "t 1 b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 52.0, 300.0, 113.0, 22.0 ],
																	"text" : "r #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 269.5, 261.0, 115.0, 22.0 ],
																	"text" : "s #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 258.0, 206.0, 42.0, 22.0 ],
																	"text" : "t b b 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 128.0, 244.0, 52.0, 22.0 ],
																	"text" : "gate 1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 134.5, 78.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 112.0, 139.0, 22.0 ],
																					"text" : "0.992 1. 0. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 225.0, 100.0, 79.0, 22.0 ],
																					"text" : "0. 0.122 1. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-7",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 159.0, 196.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 196.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-17",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 131.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-18",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 98.5, 278.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 258.0, 334.0, 32.0, 22.0 ],
																	"text" : "p on"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 107.5, 47.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-153",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																					"text" : "0.267 0.251 0.776 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-150",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 171.0, 107.0, 119.0, 22.0 ],
																					"text" : "0.969 0.969 0.969 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-140",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 189.0, 154.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-139",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 189.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-14",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 104.5, 7.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-15",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 113.5, 271.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-139", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-140", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-140", 0 ],
																					"source" : [ "obj-150", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-139", 0 ],
																					"source" : [ "obj-153", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-150", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-153", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 193.0, 334.0, 32.0, 22.0 ],
																	"text" : "p off"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 176.0, 128.0, 112.0, 22.0 ],
																	"text" : "r #0-endOfFile"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 68.0, 103.0, 138.0, 22.0 ],
																	"text" : "r #0-stopCommand"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-166",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.0, 152.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-168",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 399.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-166", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-21", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 2324.0, 807.0, 19.0, 22.0 ],
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-246",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 723.0, 135.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 176.0, 174.0, 32.0, 22.0 ],
																	"text" : "t 1 b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 52.0, 300.0, 113.0, 22.0 ],
																	"text" : "r #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 269.5, 261.0, 115.0, 22.0 ],
																	"text" : "s #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 258.0, 206.0, 42.0, 22.0 ],
																	"text" : "t b b 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 128.0, 244.0, 52.0, 22.0 ],
																	"text" : "gate 1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 134.5, 78.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 112.0, 139.0, 22.0 ],
																					"text" : "0.992 1. 0. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 225.0, 100.0, 79.0, 22.0 ],
																					"text" : "0. 0.122 1. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-7",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 159.0, 196.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 196.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-17",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 131.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-18",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 98.5, 278.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 258.0, 334.0, 32.0, 22.0 ],
																	"text" : "p on"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 107.5, 47.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-153",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																					"text" : "0.267 0.251 0.776 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-150",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 171.0, 107.0, 119.0, 22.0 ],
																					"text" : "0.969 0.969 0.969 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-140",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 189.0, 154.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-139",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 189.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-14",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 104.5, 7.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-15",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 113.5, 271.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-139", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-140", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-140", 0 ],
																					"source" : [ "obj-150", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-139", 0 ],
																					"source" : [ "obj-153", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-150", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-153", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 193.0, 334.0, 32.0, 22.0 ],
																	"text" : "p off"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 176.0, 128.0, 112.0, 22.0 ],
																	"text" : "r #0-endOfFile"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 68.0, 103.0, 138.0, 22.0 ],
																	"text" : "r #0-stopCommand"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-166",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.0, 152.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-168",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 399.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-166", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-21", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1992.0, 807.0, 19.0, 22.0 ],
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-245",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 723.0, 135.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 176.0, 174.0, 32.0, 22.0 ],
																	"text" : "t 1 b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 52.0, 300.0, 113.0, 22.0 ],
																	"text" : "r #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 269.5, 261.0, 115.0, 22.0 ],
																	"text" : "s #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 258.0, 206.0, 42.0, 22.0 ],
																	"text" : "t b b 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 128.0, 244.0, 52.0, 22.0 ],
																	"text" : "gate 1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 134.5, 78.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 112.0, 139.0, 22.0 ],
																					"text" : "0.992 1. 0. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 225.0, 100.0, 79.0, 22.0 ],
																					"text" : "0. 0.122 1. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-7",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 159.0, 196.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 196.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-17",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 131.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-18",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 98.5, 278.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 258.0, 334.0, 32.0, 22.0 ],
																	"text" : "p on"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 107.5, 47.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-153",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																					"text" : "0.267 0.251 0.776 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-150",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 171.0, 107.0, 119.0, 22.0 ],
																					"text" : "0.969 0.969 0.969 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-140",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 189.0, 154.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-139",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 189.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-14",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 104.5, 7.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-15",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 113.5, 271.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-139", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-140", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-140", 0 ],
																					"source" : [ "obj-150", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-139", 0 ],
																					"source" : [ "obj-153", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-150", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-153", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 193.0, 334.0, 32.0, 22.0 ],
																	"text" : "p off"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 176.0, 128.0, 112.0, 22.0 ],
																	"text" : "r #0-endOfFile"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 68.0, 103.0, 138.0, 22.0 ],
																	"text" : "r #0-stopCommand"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-166",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.0, 152.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-168",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 399.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-166", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-21", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1687.0, 813.0, 19.0, 22.0 ],
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-244",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 466.5, 786.0, 115.0, 22.0 ],
													"text" : "s #0-turnOtherOff"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-243",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 723.0, 135.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 176.0, 174.0, 32.0, 22.0 ],
																	"text" : "t 1 b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 52.0, 300.0, 113.0, 22.0 ],
																	"text" : "r #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 269.5, 261.0, 115.0, 22.0 ],
																	"text" : "s #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 258.0, 206.0, 42.0, 22.0 ],
																	"text" : "t b b 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 128.0, 244.0, 52.0, 22.0 ],
																	"text" : "gate 1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 134.5, 78.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 112.0, 139.0, 22.0 ],
																					"text" : "0.992 1. 0. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 225.0, 100.0, 79.0, 22.0 ],
																					"text" : "0. 0.122 1. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-7",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 159.0, 196.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 196.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-17",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 131.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-18",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 98.5, 278.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 258.0, 334.0, 32.0, 22.0 ],
																	"text" : "p on"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 107.5, 47.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-153",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																					"text" : "0.267 0.251 0.776 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-150",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 171.0, 107.0, 119.0, 22.0 ],
																					"text" : "0.969 0.969 0.969 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-140",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 189.0, 154.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-139",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 189.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-14",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 104.5, 7.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-15",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 113.5, 271.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-139", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-140", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-140", 0 ],
																					"source" : [ "obj-150", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-139", 0 ],
																					"source" : [ "obj-153", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-150", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-153", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 193.0, 334.0, 32.0, 22.0 ],
																	"text" : "p off"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 176.0, 128.0, 112.0, 22.0 ],
																	"text" : "r #0-endOfFile"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 68.0, 103.0, 138.0, 22.0 ],
																	"text" : "r #0-stopCommand"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-166",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.0, 152.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-168",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 399.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-166", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-21", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1360.0, 819.0, 19.0, 22.0 ],
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-242",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 723.0, 135.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 176.0, 174.0, 32.0, 22.0 ],
																	"text" : "t 1 b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 52.0, 300.0, 113.0, 22.0 ],
																	"text" : "r #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 269.5, 261.0, 115.0, 22.0 ],
																	"text" : "s #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 258.0, 206.0, 42.0, 22.0 ],
																	"text" : "t b b 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 128.0, 244.0, 52.0, 22.0 ],
																	"text" : "gate 1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 134.5, 78.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 112.0, 139.0, 22.0 ],
																					"text" : "0.992 1. 0. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 225.0, 100.0, 79.0, 22.0 ],
																					"text" : "0. 0.122 1. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-7",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 159.0, 196.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 196.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-17",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 131.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-18",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 98.5, 278.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 258.0, 334.0, 32.0, 22.0 ],
																	"text" : "p on"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 107.5, 47.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-153",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																					"text" : "0.267 0.251 0.776 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-150",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 171.0, 107.0, 119.0, 22.0 ],
																					"text" : "0.969 0.969 0.969 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-140",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 189.0, 154.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-139",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 189.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-14",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 104.5, 7.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-15",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 113.5, 271.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-139", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-140", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-140", 0 ],
																					"source" : [ "obj-150", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-139", 0 ],
																					"source" : [ "obj-153", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-150", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-153", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 193.0, 334.0, 32.0, 22.0 ],
																	"text" : "p off"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 176.0, 128.0, 112.0, 22.0 ],
																	"text" : "r #0-endOfFile"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 68.0, 103.0, 138.0, 22.0 ],
																	"text" : "r #0-stopCommand"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-166",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.0, 152.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-168",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 399.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-166", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-21", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1052.0, 819.0, 19.0, 22.0 ],
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-241",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 723.0, 135.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 176.0, 174.0, 32.0, 22.0 ],
																	"text" : "t 1 b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 52.0, 300.0, 113.0, 22.0 ],
																	"text" : "r #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 269.5, 261.0, 115.0, 22.0 ],
																	"text" : "s #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 258.0, 206.0, 42.0, 22.0 ],
																	"text" : "t b b 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 128.0, 244.0, 52.0, 22.0 ],
																	"text" : "gate 1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 134.5, 78.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 112.0, 139.0, 22.0 ],
																					"text" : "0.992 1. 0. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 225.0, 100.0, 79.0, 22.0 ],
																					"text" : "0. 0.122 1. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-7",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 159.0, 196.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 196.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-17",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 131.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-18",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 98.5, 278.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 258.0, 334.0, 32.0, 22.0 ],
																	"text" : "p on"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 107.5, 47.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-153",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																					"text" : "0.267 0.251 0.776 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-150",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 171.0, 107.0, 119.0, 22.0 ],
																					"text" : "0.969 0.969 0.969 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-140",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 189.0, 154.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-139",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 189.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-14",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 104.5, 7.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-15",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 113.5, 271.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-139", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-140", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-140", 0 ],
																					"source" : [ "obj-150", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-139", 0 ],
																					"source" : [ "obj-153", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-150", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-153", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 193.0, 334.0, 32.0, 22.0 ],
																	"text" : "p off"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 176.0, 128.0, 112.0, 22.0 ],
																	"text" : "r #0-endOfFile"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 68.0, 103.0, 138.0, 22.0 ],
																	"text" : "r #0-stopCommand"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-166",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.0, 152.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-168",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 399.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-166", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-21", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 725.25, 819.0, 19.0, 22.0 ],
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-240",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 723.0, 135.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 176.0, 174.0, 32.0, 22.0 ],
																	"text" : "t 1 b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 52.0, 300.0, 113.0, 22.0 ],
																	"text" : "r #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 269.5, 261.0, 115.0, 22.0 ],
																	"text" : "s #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 258.0, 206.0, 42.0, 22.0 ],
																	"text" : "t b b 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 128.0, 244.0, 52.0, 22.0 ],
																	"text" : "gate 1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 134.5, 78.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 112.0, 139.0, 22.0 ],
																					"text" : "0.992 1. 0. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 225.0, 100.0, 79.0, 22.0 ],
																					"text" : "0. 0.122 1. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-7",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 159.0, 196.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 196.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-17",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 131.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-18",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 98.5, 278.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 258.0, 334.0, 32.0, 22.0 ],
																	"text" : "p on"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 107.5, 47.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-153",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																					"text" : "0.267 0.251 0.776 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-150",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 171.0, 107.0, 119.0, 22.0 ],
																					"text" : "0.969 0.969 0.969 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-140",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 189.0, 154.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-139",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 189.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-14",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 104.5, 7.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-15",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 113.5, 271.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-139", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-140", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-140", 0 ],
																					"source" : [ "obj-150", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-139", 0 ],
																					"source" : [ "obj-153", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-150", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-153", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 193.0, 334.0, 32.0, 22.0 ],
																	"text" : "p off"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 176.0, 128.0, 112.0, 22.0 ],
																	"text" : "r #0-endOfFile"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 68.0, 103.0, 138.0, 22.0 ],
																	"text" : "r #0-stopCommand"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-166",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.0, 152.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-168",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 399.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-166", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-21", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 22.0, 825.0, 19.0, 22.0 ],
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-237",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 723.0, 135.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 176.0, 174.0, 32.0, 22.0 ],
																	"text" : "t 1 b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 52.0, 300.0, 113.0, 22.0 ],
																	"text" : "r #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 269.5, 261.0, 115.0, 22.0 ],
																	"text" : "s #0-turnOtherOff"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 258.0, 206.0, 42.0, 22.0 ],
																	"text" : "t b b 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 128.0, 244.0, 52.0, 22.0 ],
																	"text" : "gate 1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 134.5, 78.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 112.0, 139.0, 22.0 ],
																					"text" : "0.992 1. 0. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 225.0, 100.0, 79.0, 22.0 ],
																					"text" : "0. 0.122 1. 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-7",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 159.0, 196.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 196.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-17",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 131.5, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-18",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 98.5, 278.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 258.0, 334.0, 32.0, 22.0 ],
																	"text" : "p on"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 107.5, 47.0, 24.0, 24.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-153",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																					"text" : "0.267 0.251 0.776 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-150",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 171.0, 107.0, 119.0, 22.0 ],
																					"text" : "0.969 0.969 0.969 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-140",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 189.0, 154.0, 101.0, 22.0 ],
																					"text" : "prepend textcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-139",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 189.0, 107.0, 22.0 ],
																					"text" : "prepend bgfillcolor"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-14",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 104.5, 7.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-15",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 113.5, 271.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-139", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-140", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-140", 0 ],
																					"source" : [ "obj-150", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-139", 0 ],
																					"source" : [ "obj-153", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-150", 0 ],
																					"order" : 0,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-153", 0 ],
																					"order" : 1,
																					"source" : [ "obj-2", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 193.0, 334.0, 32.0, 22.0 ],
																	"text" : "p off"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 176.0, 128.0, 112.0, 22.0 ],
																	"text" : "r #0-endOfFile"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 68.0, 103.0, 138.0, 22.0 ],
																	"text" : "r #0-stopCommand"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-166",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.0, 152.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-168",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 399.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-166", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-21", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 367.0, 825.0, 19.0, 22.0 ],
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-234",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 597.0, 786.0, 127.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-167",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2432.0, 928.0, 31.0, 22.0 ],
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-168",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2432.0, 898.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-165",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2115.0, 928.0, 31.0, 22.0 ],
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-166",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2115.0, 898.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-163",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1786.0, 928.0, 31.0, 22.0 ],
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-164",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1786.0, 898.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-161",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1457.0, 928.0, 31.0, 22.0 ],
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-162",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1457.0, 898.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-159",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 246.0, 928.0, 31.0, 22.0 ],
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-160",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 246.0, 898.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-157",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 505.0, 928.0, 31.0, 22.0 ],
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-158",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 505.0, 898.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-155",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 822.0, 928.0, 31.0, 22.0 ],
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-156",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 822.0, 898.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-137",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1139.0, 928.0, 31.0, 22.0 ],
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-151",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1139.0, 898.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-150",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2345.0, 1024.0, 89.0, 20.0 ],
													"text" : "8-notePriorities"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-140",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2245.0, 978.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-141",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2245.0, 940.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-142",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2245.0, 1100.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-143",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 2354.0, 897.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-144",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 2354.0, 952.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-145",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2382.0, 987.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-146",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2324.0, 1062.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-147",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 2245.0, 1058.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-148",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 2245.0, 1023.0, 98.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"text" : "mtr 1 @embed 1",
													"tracks" : [ 														{
															"events" : [ 																{
																	"time" : 0.0,
																	"message" : "scale",
																	"args" : [ 2 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "legato_retrigger", 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glidetime", 50 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "release", 500 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "sustain", 0.7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "decay", 150 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "attack", 7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "notelooper" ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 65, 19 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 66, 6 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 67, 6 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 68, 6 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 69, 6 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 70, 6 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 71, 6 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 72, 6 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 73, 6 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 66, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 65, 0 ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 68, 0 ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 69, 0 ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 71, 0 ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 72, 0 ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 73, 0 ]
																}
, 																{
																	"time" : 2000.0,
																	"message" : "notelooper",
																	"args" : [ "record", 1 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 63, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "notelooper",
																	"args" : [ "record", 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 63, 0 ]
																}
, 																{
																	"time" : 44.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 65, 19 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 66, 19 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 67, 19 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 68, 19 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 69, 19 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 70, 19 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 71, 19 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 72, 19 ]
																}
, 																{
																	"time" : 1500.0,
																	"message" : "note",
																	"args" : [ 72, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 71, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 69, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 68, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 66, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 65, 0 ]
																}
, 																{
																	"time" : 1000.0,
																	"message" : "notelooper",
																	"args" : [ "play", 0 ]
																}
 ],
															"length" : 19580.0,
															"loop" : 0,
															"trackspeed" : 1.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-139",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2032.0, 1024.0, 87.0, 20.0 ],
													"text" : "7-noteLooper2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-129",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1932.0, 978.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-130",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1932.0, 940.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-138",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1932.0, 1100.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-149",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 2041.0, 897.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-152",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 2041.0, 952.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-153",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2069.0, 987.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-169",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2011.0, 1062.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-170",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1932.0, 1058.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-171",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1932.0, 1023.0, 98.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"text" : "mtr 1 @embed 1",
													"tracks" : [ 														{
															"events" : [ 																{
																	"time" : 0.0,
																	"message" : "notelooper",
																	"args" : [ "record", 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "metroRandomRandom",
																	"args" : [ 5 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "metroRandomSpeed",
																	"args" : [ 200 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "metroRandomLength",
																	"args" : [ 300 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "metroRandomOffset",
																	"args" : [ 60 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "scale",
																	"args" : [ 2 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glide_retrigger", 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glidetime", 50 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "release", 3500 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "sustain", 0.7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "decay", 150 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "attack", 120 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "notelooper" ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "mono" ]
																}
, 																{
																	"time" : 1.0,
																	"message" : "metroRandom",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 3200.0,
																	"message" : "metroRandom",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 1600.0,
																	"message" : "metroRandomOffset",
																	"args" : [ 63 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "notelooper",
																	"args" : [ "record", 0 ]
																}
, 																{
																	"time" : 4800.0,
																	"message" : "metroRandom",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 3200.0,
																	"message" : "metroRandom",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 1600.0,
																	"message" : "metroRandom",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 8000.0,
																	"message" : "scale",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "metroRandom",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "notelooper",
																	"args" : [ "play", 0 ]
																}
 ],
															"length" : 22401.0,
															"loop" : 0,
															"trackspeed" : 1.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-128",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1712.0, 1025.0, 80.0, 20.0 ],
													"text" : "6-noteLooper"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-172",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1608.0, 978.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-173",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1608.0, 940.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-174",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1608.0, 1100.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-175",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1717.0, 897.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-122",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 1717.0, 952.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-176",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1745.0, 987.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-181",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1687.0, 1062.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-183",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1608.0, 1058.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-184",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1608.0, 1023.0, 98.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"text" : "mtr 1 @embed 1",
													"tracks" : [ 														{
															"events" : [ 																{
																	"time" : 0.0,
																	"message" : "scale",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glide_retrigger", 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glidetime", 15 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "release", 1500 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "sustain", 0.7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "decay", 150 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "attack", 7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "notelooper" ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "mono" ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "scale" ]
																}
, 																{
																	"time" : 10.0,
																	"message" : "notelooper",
																	"args" : [ "record", 1 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 60, 30 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 61, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 62, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 65, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 66, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 65, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 67, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 66, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 71, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 68, 30 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 71, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "notelooper",
																	"args" : [ "record", 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 68, 0 ]
																}
, 																{
																	"time" : 1000.0,
																	"message" : "mono",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "scale",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 1.0,
																	"message" : "note",
																	"args" : [ 60, 90 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 64, 90 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 62, 90 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 65, 90 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 70, 90 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 65, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 67, 90 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 72, 90 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "show",
																	"args" : [ "pitchwheel" ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 67, 90 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 72, 0 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "pitchwheel",
																	"args" : [ -12, 1000 ]
																}
, 																{
																	"time" : 1400.0,
																	"message" : "pitchwheel",
																	"args" : [ 0, 2500 ]
																}
, 																{
																	"time" : 1600.0,
																	"message" : "notelooper",
																	"args" : [ "play", 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "scale",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 1000.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
 ],
															"length" : 8911.0,
															"loop" : 0,
															"trackspeed" : 1.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-186",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1393.0, 1024.0, 47.0, 20.0 ],
													"text" : "5-scale"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-187",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1290.0, 978.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-188",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1290.0, 940.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-189",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1290.0, 1100.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-190",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1399.0, 897.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-191",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 1399.0, 952.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-192",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1427.0, 987.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-193",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1369.0, 1062.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-194",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1290.0, 1058.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-195",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1290.0, 1023.0, 98.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"text" : "mtr 1 @embed 1",
													"tracks" : [ 														{
															"events" : [ 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glide_retrigger", 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glidetime", 15 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "release", 50 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "sustain", 0.7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "decay", 150 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "attack", 7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "mono" ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "scale" ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 65, 60 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "scale",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "note",
																	"args" : [ 67, 60 ]
																}
, 																{
																	"time" : 1000.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 1000.0,
																	"message" : "note",
																	"args" : [ 65, 0 ]
																}
, 																{
																	"time" : 2000.0,
																	"message" : "metroRandom",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "metroRandomSpeed",
																	"args" : [ 20 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "scale",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 250.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "scale",
																	"args" : [ 2 ]
																}
, 																{
																	"time" : 250.0,
																	"message" : "mono",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "scale",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 250.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "scale",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "metroRandom",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 2060.0,
																	"message" : "end"
																}
 ],
															"length" : 9815.0,
															"loop" : 0,
															"trackspeed" : 1.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-196",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1079.0, 1024.0, 121.0, 20.0 ],
													"text" : "4-holdAndPitchwheel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-197",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 746.0, 1024.0, 126.0, 20.0 ],
													"text" : "3-portamentoAndHold"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-198",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 979.0, 978.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-199",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 979.0, 940.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-200",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 979.0, 1100.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-201",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1088.0, 897.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-202",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 1088.0, 952.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-203",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1116.0, 987.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-204",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1058.0, 1062.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-205",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 979.0, 1058.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-206",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 979.0, 1023.0, 98.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"text" : "mtr 1 @embed 1",
													"tracks" : [ 														{
															"events" : [ 																{
																	"time" : 0.0,
																	"message" : "hold",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "pitchwheel",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glide_retrigger", 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glidetime", 50 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "release", 500 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "sustain", 0.7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "decay", 150 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "attack", 7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "hold" ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "pitchwheel" ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 74, 60 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "pitchwheel",
																	"args" : [ 32, 1000 ]
																}
, 																{
																	"time" : 1600.0,
																	"message" : "note",
																	"args" : [ 74, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "pitchwheel",
																	"args" : [ 0, 50 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "note",
																	"args" : [ 74, 60 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "pitchwheel",
																	"args" : [ -32, 1000 ]
																}
, 																{
																	"time" : 1600.0,
																	"message" : "note",
																	"args" : [ 74, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "pitchwheel",
																	"args" : [ 0, 50 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "note",
																	"args" : [ 74, 60 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "pitchwheel",
																	"args" : [ -12, 1000 ]
																}
, 																{
																	"time" : 1600.0,
																	"message" : "note",
																	"args" : [ 74, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "pitchwheel",
																	"args" : [ 0, 50 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "note",
																	"args" : [ 74, 60 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "pitchwheel",
																	"args" : [ 12, 1000 ]
																}
, 																{
																	"time" : 1600.0,
																	"message" : "note",
																	"args" : [ 74, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "hold",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "pitchwheel",
																	"args" : [ 0, 50 ]
																}
, 																{
																	"time" : 1000.0,
																	"message" : "end"
																}
, 																{
																	"time" : 0.0,
																	"message" : "endhold",
																	"args" : [ 0 ]
																}
 ],
															"length" : 11005.0,
															"loop" : 0,
															"trackspeed" : 1.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-207",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 646.0, 978.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-208",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 646.0, 940.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-209",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 646.0, 1100.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-210",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 755.0, 897.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-211",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 755.0, 952.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-212",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 783.0, 987.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-213",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 725.0, 1062.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-214",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 646.0, 1058.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-215",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 646.0, 1023.0, 98.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"text" : "mtr 1 @embed 1",
													"tracks" : [ 														{
															"events" : [ 																{
																	"time" : 0.0,
																	"message" : "hold",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "wform", "saw" ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glide_retrigger", 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glidetime", 30000 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "release", 300 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "sustain", 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "decay", 150 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "attack", 30000 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "hold" ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "mono" ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 70, 60 ]
																}
, 																{
																	"time" : 5000.0,
																	"message" : "note",
																	"args" : [ 69, 60 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 69, 0 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "note",
																	"args" : [ 70, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 62, 60 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "note",
																	"args" : [ 70, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 71, 60 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 71, 0 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "note",
																	"args" : [ 70, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 60, 60 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "note",
																	"args" : [ 70, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 79, 60 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 79, 0 ]
																}
, 																{
																	"time" : 400.0,
																	"message" : "note",
																	"args" : [ 70, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 78, 60 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 78, 0 ]
																}
, 																{
																	"time" : 6000.0,
																	"message" : "hold",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 26000.0,
																	"message" : "end"
																}
, 																{
																	"time" : 0.0,
																	"message" : "endhold",
																	"args" : [ 0 ]
																}
 ],
															"length" : 40605.0,
															"loop" : 0,
															"trackspeed" : 1.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-216",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 508.0, 1008.0, 95.0, 20.0 ],
													"text" : "2-monoAndHold"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-217",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 403.0, 1084.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-218",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 403.0, 887.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-219",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 403.0, 942.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-220",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 431.0, 977.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-221",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 482.0, 1046.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-222",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 403.0, 1042.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-223",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 403.0, 1007.0, 98.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"text" : "mtr 1 @embed 1",
													"tracks" : [ 														{
															"events" : [ 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "hold",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "pitchwheel",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glide_retrigger", 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glidetime", 50 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "release", 50 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "sustain", 0.7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "decay", 150 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "attack", 7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "hold" ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "mono" ]
																}
, 																{
																	"time" : 5.0,
																	"message" : "note",
																	"args" : [ 60, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 64, 60 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "note",
																	"args" : [ 67, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 62, 60 ]
																}
, 																{
																	"time" : 1000.0,
																	"message" : "hold",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 300.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 300.0,
																	"message" : "note",
																	"args" : [ 62, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "hold",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 67, 60 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "note",
																	"args" : [ 74, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 74, 0 ]
																}
, 																{
																	"time" : 300.0,
																	"message" : "hold",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 72, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 72, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 61, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 64, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 67, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 70, 60 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 200.0,
																	"message" : "note",
																	"args" : [ 61, 0 ]
																}
, 																{
																	"time" : 100.0,
																	"message" : "hold",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 1000.0,
																	"message" : "end"
																}
, 																{
																	"time" : 0.0,
																	"message" : "endhold",
																	"args" : [ 0 ]
																}
 ],
															"length" : 6505.0,
															"loop" : 0,
															"trackspeed" : 1.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-224",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 186.0, 887.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-225",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 186.0, 942.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-226",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 214.0, 980.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-227",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 980.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-228",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 942.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-229",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 148.0, 1016.0, 49.0, 20.0 ],
													"text" : "1-mono"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-230",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 52.0, 1092.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-231",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 131.0, 1054.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-232",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 52.0, 1050.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-233",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 52.0, 1015.0, 98.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"text" : "mtr 1 @embed 1",
													"tracks" : [ 														{
															"events" : [ 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 67, 60 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 60 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 60 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "hold",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "pitchwheel",
																	"args" : [ 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glide_retrigger", 1 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "glidetime", 50 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "release", 150 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "sustain", 0.7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "decay", 150 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "tovoice",
																	"args" : [ "attack", 7 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "show",
																	"args" : [ "mono" ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "mono",
																	"args" : [ 1 ]
																}
, 																{
																	"time" : 300.0,
																	"message" : "note",
																	"args" : [ 70, 60 ]
																}
, 																{
																	"time" : 150.0,
																	"message" : "note",
																	"args" : [ 74, 60 ]
																}
, 																{
																	"time" : 150.0,
																	"message" : "note",
																	"args" : [ 74, 0 ]
																}
, 																{
																	"time" : 150.0,
																	"message" : "note",
																	"args" : [ 74, 60 ]
																}
, 																{
																	"time" : 150.0,
																	"message" : "note",
																	"args" : [ 67, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 64, 0 ]
																}
, 																{
																	"time" : 0.0,
																	"message" : "note",
																	"args" : [ 60, 0 ]
																}
, 																{
																	"time" : 150.0,
																	"message" : "note",
																	"args" : [ 74, 0 ]
																}
, 																{
																	"time" : 150.0,
																	"message" : "note",
																	"args" : [ 74, 60 ]
																}
, 																{
																	"time" : 150.0,
																	"message" : "note",
																	"args" : [ 70, 0 ]
																}
, 																{
																	"time" : 150.0,
																	"message" : "note",
																	"args" : [ 74, 0 ]
																}
, 																{
																	"time" : 500.0,
																	"message" : "end"
																}
, 																{
																	"time" : 0.0,
																	"message" : "mono",
																	"args" : [ 0 ]
																}
 ],
															"length" : 2500.0,
															"loop" : 0,
															"trackspeed" : 1.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-154",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-150",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 58.0, 133.0, 29.5, 22.0 ],
																	"text" : "+ 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-149",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 177.0, 52.0, 22.0 ],
																	"text" : "gate 2 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-140",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-29",
																					"maxclass" : "comment",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 113.0, 324.0, 150.0, 20.0 ],
																					"text" : "earlier version than 9?"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-30",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 50.0, 328.0, 46.0, 22.0 ],
																					"text" : "<= 900"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-31",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 243.0, 63.0, 22.0 ],
																					"text" : "sprintf %x"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-40",
																					"maxclass" : "newobj",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 201.0, 99.0, 22.0 ],
																					"text" : "r #0-version"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-126",
																					"linecount" : 2,
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 134.0, 177.0, 35.0 ],
																					"text" : ";\rmax getversion #0-version"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-130",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
																					"text" : "loadbang"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-139",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 410.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-126", 0 ],
																					"source" : [ "obj-130", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-139", 0 ],
																					"source" : [ "obj-30", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-30", 0 ],
																					"source" : [ "obj-31", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-31", 0 ],
																					"source" : [ "obj-40", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 50.0, 100.0, 137.0, 22.0 ],
																	"text" : "p earlier version than 9?"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-28",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 105.0, 230.0, 133.0, 20.0 ],
																	"text" : "< needed only in max 9"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-26",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 229.0, 54.0, 22.0 ],
																	"text" : "deferlow"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-151",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 83.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-153",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 44.0, 311.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-150", 0 ],
																	"source" : [ "obj-140", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-153", 0 ],
																	"source" : [ "obj-149", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-26", 0 ],
																	"source" : [ "obj-149", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-149", 0 ],
																	"source" : [ "obj-150", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-149", 1 ],
																	"source" : [ "obj-151", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-153", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1197.0, 701.0, 83.0, 22.0 ],
													"text" : "p max9Debug"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1105.0, 681.0, 29.0, 22.0 ],
													"text" : "thru"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-185",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 2105.0, 469.0, 35.0, 22.0 ],
													"text" : "i 400"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-182",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2201.0, 445.0, 72.0, 22.0 ],
													"text" : "0 0 1 7 0 $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-180",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 2201.0, 479.0, 41.0, 22.0 ],
													"text" : "line 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 2002.5, 357.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-119",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 2054.5, 450.0, 34.0, 22.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-178",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 2054.5, 418.0, 29.5, 22.0 ],
													"text" : "!= 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-179",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2054.5, 387.0, 29.5, 22.0 ],
													"text" : "$2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-177",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-170",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 470.0, 101.0, 22.0 ],
																	"text" : "prepend textcolor"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-168",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 62.0, 380.0, 39.0, 22.0 ],
																	"text" : "zl join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-165",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 114.0, 343.0, 39.0, 22.0 ],
																	"text" : "zl join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-164",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 62.0, 411.0, 59.0, 22.0 ],
																	"text" : "append 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-163",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "float", "float", "float" ],
																	"patching_rect" : [ 88.0, 100.0, 40.0, 22.0 ],
																	"text" : "t f f f"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-162",
																	"maxclass" : "newobj",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 276.0, 284.0, 110.0, 22.0 ],
																	"text" : "scale 0. 1. 0.871 0."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-160",
																	"maxclass" : "newobj",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 114.0, 273.0, 110.0, 22.0 ],
																	"text" : "scale 0. 1. 0.404 0."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-159",
																	"maxclass" : "newobj",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 237.0, 103.0, 22.0 ],
																	"text" : "scale 0. 1. 0.42 1."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-158",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 173.0, 158.0, 59.0, 22.0 ],
																	"text" : "1. 0. 0. 1."
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-175",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 88.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-176",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 552.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 0 ],
																	"source" : [ "obj-159", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-165", 0 ],
																	"source" : [ "obj-160", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-165", 1 ],
																	"source" : [ "obj-162", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-159", 0 ],
																	"source" : [ "obj-163", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-160", 0 ],
																	"source" : [ "obj-163", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-162", 0 ],
																	"source" : [ "obj-163", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-170", 0 ],
																	"source" : [ "obj-164", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-168", 1 ],
																	"source" : [ "obj-165", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-164", 0 ],
																	"source" : [ "obj-168", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-176", 0 ],
																	"source" : [ "obj-170", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-163", 0 ],
																	"source" : [ "obj-175", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 2104.0, 272.0, 19.0, 22.0 ],
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.129411764705882, 0.486274509803922, 0.490196078431373, 0.42 ],
													"bgoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"blinktime" : 500,
													"fontsize" : 13.0,
													"hidden" : 1,
													"id" : "obj-136",
													"legacytextcolor" : 1,
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"outputmode" : 0,
													"parameter_enable" : 0,
													"patching_rect" : [ 670.0, 294.0, 85.0, 21.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 872.0, 392.0, 84.0, 21.0 ],
													"text" : "end last hold",
													"textcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
													"textoncolor" : [ 0.0, 1.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.129411764705882, 0.486274509803922, 0.490196078431373, 0.42 ],
													"bgoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"blinktime" : 500,
													"fontsize" : 13.0,
													"hidden" : 1,
													"id" : "obj-132",
													"legacytextcolor" : 1,
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"outputmode" : 0,
													"parameter_enable" : 0,
													"patching_rect" : [ 633.5, 268.5, 85.0, 21.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 786.0, 392.0, 84.0, 21.0 ],
													"text" : "end first hold",
													"textcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
													"textoncolor" : [ 0.0, 1.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.129411764705882, 0.486274509803922, 0.490196078431373, 0.3 ],
													"bgoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"blinktime" : 500,
													"fontsize" : 13.0,
													"hidden" : 1,
													"id" : "obj-112",
													"legacytextcolor" : 1,
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"outputmode" : 0,
													"parameter_enable" : 0,
													"patching_rect" : [ 597.0, 229.0, 85.0, 21.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 834.0, 369.0, 77.0, 21.0 ],
													"text" : "end all hold",
													"textcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
													"textoncolor" : [ 0.0, 1.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-135",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 388.0, 375.0, 77.25, 49.0 ],
													"text" : "route mono_steals_release"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-134",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.0, 349.0, 95.0, 22.0 ],
													"text" : "r #0-hides"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-133",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 512.0, 413.0, 170.0, 22.0 ],
													"text" : "prepend mono_steals_release"
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-124",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 388.0, 432.0, 116.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 152.5, 515.0, 116.0, 20.0 ],
													"text" : "mono steals release",
													"textcolor" : [ 0.776470588235294, 0.431372549019608, 0.431372549019608, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-118",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 512.0, 349.0, 24.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 195.0, 480.0, 24.0, 24.0 ],
													"style" : "PuredataButton",
													"thickness" : 29.0,
													"uncheckedcolor" : [ 0.905882352941176, 0.729411764705882, 0.729411764705882, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.267, 0.251, 0.776, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 16.0,
													"gradient" : 1,
													"id" : "obj-37",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2021.0, 801.0, 109.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 166.0, 86.0, 109.0, 34.0 ],
													"style" : "chiba",
													"text" : "7-noteLooper2",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "7-noteLooper2"
												}

											}
, 											{
												"box" : 												{
													"angle" : 270.0,
													"bgcolor" : [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 0.17 ],
													"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
													"id" : "obj-35",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1366.5, 461.0, 69.5, 30.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 974.0, 402.0, 94.5, 31.0 ],
													"proportion" : 0.5
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 125.0, 100.0, 83.0, 22.0 ],
																	"text" : "loadmess 140"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-34",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 50.0, 94.0, 304.0, 357.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-28",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "" ],
																					"patching_rect" : [ 15.0, 255.0, 36.0, 22.0 ],
																					"text" : "sel 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-21",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 15.0, 225.0, 109.0, 22.0 ],
																					"text" : "zl compare 1 0 1 0"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-20",
																					"maxclass" : "newobj",
																					"numinlets" : 5,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.0, 195.0, 270.0, 22.0 ],
																					"text" : "if $i1 == 0 then $i2 $i3 $i4 $i5 else $i1 $i2 $i3 $i4"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-18",
																					"maxclass" : "newobj",
																					"numinlets" : 6,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.0, 165.0, 187.0, 22.0 ],
																					"text" : "if $i6 >= 4 then $i1 $i2 $i3 $i4 $i5"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-17",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 15.0, 135.0, 57.0, 22.0 ],
																					"text" : "zl slice 5"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-15",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 75.0, 135.0, 39.0, 22.0 ],
																					"text" : "zl len"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-14",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 15.0, 105.0, 32.5, 22.0 ],
																					"text" : "t l l"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 12.0,
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.0, 75.0, 44.0, 22.0 ],
																					"text" : "thresh"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "(int) Input from 3rd inlet of [lcd]",
																					"id" : "obj-31",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 15.0, 15.0, 25.0, 25.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "(int) Threshold time (ms)",
																					"id" : "obj-32",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 45.0, 15.0, 25.0, 25.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "(bang) Double click detected",
																					"id" : "obj-33",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 15.0, 315.0, 25.0, 25.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"midpoints" : [ 38.0, 129.5, 84.5, 129.5 ],
																					"source" : [ "obj-14", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-17", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 5 ],
																					"midpoints" : [ 84.5, 159.5, 192.5, 159.5 ],
																					"source" : [ "obj-15", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-20", 0 ],
																					"source" : [ "obj-18", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-21", 0 ],
																					"source" : [ "obj-20", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-28", 0 ],
																					"source" : [ "obj-21", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-33", 0 ],
																					"source" : [ "obj-28", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-31", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 1 ],
																					"midpoints" : [ 54.5, 72.0, 49.5, 72.0 ],
																					"source" : [ "obj-32", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-14", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 50.0, 167.0, 113.0, 22.0 ],
																	"text" : "p test_for_dbl_click"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-11",
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 125.0, 137.0, 50.0, 22.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-2",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-3",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 249.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-34", 1 ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-34", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-34", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1400.5, 532.0, 97.0, 22.0 ],
													"text" : "p testForDbClick"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-110",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1400.5, 562.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.267, 0.251, 0.776, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 16.0,
													"gradient" : 1,
													"id" : "obj-103",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2345.0, 801.0, 112.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 9.0, 124.0, 112.0, 34.0 ],
													"style" : "chiba",
													"text" : "8-notePriorities",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "8-notePriorities"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-95",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2006.0, 29.0, 109.0, 22.0 ],
													"text" : "loadmess hidden 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-108",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1853.0, 68.0, 96.0, 22.0 ],
													"text" : "route notelooper"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-107",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1853.0, 20.0, 95.0, 22.0 ],
													"text" : "r #0-hides"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-94",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1848.0, 336.0, 72.0, 22.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
													"id" : "obj-117",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1680.0, 240.0, 105.0, 22.0 ],
													"text" : "s #0-outlet1",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.267, 0.251, 0.776, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 16.0,
													"gradient" : 1,
													"id" : "obj-116",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1712.0, 807.0, 100.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 9.0, 86.0, 100.0, 34.0 ],
													"style" : "chiba",
													"text" : "6-noteLooper",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "6-noteLooper"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-115",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 1680.0, 98.0, 364.0, 22.0 ],
													"text" : "route record play"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-113",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1680.0, 61.0, 96.0, 22.0 ],
													"text" : "route notelooper"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-114",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1680.0, 20.0, 125.0, 22.0 ],
													"text" : "r #0-commands"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 18.0,
													"hidden" : 1,
													"id" : "obj-109",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2124.0, 119.0, 102.0, 27.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 13.0, 404.0, 102.0, 27.0 ],
													"text" : "Note looper",
													"textcolor" : [ 0.42, 0.404, 0.871, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-106",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1057.5, 194.0, 97.0, 22.0 ],
													"text" : "s #0-hides"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-105",
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2744.0, 27.0, 5.0, 100.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-102",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1400.0, 194.0, 96.0, 22.0 ],
													"text" : "route pitchwheel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1400.0, 164.0, 125.0, 22.0 ],
													"text" : "r #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-86",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1680.0, 168.0, 90.0, 22.0 ],
													"text" : "prepend record"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2020.0, 242.0, 78.0, 22.0 ],
													"text" : "prepend play"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1808.0, 368.0, 72.0, 22.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 1808.0, 302.0, 99.0, 22.0 ],
													"text" : "route play record"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.419607843137255, 0.403921568627451, 0.870588235294118, 1.0 ],
													"hidden" : 1,
													"id" : "obj-96",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2046.0, 210.0, 31.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 113.0, 383.0, 31.0, 20.0 ],
													"text" : "play",
													"textcolor" : [ 0.286274509803922, 0.062745098039216, 0.062745098039216, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.011764705882353, 0.443137254901961, 0.015686274509804, 1.0 ],
													"id" : "obj-97",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 1680.0, 209.0, 227.0, 22.0 ],
													"text" : "alligatorNoteLooper 3 @recordPressed 0"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.419607843137255, 0.403921568627451, 0.870588235294118, 1.0 ],
													"hidden" : 1,
													"id" : "obj-98",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1706.0, 136.0, 43.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 42.0, 383.0, 43.0, 20.0 ],
													"text" : "record",
													"textcolor" : [ 0.286274509803922, 0.062745098039216, 0.062745098039216, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.419607843137255, 0.403921568627451, 0.870588235294118, 1.0 ],
													"checkedcolor" : [ 0.937254901960784, 0.913725490196078, 1.0, 1.0 ],
													"hidden" : 1,
													"id" : "obj-99",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 2020.0, 208.0, 24.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 87.0, 381.0, 24.0, 24.0 ],
													"uncheckedcolor" : [ 0.529411764705882, 0.474509803921569, 0.474509803921569, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.419607843137255, 0.403921568627451, 0.870588235294118, 1.0 ],
													"checkedcolor" : [ 0.937254901960784, 0.913725490196078, 1.0, 1.0 ],
													"hidden" : 1,
													"id" : "obj-100",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1680.0, 134.0, 24.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 16.0, 381.0, 24.0, 24.0 ],
													"uncheckedcolor" : [ 0.529411764705882, 0.474509803921569, 0.474509803921569, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "from alligator",
													"id" : "obj-84",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1600.0, 143.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 753.0, 490.0, 142.0, 22.0 ],
													"text" : "sprintf alligatorDemo_%s"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1400.0, 591.0, 77.0, 22.0 ],
													"text" : "loadmess 64"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1464.0, 311.0, 70.0, 22.0 ],
													"text" : "loadmess 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1446.0, 466.0, 75.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 987.0, 402.0, 75.0, 20.0 ],
													"text" : "demo speed",
													"textcolor" : [ 1.0, 1.0, 1.0, 0.56078431372549 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.145098039215686, 0.145098039215686, 0.33 ],
													"drawoffcolor" : 1,
													"floatoutput" : 1,
													"id" : "obj-69",
													"knobshape" : 5,
													"maxclass" : "slider",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1400.0, 622.0, 156.0, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 974.0, 415.0, 94.0, 14.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-82",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1400.0, 695.0, 120.0, 22.0 ],
													"text" : "expr pow(2\\, ($f1/12))"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-80",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1400.0, 646.0, 121.0, 22.0 ],
													"text" : "scale 0. 128. -36. 36."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 17.0, 103.0, 52.0, 22.0 ],
																	"text" : "gate 2 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-11",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 72.0, 29.5, 22.0 ],
																	"text" : "t l l"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-10",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 143.0, 64.0, 37.0, 22.0 ],
																	"text" : "zl len"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 221.0, 39.0, 22.0 ],
																	"text" : "zl join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 86.0, 178.0, 29.5, 22.0 ],
																	"text" : "/ 1."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 132.0, 55.0, 22.0 ],
																	"text" : "zl slice 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 198.0, 178.0, 121.0, 22.0 ],
																	"text" : "r #0-seqSpeed"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-12",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-13",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 328.164062000000001, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"source" : [ "obj-11", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 1 ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-14", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 1 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 1 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1400.0, 240.0, 131.0, 22.0 ],
													"text" : "p divideByDemoSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-87",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 59.0, 106.0, 971.0, 381.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 221.0, 39.0, 22.0 ],
																					"text" : "zl join"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"patching_rect" : [ 86.0, 178.0, 29.5, 22.0 ],
																					"text" : "/ 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "float" ],
																					"patching_rect" : [ 205.0, 238.0, 40.0, 22.0 ],
																					"text" : "t b b f"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 100.0, 55.0, 22.0 ],
																					"text" : "zl slice 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-21",
																					"maxclass" : "newobj",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 198.0, 178.0, 121.0, 22.0 ],
																					"text" : "r #0-seqSpeed"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-12",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-13",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 328.164062000000001, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-12", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-2", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-21", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 1 ],
																					"source" : [ "obj-3", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 1 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-13", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 757.0, 151.0, 131.0, 22.0 ],
																	"text" : "p divideByDemoSpeed"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-17",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 221.0, 39.0, 22.0 ],
																					"text" : "zl join"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"patching_rect" : [ 86.0, 178.0, 29.5, 22.0 ],
																					"text" : "/ 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "float" ],
																					"patching_rect" : [ 205.0, 238.0, 40.0, 22.0 ],
																					"text" : "t b b f"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 100.0, 55.0, 22.0 ],
																					"text" : "zl slice 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-21",
																					"maxclass" : "newobj",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 198.0, 178.0, 121.0, 22.0 ],
																					"text" : "r #0-seqSpeed"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-12",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-13",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 328.164062000000001, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-12", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-2", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-21", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 1 ],
																					"source" : [ "obj-3", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 1 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-13", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 585.0, 151.0, 131.0, 22.0 ],
																	"text" : "p divideByDemoSpeed"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 221.0, 39.0, 22.0 ],
																					"text" : "zl join"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"patching_rect" : [ 86.0, 178.0, 29.5, 22.0 ],
																					"text" : "/ 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "float" ],
																					"patching_rect" : [ 205.0, 238.0, 40.0, 22.0 ],
																					"text" : "t b b f"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 100.0, 55.0, 22.0 ],
																					"text" : "zl slice 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-21",
																					"maxclass" : "newobj",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 198.0, 178.0, 121.0, 22.0 ],
																					"text" : "r #0-seqSpeed"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-12",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-13",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 328.164062000000001, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-12", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-2", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-21", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 1 ],
																					"source" : [ "obj-3", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 1 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-13", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 240.0, 151.0, 131.0, 22.0 ],
																	"text" : "p divideByDemoSpeed"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 221.0, 39.0, 22.0 ],
																					"text" : "zl join"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"patching_rect" : [ 86.0, 178.0, 29.5, 22.0 ],
																					"text" : "/ 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "float" ],
																					"patching_rect" : [ 205.0, 238.0, 40.0, 22.0 ],
																					"text" : "t b b f"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 100.0, 55.0, 22.0 ],
																					"text" : "zl slice 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-21",
																					"maxclass" : "newobj",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 198.0, 178.0, 121.0, 22.0 ],
																					"text" : "r #0-seqSpeed"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-12",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-13",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 328.164062000000001, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-12", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-2", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-21", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 1 ],
																					"source" : [ "obj-3", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 1 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-13", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 68.0, 151.0, 131.0, 22.0 ],
																	"text" : "p divideByDemoSpeed"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 6,
																	"numoutlets" : 6,
																	"outlettype" : [ "", "", "", "", "", "" ],
																	"patching_rect" : [ 68.0, 113.0, 880.0, 22.0 ],
																	"text" : "routepass attack decay sustain release glidetime"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-61",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 68.0, 39.0, 125.0, 22.0 ],
																	"text" : "r #0-commands"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-60",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 68.0, 84.0, 77.0, 22.0 ],
																	"text" : "route tovoice"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-86",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 68.0, 243.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-1", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-1", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"source" : [ "obj-1", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-86", 0 ],
																	"source" : [ "obj-1", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-86", 0 ],
																	"source" : [ "obj-1", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-86", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-86", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-86", 0 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-86", 0 ],
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-60", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-60", 0 ],
																	"source" : [ "obj-61", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1213.0, 590.0, 119.0, 22.0 ],
													"text" : "p toVoiceCommands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 624.0, 90.0, 782.0, 776.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-8",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 219.0, 329.0, 77.0, 22.0 ],
																	"text" : "clear, seed 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "float" ],
																	"patching_rect" : [ 259.0, 163.0, 29.5, 22.0 ],
																	"text" : "t b f"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 178.0, 151.0, 29.5, 22.0 ],
																	"text" : "/ 1."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 259.0, 131.0, 121.0, 22.0 ],
																	"text" : "r #0-seqSpeed"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 72.0, 289.0, 124.0, 22.0 ],
																	"text" : "urn 20"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-31",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 72.0, 451.0, 127.0, 22.0 ],
																	"text" : "s #0-commands"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-30",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 72.0, 418.0, 79.0, 22.0 ],
																	"text" : "prepend note"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-29",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 72.0, 382.0, 101.0, 22.0 ],
																	"text" : "pack i i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-28",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 2,
																	"outlettype" : [ "float", "float" ],
																	"patching_rect" : [ 72.0, 351.0, 101.0, 22.0 ],
																	"text" : "makenote 60 150"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-27",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 72.0, 320.0, 32.0, 22.0 ],
																	"text" : "+ 60"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 72.0, 261.0, 124.0, 22.0 ],
																	"text" : "metro 20"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 72.0, 81.0, 24.0, 24.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 6,
																	"numoutlets" : 6,
																	"outlettype" : [ "", "", "", "", "", "" ],
																	"patching_rect" : [ 72.0, 51.0, 581.0, 22.0 ],
																	"text" : "route metroRandom metroRandomSpeed metroRandomLength metroRandomOffset metroRandomRandom"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-49",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 72.0, 22.0, 125.0, 22.0 ],
																	"text" : "r #0-commands"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 1 ],
																	"source" : [ "obj-1", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 1 ],
																	"source" : [ "obj-1", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 2 ],
																	"source" : [ "obj-1", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"source" : [ "obj-1", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 0 ],
																	"source" : [ "obj-27", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 1 ],
																	"source" : [ "obj-28", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"source" : [ "obj-28", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-30", 0 ],
																	"source" : [ "obj-29", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 0 ],
																	"source" : [ "obj-30", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-49", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 1 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 1 ],
																	"source" : [ "obj-6", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 22.0, 308.0, 95.0, 22.0 ],
													"text" : "p metroRandom"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 829.0, 43.0, 400.0, 22.0 ],
													"text" : "keyboard 0, mono 0, hold 0, sustain 0, scale 0, pitchwheel 0, notelooper 0"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 10.0,
													"gradient" : 1,
													"id" : "obj-49",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 822.0, 17.0, 39.0, 24.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 993.0, 140.0, 39.0, 24.0 ],
													"style" : "chiba",
													"text" : "view all"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.267, 0.251, 0.776, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 16.0,
													"gradient" : 1,
													"id" : "obj-85",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1395.0, 813.0, 55.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 166.0, 48.0, 55.0, 34.0 ],
													"style" : "chiba",
													"text" : "5-scale",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "5-scale"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 646.0, 650.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 235.0, 173.0, 77.0, 22.0 ],
																					"text" : "loadmess 48"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "number",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 304.0, 252.0, 50.0, 22.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-20",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 235.0, 271.0, 32.0, 22.0 ],
																					"text" : "mtof"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"format" : 4,
																					"id" : "obj-19",
																					"maxclass" : "number",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "bang" ],
																					"parameter_enable" : 1,
																					"patching_rect" : [ 235.0, 209.0, 50.0, 22.0 ],
																					"saved_attribute_attributes" : 																					{
																						"valueof" : 																						{
																							"parameter_initial" : [ 60 ],
																							"parameter_initial_enable" : 1,
																							"parameter_invisible" : 1,
																							"parameter_longname" : "number[8]",
																							"parameter_modmode" : 0,
																							"parameter_shortname" : "number[5]",
																							"parameter_type" : 3
																						}

																					}
,
																					"varname" : "number"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-15",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 257.0, 417.0, 29.5, 22.0 ],
																					"text" : "- 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-12",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "zlclear", "float" ],
																					"patching_rect" : [ 235.0, 313.0, 67.0, 22.0 ],
																					"text" : "t b zlclear f"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-10",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"patching_rect" : [ 261.0, 486.0, 40.0, 22.0 ],
																					"text" : "* 100."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"patching_rect" : [ 261.0, 518.0, 42.0, 22.0 ],
																					"text" : "+ 100."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 261.0, 563.0, 51.0, 22.0 ],
																					"text" : "zl group"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 261.0, 451.0, 70.0, 22.0 ],
																					"text" : "t i i"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 306.0, 493.0, 32.0, 22.0 ],
																					"text" : "+ 60"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "int" ],
																					"patching_rect" : [ 230.5, 381.0, 41.0, 22.0 ],
																					"text" : "uzi 22"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-52",
																					"linecount" : 4,
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 586.0, 62.0 ],
																					"text" : "60 130.812783 61 261.625566 62 392.438348 63 523.251131 64 654.063914 65 784.876697 66 915.689479 67 1046.502262 68 1177.315045 69 1308.127828 70 1438.940611 71 1569.753393 72 1700.566176 73 1831.378959 74 1962.191742 75 2093.004524 76 2223.817307 77 2354.63 78 2485.442873 79 2616.255656 80 2747.068438 81 2877.881221"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-103",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-104",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 209.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-1", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-1", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-10", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-52", 0 ],
																					"source" : [ "obj-103", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-12", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 1 ],
																					"order" : 1,
																					"source" : [ "obj-12", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-12", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 1 ],
																					"order" : 0,
																					"source" : [ "obj-12", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-15", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-20", 0 ],
																					"order" : 1,
																					"source" : [ "obj-19", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-19", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-12", 0 ],
																					"source" : [ "obj-20", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-52", 1 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-19", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-104", 0 ],
																					"source" : [ "obj-52", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 150.25, 152.0, 87.0, 22.0 ],
																	"text" : "p harmonix C2"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-66",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 20.0, 195.0, 60.0, 22.0 ],
																	"text" : "scale_def"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-68",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 84.0, 195.0, 107.0, 22.0 ],
																	"text" : "prepend scale_def"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-105",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 106.0, 646.0, 650.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 235.0, 173.0, 77.0, 22.0 ],
																					"text" : "loadmess 60"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "number",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 304.0, 252.0, 50.0, 22.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-20",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 235.0, 271.0, 32.0, 22.0 ],
																					"text" : "mtof"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"format" : 4,
																					"id" : "obj-19",
																					"maxclass" : "number",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "bang" ],
																					"parameter_enable" : 1,
																					"patching_rect" : [ 235.0, 209.0, 50.0, 22.0 ],
																					"saved_attribute_attributes" : 																					{
																						"valueof" : 																						{
																							"parameter_initial" : [ 60 ],
																							"parameter_initial_enable" : 1,
																							"parameter_invisible" : 1,
																							"parameter_longname" : "number[5]",
																							"parameter_modmode" : 0,
																							"parameter_shortname" : "number[5]",
																							"parameter_type" : 3
																						}

																					}
,
																					"varname" : "number"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-15",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 257.0, 417.0, 29.5, 22.0 ],
																					"text" : "- 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-12",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "zlclear", "float" ],
																					"patching_rect" : [ 235.0, 313.0, 67.0, 22.0 ],
																					"text" : "t b zlclear f"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-10",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"patching_rect" : [ 261.0, 486.0, 40.0, 22.0 ],
																					"text" : "* 100."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"patching_rect" : [ 261.0, 518.0, 42.0, 22.0 ],
																					"text" : "+ 100."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 261.0, 563.0, 51.0, 22.0 ],
																					"text" : "zl group"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 261.0, 451.0, 70.0, 22.0 ],
																					"text" : "t i i"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 306.0, 493.0, 32.0, 22.0 ],
																					"text" : "+ 60"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "int" ],
																					"patching_rect" : [ 230.5, 381.0, 41.0, 22.0 ],
																					"text" : "uzi 22"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-52",
																					"linecount" : 4,
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 100.0, 586.0, 62.0 ],
																					"text" : "60 261.625565 61 523.251131 62 784.876696 63 1046.502262 64 1308.127827 65 1569.753392 66 1831.378958 67 2093.004523 68 2354.63 69 2616.255654 70 2877.88122 71 3139.506785 72 3401.13235 73 3662.757916 74 3924.383481 75 4186.009047 76 4447.634612 77 4709.260177 78 4970.885743 79 5232.511308 80 5494.136874 81 5755.762439"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-103",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-104",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 209.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-15", 0 ],
																					"source" : [ "obj-1", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-1", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"source" : [ "obj-10", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-52", 0 ],
																					"source" : [ "obj-103", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-12", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 1 ],
																					"order" : 1,
																					"source" : [ "obj-12", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-12", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 1 ],
																					"order" : 0,
																					"source" : [ "obj-12", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-15", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-20", 0 ],
																					"order" : 1,
																					"source" : [ "obj-19", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"order" : 0,
																					"source" : [ "obj-19", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-12", 0 ],
																					"source" : [ "obj-20", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-52", 1 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-19", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-104", 0 ],
																					"source" : [ "obj-52", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 61.25, 152.0, 87.0, 22.0 ],
																	"text" : "p harmonix C3"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-56",
																	"maxclass" : "newobj",
																	"numinlets" : 5,
																	"numoutlets" : 5,
																	"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
																	"patching_rect" : [ 20.0, 67.0, 184.0, 22.0 ],
																	"text" : "sel 0 1 2 3"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-80",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 20.0, 3.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-82",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 303.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-68", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-68", 0 ],
																	"source" : [ "obj-105", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-56", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-105", 0 ],
																	"source" : [ "obj-56", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-66", 0 ],
																	"source" : [ "obj-56", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-82", 0 ],
																	"source" : [ "obj-66", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-82", 0 ],
																	"source" : [ "obj-68", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-56", 0 ],
																	"source" : [ "obj-80", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1006.0, 366.0, 65.0, 22.0 ],
													"text" : "p sel scale"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
													"id" : "obj-74",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1006.0, 404.0, 105.0, 22.0 ],
													"text" : "s #0-outlet1",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 624.0, 90.0, 782.0, 776.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-26",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 393.0, 154.0, 29.5, 22.0 ],
																	"text" : "f"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "float" ],
																	"patching_rect" : [ 457.0, 143.0, 29.5, 22.0 ],
																	"text" : "t b f"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-11",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 457.0, 216.0, 29.5, 22.0 ],
																	"text" : "/ 1."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 457.0, 111.0, 121.0, 22.0 ],
																	"text" : "r #0-seqSpeed"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 426.0, 273.0, 31.0, 22.0 ],
																	"text" : "stop"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "int", "int" ],
																	"patching_rect" : [ 169.0, 562.0, 48.0, 22.0 ],
																	"text" : "change"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-31",
																	"linecount" : 3,
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 153.0, 742.0, 97.0, 49.0 ],
																	"text" : "s #0-commands"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-30",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 156.0, 696.0, 79.0, 22.0 ],
																	"text" : "prepend note"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-29",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 156.0, 660.0, 46.0, 22.0 ],
																	"text" : "pack i i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-28",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 2,
																	"outlettype" : [ "float", "float" ],
																	"patching_rect" : [ 156.0, 629.0, 101.0, 22.0 ],
																	"text" : "makenote 60 150"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-27",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 156.0, 595.0, 32.0, 22.0 ],
																	"text" : "+ 60"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 324.0, 209.0, 71.0, 22.0 ],
																	"text" : "routepass 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 247.0, 524.0, 30.0, 22.0 ],
																	"text" : "* 12"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 184.0, 512.0, 50.0, 22.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 269.0, 435.0, 33.0, 22.0 ],
																	"text" : "!- 13"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-17",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 280.0, 398.0, 29.5, 22.0 ],
																	"text" : "1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-13",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "int" ],
																	"patching_rect" : [ 269.0, 333.0, 29.5, 22.0 ],
																	"text" : "t i i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 280.0, 371.0, 41.0, 22.0 ],
																	"text" : "sel 13"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 5,
																	"numoutlets" : 4,
																	"outlettype" : [ "int", "", "", "int" ],
																	"patching_rect" : [ 301.0, 295.0, 65.0, 22.0 ],
																	"text" : "counter 13"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-12",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 80.0, 328.0, 29.5, 22.0 ],
																	"text" : "2"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-10",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "int" ],
																	"patching_rect" : [ 155.0, 328.0, 29.5, 22.0 ],
																	"text" : "t i i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 187.0, 245.0, 52.0, 22.0 ],
																	"text" : "gate 2 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 165.5, 366.0, 41.0, 22.0 ],
																	"text" : "sel 13"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 5,
																	"numoutlets" : 4,
																	"outlettype" : [ "int", "", "", "int" ],
																	"patching_rect" : [ 187.0, 290.0, 65.0, 22.0 ],
																	"text" : "counter 13"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 220.0, 209.0, 56.0, 22.0 ],
																	"text" : "metro 20"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 220.0, 154.0, 24.0, 24.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 220.0, 130.0, 77.0, 22.0 ],
																	"text" : "route metro1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-49",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 220.0, 56.0, 125.0, 22.0 ],
																	"text" : "r #0-commands"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-10", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 1 ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-13", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 1 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-26", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"order" : 0,
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"order" : 1,
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-26", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 2 ],
																	"order" : 1,
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 2 ],
																	"order" : 2,
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"order" : 0,
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 0 ],
																	"source" : [ "obj-27", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 1 ],
																	"source" : [ "obj-28", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"source" : [ "obj-28", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-30", 0 ],
																	"source" : [ "obj-29", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"order" : 0,
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"order" : 1,
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 0 ],
																	"source" : [ "obj-30", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 1 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-49", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-9", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 22.0, 276.0, 56.0, 22.0 ],
													"text" : "p metro1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-53",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 34.0, 87.0, 1372.0, 779.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-8",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 1126.0, 137.0, 101.0, 22.0 ],
																	"text" : "notelooper play 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-2",
																	"linecount" : 8,
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 1005.222222222222172, 229.5, 151.0, 116.0 ],
																	"text" : "metro1 0, hold 0, mono 0, scale 0, pitchwheel 0, sustain 0, metroRandom 0, tovoice wform sine, metroRandomLength 150, metroRandomSpeed 20, metroRandomOffset 60, metroRandomRandom 20"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 504.0, 357.0, 79.0, 22.0 ],
																	"text" : "prepend note"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 504.0, 436.0, 127.0, 22.0 ],
																	"text" : "s #0-commands"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 39.0, 34.0, 145.0, 22.0 ],
																	"text" : "r #0-stopCommand"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-66",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 348.0, 126.0, 22.0 ],
																	"text" : "s #0-resetHides"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.090196078431373, 0.545098039215686, 0.0, 1.0 ],
																	"id" : "obj-50",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 302.0, 186.0, 105.0, 22.0 ],
																	"text" : "s #0-outlet2"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.090196078431373, 0.545098039215686, 0.0, 1.0 ],
																	"id" : "obj-49",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 22.0, 260.0, 105.0, 22.0 ],
																	"text" : "s #0-outlet2"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
																	"id" : "obj-37",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 157.0, 299.0, 105.0, 22.0 ],
																	"text" : "s #0-outlet1",
																	"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-68",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 22.0, 211.0, 240.0, 22.0 ],
																	"text" : "attack 7, decay 150, sustain 0.7, release 50"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-35",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 157.0, 264.0, 29.5, 22.0 ],
																	"text" : "end"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 10,
																	"outlettype" : [ "bang", "bang", "bang", "flush", "bang", "bang", "bang", "bang", "bang", "bang" ],
																	"patching_rect" : [ 39.0, 84.0, 1106.0, 22.0 ],
																	"text" : "t b b b flush b b b b b b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 302.0, 153.0, 58.0, 22.0 ],
																	"text" : "release 7"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-21", 8 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"order" : 1,
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"source" : [ "obj-21", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-66", 0 ],
																	"order" : 0,
																	"source" : [ "obj-21", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-68", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-21", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-21", 9 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-37", 0 ],
																	"source" : [ "obj-35", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-68", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 22.0, 334.0, 97.0, 22.0 ],
													"text" : "p stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1400.0, 743.0, 123.0, 22.0 ],
													"text" : "s #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 266.0, 36.0, 124.0, 22.0 ],
													"text" : "r #0-resetHides"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 597.0, 389.0, 105.0, 22.0 ],
													"text" : "s #0-outlet1",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.090196078431373, 0.545098039215686, 0.0, 1.0 ],
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1180.0, 506.0, 105.0, 22.0 ],
													"text" : "s #0-outlet2"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.090196078431373, 0.545098039215686, 0.0, 1.0 ],
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1105.0, 590.0, 103.0, 22.0 ],
													"text" : "r #0-outlet2"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 987.0, 594.0, 103.0, 22.0 ],
													"text" : "r #0-outlet1",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 221.0, 389.0, 105.0, 22.0 ],
													"text" : "s #0-outlet1",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 687.25, 490.0, 50.5, 22.0 ],
													"saved_object_attributes" : 													{
														"mode" : 0
													}
,
													"text" : "hover"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 13.0,
													"id" : "obj-77",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 763.25, 619.0, 221.0, 38.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 505.0, 94.0, 528.0, 22.0 ],
													"text" : "The Instrument is monophonic and polyphonic at the same time.",
													"textcolor" : [ 0.019607843137255, 0.011764705882353, 0.298039215686275, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 13.0,
													"id" : "obj-76",
													"linecount" : 5,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 725.25, 592.0, 179.0, 84.0 ],
													"presentation" : 1,
													"presentation_linecount" : 2,
													"presentation_rect" : [ 502.0, 51.0, 534.0, 38.0 ],
													"text" : "Press a C-major chord then turn on (mono) and play a short, monophonic portamento melody over the chord.",
													"textcolor" : [ 0.019607843137255, 0.011764705882353, 0.298039215686275, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 13.0,
													"id" : "obj-75",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 687.25, 557.0, 131.0, 69.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 505.0, 11.0, 514.0, 22.0 ],
													"text" : "This demonstrates the monophony functionality of [voice-alligator]",
													"textcolor" : [ 0.019607843137255, 0.011764705882353, 0.298039215686275, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 12.0,
													"gradient" : 1,
													"id" : "obj-70",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 597.0, 734.0, 30.0, 27.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 451.0, 8.5, 30.0, 27.0 ],
													"style" : "chiba",
													"text" : "stop"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.267, 0.251, 0.776, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 16.0,
													"gradient" : 1,
													"id" : "obj-71",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1083.0, 813.0, 152.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 9.0, 48.0, 152.0, 34.0 ],
													"style" : "chiba",
													"text" : "4-holdAndPitchwheel",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "4-holdAndPitchwheel"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.267, 0.251, 0.776, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 16.0,
													"gradient" : 1,
													"id" : "obj-72",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 755.0, 813.0, 160.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 201.0, 9.0, 160.0, 34.0 ],
													"style" : "chiba",
													"text" : "3-portamentoAndHold",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "3-portamentoAndHold"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.267, 0.251, 0.776, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 16.0,
													"gradient" : 1,
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 403.0, 819.0, 119.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 77.0, 9.0, 119.0, 34.0 ],
													"style" : "chiba",
													"text" : "2-monoAndHold",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "2-monoAndHold"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgcolor2" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.267, 0.251, 0.776, 1.0 ],
													"bgfillcolor_color1" : [ 0.929, 0.929, 0.353, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontname" : "Sukhumvit Set Thin",
													"fontsize" : 16.0,
													"gradient" : 1,
													"id" : "obj-73",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 819.0, 61.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 9.0, 9.0, 61.0, 34.0 ],
													"style" : "chiba",
													"text" : "1-mono",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "1-mono"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 34.0, 87.0, 1372.0, 779.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-38",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 646.0, 340.0, 2820.0, 22.0 ],
																	"text" : "1 \"Demo of note priorities. First use the left hand to play fast and short notes with a relatively long release. Then play sustained notes with the right hand.\", 2 \"Sustained notes have a higher priority with regards to stealing than notes in release. So what we actually hear are shorter notes for the left hand, but all note-ons are still audible..\", 3 \"Now the same thing is repeated, only this time left hand notes are recorded into the Note Looper. The Note Looper has a lower priority and can't steal notes from the player, so notes get lost.\""
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-33",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 565.0, 305.0, 1430.0, 22.0 ],
																	"text" : "1 \"Note Looper not only remembers the pitch of the note, but also the monophony flag.\", 2 \"First play a low portamento melody and record it. Then play in a higher register over the recording.\", 3 \"The result is 2 gliding melodies playing parallely on the same instrument.\""
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-31",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 482.0, 274.0, 1901.0, 22.0 ],
																	"text" : "1 \"Note Looper records and plays back sequences of the [voice alligator]'s output.\", 2 \"Set Note Looper to record and play an ostinato in scale 1 (Harmonics of C2). Stop record, Note Looper plays the recorded sequence.\", 3 \"Now play a short melody in scale 0 (12-TET) with monophony. Pitchwheel and monophony don't affect the Note Looper's sequence.\""
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-26",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 400.0, 239.0, 1847.0, 22.0 ],
																	"text" : "1 \"[voice-alligator] can handle different scales/tunings while playing and remembers the pitches of played notes.\", 2 \"Monophony is enabled. Press the note F: F sounds in default equal-tempered scale (12-TET). Switch to scale 1 (some harmonics) and press G: the corresponding pitch in scale 1 sounds.\", 3 \"Release G: F in scale 0 sounds again.\""
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-24",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 318.0, 207.0, 1806.0, 22.0 ],
																	"text" : "1 \"This example shows how (hold) notes can be treated differently than non-hold notes.\", 2 \"The holdflag that [voice.alligator] sends to the poly~ voice is used to lock the position of the pitchwheel on note off.\", 3 \"(Hold) is on. Play a D, move the pitchwheel and release D. The pitchbend position is locked. This is repeated a couple of times.\""
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 236.0, 175.0, 2938.0, 22.0 ],
																	"text" : "1 \"With a long attack time (30 s) and (hold) turned on, a key that is pressed shorter than the attack+decay time will still trigger the whole ADS part of the ADSR.\", 2 \"With glidetime and attack both set to 30 seconds we get long, swelling notes that also glide in pitch. glide_retrigger is set to 0, this prevents a retriggering of the ADSR.\", 3 \"The player can therefore play an evolving glissando chord. Play the starting note A#, then a second note that will be the glide's target, then first release A#, then the target note. Repeat this for different end pitches.\""
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 266.0, 455.0, 72.0, 22.0 ],
																	"text" : "prepend set"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 169.0, 455.0, 72.0, 22.0 ],
																	"text" : "prepend set"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 71.0, 455.0, 72.0, 22.0 ],
																	"text" : "prepend set"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-13",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 153.25, 147.0, 1683.0, 22.0 ],
																	"text" : "1 \"In the previous example, the player first played a chord and then played a portamento melody over it. The instrument was polyphonic while maintaining a glide functionality.\", 2 \"In this sequence the same thing is shown but in reverse order: Play a portamento melody and use the (hold) function to build a chord.\", 3 "
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 4,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 71.0, 414.0, 312.0, 22.0 ],
																	"text" : "route 1 2 3"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 71.0, 112.0, 1346.0, 22.0 ],
																	"text" : "1 \"This demonstrates the monophony functionality of [voice-alligator]\", 2 \"Press a C-major chord then turn on (mono) and play a short, monophonic portamento melody over the chord.\", 3 \"The Instrument is monophonic and polyphonic at the same time.\""
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 9,
																	"numoutlets" : 9,
																	"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
																	"patching_rect" : [ 71.0, 67.0, 677.0, 22.0 ],
																	"text" : "sel 1-mono 2-monoAndHold 3-portamentoAndHold 4-holdAndPitchwheel 5-scale 6-noteLooper 7-noteLooper2 8-notePriorities"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 208.0, 484.0, 58.0, 22.0 ],
																	"text" : "loadbang"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 71.0, 27.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-28",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 208.0, 508.0, 29.5, 22.0 ],
																	"text" : "set"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-34",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 71.0, 540.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-35",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 169.0, 540.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-36",
																	"index" : 3,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 266.0, 540.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-34", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-36", 0 ],
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-2", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 0 ],
																	"source" : [ "obj-2", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-26", 0 ],
																	"source" : [ "obj-2", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 0 ],
																	"source" : [ "obj-2", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-33", 0 ],
																	"source" : [ "obj-2", 6 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-38", 0 ],
																	"source" : [ "obj-2", 7 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-24", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-34", 0 ],
																	"order" : 2,
																	"source" : [ "obj-28", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"order" : 1,
																	"source" : [ "obj-28", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-36", 0 ],
																	"order" : 0,
																	"source" : [ "obj-28", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-31", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-33", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-38", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-8", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"source" : [ "obj-8", 2 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 687.25, 521.0, 95.0, 22.0 ],
													"text" : "p setDescription"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 194.0, 36.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-59",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 859.0, 164.0, 59.0, 22.0 ],
													"text" : "append 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 822.0, 164.0, 59.0, 22.0 ],
													"text" : "append 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 822.0, 114.0, 93.0, 22.0 ],
													"text" : "route hide show"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 822.0, 78.0, 125.0, 22.0 ],
													"text" : "r #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 1400.0, 316.0, 32.0, 22.0 ],
													"text" : "+ 64"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 1400.0, 285.0, 40.0, 22.0 ],
													"text" : "line"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1180.0, 461.0, 113.0, 22.0 ],
													"text" : "prepend pitchwheel"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 30.0,
													"hidden" : 1,
													"id" : "obj-42",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1256.0, 389.0, 150.0, 40.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 611.0, 376.5, 75.0, 40.0 ],
													"text" : "bend",
													"textcolor" : [ 0.580392156862745, 0.384313725490196, 0.384313725490196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.105882352941176, 0.090196078431373, 0.647058823529412, 1.0 ],
													"drawoffcolor" : 1,
													"hidden" : 1,
													"id" : "obj-41",
													"knobcolor" : [ 0.43921568627451, 0.490196078431373, 0.494117647058824, 1.0 ],
													"knobshape" : 5,
													"maxclass" : "slider",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"parameter_mappable" : 0,
													"patching_rect" : [ 1180.0, 307.0, 20.0, 140.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 626.0, 181.0, 45.0, 200.0 ],
													"thickness" : 61.0
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 241.0, 357.0, 46.0, 20.0 ],
													"text" : "60 - 79"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 194.0, 75.0, 531.0, 22.0 ],
													"text" : "keyboard 0, mono 1, hold 1, sustain 1, scale 1, pitchwheel 1, notelooper 1, mono_steals_release 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 962.0, 194.0, 39.0, 22.0 ],
													"text" : "zl join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 998.0, 164.0, 92.0, 22.0 ],
													"text" : "prepend hidden"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 962.0, 136.0, 55.0, 22.0 ],
													"text" : "zl slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 7,
													"numoutlets" : 7,
													"outlettype" : [ "", "", "", "", "", "", "" ],
													"patching_rect" : [ 962.0, 228.0, 281.0, 22.0 ],
													"text" : "route keyboard mono hold sustain scale pitchwheel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 8,
													"numoutlets" : 8,
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 221.0, 158.0, 358.0, 22.0 ],
													"text" : "route note mono hold endhold sustain scale mono_steals_release"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 221.0, 117.0, 125.0, 22.0 ],
													"text" : "r #0-commands"
												}

											}
, 											{
												"box" : 												{
													"comment" : "\"to voice\"",
													"id" : "obj-3",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1105.0, 738.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 670.0, 319.0, 29.5, 22.0 ],
													"text" : "last"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 633.0, 302.0, 29.5, 22.0 ],
													"text" : "first"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 597.0, 278.0, 29.5, 22.0 ],
													"text" : "all"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 4,
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"patching_rect" : [ 597.0, 193.0, 128.5, 22.0 ],
													"text" : "sel 0 1 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 597.0, 350.0, 99.0, 22.0 ],
													"text" : "prepend endhold"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 854.0, 366.0, 94.0, 22.0 ],
													"text" : "prepend sustain"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 467.0, 319.0, 79.0, 22.0 ],
													"text" : "prepend hold"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 334.0, 319.0, 86.0, 22.0 ],
													"text" : "prepend mono"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 221.0, 319.0, 84.0, 22.0 ],
													"text" : "pack i i"
												}

											}
, 											{
												"box" : 												{
													"comment" : "\"to alligator\"",
													"id" : "obj-11",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 987.0, 681.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 30.0,
													"hidden" : 1,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 897.0, 306.0, 104.0, 40.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 950.0, 315.0, 104.0, 40.0 ],
													"text" : "sustain",
													"textcolor" : [ 0.090196078431373, 0.545098039215686, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.090196078431373, 0.545098039215686, 0.0, 1.0 ],
													"checkedcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"hidden" : 1,
													"id" : "obj-10",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 854.0, 306.0, 41.0, 41.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 943.0, 198.0, 118.0, 118.0 ],
													"uncheckedcolor" : [ 0.254901960784314, 0.494117647058824, 0.207843137254902, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.011764705882353, 0.443137254901961, 0.015686274509804, 1.0 ],
													"fontsize" : 30.0,
													"hidden" : 1,
													"id" : "obj-125",
													"maxclass" : "number",
													"maximum" : 3,
													"minimum" : 0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1006.0, 305.0, 47.0, 42.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 361.0, 385.0, 94.0, 42.0 ],
													"textcolor" : [ 0.189978, 0.702782, 0.709092, 1.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 30.0,
													"hidden" : 1,
													"id" : "obj-123",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1060.0, 306.0, 79.0, 40.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 456.0, 386.0, 79.0, 40.0 ],
													"text" : "scale",
													"textcolor" : [ 0.090196078431373, 0.545098039215686, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 30.0,
													"hidden" : 1,
													"id" : "obj-121",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 375.0, 259.0, 84.0, 40.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 697.0, 315.0, 84.0, 40.0 ],
													"text" : "mono",
													"textcolor" : [ 0.694117647058824, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.694117647058824, 0.0, 0.0, 1.0 ],
													"hidden" : 1,
													"id" : "obj-23",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 334.0, 259.0, 41.0, 41.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 680.0, 198.0, 118.0, 118.0 ],
													"uncheckedcolor" : [ 0.611764705882353, 0.066666666666667, 0.066666666666667, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 30.0,
													"hidden" : 1,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 506.0, 259.0, 74.0, 40.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 839.0, 315.0, 74.0, 40.0 ],
													"text" : "hold ",
													"textcolor" : [ 0.189978, 0.702782, 0.709092, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.189978, 0.702782, 0.709092, 1.0 ],
													"checkedcolor" : [ 0.937254901960784, 0.976470588235294, 0.980392156862745, 1.0 ],
													"hidden" : 1,
													"id" : "obj-14",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 467.0, 259.0, 41.0, 41.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 813.0, 198.0, 118.0, 118.0 ],
													"uncheckedcolor" : [ 0.411764705882353, 0.588235294117647, 0.592156862745098, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"blackkeycolor" : [ 0.164705882352941, 0.156862745098039, 0.156862745098039, 1.0 ],
													"hkeycolor" : [ 1.0, 1.0, 0.462745098039216, 1.0 ],
													"id" : "obj-1",
													"maxclass" : "kslider",
													"mode" : 1,
													"numinlets" : 2,
													"numoutlets" : 2,
													"offset" : 60,
													"outlettype" : [ "int", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 221.0, 272.0, 84.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 9.0, 181.0, 600.0, 197.0 ],
													"range" : 20,
													"selectioncolor" : [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0 ],
													"whitekeycolor" : [ 0.850980392156863, 0.803921568627451, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"angle" : 270.0,
													"background" : 1,
													"bgcolor" : [ 0.87843137254902, 0.874509803921569, 0.964705882352941, 1.0 ],
													"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
													"id" : "obj-7",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 785.25, 456.0, 45.0, 33.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 489.0, 4.0, 543.0, 150.0 ],
													"proportion" : 0.5
												}

											}
, 											{
												"box" : 												{
													"angle" : 270.0,
													"background" : 1,
													"bgcolor" : [ 0.196078431372549, 0.250980392156863, 0.482352941176471, 1.0 ],
													"id" : "obj-66",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 752.25, 456.0, 45.0, 33.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, -3.0, 1069.5, 436.0 ],
													"proportion" : 0.5
												}

											}
, 											{
												"box" : 												{
													"background" : 1,
													"id" : "obj-111",
													"local" : 0,
													"maxclass" : "lcd",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "list", "list", "int", "" ],
													"patching_rect" : [ 1366.5, 494.0, 69.5, 30.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 974.0, 402.0, 94.5, 31.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-86", 0 ],
													"source" : [ "obj-100", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-102", 0 ],
													"source" : [ "obj-101", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"source" : [ "obj-102", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-143", 0 ],
													"order" : 0,
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-248", 0 ],
													"order" : 1,
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 0 ],
													"source" : [ "obj-104", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-108", 0 ],
													"source" : [ "obj-107", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"order" : 4,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"order" : 0,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"order" : 1,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"order" : 3,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 0 ],
													"order" : 2,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-110", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"source" : [ "obj-111", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-112", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-115", 0 ],
													"source" : [ "obj-113", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-113", 0 ],
													"source" : [ "obj-114", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"source" : [ "obj-115", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-115", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 0 ],
													"source" : [ "obj-115", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-175", 0 ],
													"order" : 0,
													"source" : [ "obj-116", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-245", 0 ],
													"order" : 1,
													"source" : [ "obj-116", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-133", 0 ],
													"source" : [ "obj-118", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-185", 0 ],
													"source" : [ "obj-119", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-176", 0 ],
													"source" : [ "obj-122", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-184", 0 ],
													"source" : [ "obj-122", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-171", 0 ],
													"source" : [ "obj-129", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 1 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-129", 0 ],
													"source" : [ "obj-130", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-132", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-133", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-135", 0 ],
													"source" : [ "obj-134", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-118", 0 ],
													"order" : 0,
													"source" : [ "obj-135", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 0 ],
													"order" : 1,
													"source" : [ "obj-135", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-136", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-206", 0 ],
													"source" : [ "obj-137", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-148", 0 ],
													"source" : [ "obj-140", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-140", 0 ],
													"source" : [ "obj-141", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-144", 0 ],
													"source" : [ "obj-143", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-145", 0 ],
													"source" : [ "obj-144", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-148", 0 ],
													"source" : [ "obj-144", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-142", 0 ],
													"source" : [ "obj-147", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-146", 0 ],
													"source" : [ "obj-148", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-147", 0 ],
													"source" : [ "obj-148", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-152", 0 ],
													"source" : [ "obj-149", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-137", 0 ],
													"source" : [ "obj-151", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-153", 0 ],
													"source" : [ "obj-152", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-171", 0 ],
													"source" : [ "obj-152", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-215", 0 ],
													"source" : [ "obj-155", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-155", 0 ],
													"source" : [ "obj-156", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-223", 0 ],
													"source" : [ "obj-157", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-157", 0 ],
													"source" : [ "obj-158", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-233", 0 ],
													"source" : [ "obj-159", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-159", 0 ],
													"source" : [ "obj-160", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-195", 0 ],
													"source" : [ "obj-161", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-161", 0 ],
													"source" : [ "obj-162", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-184", 0 ],
													"source" : [ "obj-163", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-163", 0 ],
													"source" : [ "obj-164", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-171", 0 ],
													"source" : [ "obj-165", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-165", 0 ],
													"source" : [ "obj-166", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-148", 0 ],
													"source" : [ "obj-167", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-167", 0 ],
													"source" : [ "obj-168", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 0 ],
													"source" : [ "obj-170", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-169", 0 ],
													"source" : [ "obj-171", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-170", 0 ],
													"source" : [ "obj-171", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-184", 0 ],
													"source" : [ "obj-172", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-172", 0 ],
													"source" : [ "obj-173", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-122", 0 ],
													"source" : [ "obj-175", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"source" : [ "obj-177", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-119", 0 ],
													"source" : [ "obj-178", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-178", 0 ],
													"source" : [ "obj-179", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-106", 0 ],
													"order" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"order" : 1,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-177", 0 ],
													"source" : [ "obj-180", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-180", 0 ],
													"source" : [ "obj-182", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-174", 0 ],
													"source" : [ "obj-183", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-181", 0 ],
													"source" : [ "obj-184", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-183", 0 ],
													"source" : [ "obj-184", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-182", 0 ],
													"source" : [ "obj-185", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-195", 0 ],
													"source" : [ "obj-187", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-187", 0 ],
													"source" : [ "obj-188", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-191", 0 ],
													"source" : [ "obj-190", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-192", 0 ],
													"source" : [ "obj-191", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-195", 0 ],
													"source" : [ "obj-191", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-189", 0 ],
													"source" : [ "obj-194", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-193", 0 ],
													"source" : [ "obj-195", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-194", 0 ],
													"source" : [ "obj-195", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-206", 0 ],
													"source" : [ "obj-198", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-198", 0 ],
													"source" : [ "obj-199", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-202", 0 ],
													"source" : [ "obj-201", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-203", 0 ],
													"source" : [ "obj-202", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-206", 0 ],
													"source" : [ "obj-202", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-200", 0 ],
													"source" : [ "obj-205", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-204", 0 ],
													"source" : [ "obj-206", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-205", 0 ],
													"source" : [ "obj-206", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-215", 0 ],
													"source" : [ "obj-207", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-207", 0 ],
													"source" : [ "obj-208", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-211", 0 ],
													"source" : [ "obj-210", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-212", 0 ],
													"source" : [ "obj-211", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-215", 0 ],
													"source" : [ "obj-211", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-209", 0 ],
													"source" : [ "obj-214", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-213", 0 ],
													"source" : [ "obj-215", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-214", 0 ],
													"source" : [ "obj-215", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-219", 0 ],
													"source" : [ "obj-218", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-220", 0 ],
													"source" : [ "obj-219", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-223", 0 ],
													"source" : [ "obj-219", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-217", 0 ],
													"source" : [ "obj-222", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-221", 0 ],
													"source" : [ "obj-223", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-222", 0 ],
													"source" : [ "obj-223", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-225", 0 ],
													"source" : [ "obj-224", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-226", 0 ],
													"source" : [ "obj-225", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-233", 0 ],
													"source" : [ "obj-225", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-233", 0 ],
													"source" : [ "obj-227", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-227", 0 ],
													"source" : [ "obj-228", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-230", 0 ],
													"source" : [ "obj-232", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-231", 0 ],
													"source" : [ "obj-233", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-232", 0 ],
													"source" : [ "obj-233", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-237", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-240", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-241", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"source" : [ "obj-242", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-85", 0 ],
													"source" : [ "obj-243", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-116", 0 ],
													"source" : [ "obj-245", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-246", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"source" : [ "obj-248", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-132", 0 ],
													"source" : [ "obj-34", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"source" : [ "obj-34", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-149", 0 ],
													"order" : 0,
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-246", 0 ],
													"order" : 1,
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"order" : 2,
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-121", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-123", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-132", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"order" : 4,
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 3,
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-179", 0 ],
													"source" : [ "obj-43", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-218", 0 ],
													"order" : 0,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-237", 0 ],
													"order" : 1,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"source" : [ "obj-52", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-55", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-118", 0 ],
													"source" : [ "obj-55", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"source" : [ "obj-55", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-55", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-55", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-55", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-57", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-67", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"source" : [ "obj-67", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-234", 0 ],
													"order" : 0,
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-244", 0 ],
													"order" : 1,
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-201", 0 ],
													"order" : 0,
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-242", 0 ],
													"order" : 1,
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-210", 0 ],
													"order" : 0,
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-241", 0 ],
													"order" : 1,
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-224", 0 ],
													"order" : 0,
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-240", 0 ],
													"order" : 1,
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-82", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-190", 0 ],
													"order" : 0,
													"source" : [ "obj-85", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-243", 0 ],
													"order" : 1,
													"source" : [ "obj-85", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-86", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-87", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-9", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-90", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-93", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-94", 0 ],
													"source" : [ "obj-93", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"source" : [ "obj-94", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"order" : 4,
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"order" : 0,
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"order" : 1,
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"order" : 3,
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 0 ],
													"order" : 2,
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-117", 0 ],
													"order" : 1,
													"source" : [ "obj-97", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"order" : 0,
													"source" : [ "obj-97", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"source" : [ "obj-97", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-99", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "PuredataButton",
												"default" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "Puredatacomment9",
												"default" : 												{
													"fontsize" : [ 9.0 ],
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 177.0, 22.0, 1070.0, 434.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 78.0, 93.0, 97.0, 25.0 ],
									"text" : "select demo"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 667.0, 110.0, 25.0 ],
									"text" : "Turn on audio"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "", "" ],
									"patching_rect" : [ 177.0, 594.0, 252.0, 22.0 ],
									"text" : "poly~ alligator-example-voice 8 @args demos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 177.0, 514.0, 93.0, 22.0 ],
									"text" : "voice-alligator 8"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-93",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 670.0, 20.0, 20.0 ],
									"rounded" : 60.0,
									"text" : "1",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-7",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 56.0, 96.0, 20.0, 20.0 ],
									"rounded" : 60.0,
									"text" : "2",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"midpoints" : [ 1237.5, 501.0, 1129.5, 501.0 ],
									"order" : 0,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1237.5, 501.0, 843.5, 501.0 ],
									"order" : 1,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-2", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"midpoints" : [ 303.0, 623.921875, 442.21484375, 623.921875, 442.21484375, 503.77734375, 260.5, 503.77734375 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"order" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [ 186.5, 583.0, 1257.0, 583.0, 1257.0, 14.0703125, 186.5, 14.0703125 ],
									"order" : 2,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Puredatacomment9",
								"default" : 								{
									"fontsize" : [ 9.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rnbodefault",
								"default" : 								{
									"accentcolor" : [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
									"bgcolor" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
									"bgfillcolor" : 									{
										"angle" : 270.0,
										"autogradient" : 0.0,
										"color" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
										"color1" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
										"color2" : [ 0.263682, 0.004541, 0.038797, 1.0 ],
										"proportion" : 0.39,
										"type" : "color"
									}
,
									"color" : [ 0.929412, 0.929412, 0.352941, 1.0 ],
									"elementcolor" : [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
									"fontname" : [ "Lato" ],
									"fontsize" : [ 12.0 ],
									"stripecolor" : [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
									"textcolor_inverse" : [ 0.968627, 0.968627, 0.968627, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rnbomonokai",
								"default" : 								{
									"accentcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"angle" : 270.0,
										"autogradient" : 0.0,
										"color" : [ 0.0, 0.0, 0.0, 1.0 ],
										"color1" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
										"color2" : [ 0.263682, 0.004541, 0.038797, 1.0 ],
										"proportion" : 0.39,
										"type" : "color"
									}
,
									"clearcolor" : [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
									"color" : [ 0.611764705882353, 0.125490196078431, 0.776470588235294, 1.0 ],
									"editing_bgcolor" : [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
									"elementcolor" : [ 0.749019607843137, 0.83921568627451, 1.0, 1.0 ],
									"fontname" : [ "Lato" ],
									"locked_bgcolor" : [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
									"stripecolor" : [ 0.796078431372549, 0.207843137254902, 1.0, 1.0 ],
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 191.0, 205.0, 122.0, 22.0 ],
					"text" : "p \"Demo Sequences\""
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-6::obj-1::obj-83::obj-105::obj-19" : [ "number[5]", "number[5]", 0 ],
			"obj-6::obj-1::obj-83::obj-1::obj-19" : [ "number[8]", "number[5]", 0 ],
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "alligator-example-voice.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/voice-alligator-package/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "alligatorNoteLooper.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/voice-alligator-package/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "voice-alligator.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
