package mO_model {
	public import mO::*;
	part StoredDefinition_1 : StoredDefinition {
		attribute :>> within = "MVEMLib.Examples";
		ref part :> classes = ClassDefinition_1;
		part ClassDefinition_1 : ClassDefinition :> classes {
			attribute :>> name = "Model1";
			attribute :>> name_end = "Model1";
			ref part :> composition = ClassDefinition_1.Composition_1;
			part Composition_1 : Composition :> composition {
				ref part :> priv_elist = ClassDefinition_1.Composition_1.ElementList_1;
				ref part :> eq_secs = ClassDefinition_1.Composition_1.EquationSection_1;
				ref part :> anno = ClassDefinition_1.Composition_1.ClassModification_26;
				part ElementList_1 : ElementList :> priv_elist {
					ref part :> elem = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5);
					part ComponentClause_1 : ComponentClause :> elem {
						ref part :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.TypeSpecifier_1;
						ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1;
						part TypeSpecifier_1 : TypeSpecifier :> type {
							attribute :>> name = "Engines.Combustion.SIEngine";
						}
						part ComponentList_1 : ComponentList :> comps {
							ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1;
							part ComponentDeclaration_1 : ComponentDeclaration :> comps {
								ref part :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Declaration_1;
								ref part :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1;
								part Declaration_1 : Declaration :> decl {
									attribute :>> name = "sIEngine";
								}
								part Comment_1 : Comment :> comment {
									ref part :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1;
									part ClassModification_1 : ClassModification :> annotation {
										ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1;
										part ArgumentList_1 : ArgumentList :> args {
											ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1;
											part ElementModification_1 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1;
												part Modification_1 : Modification :> mod {
													ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2;
													part ClassModification_2 : ClassModification :> mod {
														ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2;
														part ArgumentList_2 : ArgumentList :> args {
															ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2;
															part ElementModification_2 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2;
																part Modification_2 : Modification :> mod {
																	ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3;
																	part ClassModification_3 : ClassModification :> mod {
																		ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3;
																		part ArgumentList_3 : ArgumentList :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3;
																			part ElementModification_3 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3;
																				part Modification_3 : Modification :> mod {
																					ref part :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1;
																					part FunctionArguments_1 : FunctionArguments :> expr {
																						ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_2, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4);
																						part FunctionArguments_2 : FunctionArguments :> args {
																							ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_2.FloatPrimary_1, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_2.FunctionArguments_3);
																							part FloatPrimary_1 : FloatPrimary :> args {
																								attribute :>> val = 2.0;
																							}
																							part FunctionArguments_3 : FunctionArguments :> args {
																								ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_2.FunctionArguments_3.FloatPrimary_2;
																								part FloatPrimary_2 : FloatPrimary :> args {
																									attribute :>> val = 0.0;
																								}
																							}
																						}
																						part FunctionArguments_4 : FunctionArguments :> args {
																							ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4.FunctionArguments_5;
																							part FunctionArguments_5 : FunctionArguments :> args {
																								ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4.FunctionArguments_5.FloatPrimary_3, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4.FunctionArguments_5.FunctionArguments_6);
																								part FloatPrimary_3 : FloatPrimary :> args {
																									attribute :>> val = 22.0;
																								}
																								part FunctionArguments_6 : FunctionArguments :> args {
																									ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4.FunctionArguments_5.FunctionArguments_6.FloatPrimary_4;
																									part FloatPrimary_4 : FloatPrimary :> args {
																										attribute :>> val = 20.0;
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					part ComponentClause_2 : ComponentClause :> elem {
						ref part :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.TypeSpecifier_2;
						ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2;
						part TypeSpecifier_2 : TypeSpecifier :> type {
							attribute :>> name = "Modelica.Mechanics.Rotational.Sources.Speed";
						}
						part ComponentList_2 : ComponentList :> comps {
							ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2;
							part ComponentDeclaration_2 : ComponentDeclaration :> comps {
								ref part :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Declaration_2;
								ref part :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2;
								part Declaration_2 : Declaration :> decl {
									attribute :>> name = "ForcedSpeed";
								}
								part Comment_2 : Comment :> comment {
									ref part :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4;
									part ClassModification_4 : ClassModification :> annotation {
										ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4;
										part ArgumentList_4 : ArgumentList :> args {
											ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4;
											part ElementModification_4 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4;
												part Modification_4 : Modification :> mod {
													ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5;
													part ClassModification_5 : ClassModification :> mod {
														ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5;
														part ArgumentList_5 : ArgumentList :> args {
															ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5;
															part ElementModification_5 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5;
																part Modification_5 : Modification :> mod {
																	ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6;
																	part ClassModification_6 : ClassModification :> mod {
																		ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6;
																		part ArgumentList_6 : ArgumentList :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6;
																			part ElementModification_6 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6;
																				part Modification_6 : Modification :> mod {
																					ref part :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7;
																					part FunctionArguments_7 : FunctionArguments :> expr {
																						ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_8, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10);
																						part FunctionArguments_8 : FunctionArguments :> args {
																							ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_8.FloatPrimary_5, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_8.FunctionArguments_9);
																							part FloatPrimary_5 : FloatPrimary :> args {
																								attribute :>> val = 2.0;
																							}
																							part FunctionArguments_9 : FunctionArguments :> args {
																								ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_8.FunctionArguments_9.FloatPrimary_6;
																								part FloatPrimary_6 : FloatPrimary :> args {
																									attribute :>> val = 40.0;
																								}
																							}
																						}
																						part FunctionArguments_10 : FunctionArguments :> args {
																							ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10.FunctionArguments_11;
																							part FunctionArguments_11 : FunctionArguments :> args {
																								ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10.FunctionArguments_11.FloatPrimary_7, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10.FunctionArguments_11.FunctionArguments_12);
																								part FloatPrimary_7 : FloatPrimary :> args {
																									attribute :>> val = 22.0;
																								}
																								part FunctionArguments_12 : FunctionArguments :> args {
																									ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10.FunctionArguments_11.FunctionArguments_12.FloatPrimary_8;
																									part FloatPrimary_8 : FloatPrimary :> args {
																										attribute :>> val = 60.0;
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					part ComponentClause_3 : ComponentClause :> elem {
						ref part :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.TypeSpecifier_3;
						ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3;
						part TypeSpecifier_3 : TypeSpecifier :> type {
							attribute :>> name = "Modelica.Blocks.Sources.Constant";
						}
						part ComponentList_3 : ComponentList :> comps {
							ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3;
							part ComponentDeclaration_3 : ComponentDeclaration :> comps {
								ref part :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3;
								ref part :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3;
								part Declaration_3 : Declaration :> decl {
									attribute :>> name = "EngineSpeed";
									ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7;
									part Modification_7 : Modification :> mod {
										ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7;
										part ClassModification_7 : ClassModification :> mod {
											ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7.ArgumentList_7;
											part ArgumentList_7 : ArgumentList :> args {
												ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7.ArgumentList_7.ElementModification_7;
												part ElementModification_7 : ElementModification :> args {
													attribute :>> name = "k";
													ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7.ArgumentList_7.ElementModification_7.Modification_8;
													part Modification_8 : Modification :> mod {
														ref part :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7.ArgumentList_7.ElementModification_7.Modification_8.FloatPrimary_9;
														part FloatPrimary_9 : FloatPrimary :> expr {
															attribute :>> val = 1500.0;
														}
													}
												}
											}
										}
									}
								}
								part Comment_3 : Comment :> comment {
									attribute :>> 'comment' = ""Speed in RPM"";
									ref part :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8;
									part ClassModification_8 : ClassModification :> annotation {
										ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8;
										part ArgumentList_8 : ArgumentList :> args {
											ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8;
											part ElementModification_8 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9;
												part Modification_9 : Modification :> mod {
													ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9;
													part ClassModification_9 : ClassModification :> mod {
														ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9;
														part ArgumentList_9 : ArgumentList :> args {
															ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9;
															part ElementModification_9 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10;
																part Modification_10 : Modification :> mod {
																	ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10;
																	part ClassModification_10 : ClassModification :> mod {
																		ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10;
																		part ArgumentList_10 : ArgumentList :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10;
																			part ElementModification_10 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11;
																				part Modification_11 : Modification :> mod {
																					ref part :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13;
																					part FunctionArguments_13 : FunctionArguments :> expr {
																						ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16);
																						part FunctionArguments_14 : FunctionArguments :> args {
																							ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14.Negation_1, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14.FunctionArguments_15);
																							part Negation_1 : Negation :> args {
																								attribute :>> neg_op = "-";
																								ref part :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14.Negation_1.FloatPrimary_10;
																								part FloatPrimary_10 : FloatPrimary :> term {
																									attribute :>> val = 60.0;
																								}
																							}
																							part FunctionArguments_15 : FunctionArguments :> args {
																								ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14.FunctionArguments_15.FloatPrimary_11;
																								part FloatPrimary_11 : FloatPrimary :> args {
																									attribute :>> val = 40.0;
																								}
																							}
																						}
																						part FunctionArguments_16 : FunctionArguments :> args {
																							ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17;
																							part FunctionArguments_17 : FunctionArguments :> args {
																								ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17.Negation_2, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17.FunctionArguments_18);
																								part Negation_2 : Negation :> args {
																									attribute :>> neg_op = "-";
																									ref part :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17.Negation_2.FloatPrimary_12;
																									part FloatPrimary_12 : FloatPrimary :> term {
																										attribute :>> val = 40.0;
																									}
																								}
																								part FunctionArguments_18 : FunctionArguments :> args {
																									ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17.FunctionArguments_18.FloatPrimary_13;
																									part FloatPrimary_13 : FloatPrimary :> args {
																										attribute :>> val = 60.0;
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					part ComponentClause_4 : ComponentClause :> elem {
						ref part :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.TypeSpecifier_4;
						ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4;
						part TypeSpecifier_4 : TypeSpecifier :> type {
							attribute :>> name = "Modelica.Blocks.Math.UnitConversions.From_rpm";
						}
						part ComponentList_4 : ComponentList :> comps {
							ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4;
							part ComponentDeclaration_4 : ComponentDeclaration :> comps {
								ref part :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Declaration_4;
								ref part :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4;
								part Declaration_4 : Declaration :> decl {
									attribute :>> name = "from_rpm";
								}
								part Comment_4 : Comment :> comment {
									ref part :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11;
									part ClassModification_11 : ClassModification :> annotation {
										ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11;
										part ArgumentList_11 : ArgumentList :> args {
											ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11;
											part ElementModification_11 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12;
												part Modification_12 : Modification :> mod {
													ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12;
													part ClassModification_12 : ClassModification :> mod {
														ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12;
														part ArgumentList_12 : ArgumentList :> args {
															ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12;
															part ElementModification_12 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13;
																part Modification_13 : Modification :> mod {
																	ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13;
																	part ClassModification_13 : ClassModification :> mod {
																		ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13;
																		part ArgumentList_13 : ArgumentList :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13;
																			part ElementModification_13 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14;
																				part Modification_14 : Modification :> mod {
																					ref part :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19;
																					part FunctionArguments_19 : FunctionArguments :> expr {
																						ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22);
																						part FunctionArguments_20 : FunctionArguments :> args {
																							ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20.Negation_3, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20.FunctionArguments_21);
																							part Negation_3 : Negation :> args {
																								attribute :>> neg_op = "-";
																								ref part :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20.Negation_3.FloatPrimary_14;
																								part FloatPrimary_14 : FloatPrimary :> term {
																									attribute :>> val = 30.0;
																								}
																							}
																							part FunctionArguments_21 : FunctionArguments :> args {
																								ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20.FunctionArguments_21.FloatPrimary_15;
																								part FloatPrimary_15 : FloatPrimary :> args {
																									attribute :>> val = 40.0;
																								}
																							}
																						}
																						part FunctionArguments_22 : FunctionArguments :> args {
																							ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23;
																							part FunctionArguments_23 : FunctionArguments :> args {
																								ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23.Negation_4, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23.FunctionArguments_24);
																								part Negation_4 : Negation :> args {
																									attribute :>> neg_op = "-";
																									ref part :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23.Negation_4.FloatPrimary_16;
																									part FloatPrimary_16 : FloatPrimary :> term {
																										attribute :>> val = 10.0;
																									}
																								}
																								part FunctionArguments_24 : FunctionArguments :> args {
																									ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23.FunctionArguments_24.FloatPrimary_17;
																									part FloatPrimary_17 : FloatPrimary :> args {
																										attribute :>> val = 60.0;
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					part ComponentClause_5 : ComponentClause :> elem {
						ref part :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.TypeSpecifier_5;
						ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5;
						part TypeSpecifier_5 : TypeSpecifier :> type {
							attribute :>> name = "Modelica.Blocks.Sources.Step";
						}
						part ComponentList_5 : ComponentList :> comps {
							ref part :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5;
							part ComponentDeclaration_5 : ComponentDeclaration :> comps {
								ref part :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5;
								ref part :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5;
								part Declaration_5 : Declaration :> decl {
									attribute :>> name = "step";
									ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15;
									part Modification_15 : Modification :> mod {
										ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14;
										part ClassModification_14 : ClassModification :> mod {
											ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14;
											part ArgumentList_14 : ArgumentList :> args {
												ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_14, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_15, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_16);
												part ElementModification_14 : ElementModification :> args {
													attribute :>> name = "startTime";
													ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_14.Modification_16;
													part Modification_16 : Modification :> mod {
														ref part :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_14.Modification_16.FloatPrimary_18;
														part FloatPrimary_18 : FloatPrimary :> expr {
															attribute :>> val = 5.0;
														}
													}
												}
												part ElementModification_15 : ElementModification :> args {
													attribute :>> name = "height";
													ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_15.Modification_17;
													part Modification_17 : Modification :> mod {
														ref part :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_15.Modification_17.FloatPrimary_19;
														part FloatPrimary_19 : FloatPrimary :> expr {
															attribute :>> val = 0.3;
														}
													}
												}
												part ElementModification_16 : ElementModification :> args {
													attribute :>> name = "offset";
													ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_16.Modification_18;
													part Modification_18 : Modification :> mod {
														ref part :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_16.Modification_18.FloatPrimary_20;
														part FloatPrimary_20 : FloatPrimary :> expr {
															attribute :>> val = 0.05;
														}
													}
												}
											}
										}
									}
								}
								part Comment_5 : Comment :> comment {
									ref part :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15;
									part ClassModification_15 : ClassModification :> annotation {
										ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15;
										part ArgumentList_15 : ArgumentList :> args {
											ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17;
											part ElementModification_17 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19;
												part Modification_19 : Modification :> mod {
													ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16;
													part ClassModification_16 : ClassModification :> mod {
														ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16;
														part ArgumentList_16 : ArgumentList :> args {
															ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18;
															part ElementModification_18 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20;
																part Modification_20 : Modification :> mod {
																	ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17;
																	part ClassModification_17 : ClassModification :> mod {
																		ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17;
																		part ArgumentList_17 : ArgumentList :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19;
																			part ElementModification_19 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref part :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21;
																				part Modification_21 : Modification :> mod {
																					ref part :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25;
																					part FunctionArguments_25 : FunctionArguments :> expr {
																						ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28);
																						part FunctionArguments_26 : FunctionArguments :> args {
																							ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26.Negation_5, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26.FunctionArguments_27);
																							part Negation_5 : Negation :> args {
																								attribute :>> neg_op = "-";
																								ref part :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26.Negation_5.FloatPrimary_21;
																								part FloatPrimary_21 : FloatPrimary :> term {
																									attribute :>> val = 38.0;
																								}
																							}
																							part FunctionArguments_27 : FunctionArguments :> args {
																								ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26.FunctionArguments_27.FloatPrimary_22;
																								part FloatPrimary_22 : FloatPrimary :> args {
																									attribute :>> val = 0.0;
																								}
																							}
																						}
																						part FunctionArguments_28 : FunctionArguments :> args {
																							ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29;
																							part FunctionArguments_29 : FunctionArguments :> args {
																								ref part :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29.Negation_6, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29.FunctionArguments_30);
																								part Negation_6 : Negation :> args {
																									attribute :>> neg_op = "-";
																									ref part :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29.Negation_6.FloatPrimary_23;
																									part FloatPrimary_23 : FloatPrimary :> term {
																										attribute :>> val = 18.0;
																									}
																								}
																								part FunctionArguments_30 : FunctionArguments :> args {
																									ref part :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29.FunctionArguments_30.FloatPrimary_24;
																									part FloatPrimary_24 : FloatPrimary :> args {
																										attribute :>> val = 20.0;
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				part EquationSection_1 : EquationSection :> eq_secs {
					ref part :> equations = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4);
					part ConnectClause_1 : ConnectClause :> equations {
						ref part :> left = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.ComponentReference_1;
						ref part :> right = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.ComponentReference_2;
						ref part :> commment = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6;
						part ComponentReference_1 : ComponentReference :> left {
							attribute :>> idents = ("ForcedSpeed", "flange");
						}
						part ComponentReference_2 : ComponentReference :> right {
							attribute :>> idents = ("sIEngine", "CrankShaft");
						}
						part Comment_6 : Comment :> commment {
							ref part :> annotation = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18;
							part ClassModification_18 : ClassModification :> annotation {
								ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18;
								part ArgumentList_18 : ArgumentList :> args {
									ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20;
									part ElementModification_20 : ElementModification :> args {
										attribute :>> name = "Line";
										ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22;
										part Modification_22 : Modification :> mod {
											ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19;
											part ClassModification_19 : ClassModification :> mod {
												ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19;
												part ArgumentList_19 : ArgumentList :> args {
													ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_23);
													part ElementModification_21 : ElementModification :> args {
														attribute :>> name = "points";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23;
														part Modification_23 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31;
															part FunctionArguments_31 : FunctionArguments :> expr {
																ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_32, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34);
																part FunctionArguments_32 : FunctionArguments :> args {
																	ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_32.FloatPrimary_25, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_32.FunctionArguments_33);
																	part FloatPrimary_25 : FloatPrimary :> args {
																		attribute :>> val = 22.0;
																	}
																	part FunctionArguments_33 : FunctionArguments :> args {
																		ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_32.FunctionArguments_33.FloatPrimary_26;
																		part FloatPrimary_26 : FloatPrimary :> args {
																			attribute :>> val = 50.0;
																		}
																	}
																}
																part FunctionArguments_34 : FunctionArguments :> args {
																	ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_35, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37);
																	part FunctionArguments_35 : FunctionArguments :> args {
																		ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_35.FloatPrimary_27, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_35.FunctionArguments_36);
																		part FloatPrimary_27 : FloatPrimary :> args {
																			attribute :>> val = 32.0;
																		}
																		part FunctionArguments_36 : FunctionArguments :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_35.FunctionArguments_36.FloatPrimary_28;
																			part FloatPrimary_28 : FloatPrimary :> args {
																				attribute :>> val = 50.0;
																			}
																		}
																	}
																	part FunctionArguments_37 : FunctionArguments :> args {
																		ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_38, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40);
																		part FunctionArguments_38 : FunctionArguments :> args {
																			ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_38.FloatPrimary_29, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_38.FunctionArguments_39);
																			part FloatPrimary_29 : FloatPrimary :> args {
																				attribute :>> val = 32.0;
																			}
																			part FunctionArguments_39 : FunctionArguments :> args {
																				ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_38.FunctionArguments_39.FloatPrimary_30;
																				part FloatPrimary_30 : FloatPrimary :> args {
																					attribute :>> val = 10.0;
																				}
																			}
																		}
																		part FunctionArguments_40 : FunctionArguments :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40.FunctionArguments_41;
																			part FunctionArguments_41 : FunctionArguments :> args {
																				ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40.FunctionArguments_41.FloatPrimary_31, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40.FunctionArguments_41.FunctionArguments_42);
																				part FloatPrimary_31 : FloatPrimary :> args {
																					attribute :>> val = 22.0;
																				}
																				part FunctionArguments_42 : FunctionArguments :> args {
																					ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40.FunctionArguments_41.FunctionArguments_42.FloatPrimary_32;
																					part FloatPrimary_32 : FloatPrimary :> args {
																						attribute :>> val = 10.0;
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
													part ElementModification_22 : ElementModification :> args {
														attribute :>> name = "color";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24;
														part Modification_24 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43;
															part FunctionArguments_43 : FunctionArguments :> expr {
																ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FloatPrimary_33, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FunctionArguments_44);
																part FloatPrimary_33 : FloatPrimary :> args {
																	attribute :>> val = 0.0;
																}
																part FunctionArguments_44 : FunctionArguments :> args {
																	ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FunctionArguments_44.FloatPrimary_34, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FunctionArguments_44.FunctionArguments_45);
																	part FloatPrimary_34 : FloatPrimary :> args {
																		attribute :>> val = 0.0;
																	}
																	part FunctionArguments_45 : FunctionArguments :> args {
																		ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FunctionArguments_44.FunctionArguments_45.FloatPrimary_35;
																		part FloatPrimary_35 : FloatPrimary :> args {
																			attribute :>> val = 0.0;
																		}
																	}
																}
															}
														}
													}
													part ElementModification_23 : ElementModification :> args {
														attribute :>> name = "smooth";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_23.Modification_25;
														part Modification_25 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_23.Modification_25.ComponentReference_3;
															part ComponentReference_3 : ComponentReference :> expr {
																attribute :>> idents = ("Smooth", "None");
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					part ConnectClause_2 : ConnectClause :> equations {
						ref part :> left = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.ComponentReference_4;
						ref part :> right = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.ComponentReference_5;
						ref part :> commment = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7;
						part ComponentReference_4 : ComponentReference :> left {
							attribute :>> idents = ("from_rpm", "u");
						}
						part ComponentReference_5 : ComponentReference :> right {
							attribute :>> idents = ("EngineSpeed", "y");
						}
						part Comment_7 : Comment :> commment {
							ref part :> annotation = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20;
							part ClassModification_20 : ClassModification :> annotation {
								ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20;
								part ArgumentList_20 : ArgumentList :> args {
									ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24;
									part ElementModification_24 : ElementModification :> args {
										attribute :>> name = "Line";
										ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26;
										part Modification_26 : Modification :> mod {
											ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21;
											part ClassModification_21 : ClassModification :> mod {
												ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21;
												part ArgumentList_21 : ArgumentList :> args {
													ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_27);
													part ElementModification_25 : ElementModification :> args {
														attribute :>> name = "points";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27;
														part Modification_27 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46;
															part FunctionArguments_46 : FunctionArguments :> expr {
																ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49);
																part FunctionArguments_47 : FunctionArguments :> args {
																	ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47.Negation_7, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47.FunctionArguments_48);
																	part Negation_7 : Negation :> args {
																		attribute :>> neg_op = "-";
																		ref part :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47.Negation_7.FloatPrimary_36;
																		part FloatPrimary_36 : FloatPrimary :> term {
																			attribute :>> val = 32.0;
																		}
																	}
																	part FunctionArguments_48 : FunctionArguments :> args {
																		ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47.FunctionArguments_48.FloatPrimary_37;
																		part FloatPrimary_37 : FloatPrimary :> args {
																			attribute :>> val = 50.0;
																		}
																	}
																}
																part FunctionArguments_49 : FunctionArguments :> args {
																	ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50;
																	part FunctionArguments_50 : FunctionArguments :> args {
																		ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50.Negation_8, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50.FunctionArguments_51);
																		part Negation_8 : Negation :> args {
																			attribute :>> neg_op = "-";
																			ref part :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50.Negation_8.FloatPrimary_38;
																			part FloatPrimary_38 : FloatPrimary :> term {
																				attribute :>> val = 39.0;
																			}
																		}
																		part FunctionArguments_51 : FunctionArguments :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50.FunctionArguments_51.FloatPrimary_39;
																			part FloatPrimary_39 : FloatPrimary :> args {
																				attribute :>> val = 50.0;
																			}
																		}
																	}
																}
															}
														}
													}
													part ElementModification_26 : ElementModification :> args {
														attribute :>> name = "color";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28;
														part Modification_28 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52;
															part FunctionArguments_52 : FunctionArguments :> expr {
																ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FloatPrimary_40, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FunctionArguments_53);
																part FloatPrimary_40 : FloatPrimary :> args {
																	attribute :>> val = 0.0;
																}
																part FunctionArguments_53 : FunctionArguments :> args {
																	ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FunctionArguments_53.FloatPrimary_41, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FunctionArguments_53.FunctionArguments_54);
																	part FloatPrimary_41 : FloatPrimary :> args {
																		attribute :>> val = 0.0;
																	}
																	part FunctionArguments_54 : FunctionArguments :> args {
																		ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FunctionArguments_53.FunctionArguments_54.FloatPrimary_42;
																		part FloatPrimary_42 : FloatPrimary :> args {
																			attribute :>> val = 127.0;
																		}
																	}
																}
															}
														}
													}
													part ElementModification_27 : ElementModification :> args {
														attribute :>> name = "smooth";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_27.Modification_29;
														part Modification_29 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_27.Modification_29.ComponentReference_6;
															part ComponentReference_6 : ComponentReference :> expr {
																attribute :>> idents = ("Smooth", "None");
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					part ConnectClause_3 : ConnectClause :> equations {
						ref part :> left = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.ComponentReference_7;
						ref part :> right = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.ComponentReference_8;
						ref part :> commment = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8;
						part ComponentReference_7 : ComponentReference :> left {
							attribute :>> idents = ("ForcedSpeed", "w_ref");
						}
						part ComponentReference_8 : ComponentReference :> right {
							attribute :>> idents = ("from_rpm", "y");
						}
						part Comment_8 : Comment :> commment {
							ref part :> annotation = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22;
							part ClassModification_22 : ClassModification :> annotation {
								ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22;
								part ArgumentList_22 : ArgumentList :> args {
									ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28;
									part ElementModification_28 : ElementModification :> args {
										attribute :>> name = "Line";
										ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30;
										part Modification_30 : Modification :> mod {
											ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23;
											part ClassModification_23 : ClassModification :> mod {
												ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23;
												part ArgumentList_23 : ArgumentList :> args {
													ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_31);
													part ElementModification_29 : ElementModification :> args {
														attribute :>> name = "points";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31;
														part Modification_31 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55;
															part FunctionArguments_55 : FunctionArguments :> expr {
																ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58);
																part FunctionArguments_56 : FunctionArguments :> args {
																	ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56.Negation_9, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56.FunctionArguments_57);
																	part Negation_9 : Negation :> args {
																		attribute :>> neg_op = "-";
																		ref part :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56.Negation_9.FloatPrimary_43;
																		part FloatPrimary_43 : FloatPrimary :> term {
																			attribute :>> val = 6.66134E-16;
																		}
																	}
																	part FunctionArguments_57 : FunctionArguments :> args {
																		ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56.FunctionArguments_57.FloatPrimary_44;
																		part FloatPrimary_44 : FloatPrimary :> args {
																			attribute :>> val = 50.0;
																		}
																	}
																}
																part FunctionArguments_58 : FunctionArguments :> args {
																	ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59;
																	part FunctionArguments_59 : FunctionArguments :> args {
																		ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59.Negation_10, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59.FunctionArguments_60);
																		part Negation_10 : Negation :> args {
																			attribute :>> neg_op = "-";
																			ref part :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59.Negation_10.FloatPrimary_45;
																			part FloatPrimary_45 : FloatPrimary :> term {
																				attribute :>> val = 9.0;
																			}
																		}
																		part FunctionArguments_60 : FunctionArguments :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59.FunctionArguments_60.FloatPrimary_46;
																			part FloatPrimary_46 : FloatPrimary :> args {
																				attribute :>> val = 50.0;
																			}
																		}
																	}
																}
															}
														}
													}
													part ElementModification_30 : ElementModification :> args {
														attribute :>> name = "color";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32;
														part Modification_32 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61;
															part FunctionArguments_61 : FunctionArguments :> expr {
																ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FloatPrimary_47, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FunctionArguments_62);
																part FloatPrimary_47 : FloatPrimary :> args {
																	attribute :>> val = 0.0;
																}
																part FunctionArguments_62 : FunctionArguments :> args {
																	ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FunctionArguments_62.FloatPrimary_48, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FunctionArguments_62.FunctionArguments_63);
																	part FloatPrimary_48 : FloatPrimary :> args {
																		attribute :>> val = 0.0;
																	}
																	part FunctionArguments_63 : FunctionArguments :> args {
																		ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FunctionArguments_62.FunctionArguments_63.FloatPrimary_49;
																		part FloatPrimary_49 : FloatPrimary :> args {
																			attribute :>> val = 127.0;
																		}
																	}
																}
															}
														}
													}
													part ElementModification_31 : ElementModification :> args {
														attribute :>> name = "smooth";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_31.Modification_33;
														part Modification_33 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_31.Modification_33.ComponentReference_9;
															part ComponentReference_9 : ComponentReference :> expr {
																attribute :>> idents = ("Smooth", "None");
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					part ConnectClause_4 : ConnectClause :> equations {
						ref part :> left = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.ComponentReference_10;
						ref part :> right = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.ComponentReference_11;
						ref part :> commment = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9;
						part ComponentReference_10 : ComponentReference :> left {
							attribute :>> idents = ("step", "y");
						}
						part ComponentReference_11 : ComponentReference :> right {
							attribute :>> idents = ("sIEngine", "TqRef");
						}
						part Comment_9 : Comment :> commment {
							ref part :> annotation = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24;
							part ClassModification_24 : ClassModification :> annotation {
								ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24;
								part ArgumentList_24 : ArgumentList :> args {
									ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32;
									part ElementModification_32 : ElementModification :> args {
										attribute :>> name = "Line";
										ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34;
										part Modification_34 : Modification :> mod {
											ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25;
											part ClassModification_25 : ClassModification :> mod {
												ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25;
												part ArgumentList_25 : ArgumentList :> args {
													ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_35);
													part ElementModification_33 : ElementModification :> args {
														attribute :>> name = "points";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35;
														part Modification_35 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64;
															part FunctionArguments_64 : FunctionArguments :> expr {
																ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67);
																part FunctionArguments_65 : FunctionArguments :> args {
																	ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65.Negation_11, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65.FunctionArguments_66);
																	part Negation_11 : Negation :> args {
																		attribute :>> neg_op = "-";
																		ref part :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65.Negation_11.FloatPrimary_50;
																		part FloatPrimary_50 : FloatPrimary :> term {
																			attribute :>> val = 17.0;
																		}
																	}
																	part FunctionArguments_66 : FunctionArguments :> args {
																		ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65.FunctionArguments_66.FloatPrimary_51;
																		part FloatPrimary_51 : FloatPrimary :> args {
																			attribute :>> val = 10.0;
																		}
																	}
																}
																part FunctionArguments_67 : FunctionArguments :> args {
																	ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67.FunctionArguments_68;
																	part FunctionArguments_68 : FunctionArguments :> args {
																		ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67.FunctionArguments_68.FloatPrimary_52, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67.FunctionArguments_68.FunctionArguments_69);
																		part FloatPrimary_52 : FloatPrimary :> args {
																			attribute :>> val = 1.6;
																		}
																		part FunctionArguments_69 : FunctionArguments :> args {
																			ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67.FunctionArguments_68.FunctionArguments_69.FloatPrimary_53;
																			part FloatPrimary_53 : FloatPrimary :> args {
																				attribute :>> val = 10.0;
																			}
																		}
																	}
																}
															}
														}
													}
													part ElementModification_34 : ElementModification :> args {
														attribute :>> name = "color";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36;
														part Modification_36 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70;
															part FunctionArguments_70 : FunctionArguments :> expr {
																ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FloatPrimary_54, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FunctionArguments_71);
																part FloatPrimary_54 : FloatPrimary :> args {
																	attribute :>> val = 0.0;
																}
																part FunctionArguments_71 : FunctionArguments :> args {
																	ref part :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FunctionArguments_71.FloatPrimary_55, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FunctionArguments_71.FunctionArguments_72);
																	part FloatPrimary_55 : FloatPrimary :> args {
																		attribute :>> val = 0.0;
																	}
																	part FunctionArguments_72 : FunctionArguments :> args {
																		ref part :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FunctionArguments_71.FunctionArguments_72.FloatPrimary_56;
																		part FloatPrimary_56 : FloatPrimary :> args {
																			attribute :>> val = 127.0;
																		}
																	}
																}
															}
														}
													}
													part ElementModification_35 : ElementModification :> args {
														attribute :>> name = "smooth";
														ref part :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_35.Modification_37;
														part Modification_37 : Modification :> mod {
															ref part :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_35.Modification_37.ComponentReference_12;
															part ComponentReference_12 : ComponentReference :> expr {
																attribute :>> idents = ("Smooth", "None");
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				part ClassModification_26 : ClassModification :> anno {
					ref part :> args = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26;
					part ArgumentList_26 : ArgumentList :> args {
						ref part :> args = (ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36, ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38, ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_41);
						part ElementModification_36 : ElementModification :> args {
							attribute :>> name = "Diagram";
							ref part :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36.Modification_38;
							part Modification_38 : Modification :> mod {
								ref part :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36.Modification_38.ClassModification_27;
								part ClassModification_27 : ClassModification :> mod {
									ref part :> args = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36.Modification_38.ClassModification_27.ArgumentList_27;
									part ArgumentList_27 : ArgumentList :> args {
										ref part :> args = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36.Modification_38.ClassModification_27.ArgumentList_27.ElementModification_37;
										part ElementModification_37 : ElementModification :> args {
											attribute :>> name = "graphics";
										}
									}
								}
							}
						}
						part ElementModification_38 : ElementModification :> args {
							attribute :>> name = "experiment";
							ref part :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39;
							part Modification_39 : Modification :> mod {
								ref part :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28;
								part ClassModification_28 : ClassModification :> mod {
									ref part :> args = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28;
									part ArgumentList_28 : ArgumentList :> args {
										ref part :> args = (ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_39, ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_40);
										part ElementModification_39 : ElementModification :> args {
											attribute :>> name = "StopTime";
											ref part :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_39.Modification_40;
											part Modification_40 : Modification :> mod {
												ref part :> expr = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_39.Modification_40.FloatPrimary_57;
												part FloatPrimary_57 : FloatPrimary :> expr {
													attribute :>> val = 15.0;
												}
											}
										}
										part ElementModification_40 : ElementModification :> args {
											attribute :>> name = "Tolerance";
											ref part :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_40.Modification_41;
											part Modification_41 : Modification :> mod {
												ref part :> expr = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_40.Modification_41.FloatPrimary_58;
												part FloatPrimary_58 : FloatPrimary :> expr {
													attribute :>> val = 1.0E-5;
												}
											}
										}
									}
								}
							}
						}
						part ElementModification_41 : ElementModification :> args {
							attribute :>> name = "experimentSetupOutput";
						}
					}
				}
			}
		}
	}
}

