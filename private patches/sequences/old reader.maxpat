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
		"rect" : [ 59.0, 106.0, 1000.0, 700.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
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
						"rect" : [ 683.0, 129.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 493.0, 48.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 477.0, 245.0, 51.0, 22.0 ],
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 475.0, 215.0, 35.0, 22.0 ],
									"text" : "open"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 380.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 320.0, 54.0, 22.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 93.0, 121.0, 32.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 241.0, 208.0, 140.0, 22.0 ],
									"text" : "s #0-stopCommand"
								}

							}
, 							{
								"box" : 								{
									"comment" : "stopbang",
									"id" : "obj-9",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 394.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 136.0, 121.0, 41.0, 22.0 ],
									"text" : "t s b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 93.0, 60.0, 143.0, 22.0 ],
									"text" : "route alligatorDemo_stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 93.0, 12.0, 126.0, 22.0 ],
									"text" : "r #0-selectedSeq"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
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
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-167",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 3923.0, 306.0, 31.0, 22.0 ],
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
													"patching_rect" : [ 3923.0, 276.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 3606.0, 306.0, 31.0, 22.0 ],
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
													"patching_rect" : [ 3606.0, 276.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 3277.0, 306.0, 31.0, 22.0 ],
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
													"patching_rect" : [ 3277.0, 276.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 2948.0, 306.0, 31.0, 22.0 ],
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
													"patching_rect" : [ 2948.0, 276.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 1737.0, 306.0, 31.0, 22.0 ],
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
													"patching_rect" : [ 1737.0, 276.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 1996.0, 306.0, 31.0, 22.0 ],
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
													"patching_rect" : [ 1996.0, 276.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 2313.0, 306.0, 31.0, 22.0 ],
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
													"patching_rect" : [ 2313.0, 276.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-154",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2630.0, 306.0, 31.0, 22.0 ],
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
													"patching_rect" : [ 2630.0, 276.0, 125.0, 22.0 ],
													"text" : "r #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-150",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3836.0, 402.0, 89.0, 20.0 ],
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
													"patching_rect" : [ 3736.0, 356.0, 89.0, 22.0 ],
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
													"patching_rect" : [ 3736.0, 318.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-142",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3736.0, 478.0, 114.0, 22.0 ],
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
													"patching_rect" : [ 3845.0, 275.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-144",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 3845.0, 330.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-145",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3873.0, 365.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-146",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3815.0, 440.0, 121.0, 22.0 ],
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
													"patching_rect" : [ 3736.0, 436.0, 59.0, 22.0 ],
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
													"patching_rect" : [ 3736.0, 401.0, 98.0, 22.0 ],
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
													"patching_rect" : [ 3523.0, 402.0, 87.0, 20.0 ],
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
													"patching_rect" : [ 3423.0, 356.0, 89.0, 22.0 ],
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
													"patching_rect" : [ 3423.0, 318.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-131",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3423.0, 478.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-132",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 3532.0, 275.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-133",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 3532.0, 330.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-134",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3560.0, 365.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-135",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3502.0, 440.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-136",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 3423.0, 436.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-137",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 3423.0, 401.0, 98.0, 22.0 ],
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
													"patching_rect" : [ 3203.0, 403.0, 80.0, 20.0 ],
													"text" : "6-noteLooper"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-118",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 3099.0, 356.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-119",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 3099.0, 318.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-120",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3099.0, 478.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-121",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 3208.0, 275.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-122",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 3208.0, 330.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-123",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3236.0, 365.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-124",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 3178.0, 440.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-125",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 3099.0, 436.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-126",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 3099.0, 401.0, 98.0, 22.0 ],
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
													"id" : "obj-117",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2884.0, 402.0, 47.0, 20.0 ],
													"text" : "5-scale"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-99",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2781.0, 356.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-100",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2781.0, 318.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2781.0, 478.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-104",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 2890.0, 275.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-110",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 2890.0, 330.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-111",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2918.0, 365.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-112",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2860.0, 440.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-113",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 2781.0, 436.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-114",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 2781.0, 401.0, 98.0, 22.0 ],
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
													"id" : "obj-97",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1041.0, 425.0, 29.0, 22.0 ],
													"text" : "thru"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-95",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2570.0, 402.0, 121.0, 20.0 ],
													"text" : "4-holdAndPitchwheel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-94",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2237.0, 402.0, 126.0, 20.0 ],
													"text" : "3-portamentoAndHold"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2470.0, 356.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-79",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2470.0, 318.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2470.0, 478.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-82",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 2579.0, 275.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 2579.0, 330.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2607.0, 365.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-86",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2549.0, 440.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-87",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 2470.0, 436.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 2470.0, 401.0, 98.0, 22.0 ],
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
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2137.0, 356.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 2137.0, 318.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2137.0, 478.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-67",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 2246.0, 275.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 2246.0, 330.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2274.0, 365.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2216.0, 440.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-74",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 2137.0, 436.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-75",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 2137.0, 401.0, 98.0, 22.0 ],
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
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 687.0, 340.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 687.0, 302.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-60",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1999.0, 386.0, 95.0, 20.0 ],
													"text" : "2-monoAndHold"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1894.0, 462.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-48",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1894.0, 265.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 1894.0, 320.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1922.0, 355.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1973.0, 424.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1894.0, 420.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1894.0, 385.0, 98.0, 22.0 ],
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
													"id" : "obj-33",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1677.0, 265.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 1677.0, 320.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1705.0, 358.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1543.0, 358.0, 89.0, 22.0 ],
													"text" : "prepend speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1543.0, 320.0, 101.0, 22.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1639.5, 394.0, 49.0, 20.0 ],
													"text" : "1-mono"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1543.0, 470.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1622.0, 432.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1543.0, 428.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.266666666666667, 0.250980392156863, 0.776470588235294, 1.0 ],
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1543.0, 393.0, 98.0, 22.0 ],
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
													"id" : "obj-106",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1653.0, -92.0, 109.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 196.0, 116.0, 109.0, 34.0 ],
													"style" : "chiba",
													"text" : "7-noteLooper2",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "7-noteLooper2"
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
													"patching_rect" : [ 1774.0, -92.0, 112.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 39.0, 154.0, 112.0, 34.0 ],
													"style" : "chiba",
													"text" : "8-notePriorities",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "8-notePriorities"
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
													"patching_rect" : [ 1535.0, -92.0, 100.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 39.0, 116.0, 100.0, 34.0 ],
													"style" : "chiba",
													"text" : "6-noteLooper",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "6-noteLooper"
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
													"id" : "obj-107",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1463.0, -92.0, 55.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 196.0, 78.0, 55.0, 34.0 ],
													"style" : "chiba",
													"text" : "5-scale",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "5-scale"
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
													"patching_rect" : [ 1285.25, -92.0, 152.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 39.0, 78.0, 152.0, 34.0 ],
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
													"patching_rect" : [ 1111.0, -92.0, 160.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 231.0, 39.0, 160.0, 34.0 ],
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
													"id" : "obj-108",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 983.0, -92.0, 119.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 107.0, 39.0, 119.0, 34.0 ],
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
													"id" : "obj-109",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 916.0, -92.0, 61.0, 34.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 39.0, 39.0, 61.0, 34.0 ],
													"style" : "chiba",
													"text" : "1-mono",
													"textcolor" : [ 0.969, 0.969, 0.969, 1.0 ],
													"varname" : "1-mono[1]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 930.0, 285.0, 29.5, 22.0 ],
													"text" : "i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-102",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 930.0, 316.0, 58.0, 22.0 ],
													"text" : "length $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-98",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1057.0, 276.0, 55.0, 22.0 ],
													"text" : "zl slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 687.0, 462.0, 114.0, 22.0 ],
													"text" : "s #0-endOfFile"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-92",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 796.0, 44.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-90",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 796.0, 259.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "play", "bang" ],
													"patching_rect" : [ 796.0, 314.0, 47.0, 22.0 ],
													"text" : "t play b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-85",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 824.0, 349.0, 140.0, 22.0 ],
													"text" : "s #0-stopCommand"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-80",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 766.0, 424.0, 121.0, 22.0 ],
													"text" : "s #0-commands"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1144.0, 260.0, 29.0, 22.0 ],
													"text" : "thru"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-77",
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
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 86.5, 349.0, 66.0, 22.0 ],
																	"text" : "route bang"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 86.5, 309.0, 55.0, 22.0 ],
																	"text" : "route set"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-74",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "dump", "" ],
																	"patching_rect" : [ 140.5, 100.0, 55.0, 22.0 ],
																	"text" : "t dump s"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-30",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 86.5, 242.0, 80.0, 22.0 ],
																	"text" : "prepend read"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-28",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 86.5, 214.0, 77.0, 22.0 ],
																	"text" : "sprintf %s.txt"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-29",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "bang", "int" ],
																	"patching_rect" : [ 86.5, 269.0, 464.0, 22.0 ],
																	"text" : "text"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-63",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 148.0, 142.0, 22.0 ],
																	"text" : "sprintf alligatorDemo_%s"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-75",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 140.5, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-76",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 133.5, 398.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-30", 0 ],
																	"source" : [ "obj-28", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
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
																	"destination" : [ "obj-29", 0 ],
																	"source" : [ "obj-30", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-76", 0 ],
																	"source" : [ "obj-4", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 0 ],
																	"source" : [ "obj-63", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"source" : [ "obj-74", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-63", 0 ],
																	"source" : [ "obj-74", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-74", 0 ],
																	"source" : [ "obj-75", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1313.0, 81.0, 71.0, 22.0 ],
													"text" : "p dump text"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 2,
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
														"rect" : [ 84.0, 130.0, 1000.0, 700.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-20",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 97.0, 402.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 284.0, 55.0, 29.5, 22.0 ],
																	"text" : "0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 97.25, 310.0, 29.5, 22.0 ],
																	"text" : "+"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 155.25, 253.0, 29.5, 22.0 ],
																	"text" : "i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-12",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 97.25, 161.0, 29.5, 22.0 ],
																	"text" : "t i b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 97.0, 358.0, 159.0, 22.0 ],
																	"text" : "zl join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 97.0, 76.0, 110.0, 22.0 ],
																	"text" : "zl slice 1"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "reset",
																	"id" : "obj-2",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 284.0, 23.0, 30.0, 30.0 ]
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
																	"patching_rect" : [ 97.0, 23.0, 30.0, 30.0 ]
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
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-12", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 1 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 1 ],
																	"order" : 0,
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"order" : 1,
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 1 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 1 ],
																	"source" : [ "obj-3", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1314.0, 192.0, 109.0, 22.0 ],
													"text" : "p make cumulative"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 687.0, 420.0, 59.0, 22.0 ],
													"text" : "route end"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1144.0, 329.0, 105.0, 22.0 ],
													"text" : "prepend addevent"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-49",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "bang", "", "int", "clear" ],
													"patching_rect" : [ 930.0, 142.0, 252.0, 22.0 ],
													"text" : "t b s 0 clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1456.0, 198.0, 69.0, 22.0 ],
													"text" : "route descr"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1357.0, 302.0, 72.0, 22.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1333.75, 230.0, 55.0, 22.0 ],
													"text" : "zl slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1456.0, 241.0, 63.0, 22.0 ],
													"text" : "prepend 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
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
																	"id" : "obj-24",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 301.0, 52.0, 22.0 ],
																	"text" : "gate 2 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 197.0, 247.0, 29.5, 22.0 ],
																	"text" : "1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 305.0, 240.0, 29.5, 22.0 ],
																	"text" : "2"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 197.0, 213.0, 24.0, 24.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 305.0, 206.0, 24.0, 24.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-11",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 6,
																	"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
																	"patching_rect" : [ 176.0, 173.0, 71.5, 22.0 ],
																	"text" : "typeroute~"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-10",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 176.0, 138.0, 55.0, 22.0 ],
																	"text" : "zl slice 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 58.0, 100.0, 29.5, 22.0 ],
																	"text" : "t l l"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-27",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 58.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-28",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 383.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-29",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 83.0, 383.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-11", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-11", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-11", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 0 ],
																	"source" : [ "obj-24", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"source" : [ "obj-24", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-27", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"source" : [ "obj-7", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 1 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1312.0, 165.0, 163.0, 22.0 ],
													"text" : "p routeAccordingToFirstAtom"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 687.0, 385.0, 98.0, 22.0 ],
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
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 430.0, 256.0, 137.0, 22.0 ],
													"text" : "s #0-readComplete"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "query" ],
													"patching_rect" : [ 274.0, 161.0, 55.0, 22.0 ],
													"text" : "t b query"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 513.0, 12.0, 99.0, 35.0 ],
													"text" : "r #0-seqSpeed"
												}

											}
