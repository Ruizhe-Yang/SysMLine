package mO_model {
	public import mO::*;
	item StoredDefinition_1 : StoredDefinition {
		attribute :>> within = "MVEMLib.Examples";
		ref item :> classes = ClassDefinition_1;
		item ClassDefinition_1 : ClassDefinition :> classes {
			attribute :>> name = "Model1";
			attribute :>> name_end = "Model1";
			ref item :> composition = ClassDefinition_1.Composition_1;
			item Composition_1 : Composition :> composition {
				ref item :> priv_elist = ClassDefinition_1.Composition_1.ElementList_1;
				ref item :> eq_secs = ClassDefinition_1.Composition_1.EquationSection_1;
				ref item :> anno = ClassDefinition_1.Composition_1.ClassModification_26;
				item ElementList_1 : ElementList :> priv_elist {
					ref item :> elem = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5);
					item ComponentClause_1 : ComponentClause :> elem {
						ref item :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.TypeSpecifier_1;
						ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1;
						item TypeSpecifier_1 : TypeSpecifier :> type {
							attribute :>> name = "Engines.Combustion.SIEngine";
						}
						item ComponentList_1 : ComponentList :> comps {
							ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1;
							item ComponentDeclaration_1 : ComponentDeclaration :> comps {
								ref item :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Declaration_1;
								ref item :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1;
								item Declaration_1 : Declaration :> decl {
									attribute :>> name = "sIEngine";
								}
								item Comment_1 : Comment :> 'comment' {
									ref item :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1;
									item ClassModification_1 : ClassModification :> annotation {
										ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1;
										item ArgumentList_1 : ArgumentList :> args {
											ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1;
											item ElementModification_1 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1;
												item Modification_1 : Modification :> mod {
													ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2;
													item ClassModification_2 : ClassModification :> mod {
														ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2;
														item ArgumentList_2 : ArgumentList :> args {
															ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2;
															item ElementModification_2 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2;
																item Modification_2 : Modification :> mod {
																	ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3;
																	item ClassModification_3 : ClassModification :> mod {
																		ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3;
																		item ArgumentList_3 : ArgumentList :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3;
																			item ElementModification_3 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3;
																				item Modification_3 : Modification :> mod {
																					ref item :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1;
																					item FunctionArguments_1 : FunctionArguments :> expr {
																						ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_2, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4);
																						item FunctionArguments_2 : FunctionArguments :> args {
																							ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_2.FloatPrimary_1, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_2.FunctionArguments_3);
																							item FloatPrimary_1 : FloatPrimary :> args {
																								attribute :>> val = 2.0;
																							}
																							item FunctionArguments_3 : FunctionArguments :> args {
																								ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_2.FunctionArguments_3.FloatPrimary_2;
																								item FloatPrimary_2 : FloatPrimary :> args {
																									attribute :>> val = 0.0;
																								}
																							}
																						}
																						item FunctionArguments_4 : FunctionArguments :> args {
																							ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4.FunctionArguments_5;
																							item FunctionArguments_5 : FunctionArguments :> args {
																								ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4.FunctionArguments_5.FloatPrimary_3, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4.FunctionArguments_5.FunctionArguments_6);
																								item FloatPrimary_3 : FloatPrimary :> args {
																									attribute :>> val = 22.0;
																								}
																								item FunctionArguments_6 : FunctionArguments :> args {
																									ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_1.ComponentList_1.ComponentDeclaration_1.Comment_1.ClassModification_1.ArgumentList_1.ElementModification_1.Modification_1.ClassModification_2.ArgumentList_2.ElementModification_2.Modification_2.ClassModification_3.ArgumentList_3.ElementModification_3.Modification_3.FunctionArguments_1.FunctionArguments_4.FunctionArguments_5.FunctionArguments_6.FloatPrimary_4;
																									item FloatPrimary_4 : FloatPrimary :> args {
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
					item ComponentClause_2 : ComponentClause :> elem {
						ref item :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.TypeSpecifier_2;
						ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2;
						item TypeSpecifier_2 : TypeSpecifier :> type {
							attribute :>> name = "Modelica.Mechanics.Rotational.Sources.Speed";
						}
						item ComponentList_2 : ComponentList :> comps {
							ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2;
							item ComponentDeclaration_2 : ComponentDeclaration :> comps {
								ref item :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Declaration_2;
								ref item :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2;
								item Declaration_2 : Declaration :> decl {
									attribute :>> name = "ForcedSpeed";
								}
								item Comment_2 : Comment :> 'comment' {
									ref item :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4;
									item ClassModification_4 : ClassModification :> annotation {
										ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4;
										item ArgumentList_4 : ArgumentList :> args {
											ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4;
											item ElementModification_4 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4;
												item Modification_4 : Modification :> mod {
													ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5;
													item ClassModification_5 : ClassModification :> mod {
														ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5;
														item ArgumentList_5 : ArgumentList :> args {
															ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5;
															item ElementModification_5 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5;
																item Modification_5 : Modification :> mod {
																	ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6;
																	item ClassModification_6 : ClassModification :> mod {
																		ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6;
																		item ArgumentList_6 : ArgumentList :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6;
																			item ElementModification_6 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6;
																				item Modification_6 : Modification :> mod {
																					ref item :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7;
																					item FunctionArguments_7 : FunctionArguments :> expr {
																						ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_8, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10);
																						item FunctionArguments_8 : FunctionArguments :> args {
																							ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_8.FloatPrimary_5, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_8.FunctionArguments_9);
																							item FloatPrimary_5 : FloatPrimary :> args {
																								attribute :>> val = 2.0;
																							}
																							item FunctionArguments_9 : FunctionArguments :> args {
																								ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_8.FunctionArguments_9.FloatPrimary_6;
																								item FloatPrimary_6 : FloatPrimary :> args {
																									attribute :>> val = 40.0;
																								}
																							}
																						}
																						item FunctionArguments_10 : FunctionArguments :> args {
																							ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10.FunctionArguments_11;
																							item FunctionArguments_11 : FunctionArguments :> args {
																								ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10.FunctionArguments_11.FloatPrimary_7, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10.FunctionArguments_11.FunctionArguments_12);
																								item FloatPrimary_7 : FloatPrimary :> args {
																									attribute :>> val = 22.0;
																								}
																								item FunctionArguments_12 : FunctionArguments :> args {
																									ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_2.ComponentList_2.ComponentDeclaration_2.Comment_2.ClassModification_4.ArgumentList_4.ElementModification_4.Modification_4.ClassModification_5.ArgumentList_5.ElementModification_5.Modification_5.ClassModification_6.ArgumentList_6.ElementModification_6.Modification_6.FunctionArguments_7.FunctionArguments_10.FunctionArguments_11.FunctionArguments_12.FloatPrimary_8;
																									item FloatPrimary_8 : FloatPrimary :> args {
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
					item ComponentClause_3 : ComponentClause :> elem {
						ref item :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.TypeSpecifier_3;
						ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3;
						item TypeSpecifier_3 : TypeSpecifier :> type {
							attribute :>> name = "Modelica.Blocks.Sources.Constant";
						}
						item ComponentList_3 : ComponentList :> comps {
							ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3;
							item ComponentDeclaration_3 : ComponentDeclaration :> comps {
								ref item :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3;
								ref item :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3;
								item Declaration_3 : Declaration :> decl {
									attribute :>> name = "EngineSpeed";
									ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7;
									item Modification_7 : Modification :> mod {
										ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7;
										item ClassModification_7 : ClassModification :> mod {
											ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7.ArgumentList_7;
											item ArgumentList_7 : ArgumentList :> args {
												ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7.ArgumentList_7.ElementModification_7;
												item ElementModification_7 : ElementModification :> args {
													attribute :>> name = "k";
													ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7.ArgumentList_7.ElementModification_7.Modification_8;
													item Modification_8 : Modification :> mod {
														ref item :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Declaration_3.Modification_7.ClassModification_7.ArgumentList_7.ElementModification_7.Modification_8.FloatPrimary_9;
														item FloatPrimary_9 : FloatPrimary :> expr {
															attribute :>> val = 1500.0;
														}
													}
												}
											}
										}
									}
								}
								item Comment_3 : Comment :> 'comment' {
									attribute :>> 'comment' = ""Speed in RPM"";
									ref item :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8;
									item ClassModification_8 : ClassModification :> annotation {
										ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8;
										item ArgumentList_8 : ArgumentList :> args {
											ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8;
											item ElementModification_8 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9;
												item Modification_9 : Modification :> mod {
													ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9;
													item ClassModification_9 : ClassModification :> mod {
														ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9;
														item ArgumentList_9 : ArgumentList :> args {
															ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9;
															item ElementModification_9 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10;
																item Modification_10 : Modification :> mod {
																	ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10;
																	item ClassModification_10 : ClassModification :> mod {
																		ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10;
																		item ArgumentList_10 : ArgumentList :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10;
																			item ElementModification_10 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11;
																				item Modification_11 : Modification :> mod {
																					ref item :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13;
																					item FunctionArguments_13 : FunctionArguments :> expr {
																						ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16);
																						item FunctionArguments_14 : FunctionArguments :> args {
																							ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14.Negation_1, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14.FunctionArguments_15);
																							item Negation_1 : Negation :> args {
																								attribute :>> neg_op = "-";
																								ref item :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14.Negation_1.FloatPrimary_10;
																								item FloatPrimary_10 : FloatPrimary :> term {
																									attribute :>> val = 60.0;
																								}
																							}
																							item FunctionArguments_15 : FunctionArguments :> args {
																								ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_14.FunctionArguments_15.FloatPrimary_11;
																								item FloatPrimary_11 : FloatPrimary :> args {
																									attribute :>> val = 40.0;
																								}
																							}
																						}
																						item FunctionArguments_16 : FunctionArguments :> args {
																							ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17;
																							item FunctionArguments_17 : FunctionArguments :> args {
																								ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17.Negation_2, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17.FunctionArguments_18);
																								item Negation_2 : Negation :> args {
																									attribute :>> neg_op = "-";
																									ref item :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17.Negation_2.FloatPrimary_12;
																									item FloatPrimary_12 : FloatPrimary :> term {
																										attribute :>> val = 40.0;
																									}
																								}
																								item FunctionArguments_18 : FunctionArguments :> args {
																									ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_3.ComponentList_3.ComponentDeclaration_3.Comment_3.ClassModification_8.ArgumentList_8.ElementModification_8.Modification_9.ClassModification_9.ArgumentList_9.ElementModification_9.Modification_10.ClassModification_10.ArgumentList_10.ElementModification_10.Modification_11.FunctionArguments_13.FunctionArguments_16.FunctionArguments_17.FunctionArguments_18.FloatPrimary_13;
																									item FloatPrimary_13 : FloatPrimary :> args {
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
					item ComponentClause_4 : ComponentClause :> elem {
						ref item :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.TypeSpecifier_4;
						ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4;
						item TypeSpecifier_4 : TypeSpecifier :> type {
							attribute :>> name = "Modelica.Blocks.Math.UnitConversions.From_rpm";
						}
						item ComponentList_4 : ComponentList :> comps {
							ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4;
							item ComponentDeclaration_4 : ComponentDeclaration :> comps {
								ref item :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Declaration_4;
								ref item :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4;
								item Declaration_4 : Declaration :> decl {
									attribute :>> name = "from_rpm";
								}
								item Comment_4 : Comment :> 'comment' {
									ref item :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11;
									item ClassModification_11 : ClassModification :> annotation {
										ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11;
										item ArgumentList_11 : ArgumentList :> args {
											ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11;
											item ElementModification_11 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12;
												item Modification_12 : Modification :> mod {
													ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12;
													item ClassModification_12 : ClassModification :> mod {
														ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12;
														item ArgumentList_12 : ArgumentList :> args {
															ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12;
															item ElementModification_12 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13;
																item Modification_13 : Modification :> mod {
																	ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13;
																	item ClassModification_13 : ClassModification :> mod {
																		ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13;
																		item ArgumentList_13 : ArgumentList :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13;
																			item ElementModification_13 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14;
																				item Modification_14 : Modification :> mod {
																					ref item :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19;
																					item FunctionArguments_19 : FunctionArguments :> expr {
																						ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22);
																						item FunctionArguments_20 : FunctionArguments :> args {
																							ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20.Negation_3, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20.FunctionArguments_21);
																							item Negation_3 : Negation :> args {
																								attribute :>> neg_op = "-";
																								ref item :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20.Negation_3.FloatPrimary_14;
																								item FloatPrimary_14 : FloatPrimary :> term {
																									attribute :>> val = 30.0;
																								}
																							}
																							item FunctionArguments_21 : FunctionArguments :> args {
																								ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_20.FunctionArguments_21.FloatPrimary_15;
																								item FloatPrimary_15 : FloatPrimary :> args {
																									attribute :>> val = 40.0;
																								}
																							}
																						}
																						item FunctionArguments_22 : FunctionArguments :> args {
																							ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23;
																							item FunctionArguments_23 : FunctionArguments :> args {
																								ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23.Negation_4, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23.FunctionArguments_24);
																								item Negation_4 : Negation :> args {
																									attribute :>> neg_op = "-";
																									ref item :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23.Negation_4.FloatPrimary_16;
																									item FloatPrimary_16 : FloatPrimary :> term {
																										attribute :>> val = 10.0;
																									}
																								}
																								item FunctionArguments_24 : FunctionArguments :> args {
																									ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_4.ComponentList_4.ComponentDeclaration_4.Comment_4.ClassModification_11.ArgumentList_11.ElementModification_11.Modification_12.ClassModification_12.ArgumentList_12.ElementModification_12.Modification_13.ClassModification_13.ArgumentList_13.ElementModification_13.Modification_14.FunctionArguments_19.FunctionArguments_22.FunctionArguments_23.FunctionArguments_24.FloatPrimary_17;
																									item FloatPrimary_17 : FloatPrimary :> args {
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
					item ComponentClause_5 : ComponentClause :> elem {
						ref item :> type = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.TypeSpecifier_5;
						ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5;
						item TypeSpecifier_5 : TypeSpecifier :> type {
							attribute :>> name = "Modelica.Blocks.Sources.Step";
						}
						item ComponentList_5 : ComponentList :> comps {
							ref item :> comps = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5;
							item ComponentDeclaration_5 : ComponentDeclaration :> comps {
								ref item :> decl = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5;
								ref item :> 'comment' = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5;
								item Declaration_5 : Declaration :> decl {
									attribute :>> name = "step";
									ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15;
									item Modification_15 : Modification :> mod {
										ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14;
										item ClassModification_14 : ClassModification :> mod {
											ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14;
											item ArgumentList_14 : ArgumentList :> args {
												ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_14, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_15, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_16);
												item ElementModification_14 : ElementModification :> args {
													attribute :>> name = "startTime";
													ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_14.Modification_16;
													item Modification_16 : Modification :> mod {
														ref item :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_14.Modification_16.FloatPrimary_18;
														item FloatPrimary_18 : FloatPrimary :> expr {
															attribute :>> val = 5.0;
														}
													}
												}
												item ElementModification_15 : ElementModification :> args {
													attribute :>> name = "height";
													ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_15.Modification_17;
													item Modification_17 : Modification :> mod {
														ref item :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_15.Modification_17.FloatPrimary_19;
														item FloatPrimary_19 : FloatPrimary :> expr {
															attribute :>> val = 0.3;
														}
													}
												}
												item ElementModification_16 : ElementModification :> args {
													attribute :>> name = "offset";
													ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_16.Modification_18;
													item Modification_18 : Modification :> mod {
														ref item :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Declaration_5.Modification_15.ClassModification_14.ArgumentList_14.ElementModification_16.Modification_18.FloatPrimary_20;
														item FloatPrimary_20 : FloatPrimary :> expr {
															attribute :>> val = 0.05;
														}
													}
												}
											}
										}
									}
								}
								item Comment_5 : Comment :> 'comment' {
									ref item :> annotation = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15;
									item ClassModification_15 : ClassModification :> annotation {
										ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15;
										item ArgumentList_15 : ArgumentList :> args {
											ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17;
											item ElementModification_17 : ElementModification :> args {
												attribute :>> name = "Placement";
												ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19;
												item Modification_19 : Modification :> mod {
													ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16;
													item ClassModification_16 : ClassModification :> mod {
														ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16;
														item ArgumentList_16 : ArgumentList :> args {
															ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18;
															item ElementModification_18 : ElementModification :> args {
																attribute :>> name = "transformation";
																ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20;
																item Modification_20 : Modification :> mod {
																	ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17;
																	item ClassModification_17 : ClassModification :> mod {
																		ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17;
																		item ArgumentList_17 : ArgumentList :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19;
																			item ElementModification_19 : ElementModification :> args {
																				attribute :>> name = "extent";
																				ref item :> mod = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21;
																				item Modification_21 : Modification :> mod {
																					ref item :> expr = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25;
																					item FunctionArguments_25 : FunctionArguments :> expr {
																						ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28);
																						item FunctionArguments_26 : FunctionArguments :> args {
																							ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26.Negation_5, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26.FunctionArguments_27);
																							item Negation_5 : Negation :> args {
																								attribute :>> neg_op = "-";
																								ref item :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26.Negation_5.FloatPrimary_21;
																								item FloatPrimary_21 : FloatPrimary :> term {
																									attribute :>> val = 38.0;
																								}
																							}
																							item FunctionArguments_27 : FunctionArguments :> args {
																								ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_26.FunctionArguments_27.FloatPrimary_22;
																								item FloatPrimary_22 : FloatPrimary :> args {
																									attribute :>> val = 0.0;
																								}
																							}
																						}
																						item FunctionArguments_28 : FunctionArguments :> args {
																							ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29;
																							item FunctionArguments_29 : FunctionArguments :> args {
																								ref item :> args = (ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29.Negation_6, ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29.FunctionArguments_30);
																								item Negation_6 : Negation :> args {
																									attribute :>> neg_op = "-";
																									ref item :> term = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29.Negation_6.FloatPrimary_23;
																									item FloatPrimary_23 : FloatPrimary :> term {
																										attribute :>> val = 18.0;
																									}
																								}
																								item FunctionArguments_30 : FunctionArguments :> args {
																									ref item :> args = ClassDefinition_1.Composition_1.ElementList_1.ComponentClause_5.ComponentList_5.ComponentDeclaration_5.Comment_5.ClassModification_15.ArgumentList_15.ElementModification_17.Modification_19.ClassModification_16.ArgumentList_16.ElementModification_18.Modification_20.ClassModification_17.ArgumentList_17.ElementModification_19.Modification_21.FunctionArguments_25.FunctionArguments_28.FunctionArguments_29.FunctionArguments_30.FloatPrimary_24;
																									item FloatPrimary_24 : FloatPrimary :> args {
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
				item EquationSection_1 : EquationSection :> eq_secs {
					ref item :> equations = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4);
					item ConnectClause_1 : ConnectClause :> equations {
						ref item :> left = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.ComponentReference_1;
						ref item :> right = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.ComponentReference_2;
						ref item :> commment = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6;
						item ComponentReference_1 : ComponentReference :> left {
							attribute :>> idents = ("ForcedSpeed", "flange");
						}
						item ComponentReference_2 : ComponentReference :> right {
							attribute :>> idents = ("sIEngine", "CrankShaft");
						}
						item Comment_6 : Comment :> commment {
							ref item :> annotation = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18;
							item ClassModification_18 : ClassModification :> annotation {
								ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18;
								item ArgumentList_18 : ArgumentList :> args {
									ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20;
									item ElementModification_20 : ElementModification :> args {
										attribute :>> name = "Line";
										ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22;
										item Modification_22 : Modification :> mod {
											ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19;
											item ClassModification_19 : ClassModification :> mod {
												ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19;
												item ArgumentList_19 : ArgumentList :> args {
													ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_23);
													item ElementModification_21 : ElementModification :> args {
														attribute :>> name = "points";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23;
														item Modification_23 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31;
															item FunctionArguments_31 : FunctionArguments :> expr {
																ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_32, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34);
																item FunctionArguments_32 : FunctionArguments :> args {
																	ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_32.FloatPrimary_25, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_32.FunctionArguments_33);
																	item FloatPrimary_25 : FloatPrimary :> args {
																		attribute :>> val = 22.0;
																	}
																	item FunctionArguments_33 : FunctionArguments :> args {
																		ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_32.FunctionArguments_33.FloatPrimary_26;
																		item FloatPrimary_26 : FloatPrimary :> args {
																			attribute :>> val = 50.0;
																		}
																	}
																}
																item FunctionArguments_34 : FunctionArguments :> args {
																	ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_35, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37);
																	item FunctionArguments_35 : FunctionArguments :> args {
																		ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_35.FloatPrimary_27, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_35.FunctionArguments_36);
																		item FloatPrimary_27 : FloatPrimary :> args {
																			attribute :>> val = 32.0;
																		}
																		item FunctionArguments_36 : FunctionArguments :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_35.FunctionArguments_36.FloatPrimary_28;
																			item FloatPrimary_28 : FloatPrimary :> args {
																				attribute :>> val = 50.0;
																			}
																		}
																	}
																	item FunctionArguments_37 : FunctionArguments :> args {
																		ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_38, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40);
																		item FunctionArguments_38 : FunctionArguments :> args {
																			ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_38.FloatPrimary_29, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_38.FunctionArguments_39);
																			item FloatPrimary_29 : FloatPrimary :> args {
																				attribute :>> val = 32.0;
																			}
																			item FunctionArguments_39 : FunctionArguments :> args {
																				ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_38.FunctionArguments_39.FloatPrimary_30;
																				item FloatPrimary_30 : FloatPrimary :> args {
																					attribute :>> val = 10.0;
																				}
																			}
																		}
																		item FunctionArguments_40 : FunctionArguments :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40.FunctionArguments_41;
																			item FunctionArguments_41 : FunctionArguments :> args {
																				ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40.FunctionArguments_41.FloatPrimary_31, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40.FunctionArguments_41.FunctionArguments_42);
																				item FloatPrimary_31 : FloatPrimary :> args {
																					attribute :>> val = 22.0;
																				}
																				item FunctionArguments_42 : FunctionArguments :> args {
																					ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_21.Modification_23.FunctionArguments_31.FunctionArguments_34.FunctionArguments_37.FunctionArguments_40.FunctionArguments_41.FunctionArguments_42.FloatPrimary_32;
																					item FloatPrimary_32 : FloatPrimary :> args {
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
													item ElementModification_22 : ElementModification :> args {
														attribute :>> name = "color";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24;
														item Modification_24 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43;
															item FunctionArguments_43 : FunctionArguments :> expr {
																ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FloatPrimary_33, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FunctionArguments_44);
																item FloatPrimary_33 : FloatPrimary :> args {
																	attribute :>> val = 0.0;
																}
																item FunctionArguments_44 : FunctionArguments :> args {
																	ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FunctionArguments_44.FloatPrimary_34, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FunctionArguments_44.FunctionArguments_45);
																	item FloatPrimary_34 : FloatPrimary :> args {
																		attribute :>> val = 0.0;
																	}
																	item FunctionArguments_45 : FunctionArguments :> args {
																		ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_22.Modification_24.FunctionArguments_43.FunctionArguments_44.FunctionArguments_45.FloatPrimary_35;
																		item FloatPrimary_35 : FloatPrimary :> args {
																			attribute :>> val = 0.0;
																		}
																	}
																}
															}
														}
													}
													item ElementModification_23 : ElementModification :> args {
														attribute :>> name = "smooth";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_23.Modification_25;
														item Modification_25 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_1.Comment_6.ClassModification_18.ArgumentList_18.ElementModification_20.Modification_22.ClassModification_19.ArgumentList_19.ElementModification_23.Modification_25.ComponentReference_3;
															item ComponentReference_3 : ComponentReference :> expr {
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
					item ConnectClause_2 : ConnectClause :> equations {
						ref item :> left = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.ComponentReference_4;
						ref item :> right = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.ComponentReference_5;
						ref item :> commment = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7;
						item ComponentReference_4 : ComponentReference :> left {
							attribute :>> idents = ("from_rpm", "u");
						}
						item ComponentReference_5 : ComponentReference :> right {
							attribute :>> idents = ("EngineSpeed", "y");
						}
						item Comment_7 : Comment :> commment {
							ref item :> annotation = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20;
							item ClassModification_20 : ClassModification :> annotation {
								ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20;
								item ArgumentList_20 : ArgumentList :> args {
									ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24;
									item ElementModification_24 : ElementModification :> args {
										attribute :>> name = "Line";
										ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26;
										item Modification_26 : Modification :> mod {
											ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21;
											item ClassModification_21 : ClassModification :> mod {
												ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21;
												item ArgumentList_21 : ArgumentList :> args {
													ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_27);
													item ElementModification_25 : ElementModification :> args {
														attribute :>> name = "points";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27;
														item Modification_27 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46;
															item FunctionArguments_46 : FunctionArguments :> expr {
																ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49);
																item FunctionArguments_47 : FunctionArguments :> args {
																	ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47.Negation_7, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47.FunctionArguments_48);
																	item Negation_7 : Negation :> args {
																		attribute :>> neg_op = "-";
																		ref item :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47.Negation_7.FloatPrimary_36;
																		item FloatPrimary_36 : FloatPrimary :> term {
																			attribute :>> val = 32.0;
																		}
																	}
																	item FunctionArguments_48 : FunctionArguments :> args {
																		ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_47.FunctionArguments_48.FloatPrimary_37;
																		item FloatPrimary_37 : FloatPrimary :> args {
																			attribute :>> val = 50.0;
																		}
																	}
																}
																item FunctionArguments_49 : FunctionArguments :> args {
																	ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50;
																	item FunctionArguments_50 : FunctionArguments :> args {
																		ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50.Negation_8, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50.FunctionArguments_51);
																		item Negation_8 : Negation :> args {
																			attribute :>> neg_op = "-";
																			ref item :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50.Negation_8.FloatPrimary_38;
																			item FloatPrimary_38 : FloatPrimary :> term {
																				attribute :>> val = 39.0;
																			}
																		}
																		item FunctionArguments_51 : FunctionArguments :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_25.Modification_27.FunctionArguments_46.FunctionArguments_49.FunctionArguments_50.FunctionArguments_51.FloatPrimary_39;
																			item FloatPrimary_39 : FloatPrimary :> args {
																				attribute :>> val = 50.0;
																			}
																		}
																	}
																}
															}
														}
													}
													item ElementModification_26 : ElementModification :> args {
														attribute :>> name = "color";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28;
														item Modification_28 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52;
															item FunctionArguments_52 : FunctionArguments :> expr {
																ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FloatPrimary_40, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FunctionArguments_53);
																item FloatPrimary_40 : FloatPrimary :> args {
																	attribute :>> val = 0.0;
																}
																item FunctionArguments_53 : FunctionArguments :> args {
																	ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FunctionArguments_53.FloatPrimary_41, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FunctionArguments_53.FunctionArguments_54);
																	item FloatPrimary_41 : FloatPrimary :> args {
																		attribute :>> val = 0.0;
																	}
																	item FunctionArguments_54 : FunctionArguments :> args {
																		ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_26.Modification_28.FunctionArguments_52.FunctionArguments_53.FunctionArguments_54.FloatPrimary_42;
																		item FloatPrimary_42 : FloatPrimary :> args {
																			attribute :>> val = 127.0;
																		}
																	}
																}
															}
														}
													}
													item ElementModification_27 : ElementModification :> args {
														attribute :>> name = "smooth";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_27.Modification_29;
														item Modification_29 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_2.Comment_7.ClassModification_20.ArgumentList_20.ElementModification_24.Modification_26.ClassModification_21.ArgumentList_21.ElementModification_27.Modification_29.ComponentReference_6;
															item ComponentReference_6 : ComponentReference :> expr {
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
					item ConnectClause_3 : ConnectClause :> equations {
						ref item :> left = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.ComponentReference_7;
						ref item :> right = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.ComponentReference_8;
						ref item :> commment = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8;
						item ComponentReference_7 : ComponentReference :> left {
							attribute :>> idents = ("ForcedSpeed", "w_ref");
						}
						item ComponentReference_8 : ComponentReference :> right {
							attribute :>> idents = ("from_rpm", "y");
						}
						item Comment_8 : Comment :> commment {
							ref item :> annotation = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22;
							item ClassModification_22 : ClassModification :> annotation {
								ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22;
								item ArgumentList_22 : ArgumentList :> args {
									ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28;
									item ElementModification_28 : ElementModification :> args {
										attribute :>> name = "Line";
										ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30;
										item Modification_30 : Modification :> mod {
											ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23;
											item ClassModification_23 : ClassModification :> mod {
												ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23;
												item ArgumentList_23 : ArgumentList :> args {
													ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_31);
													item ElementModification_29 : ElementModification :> args {
														attribute :>> name = "points";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31;
														item Modification_31 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55;
															item FunctionArguments_55 : FunctionArguments :> expr {
																ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58);
																item FunctionArguments_56 : FunctionArguments :> args {
																	ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56.Negation_9, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56.FunctionArguments_57);
																	item Negation_9 : Negation :> args {
																		attribute :>> neg_op = "-";
																		ref item :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56.Negation_9.FloatPrimary_43;
																		item FloatPrimary_43 : FloatPrimary :> term {
																			attribute :>> val = 6.66134E-16;
																		}
																	}
																	item FunctionArguments_57 : FunctionArguments :> args {
																		ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_56.FunctionArguments_57.FloatPrimary_44;
																		item FloatPrimary_44 : FloatPrimary :> args {
																			attribute :>> val = 50.0;
																		}
																	}
																}
																item FunctionArguments_58 : FunctionArguments :> args {
																	ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59;
																	item FunctionArguments_59 : FunctionArguments :> args {
																		ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59.Negation_10, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59.FunctionArguments_60);
																		item Negation_10 : Negation :> args {
																			attribute :>> neg_op = "-";
																			ref item :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59.Negation_10.FloatPrimary_45;
																			item FloatPrimary_45 : FloatPrimary :> term {
																				attribute :>> val = 9.0;
																			}
																		}
																		item FunctionArguments_60 : FunctionArguments :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_29.Modification_31.FunctionArguments_55.FunctionArguments_58.FunctionArguments_59.FunctionArguments_60.FloatPrimary_46;
																			item FloatPrimary_46 : FloatPrimary :> args {
																				attribute :>> val = 50.0;
																			}
																		}
																	}
																}
															}
														}
													}
													item ElementModification_30 : ElementModification :> args {
														attribute :>> name = "color";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32;
														item Modification_32 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61;
															item FunctionArguments_61 : FunctionArguments :> expr {
																ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FloatPrimary_47, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FunctionArguments_62);
																item FloatPrimary_47 : FloatPrimary :> args {
																	attribute :>> val = 0.0;
																}
																item FunctionArguments_62 : FunctionArguments :> args {
																	ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FunctionArguments_62.FloatPrimary_48, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FunctionArguments_62.FunctionArguments_63);
																	item FloatPrimary_48 : FloatPrimary :> args {
																		attribute :>> val = 0.0;
																	}
																	item FunctionArguments_63 : FunctionArguments :> args {
																		ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_30.Modification_32.FunctionArguments_61.FunctionArguments_62.FunctionArguments_63.FloatPrimary_49;
																		item FloatPrimary_49 : FloatPrimary :> args {
																			attribute :>> val = 127.0;
																		}
																	}
																}
															}
														}
													}
													item ElementModification_31 : ElementModification :> args {
														attribute :>> name = "smooth";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_31.Modification_33;
														item Modification_33 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_3.Comment_8.ClassModification_22.ArgumentList_22.ElementModification_28.Modification_30.ClassModification_23.ArgumentList_23.ElementModification_31.Modification_33.ComponentReference_9;
															item ComponentReference_9 : ComponentReference :> expr {
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
					item ConnectClause_4 : ConnectClause :> equations {
						ref item :> left = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.ComponentReference_10;
						ref item :> right = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.ComponentReference_11;
						ref item :> commment = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9;
						item ComponentReference_10 : ComponentReference :> left {
							attribute :>> idents = ("step", "y");
						}
						item ComponentReference_11 : ComponentReference :> right {
							attribute :>> idents = ("sIEngine", "TqRef");
						}
						item Comment_9 : Comment :> commment {
							ref item :> annotation = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24;
							item ClassModification_24 : ClassModification :> annotation {
								ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24;
								item ArgumentList_24 : ArgumentList :> args {
									ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32;
									item ElementModification_32 : ElementModification :> args {
										attribute :>> name = "Line";
										ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34;
										item Modification_34 : Modification :> mod {
											ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25;
											item ClassModification_25 : ClassModification :> mod {
												ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25;
												item ArgumentList_25 : ArgumentList :> args {
													ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_35);
													item ElementModification_33 : ElementModification :> args {
														attribute :>> name = "points";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35;
														item Modification_35 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64;
															item FunctionArguments_64 : FunctionArguments :> expr {
																ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67);
																item FunctionArguments_65 : FunctionArguments :> args {
																	ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65.Negation_11, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65.FunctionArguments_66);
																	item Negation_11 : Negation :> args {
																		attribute :>> neg_op = "-";
																		ref item :> term = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65.Negation_11.FloatPrimary_50;
																		item FloatPrimary_50 : FloatPrimary :> term {
																			attribute :>> val = 17.0;
																		}
																	}
																	item FunctionArguments_66 : FunctionArguments :> args {
																		ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_65.FunctionArguments_66.FloatPrimary_51;
																		item FloatPrimary_51 : FloatPrimary :> args {
																			attribute :>> val = 10.0;
																		}
																	}
																}
																item FunctionArguments_67 : FunctionArguments :> args {
																	ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67.FunctionArguments_68;
																	item FunctionArguments_68 : FunctionArguments :> args {
																		ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67.FunctionArguments_68.FloatPrimary_52, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67.FunctionArguments_68.FunctionArguments_69);
																		item FloatPrimary_52 : FloatPrimary :> args {
																			attribute :>> val = 1.6;
																		}
																		item FunctionArguments_69 : FunctionArguments :> args {
																			ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_33.Modification_35.FunctionArguments_64.FunctionArguments_67.FunctionArguments_68.FunctionArguments_69.FloatPrimary_53;
																			item FloatPrimary_53 : FloatPrimary :> args {
																				attribute :>> val = 10.0;
																			}
																		}
																	}
																}
															}
														}
													}
													item ElementModification_34 : ElementModification :> args {
														attribute :>> name = "color";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36;
														item Modification_36 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70;
															item FunctionArguments_70 : FunctionArguments :> expr {
																ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FloatPrimary_54, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FunctionArguments_71);
																item FloatPrimary_54 : FloatPrimary :> args {
																	attribute :>> val = 0.0;
																}
																item FunctionArguments_71 : FunctionArguments :> args {
																	ref item :> args = (ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FunctionArguments_71.FloatPrimary_55, ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FunctionArguments_71.FunctionArguments_72);
																	item FloatPrimary_55 : FloatPrimary :> args {
																		attribute :>> val = 0.0;
																	}
																	item FunctionArguments_72 : FunctionArguments :> args {
																		ref item :> args = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_34.Modification_36.FunctionArguments_70.FunctionArguments_71.FunctionArguments_72.FloatPrimary_56;
																		item FloatPrimary_56 : FloatPrimary :> args {
																			attribute :>> val = 127.0;
																		}
																	}
																}
															}
														}
													}
													item ElementModification_35 : ElementModification :> args {
														attribute :>> name = "smooth";
														ref item :> mod = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_35.Modification_37;
														item Modification_37 : Modification :> mod {
															ref item :> expr = ClassDefinition_1.Composition_1.EquationSection_1.ConnectClause_4.Comment_9.ClassModification_24.ArgumentList_24.ElementModification_32.Modification_34.ClassModification_25.ArgumentList_25.ElementModification_35.Modification_37.ComponentReference_12;
															item ComponentReference_12 : ComponentReference :> expr {
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
				item ClassModification_26 : ClassModification :> anno {
					ref item :> args = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26;
					item ArgumentList_26 : ArgumentList :> args {
						ref item :> args = (ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36, ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38, ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_41);
						item ElementModification_36 : ElementModification :> args {
							attribute :>> name = "Diagram";
							ref item :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36.Modification_38;
							item Modification_38 : Modification :> mod {
								ref item :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36.Modification_38.ClassModification_27;
								item ClassModification_27 : ClassModification :> mod {
									ref item :> args = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36.Modification_38.ClassModification_27.ArgumentList_27;
									item ArgumentList_27 : ArgumentList :> args {
										ref item :> args = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_36.Modification_38.ClassModification_27.ArgumentList_27.ElementModification_37;
										item ElementModification_37 : ElementModification :> args {
											attribute :>> name = "graphics";
										}
									}
								}
							}
						}
						item ElementModification_38 : ElementModification :> args {
							attribute :>> name = "experiment";
							ref item :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39;
							item Modification_39 : Modification :> mod {
								ref item :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28;
								item ClassModification_28 : ClassModification :> mod {
									ref item :> args = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28;
									item ArgumentList_28 : ArgumentList :> args {
										ref item :> args = (ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_39, ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_40);
										item ElementModification_39 : ElementModification :> args {
											attribute :>> name = "StopTime";
											ref item :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_39.Modification_40;
											item Modification_40 : Modification :> mod {
												ref item :> expr = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_39.Modification_40.FloatPrimary_57;
												item FloatPrimary_57 : FloatPrimary :> expr {
													attribute :>> val = 15.0;
												}
											}
										}
										item ElementModification_40 : ElementModification :> args {
											attribute :>> name = "Tolerance";
											ref item :> mod = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_40.Modification_41;
											item Modification_41 : Modification :> mod {
												ref item :> expr = ClassDefinition_1.Composition_1.ClassModification_26.ArgumentList_26.ElementModification_38.Modification_39.ClassModification_28.ArgumentList_28.ElementModification_40.Modification_41.FloatPrimary_58;
												item FloatPrimary_58 : FloatPrimary :> expr {
													attribute :>> val = 1.0E-5;
												}
											}
										}
									}
								}
							}
						}
						item ElementModification_41 : ElementModification :> args {
							attribute :>> name = "experimentSetupOutput";
						}
					}
				}
			}
		}
	}
}

