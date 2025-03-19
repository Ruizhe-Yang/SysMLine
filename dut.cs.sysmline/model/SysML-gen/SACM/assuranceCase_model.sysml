package assuranceCase_model {
	public import assuranceCase::*;
	public import base::*;
	public import artifact::*;
	public import argumentation::*;
	public import terminology::*;
	public import gsn::*;
	item AssuranceCasePackage_1 : AssuranceCasePackage {
		ref item :> argumentPackage = Module_1;
		item Module_1 : Module :> argumentPackage {
			ref item :> name = Module_1.LangString_1;
			ref item :> description = Module_1.Description_1;
			ref item :> implementationConstraint = Module_1.ImplementationConstraint_1;
			ref item :> argumentationElement = (Module_1.Goal_1, Module_1.Context_1, Module_1.Justification_1, Module_1.Assumption_1, Module_1.Strategy_1, Module_1.Solution_1, Module_1.Goal_2, Module_1.Goal_3, Module_1.Context_2, Module_1.Strategy_2, Module_1.Solution_2, Module_1.Solution_3, Module_1.Solution_4, Module_1.Context_3, Module_1.Context_4, Module_1.Context_5, Module_1.Goal_4, Module_1.Goal_5, Module_1.Goal_6, Module_1.Goal_7, Module_1.Goal_8, Module_1.InContextOf_1, Module_1.InContextOf_2, Module_1.InContextOf_3, Module_1.InContextOf_4, Module_1.InContextOf_5, Module_1.InContextOf_6, Module_1.InContextOf_7, Module_1.InContextOf_8, Module_1.Context_6, Module_1.InContextOf_9, Module_1.SupportedBy_1, Module_1.SupportedBy_2, Module_1.SupportedBy_3, Module_1.SupportedBy_4, Module_1.SupportedBy_5, Module_1.SupportedBy_6, Module_1.SupportedBy_7, Module_1.SupportedBy_8, Module_1.SupportedBy_9, Module_1.SupportedBy_10, Module_1.SupportedBy_11, Module_1.SupportedBy_12, Module_1.SupportedBy_13, Module_1.SupportedBy_14);
			item LangString_1 : LangString :> name {
				attribute :>> lang = "lang";
				attribute :>> content = "name";
			}
			item Description_1 : Description :> description {
				ref item :> content = Module_1.Description_1.MultiLangString_1;
				item MultiLangString_1 : MultiLangString :> content {
					ref item :> value = Module_1.Description_1.MultiLangString_1.LangString_2;
					item LangString_2 : LangString :> value {
						attribute :>> lang = "language";
						attribute :>> content = "Description";
					}
				}
			}
			item ImplementationConstraint_1 : ImplementationConstraint :> implementationConstraint {
				ref item :> content = Module_1.ImplementationConstraint_1.MultiLangString_2;
				item MultiLangString_2 : MultiLangString :> content {
					ref item :> value = (Module_1.ImplementationConstraint_1.MultiLangString_2.LangString_3, Module_1.ImplementationConstraint_1.MultiLangString_2.LangString_4);
					item LangString_3 : LangString :> value {
						attribute :>> lang = "language";
						attribute :>> content = "null";
					}
					item LangString_4 : LangString :> value {
						attribute :>> lang = "language";
						attribute :>> content = "null";
					}
				}
			}
			item Goal_1 : Goal :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Goal_1.LangString_5;
				ref item :> description = Module_1.Goal_1.Description_2;
				ref item :> implementationConstraint = Module_1.Goal_1.ImplementationConstraint_2;
				item LangString_5 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G1";
				}
				item Description_2 : Description :> description {
					ref item :> content = Module_1.Goal_1.Description_2.MultiLangString_3;
					item MultiLangString_3 : MultiLangString :> content {
						ref item :> value = Module_1.Goal_1.Description_2.MultiLangString_3.ExpressionLangString_1;
						item ExpressionLangString_1 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Control System is acceptably safe to operate";
						}
					}
				}
				item ImplementationConstraint_2 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Goal_1.ImplementationConstraint_2.MultiLangString_4;
					item MultiLangString_4 : MultiLangString :> content {
						ref item :> value = (Module_1.Goal_1.ImplementationConstraint_2.MultiLangString_4.LangString_6, Module_1.Goal_1.ImplementationConstraint_2.MultiLangString_4.LangString_7);
						item LangString_6 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_7 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Context_1 : Context :> argumentationElement {
				ref item :> name = Module_1.Context_1.LangString_8;
				ref item :> description = Module_1.Context_1.Description_3;
				ref item :> implementationConstraint = Module_1.Context_1.ImplementationConstraint_3;
				item LangString_8 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C2";
				}
				item Description_3 : Description :> description {
					ref item :> content = Module_1.Context_1.Description_3.MultiLangString_5;
					item MultiLangString_5 : MultiLangString :> content {
						ref item :> value = Module_1.Context_1.Description_3.MultiLangString_5.LangString_9;
						item LangString_9 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Control System Definition";
						}
					}
				}
				item ImplementationConstraint_3 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Context_1.ImplementationConstraint_3.MultiLangString_6;
					item MultiLangString_6 : MultiLangString :> content {
						ref item :> value = (Module_1.Context_1.ImplementationConstraint_3.MultiLangString_6.LangString_10, Module_1.Context_1.ImplementationConstraint_3.MultiLangString_6.LangString_11);
						item LangString_10 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_11 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Justification_1 : Justification :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Justification_1.LangString_12;
				ref item :> description = Module_1.Justification_1.Description_4;
				ref item :> implementationConstraint = Module_1.Justification_1.ImplementationConstraint_4;
				item LangString_12 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "J1";
				}
				item Description_4 : Description :> description {
					ref item :> content = Module_1.Justification_1.Description_4.MultiLangString_7;
					item MultiLangString_7 : MultiLangString :> content {
						ref item :> value = Module_1.Justification_1.Description_4.MultiLangString_7.LangString_13;
						item LangString_13 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "SIL apportionment is correct and complete	";
						}
					}
				}
				item ImplementationConstraint_4 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Justification_1.ImplementationConstraint_4.MultiLangString_8;
					item MultiLangString_8 : MultiLangString :> content {
						ref item :> value = (Module_1.Justification_1.ImplementationConstraint_4.MultiLangString_8.LangString_14, Module_1.Justification_1.ImplementationConstraint_4.MultiLangString_8.LangString_15);
						item LangString_14 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_15 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Assumption_1 : Assumption :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Assumption_1.LangString_16;
				ref item :> description = Module_1.Assumption_1.Description_5;
				ref item :> implementationConstraint = Module_1.Assumption_1.ImplementationConstraint_5;
				item LangString_16 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "A1";
				}
				item Description_5 : Description :> description {
					ref item :> content = Module_1.Assumption_1.Description_5.MultiLangString_9;
					item MultiLangString_9 : MultiLangString :> content {
						ref item :> value = Module_1.Assumption_1.Description_5.MultiLangString_9.LangString_17;
						item LangString_17 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "All hazards have been identified";
						}
					}
				}
				item ImplementationConstraint_5 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Assumption_1.ImplementationConstraint_5.MultiLangString_10;
					item MultiLangString_10 : MultiLangString :> content {
						ref item :> value = (Module_1.Assumption_1.ImplementationConstraint_5.MultiLangString_10.LangString_18, Module_1.Assumption_1.ImplementationConstraint_5.MultiLangString_10.LangString_19);
						item LangString_18 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_19 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Strategy_1 : Strategy :> argumentationElement {
				ref item :> name = Module_1.Strategy_1.LangString_20;
				ref item :> description = Module_1.Strategy_1.Description_6;
				ref item :> implementationConstraint = Module_1.Strategy_1.ImplementationConstraint_6;
				item LangString_20 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "S1";
				}
				item Description_6 : Description :> description {
					ref item :> content = Module_1.Strategy_1.Description_6.MultiLangString_11;
					item MultiLangString_11 : MultiLangString :> content {
						ref item :> value = Module_1.Strategy_1.Description_6.MultiLangString_11.LangString_21;
						item LangString_21 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Argument over each identified hazard";
						}
					}
				}
				item ImplementationConstraint_6 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Strategy_1.ImplementationConstraint_6.MultiLangString_12;
					item MultiLangString_12 : MultiLangString :> content {
						ref item :> value = (Module_1.Strategy_1.ImplementationConstraint_6.MultiLangString_12.LangString_22, Module_1.Strategy_1.ImplementationConstraint_6.MultiLangString_12.LangString_23);
						item LangString_22 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_23 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Solution_1 : Solution :> argumentationElement {
				ref item :> name = Module_1.Solution_1.LangString_24;
				ref item :> description = Module_1.Solution_1.Description_7;
				ref item :> implementationConstraint = Module_1.Solution_1.ImplementationConstraint_7;
				item LangString_24 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "Sn1";
				}
				item Description_7 : Description :> description {
					ref item :> content = Module_1.Solution_1.Description_7.MultiLangString_13;
					item MultiLangString_13 : MultiLangString :> content {
						ref item :> value = Module_1.Solution_1.Description_7.MultiLangString_13.LangString_25;
						item LangString_25 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Formal Verification";
						}
					}
				}
				item ImplementationConstraint_7 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Solution_1.ImplementationConstraint_7.MultiLangString_14;
					item MultiLangString_14 : MultiLangString :> content {
						ref item :> value = (Module_1.Solution_1.ImplementationConstraint_7.MultiLangString_14.LangString_26, Module_1.Solution_1.ImplementationConstraint_7.MultiLangString_14.LangString_27);
						item LangString_26 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_27 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Goal_2 : Goal :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Goal_2.LangString_28;
				ref item :> description = Module_1.Goal_2.Description_8;
				ref item :> implementationConstraint = Module_1.Goal_2.ImplementationConstraint_8;
				item LangString_28 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G2";
				}
				item Description_8 : Description :> description {
					ref item :> content = Module_1.Goal_2.Description_8.MultiLangString_15;
					item MultiLangString_15 : MultiLangString :> content {
						ref item :> value = Module_1.Goal_2.Description_8.MultiLangString_15.ExpressionLangString_2;
						item ExpressionLangString_2 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "All identified hazards have been eliminated or sufficiently mitigated";
						}
					}
				}
				item ImplementationConstraint_8 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Goal_2.ImplementationConstraint_8.MultiLangString_16;
					item MultiLangString_16 : MultiLangString :> content {
						ref item :> value = (Module_1.Goal_2.ImplementationConstraint_8.MultiLangString_16.LangString_29, Module_1.Goal_2.ImplementationConstraint_8.MultiLangString_16.LangString_30);
						item LangString_29 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_30 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Goal_3 : Goal :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Goal_3.LangString_31;
				ref item :> description = Module_1.Goal_3.Description_9;
				ref item :> implementationConstraint = Module_1.Goal_3.ImplementationConstraint_9;
				item LangString_31 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C3";
				}
				item Description_9 : Description :> description {
					ref item :> content = Module_1.Goal_3.Description_9.MultiLangString_17;
					item MultiLangString_17 : MultiLangString :> content {
						ref item :> value = Module_1.Goal_3.Description_9.MultiLangString_17.ExpressionLangString_3;
						item ExpressionLangString_3 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Software in the Control System has been developed to SIL appropriate to hazards involved";
						}
					}
				}
				item ImplementationConstraint_9 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Goal_3.ImplementationConstraint_9.MultiLangString_18;
					item MultiLangString_18 : MultiLangString :> content {
						ref item :> value = (Module_1.Goal_3.ImplementationConstraint_9.MultiLangString_18.LangString_32, Module_1.Goal_3.ImplementationConstraint_9.MultiLangString_18.LangString_33);
						item LangString_32 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_33 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Context_2 : Context :> argumentationElement {
				ref item :> name = Module_1.Context_2.LangString_34;
				ref item :> description = Module_1.Context_2.Description_10;
				ref item :> implementationConstraint = Module_1.Context_2.ImplementationConstraint_10;
				item LangString_34 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C1";
				}
				item Description_10 : Description :> description {
					ref item :> content = Module_1.Context_2.Description_10.MultiLangString_19;
					item MultiLangString_19 : MultiLangString :> content {
						ref item :> value = Module_1.Context_2.Description_10.MultiLangString_19.LangString_35;
						item LangString_35 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Operating Role and Context";
						}
					}
				}
				item ImplementationConstraint_10 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Context_2.ImplementationConstraint_10.MultiLangString_20;
					item MultiLangString_20 : MultiLangString :> content {
						ref item :> value = (Module_1.Context_2.ImplementationConstraint_10.MultiLangString_20.LangString_36, Module_1.Context_2.ImplementationConstraint_10.MultiLangString_20.LangString_37);
						item LangString_36 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_37 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Strategy_2 : Strategy :> argumentationElement {
				ref item :> name = Module_1.Strategy_2.LangString_38;
				ref item :> description = Module_1.Strategy_2.Description_11;
				ref item :> implementationConstraint = Module_1.Strategy_2.ImplementationConstraint_11;
				item LangString_38 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "S2";
				}
				item Description_11 : Description :> description {
					ref item :> content = Module_1.Strategy_2.Description_11.MultiLangString_21;
					item MultiLangString_21 : MultiLangString :> content {
						ref item :> value = Module_1.Strategy_2.Description_11.MultiLangString_21.LangString_39;
						item LangString_39 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Argument over allocated SIL for Primart and Secondary elements";
						}
					}
				}
				item ImplementationConstraint_11 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Strategy_2.ImplementationConstraint_11.MultiLangString_22;
					item MultiLangString_22 : MultiLangString :> content {
						ref item :> value = (Module_1.Strategy_2.ImplementationConstraint_11.MultiLangString_22.LangString_40, Module_1.Strategy_2.ImplementationConstraint_11.MultiLangString_22.LangString_41);
						item LangString_40 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_41 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Solution_2 : Solution :> argumentationElement {
				ref item :> name = Module_1.Solution_2.LangString_42;
				ref item :> description = Module_1.Solution_2.Description_12;
				ref item :> implementationConstraint = Module_1.Solution_2.ImplementationConstraint_12;
				item LangString_42 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "Sn2";
				}
				item Description_12 : Description :> description {
					ref item :> content = Module_1.Solution_2.Description_12.MultiLangString_23;
					item MultiLangString_23 : MultiLangString :> content {
						ref item :> value = Module_1.Solution_2.Description_12.MultiLangString_23.LangString_43;
						item LangString_43 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Fault Tree Analysis";
						}
					}
				}
				item ImplementationConstraint_12 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Solution_2.ImplementationConstraint_12.MultiLangString_24;
					item MultiLangString_24 : MultiLangString :> content {
						ref item :> value = (Module_1.Solution_2.ImplementationConstraint_12.MultiLangString_24.LangString_44, Module_1.Solution_2.ImplementationConstraint_12.MultiLangString_24.LangString_45);
						item LangString_44 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_45 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Solution_3 : Solution :> argumentationElement {
				ref item :> name = Module_1.Solution_3.LangString_46;
				ref item :> description = Module_1.Solution_3.Description_13;
				ref item :> implementationConstraint = Module_1.Solution_3.ImplementationConstraint_13;
				item LangString_46 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "Sn3";
				}
				item Description_13 : Description :> description {
					ref item :> content = Module_1.Solution_3.Description_13.MultiLangString_25;
					item MultiLangString_25 : MultiLangString :> content {
						ref item :> value = Module_1.Solution_3.Description_13.MultiLangString_25.LangString_47;
						item LangString_47 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Process Evidence for SIL4";
						}
					}
				}
				item ImplementationConstraint_13 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Solution_3.ImplementationConstraint_13.MultiLangString_26;
					item MultiLangString_26 : MultiLangString :> content {
						ref item :> value = (Module_1.Solution_3.ImplementationConstraint_13.MultiLangString_26.LangString_48, Module_1.Solution_3.ImplementationConstraint_13.MultiLangString_26.LangString_49);
						item LangString_48 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_49 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Solution_4 : Solution :> argumentationElement {
				ref item :> name = Module_1.Solution_4.LangString_50;
				ref item :> description = Module_1.Solution_4.Description_14;
				ref item :> implementationConstraint = Module_1.Solution_4.ImplementationConstraint_14;
				item LangString_50 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "Sn4";
				}
				item Description_14 : Description :> description {
					ref item :> content = Module_1.Solution_4.Description_14.MultiLangString_27;
					item MultiLangString_27 : MultiLangString :> content {
						ref item :> value = Module_1.Solution_4.Description_14.MultiLangString_27.LangString_51;
						item LangString_51 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Process Evidence for SIL2";
						}
					}
				}
				item ImplementationConstraint_14 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Solution_4.ImplementationConstraint_14.MultiLangString_28;
					item MultiLangString_28 : MultiLangString :> content {
						ref item :> value = (Module_1.Solution_4.ImplementationConstraint_14.MultiLangString_28.LangString_52, Module_1.Solution_4.ImplementationConstraint_14.MultiLangString_28.LangString_53);
						item LangString_52 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_53 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Context_3 : Context :> argumentationElement {
				ref item :> name = Module_1.Context_3.LangString_54;
				ref item :> description = Module_1.Context_3.Description_15;
				ref item :> implementationConstraint = Module_1.Context_3.ImplementationConstraint_15;
				item LangString_54 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C4";
				}
				item Description_15 : Description :> description {
					ref item :> content = Module_1.Context_3.Description_15.MultiLangString_29;
					item MultiLangString_29 : MultiLangString :> content {
						ref item :> value = Module_1.Context_3.Description_15.MultiLangString_29.LangString_55;
						item LangString_55 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Hazards identified from FHA (Ref Y)";
						}
					}
				}
				item ImplementationConstraint_15 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Context_3.ImplementationConstraint_15.MultiLangString_30;
					item MultiLangString_30 : MultiLangString :> content {
						ref item :> value = (Module_1.Context_3.ImplementationConstraint_15.MultiLangString_30.LangString_56, Module_1.Context_3.ImplementationConstraint_15.MultiLangString_30.LangString_57);
						item LangString_56 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_57 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Context_4 : Context :> argumentationElement {
				ref item :> name = Module_1.Context_4.LangString_58;
				ref item :> description = Module_1.Context_4.Description_16;
				ref item :> implementationConstraint = Module_1.Context_4.ImplementationConstraint_16;
				item LangString_58 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C5";
				}
				item Description_16 : Description :> description {
					ref item :> content = Module_1.Context_4.Description_16.MultiLangString_31;
					item MultiLangString_31 : MultiLangString :> content {
						ref item :> value = Module_1.Context_4.Description_16.MultiLangString_31.LangString_59;
						item LangString_59 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "SIL Guidelines and Processes";
						}
					}
				}
				item ImplementationConstraint_16 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Context_4.ImplementationConstraint_16.MultiLangString_32;
					item MultiLangString_32 : MultiLangString :> content {
						ref item :> value = (Module_1.Context_4.ImplementationConstraint_16.MultiLangString_32.LangString_60, Module_1.Context_4.ImplementationConstraint_16.MultiLangString_32.LangString_61);
						item LangString_60 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_61 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Context_5 : Context :> argumentationElement {
				ref item :> name = Module_1.Context_5.LangString_62;
				ref item :> description = Module_1.Context_5.Description_17;
				ref item :> implementationConstraint = Module_1.Context_5.ImplementationConstraint_17;
				item LangString_62 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C3";
				}
				item Description_17 : Description :> description {
					ref item :> content = Module_1.Context_5.Description_17.MultiLangString_33;
					item MultiLangString_33 : MultiLangString :> content {
						ref item :> value = Module_1.Context_5.Description_17.MultiLangString_33.LangString_63;
						item LangString_63 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Tolerability targets (Ref Z)";
						}
					}
				}
				item ImplementationConstraint_17 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Context_5.ImplementationConstraint_17.MultiLangString_34;
					item MultiLangString_34 : MultiLangString :> content {
						ref item :> value = (Module_1.Context_5.ImplementationConstraint_17.MultiLangString_34.LangString_64, Module_1.Context_5.ImplementationConstraint_17.MultiLangString_34.LangString_65);
						item LangString_64 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_65 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Goal_4 : Goal :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Goal_4.LangString_66;
				ref item :> description = Module_1.Goal_4.Description_18;
				ref item :> implementationConstraint = Module_1.Goal_4.ImplementationConstraint_18;
				item LangString_66 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G4";
				}
				item Description_18 : Description :> description {
					ref item :> content = Module_1.Goal_4.Description_18.MultiLangString_35;
					item MultiLangString_35 : MultiLangString :> content {
						ref item :> value = Module_1.Goal_4.Description_18.MultiLangString_35.ExpressionLangString_4;
						item ExpressionLangString_4 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Hazard H1 has been eliminated";
						}
					}
				}
				item ImplementationConstraint_18 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Goal_4.ImplementationConstraint_18.MultiLangString_36;
					item MultiLangString_36 : MultiLangString :> content {
						ref item :> value = (Module_1.Goal_4.ImplementationConstraint_18.MultiLangString_36.LangString_67, Module_1.Goal_4.ImplementationConstraint_18.MultiLangString_36.LangString_68);
						item LangString_67 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_68 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Goal_5 : Goal :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Goal_5.LangString_69;
				ref item :> description = Module_1.Goal_5.Description_19;
				ref item :> implementationConstraint = Module_1.Goal_5.ImplementationConstraint_19;
				item LangString_69 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G5";
				}
				item Description_19 : Description :> description {
					ref item :> content = Module_1.Goal_5.Description_19.MultiLangString_37;
					item MultiLangString_37 : MultiLangString :> content {
						ref item :> value = Module_1.Goal_5.Description_19.MultiLangString_37.ExpressionLangString_5;
						item ExpressionLangString_5 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Probability of Hazard H2 occuring < 1x10-6 per year";
						}
					}
				}
				item ImplementationConstraint_19 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Goal_5.ImplementationConstraint_19.MultiLangString_38;
					item MultiLangString_38 : MultiLangString :> content {
						ref item :> value = (Module_1.Goal_5.ImplementationConstraint_19.MultiLangString_38.LangString_70, Module_1.Goal_5.ImplementationConstraint_19.MultiLangString_38.LangString_71);
						item LangString_70 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_71 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Goal_6 : Goal :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Goal_6.LangString_72;
				ref item :> description = Module_1.Goal_6.Description_20;
				ref item :> implementationConstraint = Module_1.Goal_6.ImplementationConstraint_20;
				item LangString_72 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G6";
				}
				item Description_20 : Description :> description {
					ref item :> content = Module_1.Goal_6.Description_20.MultiLangString_39;
					item MultiLangString_39 : MultiLangString :> content {
						ref item :> value = Module_1.Goal_6.Description_20.MultiLangString_39.ExpressionLangString_6;
						item ExpressionLangString_6 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Probability of Hazard H3 occuring < 1x10-3 per year";
						}
					}
				}
				item ImplementationConstraint_20 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Goal_6.ImplementationConstraint_20.MultiLangString_40;
					item MultiLangString_40 : MultiLangString :> content {
						ref item :> value = (Module_1.Goal_6.ImplementationConstraint_20.MultiLangString_40.LangString_73, Module_1.Goal_6.ImplementationConstraint_20.MultiLangString_40.LangString_74);
						item LangString_73 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_74 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Goal_7 : Goal :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Goal_7.LangString_75;
				ref item :> description = Module_1.Goal_7.Description_21;
				ref item :> implementationConstraint = Module_1.Goal_7.ImplementationConstraint_21;
				item LangString_75 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G7";
				}
				item Description_21 : Description :> description {
					ref item :> content = Module_1.Goal_7.Description_21.MultiLangString_41;
					item MultiLangString_41 : MultiLangString :> content {
						ref item :> value = Module_1.Goal_7.Description_21.MultiLangString_41.ExpressionLangString_7;
						item ExpressionLangString_7 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Primary Protection System Developed to SIL 4";
						}
					}
				}
				item ImplementationConstraint_21 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Goal_7.ImplementationConstraint_21.MultiLangString_42;
					item MultiLangString_42 : MultiLangString :> content {
						ref item :> value = (Module_1.Goal_7.ImplementationConstraint_21.MultiLangString_42.LangString_76, Module_1.Goal_7.ImplementationConstraint_21.MultiLangString_42.LangString_77);
						item LangString_76 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_77 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Goal_8 : Goal :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				ref item :> name = Module_1.Goal_8.LangString_78;
				ref item :> description = Module_1.Goal_8.Description_22;
				ref item :> implementationConstraint = Module_1.Goal_8.ImplementationConstraint_22;
				item LangString_78 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G8";
				}
				item Description_22 : Description :> description {
					ref item :> content = Module_1.Goal_8.Description_22.MultiLangString_43;
					item MultiLangString_43 : MultiLangString :> content {
						ref item :> value = Module_1.Goal_8.Description_22.MultiLangString_43.ExpressionLangString_8;
						item ExpressionLangString_8 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Secondary Protection System Development to SIL2";
						}
					}
				}
				item ImplementationConstraint_22 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Goal_8.ImplementationConstraint_22.MultiLangString_44;
					item MultiLangString_44 : MultiLangString :> content {
						ref item :> value = (Module_1.Goal_8.ImplementationConstraint_22.MultiLangString_44.LangString_79, Module_1.Goal_8.ImplementationConstraint_22.MultiLangString_44.LangString_80);
						item LangString_79 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_80 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item InContextOf_1 : InContextOf :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.InContextOf_1.LangString_81;
				ref item :> description = Module_1.InContextOf_1.Description_23;
				ref item :> implementationConstraint = Module_1.InContextOf_1.ImplementationConstraint_23;
				ref item :> source = Module_1.Goal_1;
				ref item :> target = Module_1.Context_1;
				item LangString_81 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_23 : Description :> description {
					ref item :> content = Module_1.InContextOf_1.Description_23.MultiLangString_45;
					item MultiLangString_45 : MultiLangString :> content {
						ref item :> value = Module_1.InContextOf_1.Description_23.MultiLangString_45.ExpressionLangString_9;
						item ExpressionLangString_9 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_23 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.InContextOf_1.ImplementationConstraint_23.MultiLangString_46;
					item MultiLangString_46 : MultiLangString :> content {
						ref item :> value = (Module_1.InContextOf_1.ImplementationConstraint_23.MultiLangString_46.LangString_82, Module_1.InContextOf_1.ImplementationConstraint_23.MultiLangString_46.LangString_83);
						item LangString_82 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_83 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item InContextOf_2 : InContextOf :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.InContextOf_2.LangString_84;
				ref item :> description = Module_1.InContextOf_2.Description_24;
				ref item :> implementationConstraint = Module_1.InContextOf_2.ImplementationConstraint_24;
				ref item :> source = Module_1.Goal_1;
				ref item :> target = Module_1.Context_2;
				item LangString_84 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_24 : Description :> description {
					ref item :> content = Module_1.InContextOf_2.Description_24.MultiLangString_47;
					item MultiLangString_47 : MultiLangString :> content {
						ref item :> value = Module_1.InContextOf_2.Description_24.MultiLangString_47.ExpressionLangString_10;
						item ExpressionLangString_10 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_24 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.InContextOf_2.ImplementationConstraint_24.MultiLangString_48;
					item MultiLangString_48 : MultiLangString :> content {
						ref item :> value = (Module_1.InContextOf_2.ImplementationConstraint_24.MultiLangString_48.LangString_85, Module_1.InContextOf_2.ImplementationConstraint_24.MultiLangString_48.LangString_86);
						item LangString_85 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_86 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item InContextOf_3 : InContextOf :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.InContextOf_3.LangString_87;
				ref item :> description = Module_1.InContextOf_3.Description_25;
				ref item :> implementationConstraint = Module_1.InContextOf_3.ImplementationConstraint_25;
				ref item :> source = Module_1.Goal_3;
				ref item :> target = Module_1.Context_3;
				item LangString_87 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_25 : Description :> description {
					ref item :> content = Module_1.InContextOf_3.Description_25.MultiLangString_49;
					item MultiLangString_49 : MultiLangString :> content {
						ref item :> value = Module_1.InContextOf_3.Description_25.MultiLangString_49.ExpressionLangString_11;
						item ExpressionLangString_11 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_25 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.InContextOf_3.ImplementationConstraint_25.MultiLangString_50;
					item MultiLangString_50 : MultiLangString :> content {
						ref item :> value = (Module_1.InContextOf_3.ImplementationConstraint_25.MultiLangString_50.LangString_88, Module_1.InContextOf_3.ImplementationConstraint_25.MultiLangString_50.LangString_89);
						item LangString_88 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_89 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item InContextOf_4 : InContextOf :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.InContextOf_4.LangString_90;
				ref item :> description = Module_1.InContextOf_4.Description_26;
				ref item :> implementationConstraint = Module_1.InContextOf_4.ImplementationConstraint_26;
				ref item :> source = Module_1.Goal_3;
				ref item :> target = Module_1.Context_4;
				item LangString_90 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_26 : Description :> description {
					ref item :> content = Module_1.InContextOf_4.Description_26.MultiLangString_51;
					item MultiLangString_51 : MultiLangString :> content {
						ref item :> value = Module_1.InContextOf_4.Description_26.MultiLangString_51.ExpressionLangString_12;
						item ExpressionLangString_12 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_26 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.InContextOf_4.ImplementationConstraint_26.MultiLangString_52;
					item MultiLangString_52 : MultiLangString :> content {
						ref item :> value = (Module_1.InContextOf_4.ImplementationConstraint_26.MultiLangString_52.LangString_91, Module_1.InContextOf_4.ImplementationConstraint_26.MultiLangString_52.LangString_92);
						item LangString_91 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_92 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item InContextOf_5 : InContextOf :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.InContextOf_5.LangString_93;
				ref item :> description = Module_1.InContextOf_5.Description_27;
				ref item :> implementationConstraint = Module_1.InContextOf_5.ImplementationConstraint_27;
				ref item :> source = Module_1.Goal_2;
				ref item :> target = Module_1.Context_3;
				item LangString_93 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_27 : Description :> description {
					ref item :> content = Module_1.InContextOf_5.Description_27.MultiLangString_53;
					item MultiLangString_53 : MultiLangString :> content {
						ref item :> value = Module_1.InContextOf_5.Description_27.MultiLangString_53.ExpressionLangString_13;
						item ExpressionLangString_13 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_27 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.InContextOf_5.ImplementationConstraint_27.MultiLangString_54;
					item MultiLangString_54 : MultiLangString :> content {
						ref item :> value = (Module_1.InContextOf_5.ImplementationConstraint_27.MultiLangString_54.LangString_94, Module_1.InContextOf_5.ImplementationConstraint_27.MultiLangString_54.LangString_95);
						item LangString_94 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_95 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item InContextOf_6 : InContextOf :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.InContextOf_6.LangString_96;
				ref item :> description = Module_1.InContextOf_6.Description_28;
				ref item :> implementationConstraint = Module_1.InContextOf_6.ImplementationConstraint_28;
				ref item :> source = Module_1.Goal_2;
				ref item :> target = Module_1.Context_5;
				item LangString_96 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_28 : Description :> description {
					ref item :> content = Module_1.InContextOf_6.Description_28.MultiLangString_55;
					item MultiLangString_55 : MultiLangString :> content {
						ref item :> value = Module_1.InContextOf_6.Description_28.MultiLangString_55.ExpressionLangString_14;
						item ExpressionLangString_14 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_28 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.InContextOf_6.ImplementationConstraint_28.MultiLangString_56;
					item MultiLangString_56 : MultiLangString :> content {
						ref item :> value = (Module_1.InContextOf_6.ImplementationConstraint_28.MultiLangString_56.LangString_97, Module_1.InContextOf_6.ImplementationConstraint_28.MultiLangString_56.LangString_98);
						item LangString_97 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_98 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item InContextOf_7 : InContextOf :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.InContextOf_7.LangString_99;
				ref item :> description = Module_1.InContextOf_7.Description_29;
				ref item :> implementationConstraint = Module_1.InContextOf_7.ImplementationConstraint_29;
				ref item :> source = Module_1.Strategy_1;
				ref item :> target = Module_1.Assumption_1;
				item LangString_99 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_29 : Description :> description {
					ref item :> content = Module_1.InContextOf_7.Description_29.MultiLangString_57;
					item MultiLangString_57 : MultiLangString :> content {
						ref item :> value = Module_1.InContextOf_7.Description_29.MultiLangString_57.ExpressionLangString_15;
						item ExpressionLangString_15 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_29 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.InContextOf_7.ImplementationConstraint_29.MultiLangString_58;
					item MultiLangString_58 : MultiLangString :> content {
						ref item :> value = (Module_1.InContextOf_7.ImplementationConstraint_29.MultiLangString_58.LangString_100, Module_1.InContextOf_7.ImplementationConstraint_29.MultiLangString_58.LangString_101);
						item LangString_100 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_101 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item InContextOf_8 : InContextOf :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.InContextOf_8.LangString_102;
				ref item :> description = Module_1.InContextOf_8.Description_30;
				ref item :> implementationConstraint = Module_1.InContextOf_8.ImplementationConstraint_30;
				ref item :> source = Module_1.Strategy_2;
				ref item :> target = Module_1.Justification_1;
				item LangString_102 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_30 : Description :> description {
					ref item :> content = Module_1.InContextOf_8.Description_30.MultiLangString_59;
					item MultiLangString_59 : MultiLangString :> content {
						ref item :> value = Module_1.InContextOf_8.Description_30.MultiLangString_59.ExpressionLangString_16;
						item ExpressionLangString_16 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_30 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.InContextOf_8.ImplementationConstraint_30.MultiLangString_60;
					item MultiLangString_60 : MultiLangString :> content {
						ref item :> value = (Module_1.InContextOf_8.ImplementationConstraint_30.MultiLangString_60.LangString_103, Module_1.InContextOf_8.ImplementationConstraint_30.MultiLangString_60.LangString_104);
						item LangString_103 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_104 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item Context_6 : Context :> argumentationElement {
				ref item :> name = Module_1.Context_6.LangString_105;
				ref item :> description = Module_1.Context_6.Description_31;
				ref item :> implementationConstraint = Module_1.Context_6.ImplementationConstraint_31;
				item LangString_105 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C6";
				}
				item Description_31 : Description :> description {
					ref item :> content = Module_1.Context_6.Description_31.MultiLangString_61;
					item MultiLangString_61 : MultiLangString :> content {
						ref item :> value = Module_1.Context_6.Description_31.MultiLangString_61.LangString_106;
						item LangString_106 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Identified software hazards";
						}
					}
				}
				item ImplementationConstraint_31 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.Context_6.ImplementationConstraint_31.MultiLangString_62;
					item MultiLangString_62 : MultiLangString :> content {
						ref item :> value = (Module_1.Context_6.ImplementationConstraint_31.MultiLangString_62.LangString_107, Module_1.Context_6.ImplementationConstraint_31.MultiLangString_62.LangString_108);
						item LangString_107 : LangString :> value {
							attribute :>> lang = "language";
						}
						item LangString_108 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item InContextOf_9 : InContextOf :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.InContextOf_9.LangString_109;
				ref item :> description = Module_1.InContextOf_9.Description_32;
				ref item :> implementationConstraint = Module_1.InContextOf_9.ImplementationConstraint_32;
				ref item :> source = Module_1.Strategy_2;
				ref item :> target = Module_1.Context_6;
				item LangString_109 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_32 : Description :> description {
					ref item :> content = Module_1.InContextOf_9.Description_32.MultiLangString_63;
					item MultiLangString_63 : MultiLangString :> content {
						ref item :> value = Module_1.InContextOf_9.Description_32.MultiLangString_63.ExpressionLangString_17;
						item ExpressionLangString_17 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_32 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.InContextOf_9.ImplementationConstraint_32.MultiLangString_64;
					item MultiLangString_64 : MultiLangString :> content {
						ref item :> value = (Module_1.InContextOf_9.ImplementationConstraint_32.MultiLangString_64.LangString_110, Module_1.InContextOf_9.ImplementationConstraint_32.MultiLangString_64.LangString_111);
						item LangString_110 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_111 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_1 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_1.LangString_112;
				ref item :> description = Module_1.SupportedBy_1.Description_33;
				ref item :> implementationConstraint = Module_1.SupportedBy_1.ImplementationConstraint_33;
				ref item :> source = Module_1.Goal_1;
				ref item :> target = Module_1.Goal_2;
				item LangString_112 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_33 : Description :> description {
					ref item :> content = Module_1.SupportedBy_1.Description_33.MultiLangString_65;
					item MultiLangString_65 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_1.Description_33.MultiLangString_65.ExpressionLangString_18;
						item ExpressionLangString_18 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_33 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_1.ImplementationConstraint_33.MultiLangString_66;
					item MultiLangString_66 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_1.ImplementationConstraint_33.MultiLangString_66.LangString_113, Module_1.SupportedBy_1.ImplementationConstraint_33.MultiLangString_66.LangString_114);
						item LangString_113 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_114 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_2 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_2.LangString_115;
				ref item :> description = Module_1.SupportedBy_2.Description_34;
				ref item :> implementationConstraint = Module_1.SupportedBy_2.ImplementationConstraint_34;
				ref item :> source = Module_1.Goal_1;
				ref item :> target = Module_1.Goal_3;
				item LangString_115 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_34 : Description :> description {
					ref item :> content = Module_1.SupportedBy_2.Description_34.MultiLangString_67;
					item MultiLangString_67 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_2.Description_34.MultiLangString_67.ExpressionLangString_19;
						item ExpressionLangString_19 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_34 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_2.ImplementationConstraint_34.MultiLangString_68;
					item MultiLangString_68 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_2.ImplementationConstraint_34.MultiLangString_68.LangString_116, Module_1.SupportedBy_2.ImplementationConstraint_34.MultiLangString_68.LangString_117);
						item LangString_116 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_117 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_3 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_3.LangString_118;
				ref item :> description = Module_1.SupportedBy_3.Description_35;
				ref item :> implementationConstraint = Module_1.SupportedBy_3.ImplementationConstraint_35;
				ref item :> source = Module_1.Goal_2;
				ref item :> target = Module_1.Strategy_1;
				item LangString_118 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_35 : Description :> description {
					ref item :> content = Module_1.SupportedBy_3.Description_35.MultiLangString_69;
					item MultiLangString_69 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_3.Description_35.MultiLangString_69.ExpressionLangString_20;
						item ExpressionLangString_20 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_35 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_3.ImplementationConstraint_35.MultiLangString_70;
					item MultiLangString_70 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_3.ImplementationConstraint_35.MultiLangString_70.LangString_119, Module_1.SupportedBy_3.ImplementationConstraint_35.MultiLangString_70.LangString_120);
						item LangString_119 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_120 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_4 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_4.LangString_121;
				ref item :> description = Module_1.SupportedBy_4.Description_36;
				ref item :> implementationConstraint = Module_1.SupportedBy_4.ImplementationConstraint_36;
				ref item :> source = Module_1.Goal_3;
				ref item :> target = Module_1.Strategy_2;
				item LangString_121 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_36 : Description :> description {
					ref item :> content = Module_1.SupportedBy_4.Description_36.MultiLangString_71;
					item MultiLangString_71 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_4.Description_36.MultiLangString_71.ExpressionLangString_21;
						item ExpressionLangString_21 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_36 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_4.ImplementationConstraint_36.MultiLangString_72;
					item MultiLangString_72 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_4.ImplementationConstraint_36.MultiLangString_72.LangString_122, Module_1.SupportedBy_4.ImplementationConstraint_36.MultiLangString_72.LangString_123);
						item LangString_122 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_123 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_5 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_5.LangString_124;
				ref item :> description = Module_1.SupportedBy_5.Description_37;
				ref item :> implementationConstraint = Module_1.SupportedBy_5.ImplementationConstraint_37;
				ref item :> source = Module_1.Strategy_2;
				ref item :> target = Module_1.Goal_7;
				item LangString_124 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_37 : Description :> description {
					ref item :> content = Module_1.SupportedBy_5.Description_37.MultiLangString_73;
					item MultiLangString_73 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_5.Description_37.MultiLangString_73.ExpressionLangString_22;
						item ExpressionLangString_22 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_37 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_5.ImplementationConstraint_37.MultiLangString_74;
					item MultiLangString_74 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_5.ImplementationConstraint_37.MultiLangString_74.LangString_125, Module_1.SupportedBy_5.ImplementationConstraint_37.MultiLangString_74.LangString_126);
						item LangString_125 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_126 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_6 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_6.LangString_127;
				ref item :> description = Module_1.SupportedBy_6.Description_38;
				ref item :> implementationConstraint = Module_1.SupportedBy_6.ImplementationConstraint_38;
				ref item :> source = Module_1.Strategy_2;
				ref item :> target = Module_1.Goal_8;
				item LangString_127 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_38 : Description :> description {
					ref item :> content = Module_1.SupportedBy_6.Description_38.MultiLangString_75;
					item MultiLangString_75 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_6.Description_38.MultiLangString_75.ExpressionLangString_23;
						item ExpressionLangString_23 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_38 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_6.ImplementationConstraint_38.MultiLangString_76;
					item MultiLangString_76 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_6.ImplementationConstraint_38.MultiLangString_76.LangString_128, Module_1.SupportedBy_6.ImplementationConstraint_38.MultiLangString_76.LangString_129);
						item LangString_128 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_129 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_7 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_7.LangString_130;
				ref item :> description = Module_1.SupportedBy_7.Description_39;
				ref item :> implementationConstraint = Module_1.SupportedBy_7.ImplementationConstraint_39;
				ref item :> source = Module_1.Goal_8;
				ref item :> target = Module_1.Solution_4;
				item LangString_130 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_39 : Description :> description {
					ref item :> content = Module_1.SupportedBy_7.Description_39.MultiLangString_77;
					item MultiLangString_77 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_7.Description_39.MultiLangString_77.ExpressionLangString_24;
						item ExpressionLangString_24 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_39 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_7.ImplementationConstraint_39.MultiLangString_78;
					item MultiLangString_78 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_7.ImplementationConstraint_39.MultiLangString_78.LangString_131, Module_1.SupportedBy_7.ImplementationConstraint_39.MultiLangString_78.LangString_132);
						item LangString_131 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_132 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_8 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_8.LangString_133;
				ref item :> description = Module_1.SupportedBy_8.Description_40;
				ref item :> implementationConstraint = Module_1.SupportedBy_8.ImplementationConstraint_40;
				ref item :> source = Module_1.Goal_7;
				ref item :> target = Module_1.Solution_3;
				item LangString_133 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_40 : Description :> description {
					ref item :> content = Module_1.SupportedBy_8.Description_40.MultiLangString_79;
					item MultiLangString_79 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_8.Description_40.MultiLangString_79.ExpressionLangString_25;
						item ExpressionLangString_25 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_40 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_8.ImplementationConstraint_40.MultiLangString_80;
					item MultiLangString_80 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_8.ImplementationConstraint_40.MultiLangString_80.LangString_134, Module_1.SupportedBy_8.ImplementationConstraint_40.MultiLangString_80.LangString_135);
						item LangString_134 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_135 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_9 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_9.LangString_136;
				ref item :> description = Module_1.SupportedBy_9.Description_41;
				ref item :> implementationConstraint = Module_1.SupportedBy_9.ImplementationConstraint_41;
				ref item :> source = Module_1.Strategy_1;
				ref item :> target = Module_1.Goal_5;
				item LangString_136 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_41 : Description :> description {
					ref item :> content = Module_1.SupportedBy_9.Description_41.MultiLangString_81;
					item MultiLangString_81 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_9.Description_41.MultiLangString_81.ExpressionLangString_26;
						item ExpressionLangString_26 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_41 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_9.ImplementationConstraint_41.MultiLangString_82;
					item MultiLangString_82 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_9.ImplementationConstraint_41.MultiLangString_82.LangString_137, Module_1.SupportedBy_9.ImplementationConstraint_41.MultiLangString_82.LangString_138);
						item LangString_137 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_138 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_10 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_10.LangString_139;
				ref item :> description = Module_1.SupportedBy_10.Description_42;
				ref item :> implementationConstraint = Module_1.SupportedBy_10.ImplementationConstraint_42;
				ref item :> source = Module_1.Strategy_1;
				ref item :> target = Module_1.Goal_6;
				item LangString_139 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_42 : Description :> description {
					ref item :> content = Module_1.SupportedBy_10.Description_42.MultiLangString_83;
					item MultiLangString_83 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_10.Description_42.MultiLangString_83.ExpressionLangString_27;
						item ExpressionLangString_27 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_42 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_10.ImplementationConstraint_42.MultiLangString_84;
					item MultiLangString_84 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_10.ImplementationConstraint_42.MultiLangString_84.LangString_140, Module_1.SupportedBy_10.ImplementationConstraint_42.MultiLangString_84.LangString_141);
						item LangString_140 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_141 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_11 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_11.LangString_142;
				ref item :> description = Module_1.SupportedBy_11.Description_43;
				ref item :> implementationConstraint = Module_1.SupportedBy_11.ImplementationConstraint_43;
				ref item :> source = Module_1.Strategy_1;
				ref item :> target = Module_1.Goal_4;
				item LangString_142 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_43 : Description :> description {
					ref item :> content = Module_1.SupportedBy_11.Description_43.MultiLangString_85;
					item MultiLangString_85 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_11.Description_43.MultiLangString_85.ExpressionLangString_28;
						item ExpressionLangString_28 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_43 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_11.ImplementationConstraint_43.MultiLangString_86;
					item MultiLangString_86 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_11.ImplementationConstraint_43.MultiLangString_86.LangString_143, Module_1.SupportedBy_11.ImplementationConstraint_43.MultiLangString_86.LangString_144);
						item LangString_143 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_144 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_12 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_12.LangString_145;
				ref item :> description = Module_1.SupportedBy_12.Description_44;
				ref item :> implementationConstraint = Module_1.SupportedBy_12.ImplementationConstraint_44;
				ref item :> source = Module_1.Goal_4;
				ref item :> target = Module_1.Solution_1;
				item LangString_145 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_44 : Description :> description {
					ref item :> content = Module_1.SupportedBy_12.Description_44.MultiLangString_87;
					item MultiLangString_87 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_12.Description_44.MultiLangString_87.ExpressionLangString_29;
						item ExpressionLangString_29 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_44 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_12.ImplementationConstraint_44.MultiLangString_88;
					item MultiLangString_88 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_12.ImplementationConstraint_44.MultiLangString_88.LangString_146, Module_1.SupportedBy_12.ImplementationConstraint_44.MultiLangString_88.LangString_147);
						item LangString_146 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_147 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_13 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_13.LangString_148;
				ref item :> description = Module_1.SupportedBy_13.Description_45;
				ref item :> implementationConstraint = Module_1.SupportedBy_13.ImplementationConstraint_45;
				ref item :> source = Module_1.Goal_5;
				ref item :> target = Module_1.Solution_2;
				item LangString_148 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_45 : Description :> description {
					ref item :> content = Module_1.SupportedBy_13.Description_45.MultiLangString_89;
					item MultiLangString_89 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_13.Description_45.MultiLangString_89.ExpressionLangString_30;
						item ExpressionLangString_30 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_45 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_13.ImplementationConstraint_45.MultiLangString_90;
					item MultiLangString_90 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_13.ImplementationConstraint_45.MultiLangString_90.LangString_149, Module_1.SupportedBy_13.ImplementationConstraint_45.MultiLangString_90.LangString_150);
						item LangString_149 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_150 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			item SupportedBy_14 : SupportedBy :> argumentationElement {
				attribute :>> assertionDeclaration = 'asserted';
				attribute :>> requies = 0;
				ref item :> name = Module_1.SupportedBy_14.LangString_151;
				ref item :> description = Module_1.SupportedBy_14.Description_46;
				ref item :> implementationConstraint = Module_1.SupportedBy_14.ImplementationConstraint_46;
				ref item :> source = Module_1.Goal_6;
				ref item :> target = Module_1.Solution_2;
				item LangString_151 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				item Description_46 : Description :> description {
					ref item :> content = Module_1.SupportedBy_14.Description_46.MultiLangString_91;
					item MultiLangString_91 : MultiLangString :> content {
						ref item :> value = Module_1.SupportedBy_14.Description_46.MultiLangString_91.ExpressionLangString_31;
						item ExpressionLangString_31 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				item ImplementationConstraint_46 : ImplementationConstraint :> implementationConstraint {
					ref item :> content = Module_1.SupportedBy_14.ImplementationConstraint_46.MultiLangString_92;
					item MultiLangString_92 : MultiLangString :> content {
						ref item :> value = (Module_1.SupportedBy_14.ImplementationConstraint_46.MultiLangString_92.LangString_152, Module_1.SupportedBy_14.ImplementationConstraint_46.MultiLangString_92.LangString_153);
						item LangString_152 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						item LangString_153 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
		}
	}
}