, 											{
												"box" : 												{
													"comment" : "stop",
													"id" : "obj-13",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 361.0, 268.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 333.0, 83.0, 29.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ],
													"patching_rect" : [ 51.0, 43.0, 31.0, 22.0 ],
													"text" : "t s 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 513.0, 63.0, 29.5, 22.0 ],
													"text" : "!/ 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 81.0, 460.0, 29.5, 22.0 ],
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 81.0, 433.0, 29.5, 22.0 ],
													"text" : "f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 72.0, 77.0, 22.0 ],
													"text" : "sprintf %s.txt"
												}

											}
, 											{
												"box" : 												{
													"comment" : "bang to stop",
													"id" : "obj-53",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 333.0, 8.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 328.75, 566.0, 52.0, 22.0 ],
													"text" : "gate 1 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 566.0, 29.0, 22.0 ],
													"text" : "thru"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 51.0, 619.0, 29.5, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 51.0, 484.0, 49.0, 22.0 ],
													"text" : "del"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 51.0, 407.0, 49.0, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-40",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 516.0, 114.0, 22.0 ],
													"text" : "notelooper play 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 51.0, 376.0, 114.0, 22.0 ],
													"text" : "zl slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
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
																	"comment" : "stop",
																	"id" : "obj-1",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 152.0, 372.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-27",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 344.0, 52.0, 22.0 ],
																	"text" : "gate 1 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-26",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 71.75, 304.0, 29.5, 22.0 ],
																	"text" : "0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-24",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "int" ],
																	"patching_rect" : [ 61.25, 190.0, 29.5, 22.0 ],
																	"text" : "t i i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 61.25, 229.0, 163.5, 22.0 ],
																	"text" : "sel"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-17",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "int", "int" ],
																	"patching_rect" : [ 61.25, 100.0, 42.0, 22.0 ],
																	"text" : "t b 0 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-13",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 61.25, 157.0, 29.5, 22.0 ],
																	"text" : "+ 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-11",
																	"maxclass" : "newobj",
																	"numinlets" : 5,
																	"numoutlets" : 4,
																	"outlettype" : [ "int", "", "", "int" ],
																	"patching_rect" : [ 61.25, 132.0, 174.0, 22.0 ],
																	"text" : "counter"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-32",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 61.25, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-34",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 24.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-35",
																	"index" : 3,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 216.25, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-36",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 426.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 2 ],
																	"source" : [ "obj-17", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-17", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"order" : 0,
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-26", 0 ],
																	"order" : 1,
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 0 ],
																	"source" : [ "obj-24", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 1 ],
																	"source" : [ "obj-24", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-36", 0 ],
																	"source" : [ "obj-27", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-32", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-34", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 4 ],
																	"order" : 0,
																	"source" : [ "obj-35", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 1 ],
																	"order" : 1,
																	"source" : [ "obj-35", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 186.0, 208.0, 194.0, 22.0 ],
													"text" : "p counter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 186.0, 173.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 51.0, 157.0, 55.0, 22.0 ],
													"text" : "route set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 96.0, 80.0, 22.0 ],
													"text" : "prepend read"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 186.0, 272.0, 75.0, 22.0 ],
													"text" : "prepend line"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
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
																	"id" : "obj-24",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 301.0, 52.0, 22.0 ],
																	"text" : "gate 2 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 197.0, 247.0, 29.5, 22.0 ],
																	"text" : "1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 305.0, 240.0, 29.5, 22.0 ],
																	"text" : "2"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 197.0, 213.0, 24.0, 24.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 305.0, 206.0, 24.0, 24.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-11",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 6,
																	"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
																	"patching_rect" : [ 176.0, 173.0, 71.5, 22.0 ],
																	"text" : "typeroute~"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-10",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 176.0, 138.0, 55.0, 22.0 ],
																	"text" : "zl slice 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 58.0, 100.0, 29.5, 22.0 ],
																	"text" : "t l l"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-27",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 58.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-28",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 383.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-29",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 83.0, 383.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-11", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-11", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-11", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 0 ],
																	"source" : [ "obj-24", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"source" : [ "obj-24", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-27", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"source" : [ "obj-7", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 1 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 51.0, 332.0, 163.0, 22.0 ],
													"text" : "p routeAccordingToFirstAtom"
												}

											}
, 											{
												"box" : 												{
													"comment" : "filename",
													"id" : "obj-21",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 208.5, 4.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "bang", "int" ],
													"patching_rect" : [ 51.0, 127.0, 464.0, 22.0 ],
													"text" : "text"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"midpoints" : [ 204.5, 550.0, 81.0, 550.0, 81.0, 552.0, 60.5, 552.0 ],
													"source" : [ "obj-10", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 0 ],
													"source" : [ "obj-100", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"midpoints" : [ 939.5, 384.0, 786.0, 384.0, 786.0, 381.0, 696.5, 381.0 ],
													"source" : [ "obj-102", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
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
													"destination" : [ "obj-102", 0 ],
													"source" : [ "obj-105", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-106", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-107", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-111", 0 ],
													"source" : [ "obj-110", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 0 ],
													"source" : [ "obj-110", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-101", 0 ],
													"source" : [ "obj-113", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"source" : [ "obj-114", 1 ]
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
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-116", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-126", 0 ],
													"source" : [ "obj-118", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-118", 0 ],
													"source" : [ "obj-119", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-122", 0 ],
													"source" : [ "obj-121", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-123", 0 ],
													"source" : [ "obj-122", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-126", 0 ],
													"source" : [ "obj-122", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-120", 0 ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 0 ],
													"source" : [ "obj-126", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"source" : [ "obj-126", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-137", 0 ],
													"source" : [ "obj-129", 0 ]
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
													"destination" : [ "obj-133", 0 ],
													"source" : [ "obj-132", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-134", 0 ],
													"source" : [ "obj-133", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-137", 0 ],
													"source" : [ "obj-133", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-136", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-135", 0 ],
													"source" : [ "obj-137", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"source" : [ "obj-137", 0 ]
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
													"destination" : [ "obj-154", 0 ],
													"source" : [ "obj-151", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-154", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
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
													"destination" : [ "obj-58", 0 ],
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
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-159", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
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
													"destination" : [ "obj-114", 0 ],
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
													"destination" : [ "obj-126", 0 ],
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
													"destination" : [ "obj-137", 0 ],
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
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 2 ],
													"source" : [ "obj-18", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-18", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-26", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-34", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-36", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-37", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 1 ],
													"source" : [ "obj-38", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 1 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-41", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"midpoints" : [ 60.5, 659.0, 36.0, 659.0, 36.0, 191.0, 171.0, 191.0, 171.0, 167.0, 195.5, 167.0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
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
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-47", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-105", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"midpoints" : [ 1172.5, 381.12109375, 699.0, 381.12109375, 699.0, 381.0, 696.5, 381.0 ],
													"source" : [ "obj-49", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"order" : 1,
													"source" : [ "obj-49", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 1 ],
													"order" : 0,
													"source" : [ "obj-49", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"source" : [ "obj-49", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 1 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 1 ],
													"midpoints" : [ 1153.5, 384.0, 786.0, 384.0, 786.0, 381.0, 775.5, 381.0 ],
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 1 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-54", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-57", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-58", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"order" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"midpoints" : [ 319.5, 196.0, 529.0, 196.0, 529.0, 109.0, 32.0, 109.0, 32.0, 127.0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 1 ],
													"order" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"order" : 0,
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"order" : 1,
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"order" : 2,
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-69", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-75", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-75", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-77", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-79", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-82", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-83", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-87", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-85", 0 ],
													"source" : [ "obj-88", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-86", 0 ],
													"source" : [ "obj-89", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-87", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-9", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"source" : [ "obj-90", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-105", 1 ],
													"source" : [ "obj-98", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 0 ],
													"source" : [ "obj-99", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 131.0, 363.0, 89.0, 22.0 ],
									"text" : "p reader"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 2 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 1 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 22.0, 200.0, 83.0, 31.0 ],
					"text" : "p reader"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
