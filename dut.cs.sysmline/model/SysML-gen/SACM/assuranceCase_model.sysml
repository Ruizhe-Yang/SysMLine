package assuranceCase_model {
	public import assuranceCase::*;
	public import base::*;
	public import artifact::*;
	public import argumentation::*;
	public import terminology::*;
	public import gsn::*;
	part AssuranceCasePackage_1 : AssuranceCasePackage {
		ref part :> argumentPackage = Module_1;
		part Module_1 : Module :> argumentPackage {
			ref part :> name = Module_1.LangString_1;
			ref part :> description = Module_1.Description_1;
			ref part :> implementationConstraint = Module_1.ImplementationConstraint_1;
			ref part :> argumentationElement = (Module_1.Goal_1, Module_1.Context_1, Module_1.Justification_1, Module_1.Assumption_1, Module_1.Strategy_1, Module_1.Solution_1, Module_1.Goal_2, Module_1.Goal_3, Module_1.Context_2, Module_1.Strategy_2, Module_1.Solution_2, Module_1.Solution_3, Module_1.Solution_4, Module_1.Context_3, Module_1.Context_4, Module_1.Context_5, Module_1.Goal_4, Module_1.Goal_5, Module_1.Goal_6, Module_1.Goal_7, Module_1.Goal_8, Module_1.InContextOf_1, Module_1.InContextOf_2, Module_1.InContextOf_3, Module_1.InContextOf_4, Module_1.InContextOf_5, Module_1.InContextOf_6, Module_1.InContextOf_7, Module_1.InContextOf_8, Module_1.Context_6, Module_1.InContextOf_9, Module_1.SupportedBy_1, Module_1.SupportedBy_2, Module_1.SupportedBy_3, Module_1.SupportedBy_4, Module_1.SupportedBy_5, Module_1.SupportedBy_6, Module_1.SupportedBy_7, Module_1.SupportedBy_8, Module_1.SupportedBy_9, Module_1.SupportedBy_10, Module_1.SupportedBy_11, Module_1.SupportedBy_12, Module_1.SupportedBy_13, Module_1.SupportedBy_14);
			part LangString_1 : LangString :> name {
				attribute :>> lang = "lang";
				attribute :>> content = "name";
			}
			part Description_1 : Description :> description {
				ref part :> content = Module_1.Description_1.MultiLangString_1;
				part MultiLangString_1 : MultiLangString :> content {
					ref part :> 'value' = Module_1.Description_1.MultiLangString_1.LangString_2;
					part LangString_2 : LangString :> value {
						attribute :>> lang = "language";
						attribute :>> content = "Description";
					}
				}
			}
			part ImplementationConstraint_1 : ImplementationConstraint :> implementationConstraint {
				ref part :> content = Module_1.ImplementationConstraint_1.MultiLangString_2;
				part MultiLangString_2 : MultiLangString :> content {
					ref part :> 'value' = (Module_1.ImplementationConstraint_1.MultiLangString_2.LangString_3, Module_1.ImplementationConstraint_1.MultiLangString_2.LangString_4);
					part LangString_3 : LangString :> value {
						attribute :>> lang = "language";
						attribute :>> content = "null";
					}
					part LangString_4 : LangString :> value {
						attribute :>> lang = "language";
						attribute :>> content = "null";
					}
				}
			}
			part Goal_1 : Goal :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Goal_1.LangString_5;
				ref part :> description = Module_1.Goal_1.Description_2;
				ref part :> implementationConstraint = Module_1.Goal_1.ImplementationConstraint_2;
				part LangString_5 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G1";
				}
				part Description_2 : Description :> description {
					ref part :> content = Module_1.Goal_1.Description_2.MultiLangString_3;
					part MultiLangString_3 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Goal_1.Description_2.MultiLangString_3.ExpressionLangString_1;
						part ExpressionLangString_1 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Control System is acceptably safe to operate";
						}
					}
				}
				part ImplementationConstraint_2 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Goal_1.ImplementationConstraint_2.MultiLangString_4;
					part MultiLangString_4 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Goal_1.ImplementationConstraint_2.MultiLangString_4.LangString_6, Module_1.Goal_1.ImplementationConstraint_2.MultiLangString_4.LangString_7);
						part LangString_6 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_7 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Context_1 : Context :> argumentationElement {
				ref part :> name = Module_1.Context_1.LangString_8;
				ref part :> description = Module_1.Context_1.Description_3;
				ref part :> implementationConstraint = Module_1.Context_1.ImplementationConstraint_3;
				part LangString_8 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C2";
				}
				part Description_3 : Description :> description {
					ref part :> content = Module_1.Context_1.Description_3.MultiLangString_5;
					part MultiLangString_5 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Context_1.Description_3.MultiLangString_5.LangString_9;
						part LangString_9 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Control System Definition";
						}
					}
				}
				part ImplementationConstraint_3 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Context_1.ImplementationConstraint_3.MultiLangString_6;
					part MultiLangString_6 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Context_1.ImplementationConstraint_3.MultiLangString_6.LangString_10, Module_1.Context_1.ImplementationConstraint_3.MultiLangString_6.LangString_11);
						part LangString_10 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_11 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Justification_1 : Justification :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Justification_1.LangString_12;
				ref part :> description = Module_1.Justification_1.Description_4;
				ref part :> implementationConstraint = Module_1.Justification_1.ImplementationConstraint_4;
				part LangString_12 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "J1";
				}
				part Description_4 : Description :> description {
					ref part :> content = Module_1.Justification_1.Description_4.MultiLangString_7;
					part MultiLangString_7 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Justification_1.Description_4.MultiLangString_7.LangString_13;
						part LangString_13 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "SIL apportionment is correct and complete	";
						}
					}
				}
				part ImplementationConstraint_4 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Justification_1.ImplementationConstraint_4.MultiLangString_8;
					part MultiLangString_8 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Justification_1.ImplementationConstraint_4.MultiLangString_8.LangString_14, Module_1.Justification_1.ImplementationConstraint_4.MultiLangString_8.LangString_15);
						part LangString_14 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_15 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Assumption_1 : Assumption :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Assumption_1.LangString_16;
				ref part :> description = Module_1.Assumption_1.Description_5;
				ref part :> implementationConstraint = Module_1.Assumption_1.ImplementationConstraint_5;
				part LangString_16 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "A1";
				}
				part Description_5 : Description :> description {
					ref part :> content = Module_1.Assumption_1.Description_5.MultiLangString_9;
					part MultiLangString_9 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Assumption_1.Description_5.MultiLangString_9.LangString_17;
						part LangString_17 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "All hazards have been identified";
						}
					}
				}
				part ImplementationConstraint_5 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Assumption_1.ImplementationConstraint_5.MultiLangString_10;
					part MultiLangString_10 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Assumption_1.ImplementationConstraint_5.MultiLangString_10.LangString_18, Module_1.Assumption_1.ImplementationConstraint_5.MultiLangString_10.LangString_19);
						part LangString_18 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_19 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Strategy_1 : Strategy :> argumentationElement {
				ref part :> name = Module_1.Strategy_1.LangString_20;
				ref part :> description = Module_1.Strategy_1.Description_6;
				ref part :> implementationConstraint = Module_1.Strategy_1.ImplementationConstraint_6;
				part LangString_20 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "S1";
				}
				part Description_6 : Description :> description {
					ref part :> content = Module_1.Strategy_1.Description_6.MultiLangString_11;
					part MultiLangString_11 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Strategy_1.Description_6.MultiLangString_11.LangString_21;
						part LangString_21 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Argument over each identified hazard";
						}
					}
				}
				part ImplementationConstraint_6 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Strategy_1.ImplementationConstraint_6.MultiLangString_12;
					part MultiLangString_12 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Strategy_1.ImplementationConstraint_6.MultiLangString_12.LangString_22, Module_1.Strategy_1.ImplementationConstraint_6.MultiLangString_12.LangString_23);
						part LangString_22 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_23 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Solution_1 : Solution :> argumentationElement {
				ref part :> name = Module_1.Solution_1.LangString_24;
				ref part :> description = Module_1.Solution_1.Description_7;
				ref part :> implementationConstraint = Module_1.Solution_1.ImplementationConstraint_7;
				part LangString_24 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "Sn1";
				}
				part Description_7 : Description :> description {
					ref part :> content = Module_1.Solution_1.Description_7.MultiLangString_13;
					part MultiLangString_13 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Solution_1.Description_7.MultiLangString_13.LangString_25;
						part LangString_25 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Formal Verification";
						}
					}
				}
				part ImplementationConstraint_7 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Solution_1.ImplementationConstraint_7.MultiLangString_14;
					part MultiLangString_14 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Solution_1.ImplementationConstraint_7.MultiLangString_14.LangString_26, Module_1.Solution_1.ImplementationConstraint_7.MultiLangString_14.LangString_27);
						part LangString_26 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_27 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Goal_2 : Goal :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Goal_2.LangString_28;
				ref part :> description = Module_1.Goal_2.Description_8;
				ref part :> implementationConstraint = Module_1.Goal_2.ImplementationConstraint_8;
				part LangString_28 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G2";
				}
				part Description_8 : Description :> description {
					ref part :> content = Module_1.Goal_2.Description_8.MultiLangString_15;
					part MultiLangString_15 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Goal_2.Description_8.MultiLangString_15.ExpressionLangString_2;
						part ExpressionLangString_2 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "All identified hazards have been eliminated or sufficiently mitigated";
						}
					}
				}
				part ImplementationConstraint_8 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Goal_2.ImplementationConstraint_8.MultiLangString_16;
					part MultiLangString_16 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Goal_2.ImplementationConstraint_8.MultiLangString_16.LangString_29, Module_1.Goal_2.ImplementationConstraint_8.MultiLangString_16.LangString_30);
						part LangString_29 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_30 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Goal_3 : Goal :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Goal_3.LangString_31;
				ref part :> description = Module_1.Goal_3.Description_9;
				ref part :> implementationConstraint = Module_1.Goal_3.ImplementationConstraint_9;
				part LangString_31 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C3";
				}
				part Description_9 : Description :> description {
					ref part :> content = Module_1.Goal_3.Description_9.MultiLangString_17;
					part MultiLangString_17 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Goal_3.Description_9.MultiLangString_17.ExpressionLangString_3;
						part ExpressionLangString_3 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Software in the Control System has been developed to SIL appropriate to hazards involved";
						}
					}
				}
				part ImplementationConstraint_9 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Goal_3.ImplementationConstraint_9.MultiLangString_18;
					part MultiLangString_18 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Goal_3.ImplementationConstraint_9.MultiLangString_18.LangString_32, Module_1.Goal_3.ImplementationConstraint_9.MultiLangString_18.LangString_33);
						part LangString_32 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_33 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Context_2 : Context :> argumentationElement {
				ref part :> name = Module_1.Context_2.LangString_34;
				ref part :> description = Module_1.Context_2.Description_10;
				ref part :> implementationConstraint = Module_1.Context_2.ImplementationConstraint_10;
				part LangString_34 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C1";
				}
				part Description_10 : Description :> description {
					ref part :> content = Module_1.Context_2.Description_10.MultiLangString_19;
					part MultiLangString_19 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Context_2.Description_10.MultiLangString_19.LangString_35;
						part LangString_35 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Operating Role and Context";
						}
					}
				}
				part ImplementationConstraint_10 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Context_2.ImplementationConstraint_10.MultiLangString_20;
					part MultiLangString_20 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Context_2.ImplementationConstraint_10.MultiLangString_20.LangString_36, Module_1.Context_2.ImplementationConstraint_10.MultiLangString_20.LangString_37);
						part LangString_36 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_37 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Strategy_2 : Strategy :> argumentationElement {
				ref part :> name = Module_1.Strategy_2.LangString_38;
				ref part :> description = Module_1.Strategy_2.Description_11;
				ref part :> implementationConstraint = Module_1.Strategy_2.ImplementationConstraint_11;
				part LangString_38 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "S2";
				}
				part Description_11 : Description :> description {
					ref part :> content = Module_1.Strategy_2.Description_11.MultiLangString_21;
					part MultiLangString_21 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Strategy_2.Description_11.MultiLangString_21.LangString_39;
						part LangString_39 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Argument over allocated SIL for Primart and Secondary elements";
						}
					}
				}
				part ImplementationConstraint_11 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Strategy_2.ImplementationConstraint_11.MultiLangString_22;
					part MultiLangString_22 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Strategy_2.ImplementationConstraint_11.MultiLangString_22.LangString_40, Module_1.Strategy_2.ImplementationConstraint_11.MultiLangString_22.LangString_41);
						part LangString_40 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_41 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Solution_2 : Solution :> argumentationElement {
				ref part :> name = Module_1.Solution_2.LangString_42;
				ref part :> description = Module_1.Solution_2.Description_12;
				ref part :> implementationConstraint = Module_1.Solution_2.ImplementationConstraint_12;
				part LangString_42 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "Sn2";
				}
				part Description_12 : Description :> description {
					ref part :> content = Module_1.Solution_2.Description_12.MultiLangString_23;
					part MultiLangString_23 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Solution_2.Description_12.MultiLangString_23.LangString_43;
						part LangString_43 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Fault Tree Analysis";
						}
					}
				}
				part ImplementationConstraint_12 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Solution_2.ImplementationConstraint_12.MultiLangString_24;
					part MultiLangString_24 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Solution_2.ImplementationConstraint_12.MultiLangString_24.LangString_44, Module_1.Solution_2.ImplementationConstraint_12.MultiLangString_24.LangString_45);
						part LangString_44 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_45 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Solution_3 : Solution :> argumentationElement {
				ref part :> name = Module_1.Solution_3.LangString_46;
				ref part :> description = Module_1.Solution_3.Description_13;
				ref part :> implementationConstraint = Module_1.Solution_3.ImplementationConstraint_13;
				part LangString_46 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "Sn3";
				}
				part Description_13 : Description :> description {
					ref part :> content = Module_1.Solution_3.Description_13.MultiLangString_25;
					part MultiLangString_25 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Solution_3.Description_13.MultiLangString_25.LangString_47;
						part LangString_47 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Process Evidence for SIL4";
						}
					}
				}
				part ImplementationConstraint_13 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Solution_3.ImplementationConstraint_13.MultiLangString_26;
					part MultiLangString_26 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Solution_3.ImplementationConstraint_13.MultiLangString_26.LangString_48, Module_1.Solution_3.ImplementationConstraint_13.MultiLangString_26.LangString_49);
						part LangString_48 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_49 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Solution_4 : Solution :> argumentationElement {
				ref part :> name = Module_1.Solution_4.LangString_50;
				ref part :> description = Module_1.Solution_4.Description_14;
				ref part :> implementationConstraint = Module_1.Solution_4.ImplementationConstraint_14;
				part LangString_50 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "Sn4";
				}
				part Description_14 : Description :> description {
					ref part :> content = Module_1.Solution_4.Description_14.MultiLangString_27;
					part MultiLangString_27 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Solution_4.Description_14.MultiLangString_27.LangString_51;
						part LangString_51 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Process Evidence for SIL2";
						}
					}
				}
				part ImplementationConstraint_14 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Solution_4.ImplementationConstraint_14.MultiLangString_28;
					part MultiLangString_28 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Solution_4.ImplementationConstraint_14.MultiLangString_28.LangString_52, Module_1.Solution_4.ImplementationConstraint_14.MultiLangString_28.LangString_53);
						part LangString_52 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_53 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Context_3 : Context :> argumentationElement {
				ref part :> name = Module_1.Context_3.LangString_54;
				ref part :> description = Module_1.Context_3.Description_15;
				ref part :> implementationConstraint = Module_1.Context_3.ImplementationConstraint_15;
				part LangString_54 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C4";
				}
				part Description_15 : Description :> description {
					ref part :> content = Module_1.Context_3.Description_15.MultiLangString_29;
					part MultiLangString_29 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Context_3.Description_15.MultiLangString_29.LangString_55;
						part LangString_55 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Hazards identified from FHA (Ref Y)";
						}
					}
				}
				part ImplementationConstraint_15 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Context_3.ImplementationConstraint_15.MultiLangString_30;
					part MultiLangString_30 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Context_3.ImplementationConstraint_15.MultiLangString_30.LangString_56, Module_1.Context_3.ImplementationConstraint_15.MultiLangString_30.LangString_57);
						part LangString_56 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_57 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Context_4 : Context :> argumentationElement {
				ref part :> name = Module_1.Context_4.LangString_58;
				ref part :> description = Module_1.Context_4.Description_16;
				ref part :> implementationConstraint = Module_1.Context_4.ImplementationConstraint_16;
				part LangString_58 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C5";
				}
				part Description_16 : Description :> description {
					ref part :> content = Module_1.Context_4.Description_16.MultiLangString_31;
					part MultiLangString_31 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Context_4.Description_16.MultiLangString_31.LangString_59;
						part LangString_59 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "SIL Guidelines and Processes";
						}
					}
				}
				part ImplementationConstraint_16 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Context_4.ImplementationConstraint_16.MultiLangString_32;
					part MultiLangString_32 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Context_4.ImplementationConstraint_16.MultiLangString_32.LangString_60, Module_1.Context_4.ImplementationConstraint_16.MultiLangString_32.LangString_61);
						part LangString_60 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_61 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Context_5 : Context :> argumentationElement {
				ref part :> name = Module_1.Context_5.LangString_62;
				ref part :> description = Module_1.Context_5.Description_17;
				ref part :> implementationConstraint = Module_1.Context_5.ImplementationConstraint_17;
				part LangString_62 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C3";
				}
				part Description_17 : Description :> description {
					ref part :> content = Module_1.Context_5.Description_17.MultiLangString_33;
					part MultiLangString_33 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Context_5.Description_17.MultiLangString_33.LangString_63;
						part LangString_63 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Tolerability targets (Ref Z)";
						}
					}
				}
				part ImplementationConstraint_17 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Context_5.ImplementationConstraint_17.MultiLangString_34;
					part MultiLangString_34 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Context_5.ImplementationConstraint_17.MultiLangString_34.LangString_64, Module_1.Context_5.ImplementationConstraint_17.MultiLangString_34.LangString_65);
						part LangString_64 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_65 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Goal_4 : Goal :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Goal_4.LangString_66;
				ref part :> description = Module_1.Goal_4.Description_18;
				ref part :> implementationConstraint = Module_1.Goal_4.ImplementationConstraint_18;
				part LangString_66 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G4";
				}
				part Description_18 : Description :> description {
					ref part :> content = Module_1.Goal_4.Description_18.MultiLangString_35;
					part MultiLangString_35 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Goal_4.Description_18.MultiLangString_35.ExpressionLangString_4;
						part ExpressionLangString_4 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Hazard H1 has been eliminated";
						}
					}
				}
				part ImplementationConstraint_18 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Goal_4.ImplementationConstraint_18.MultiLangString_36;
					part MultiLangString_36 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Goal_4.ImplementationConstraint_18.MultiLangString_36.LangString_67, Module_1.Goal_4.ImplementationConstraint_18.MultiLangString_36.LangString_68);
						part LangString_67 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_68 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Goal_5 : Goal :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Goal_5.LangString_69;
				ref part :> description = Module_1.Goal_5.Description_19;
				ref part :> implementationConstraint = Module_1.Goal_5.ImplementationConstraint_19;
				part LangString_69 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G5";
				}
				part Description_19 : Description :> description {
					ref part :> content = Module_1.Goal_5.Description_19.MultiLangString_37;
					part MultiLangString_37 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Goal_5.Description_19.MultiLangString_37.ExpressionLangString_5;
						part ExpressionLangString_5 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Probability of Hazard H2 occuring < 1x10-6 per year";
						}
					}
				}
				part ImplementationConstraint_19 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Goal_5.ImplementationConstraint_19.MultiLangString_38;
					part MultiLangString_38 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Goal_5.ImplementationConstraint_19.MultiLangString_38.LangString_70, Module_1.Goal_5.ImplementationConstraint_19.MultiLangString_38.LangString_71);
						part LangString_70 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_71 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Goal_6 : Goal :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Goal_6.LangString_72;
				ref part :> description = Module_1.Goal_6.Description_20;
				ref part :> implementationConstraint = Module_1.Goal_6.ImplementationConstraint_20;
				part LangString_72 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G6";
				}
				part Description_20 : Description :> description {
					ref part :> content = Module_1.Goal_6.Description_20.MultiLangString_39;
					part MultiLangString_39 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Goal_6.Description_20.MultiLangString_39.ExpressionLangString_6;
						part ExpressionLangString_6 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Probability of Hazard H3 occuring < 1x10-3 per year";
						}
					}
				}
				part ImplementationConstraint_20 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Goal_6.ImplementationConstraint_20.MultiLangString_40;
					part MultiLangString_40 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Goal_6.ImplementationConstraint_20.MultiLangString_40.LangString_73, Module_1.Goal_6.ImplementationConstraint_20.MultiLangString_40.LangString_74);
						part LangString_73 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_74 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Goal_7 : Goal :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Goal_7.LangString_75;
				ref part :> description = Module_1.Goal_7.Description_21;
				ref part :> implementationConstraint = Module_1.Goal_7.ImplementationConstraint_21;
				part LangString_75 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G7";
				}
				part Description_21 : Description :> description {
					ref part :> content = Module_1.Goal_7.Description_21.MultiLangString_41;
					part MultiLangString_41 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Goal_7.Description_21.MultiLangString_41.ExpressionLangString_7;
						part ExpressionLangString_7 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Primary Protection System Developed to SIL 4";
						}
					}
				}
				part ImplementationConstraint_21 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Goal_7.ImplementationConstraint_21.MultiLangString_42;
					part MultiLangString_42 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Goal_7.ImplementationConstraint_21.MultiLangString_42.LangString_76, Module_1.Goal_7.ImplementationConstraint_21.MultiLangString_42.LangString_77);
						part LangString_76 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_77 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Goal_8 : Goal :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				ref part :> name = Module_1.Goal_8.LangString_78;
				ref part :> description = Module_1.Goal_8.Description_22;
				ref part :> implementationConstraint = Module_1.Goal_8.ImplementationConstraint_22;
				part LangString_78 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "G8";
				}
				part Description_22 : Description :> description {
					ref part :> content = Module_1.Goal_8.Description_22.MultiLangString_43;
					part MultiLangString_43 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Goal_8.Description_22.MultiLangString_43.ExpressionLangString_8;
						part ExpressionLangString_8 : ExpressionLangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Secondary Protection System Development to SIL2";
						}
					}
				}
				part ImplementationConstraint_22 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Goal_8.ImplementationConstraint_22.MultiLangString_44;
					part MultiLangString_44 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Goal_8.ImplementationConstraint_22.MultiLangString_44.LangString_79, Module_1.Goal_8.ImplementationConstraint_22.MultiLangString_44.LangString_80);
						part LangString_79 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_80 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part InContextOf_1 : InContextOf :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.InContextOf_1.LangString_81;
				ref part :> description = Module_1.InContextOf_1.Description_23;
				ref part :> implementationConstraint = Module_1.InContextOf_1.ImplementationConstraint_23;
				ref part :> source = Module_1.Goal_1;
				ref part :> target = Module_1.Context_1;
				part LangString_81 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_23 : Description :> description {
					ref part :> content = Module_1.InContextOf_1.Description_23.MultiLangString_45;
					part MultiLangString_45 : MultiLangString :> content {
						ref part :> 'value' = Module_1.InContextOf_1.Description_23.MultiLangString_45.ExpressionLangString_9;
						part ExpressionLangString_9 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_23 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.InContextOf_1.ImplementationConstraint_23.MultiLangString_46;
					part MultiLangString_46 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.InContextOf_1.ImplementationConstraint_23.MultiLangString_46.LangString_82, Module_1.InContextOf_1.ImplementationConstraint_23.MultiLangString_46.LangString_83);
						part LangString_82 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_83 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part InContextOf_2 : InContextOf :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.InContextOf_2.LangString_84;
				ref part :> description = Module_1.InContextOf_2.Description_24;
				ref part :> implementationConstraint = Module_1.InContextOf_2.ImplementationConstraint_24;
				ref part :> source = Module_1.Goal_1;
				ref part :> target = Module_1.Context_2;
				part LangString_84 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_24 : Description :> description {
					ref part :> content = Module_1.InContextOf_2.Description_24.MultiLangString_47;
					part MultiLangString_47 : MultiLangString :> content {
						ref part :> 'value' = Module_1.InContextOf_2.Description_24.MultiLangString_47.ExpressionLangString_10;
						part ExpressionLangString_10 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_24 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.InContextOf_2.ImplementationConstraint_24.MultiLangString_48;
					part MultiLangString_48 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.InContextOf_2.ImplementationConstraint_24.MultiLangString_48.LangString_85, Module_1.InContextOf_2.ImplementationConstraint_24.MultiLangString_48.LangString_86);
						part LangString_85 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_86 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part InContextOf_3 : InContextOf :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.InContextOf_3.LangString_87;
				ref part :> description = Module_1.InContextOf_3.Description_25;
				ref part :> implementationConstraint = Module_1.InContextOf_3.ImplementationConstraint_25;
				ref part :> source = Module_1.Goal_3;
				ref part :> target = Module_1.Context_3;
				part LangString_87 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_25 : Description :> description {
					ref part :> content = Module_1.InContextOf_3.Description_25.MultiLangString_49;
					part MultiLangString_49 : MultiLangString :> content {
						ref part :> 'value' = Module_1.InContextOf_3.Description_25.MultiLangString_49.ExpressionLangString_11;
						part ExpressionLangString_11 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_25 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.InContextOf_3.ImplementationConstraint_25.MultiLangString_50;
					part MultiLangString_50 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.InContextOf_3.ImplementationConstraint_25.MultiLangString_50.LangString_88, Module_1.InContextOf_3.ImplementationConstraint_25.MultiLangString_50.LangString_89);
						part LangString_88 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_89 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part InContextOf_4 : InContextOf :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.InContextOf_4.LangString_90;
				ref part :> description = Module_1.InContextOf_4.Description_26;
				ref part :> implementationConstraint = Module_1.InContextOf_4.ImplementationConstraint_26;
				ref part :> source = Module_1.Goal_3;
				ref part :> target = Module_1.Context_4;
				part LangString_90 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_26 : Description :> description {
					ref part :> content = Module_1.InContextOf_4.Description_26.MultiLangString_51;
					part MultiLangString_51 : MultiLangString :> content {
						ref part :> 'value' = Module_1.InContextOf_4.Description_26.MultiLangString_51.ExpressionLangString_12;
						part ExpressionLangString_12 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_26 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.InContextOf_4.ImplementationConstraint_26.MultiLangString_52;
					part MultiLangString_52 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.InContextOf_4.ImplementationConstraint_26.MultiLangString_52.LangString_91, Module_1.InContextOf_4.ImplementationConstraint_26.MultiLangString_52.LangString_92);
						part LangString_91 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_92 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part InContextOf_5 : InContextOf :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.InContextOf_5.LangString_93;
				ref part :> description = Module_1.InContextOf_5.Description_27;
				ref part :> implementationConstraint = Module_1.InContextOf_5.ImplementationConstraint_27;
				ref part :> source = Module_1.Goal_2;
				ref part :> target = Module_1.Context_3;
				part LangString_93 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_27 : Description :> description {
					ref part :> content = Module_1.InContextOf_5.Description_27.MultiLangString_53;
					part MultiLangString_53 : MultiLangString :> content {
						ref part :> 'value' = Module_1.InContextOf_5.Description_27.MultiLangString_53.ExpressionLangString_13;
						part ExpressionLangString_13 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_27 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.InContextOf_5.ImplementationConstraint_27.MultiLangString_54;
					part MultiLangString_54 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.InContextOf_5.ImplementationConstraint_27.MultiLangString_54.LangString_94, Module_1.InContextOf_5.ImplementationConstraint_27.MultiLangString_54.LangString_95);
						part LangString_94 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_95 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part InContextOf_6 : InContextOf :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.InContextOf_6.LangString_96;
				ref part :> description = Module_1.InContextOf_6.Description_28;
				ref part :> implementationConstraint = Module_1.InContextOf_6.ImplementationConstraint_28;
				ref part :> source = Module_1.Goal_2;
				ref part :> target = Module_1.Context_5;
				part LangString_96 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_28 : Description :> description {
					ref part :> content = Module_1.InContextOf_6.Description_28.MultiLangString_55;
					part MultiLangString_55 : MultiLangString :> content {
						ref part :> 'value' = Module_1.InContextOf_6.Description_28.MultiLangString_55.ExpressionLangString_14;
						part ExpressionLangString_14 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_28 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.InContextOf_6.ImplementationConstraint_28.MultiLangString_56;
					part MultiLangString_56 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.InContextOf_6.ImplementationConstraint_28.MultiLangString_56.LangString_97, Module_1.InContextOf_6.ImplementationConstraint_28.MultiLangString_56.LangString_98);
						part LangString_97 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_98 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part InContextOf_7 : InContextOf :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.InContextOf_7.LangString_99;
				ref part :> description = Module_1.InContextOf_7.Description_29;
				ref part :> implementationConstraint = Module_1.InContextOf_7.ImplementationConstraint_29;
				ref part :> source = Module_1.Strategy_1;
				ref part :> target = Module_1.Assumption_1;
				part LangString_99 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_29 : Description :> description {
					ref part :> content = Module_1.InContextOf_7.Description_29.MultiLangString_57;
					part MultiLangString_57 : MultiLangString :> content {
						ref part :> 'value' = Module_1.InContextOf_7.Description_29.MultiLangString_57.ExpressionLangString_15;
						part ExpressionLangString_15 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_29 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.InContextOf_7.ImplementationConstraint_29.MultiLangString_58;
					part MultiLangString_58 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.InContextOf_7.ImplementationConstraint_29.MultiLangString_58.LangString_100, Module_1.InContextOf_7.ImplementationConstraint_29.MultiLangString_58.LangString_101);
						part LangString_100 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_101 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part InContextOf_8 : InContextOf :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.InContextOf_8.LangString_102;
				ref part :> description = Module_1.InContextOf_8.Description_30;
				ref part :> implementationConstraint = Module_1.InContextOf_8.ImplementationConstraint_30;
				ref part :> source = Module_1.Strategy_2;
				ref part :> target = Module_1.Justification_1;
				part LangString_102 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_30 : Description :> description {
					ref part :> content = Module_1.InContextOf_8.Description_30.MultiLangString_59;
					part MultiLangString_59 : MultiLangString :> content {
						ref part :> 'value' = Module_1.InContextOf_8.Description_30.MultiLangString_59.ExpressionLangString_16;
						part ExpressionLangString_16 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_30 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.InContextOf_8.ImplementationConstraint_30.MultiLangString_60;
					part MultiLangString_60 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.InContextOf_8.ImplementationConstraint_30.MultiLangString_60.LangString_103, Module_1.InContextOf_8.ImplementationConstraint_30.MultiLangString_60.LangString_104);
						part LangString_103 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_104 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part Context_6 : Context :> argumentationElement {
				ref part :> name = Module_1.Context_6.LangString_105;
				ref part :> description = Module_1.Context_6.Description_31;
				ref part :> implementationConstraint = Module_1.Context_6.ImplementationConstraint_31;
				part LangString_105 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "C6";
				}
				part Description_31 : Description :> description {
					ref part :> content = Module_1.Context_6.Description_31.MultiLangString_61;
					part MultiLangString_61 : MultiLangString :> content {
						ref part :> 'value' = Module_1.Context_6.Description_31.MultiLangString_61.LangString_106;
						part LangString_106 : LangString :> value {
							attribute :>> lang = "English";
							attribute :>> content = "Identified software hazards";
						}
					}
				}
				part ImplementationConstraint_31 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.Context_6.ImplementationConstraint_31.MultiLangString_62;
					part MultiLangString_62 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.Context_6.ImplementationConstraint_31.MultiLangString_62.LangString_107, Module_1.Context_6.ImplementationConstraint_31.MultiLangString_62.LangString_108);
						part LangString_107 : LangString :> value {
							attribute :>> lang = "language";
						}
						part LangString_108 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part InContextOf_9 : InContextOf :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.InContextOf_9.LangString_109;
				ref part :> description = Module_1.InContextOf_9.Description_32;
				ref part :> implementationConstraint = Module_1.InContextOf_9.ImplementationConstraint_32;
				ref part :> source = Module_1.Strategy_2;
				ref part :> target = Module_1.Context_6;
				part LangString_109 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_32 : Description :> description {
					ref part :> content = Module_1.InContextOf_9.Description_32.MultiLangString_63;
					part MultiLangString_63 : MultiLangString :> content {
						ref part :> 'value' = Module_1.InContextOf_9.Description_32.MultiLangString_63.ExpressionLangString_17;
						part ExpressionLangString_17 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_32 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.InContextOf_9.ImplementationConstraint_32.MultiLangString_64;
					part MultiLangString_64 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.InContextOf_9.ImplementationConstraint_32.MultiLangString_64.LangString_110, Module_1.InContextOf_9.ImplementationConstraint_32.MultiLangString_64.LangString_111);
						part LangString_110 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_111 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_1 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_1.LangString_112;
				ref part :> description = Module_1.SupportedBy_1.Description_33;
				ref part :> implementationConstraint = Module_1.SupportedBy_1.ImplementationConstraint_33;
				ref part :> source = Module_1.Goal_1;
				ref part :> target = Module_1.Goal_2;
				part LangString_112 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_33 : Description :> description {
					ref part :> content = Module_1.SupportedBy_1.Description_33.MultiLangString_65;
					part MultiLangString_65 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_1.Description_33.MultiLangString_65.ExpressionLangString_18;
						part ExpressionLangString_18 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_33 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_1.ImplementationConstraint_33.MultiLangString_66;
					part MultiLangString_66 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_1.ImplementationConstraint_33.MultiLangString_66.LangString_113, Module_1.SupportedBy_1.ImplementationConstraint_33.MultiLangString_66.LangString_114);
						part LangString_113 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_114 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_2 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_2.LangString_115;
				ref part :> description = Module_1.SupportedBy_2.Description_34;
				ref part :> implementationConstraint = Module_1.SupportedBy_2.ImplementationConstraint_34;
				ref part :> source = Module_1.Goal_1;
				ref part :> target = Module_1.Goal_3;
				part LangString_115 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_34 : Description :> description {
					ref part :> content = Module_1.SupportedBy_2.Description_34.MultiLangString_67;
					part MultiLangString_67 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_2.Description_34.MultiLangString_67.ExpressionLangString_19;
						part ExpressionLangString_19 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_34 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_2.ImplementationConstraint_34.MultiLangString_68;
					part MultiLangString_68 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_2.ImplementationConstraint_34.MultiLangString_68.LangString_116, Module_1.SupportedBy_2.ImplementationConstraint_34.MultiLangString_68.LangString_117);
						part LangString_116 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_117 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_3 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_3.LangString_118;
				ref part :> description = Module_1.SupportedBy_3.Description_35;
				ref part :> implementationConstraint = Module_1.SupportedBy_3.ImplementationConstraint_35;
				ref part :> source = Module_1.Goal_2;
				ref part :> target = Module_1.Strategy_1;
				part LangString_118 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_35 : Description :> description {
					ref part :> content = Module_1.SupportedBy_3.Description_35.MultiLangString_69;
					part MultiLangString_69 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_3.Description_35.MultiLangString_69.ExpressionLangString_20;
						part ExpressionLangString_20 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_35 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_3.ImplementationConstraint_35.MultiLangString_70;
					part MultiLangString_70 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_3.ImplementationConstraint_35.MultiLangString_70.LangString_119, Module_1.SupportedBy_3.ImplementationConstraint_35.MultiLangString_70.LangString_120);
						part LangString_119 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_120 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_4 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_4.LangString_121;
				ref part :> description = Module_1.SupportedBy_4.Description_36;
				ref part :> implementationConstraint = Module_1.SupportedBy_4.ImplementationConstraint_36;
				ref part :> source = Module_1.Goal_3;
				ref part :> target = Module_1.Strategy_2;
				part LangString_121 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_36 : Description :> description {
					ref part :> content = Module_1.SupportedBy_4.Description_36.MultiLangString_71;
					part MultiLangString_71 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_4.Description_36.MultiLangString_71.ExpressionLangString_21;
						part ExpressionLangString_21 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_36 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_4.ImplementationConstraint_36.MultiLangString_72;
					part MultiLangString_72 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_4.ImplementationConstraint_36.MultiLangString_72.LangString_122, Module_1.SupportedBy_4.ImplementationConstraint_36.MultiLangString_72.LangString_123);
						part LangString_122 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_123 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_5 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_5.LangString_124;
				ref part :> description = Module_1.SupportedBy_5.Description_37;
				ref part :> implementationConstraint = Module_1.SupportedBy_5.ImplementationConstraint_37;
				ref part :> source = Module_1.Strategy_2;
				ref part :> target = Module_1.Goal_7;
				part LangString_124 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_37 : Description :> description {
					ref part :> content = Module_1.SupportedBy_5.Description_37.MultiLangString_73;
					part MultiLangString_73 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_5.Description_37.MultiLangString_73.ExpressionLangString_22;
						part ExpressionLangString_22 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_37 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_5.ImplementationConstraint_37.MultiLangString_74;
					part MultiLangString_74 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_5.ImplementationConstraint_37.MultiLangString_74.LangString_125, Module_1.SupportedBy_5.ImplementationConstraint_37.MultiLangString_74.LangString_126);
						part LangString_125 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_126 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_6 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_6.LangString_127;
				ref part :> description = Module_1.SupportedBy_6.Description_38;
				ref part :> implementationConstraint = Module_1.SupportedBy_6.ImplementationConstraint_38;
				ref part :> source = Module_1.Strategy_2;
				ref part :> target = Module_1.Goal_8;
				part LangString_127 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_38 : Description :> description {
					ref part :> content = Module_1.SupportedBy_6.Description_38.MultiLangString_75;
					part MultiLangString_75 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_6.Description_38.MultiLangString_75.ExpressionLangString_23;
						part ExpressionLangString_23 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_38 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_6.ImplementationConstraint_38.MultiLangString_76;
					part MultiLangString_76 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_6.ImplementationConstraint_38.MultiLangString_76.LangString_128, Module_1.SupportedBy_6.ImplementationConstraint_38.MultiLangString_76.LangString_129);
						part LangString_128 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_129 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_7 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_7.LangString_130;
				ref part :> description = Module_1.SupportedBy_7.Description_39;
				ref part :> implementationConstraint = Module_1.SupportedBy_7.ImplementationConstraint_39;
				ref part :> source = Module_1.Goal_8;
				ref part :> target = Module_1.Solution_4;
				part LangString_130 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_39 : Description :> description {
					ref part :> content = Module_1.SupportedBy_7.Description_39.MultiLangString_77;
					part MultiLangString_77 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_7.Description_39.MultiLangString_77.ExpressionLangString_24;
						part ExpressionLangString_24 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_39 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_7.ImplementationConstraint_39.MultiLangString_78;
					part MultiLangString_78 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_7.ImplementationConstraint_39.MultiLangString_78.LangString_131, Module_1.SupportedBy_7.ImplementationConstraint_39.MultiLangString_78.LangString_132);
						part LangString_131 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_132 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_8 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_8.LangString_133;
				ref part :> description = Module_1.SupportedBy_8.Description_40;
				ref part :> implementationConstraint = Module_1.SupportedBy_8.ImplementationConstraint_40;
				ref part :> source = Module_1.Goal_7;
				ref part :> target = Module_1.Solution_3;
				part LangString_133 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_40 : Description :> description {
					ref part :> content = Module_1.SupportedBy_8.Description_40.MultiLangString_79;
					part MultiLangString_79 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_8.Description_40.MultiLangString_79.ExpressionLangString_25;
						part ExpressionLangString_25 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_40 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_8.ImplementationConstraint_40.MultiLangString_80;
					part MultiLangString_80 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_8.ImplementationConstraint_40.MultiLangString_80.LangString_134, Module_1.SupportedBy_8.ImplementationConstraint_40.MultiLangString_80.LangString_135);
						part LangString_134 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_135 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_9 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_9.LangString_136;
				ref part :> description = Module_1.SupportedBy_9.Description_41;
				ref part :> implementationConstraint = Module_1.SupportedBy_9.ImplementationConstraint_41;
				ref part :> source = Module_1.Strategy_1;
				ref part :> target = Module_1.Goal_5;
				part LangString_136 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_41 : Description :> description {
					ref part :> content = Module_1.SupportedBy_9.Description_41.MultiLangString_81;
					part MultiLangString_81 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_9.Description_41.MultiLangString_81.ExpressionLangString_26;
						part ExpressionLangString_26 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_41 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_9.ImplementationConstraint_41.MultiLangString_82;
					part MultiLangString_82 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_9.ImplementationConstraint_41.MultiLangString_82.LangString_137, Module_1.SupportedBy_9.ImplementationConstraint_41.MultiLangString_82.LangString_138);
						part LangString_137 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_138 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_10 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_10.LangString_139;
				ref part :> description = Module_1.SupportedBy_10.Description_42;
				ref part :> implementationConstraint = Module_1.SupportedBy_10.ImplementationConstraint_42;
				ref part :> source = Module_1.Strategy_1;
				ref part :> target = Module_1.Goal_6;
				part LangString_139 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_42 : Description :> description {
					ref part :> content = Module_1.SupportedBy_10.Description_42.MultiLangString_83;
					part MultiLangString_83 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_10.Description_42.MultiLangString_83.ExpressionLangString_27;
						part ExpressionLangString_27 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_42 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_10.ImplementationConstraint_42.MultiLangString_84;
					part MultiLangString_84 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_10.ImplementationConstraint_42.MultiLangString_84.LangString_140, Module_1.SupportedBy_10.ImplementationConstraint_42.MultiLangString_84.LangString_141);
						part LangString_140 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_141 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_11 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_11.LangString_142;
				ref part :> description = Module_1.SupportedBy_11.Description_43;
				ref part :> implementationConstraint = Module_1.SupportedBy_11.ImplementationConstraint_43;
				ref part :> source = Module_1.Strategy_1;
				ref part :> target = Module_1.Goal_4;
				part LangString_142 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_43 : Description :> description {
					ref part :> content = Module_1.SupportedBy_11.Description_43.MultiLangString_85;
					part MultiLangString_85 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_11.Description_43.MultiLangString_85.ExpressionLangString_28;
						part ExpressionLangString_28 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_43 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_11.ImplementationConstraint_43.MultiLangString_86;
					part MultiLangString_86 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_11.ImplementationConstraint_43.MultiLangString_86.LangString_143, Module_1.SupportedBy_11.ImplementationConstraint_43.MultiLangString_86.LangString_144);
						part LangString_143 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_144 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_12 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_12.LangString_145;
				ref part :> description = Module_1.SupportedBy_12.Description_44;
				ref part :> implementationConstraint = Module_1.SupportedBy_12.ImplementationConstraint_44;
				ref part :> source = Module_1.Goal_4;
				ref part :> target = Module_1.Solution_1;
				part LangString_145 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_44 : Description :> description {
					ref part :> content = Module_1.SupportedBy_12.Description_44.MultiLangString_87;
					part MultiLangString_87 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_12.Description_44.MultiLangString_87.ExpressionLangString_29;
						part ExpressionLangString_29 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_44 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_12.ImplementationConstraint_44.MultiLangString_88;
					part MultiLangString_88 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_12.ImplementationConstraint_44.MultiLangString_88.LangString_146, Module_1.SupportedBy_12.ImplementationConstraint_44.MultiLangString_88.LangString_147);
						part LangString_146 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_147 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_13 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_13.LangString_148;
				ref part :> description = Module_1.SupportedBy_13.Description_45;
				ref part :> implementationConstraint = Module_1.SupportedBy_13.ImplementationConstraint_45;
				ref part :> source = Module_1.Goal_5;
				ref part :> target = Module_1.Solution_2;
				part LangString_148 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_45 : Description :> description {
					ref part :> content = Module_1.SupportedBy_13.Description_45.MultiLangString_89;
					part MultiLangString_89 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_13.Description_45.MultiLangString_89.ExpressionLangString_30;
						part ExpressionLangString_30 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_45 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_13.ImplementationConstraint_45.MultiLangString_90;
					part MultiLangString_90 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_13.ImplementationConstraint_45.MultiLangString_90.LangString_149, Module_1.SupportedBy_13.ImplementationConstraint_45.MultiLangString_90.LangString_150);
						part LangString_149 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_150 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
			part SupportedBy_14 : SupportedBy :> argumentationElement {
				enum :> assertionDeclaration = AssertionDeclaration::asserted;
				attribute :>> requies = 0;
				ref part :> name = Module_1.SupportedBy_14.LangString_151;
				ref part :> description = Module_1.SupportedBy_14.Description_46;
				ref part :> implementationConstraint = Module_1.SupportedBy_14.ImplementationConstraint_46;
				ref part :> source = Module_1.Goal_6;
				ref part :> target = Module_1.Solution_2;
				part LangString_151 : LangString :> name {
					attribute :>> lang = "lang";
					attribute :>> content = "name";
				}
				part Description_46 : Description :> description {
					ref part :> content = Module_1.SupportedBy_14.Description_46.MultiLangString_91;
					part MultiLangString_91 : MultiLangString :> content {
						ref part :> 'value' = Module_1.SupportedBy_14.Description_46.MultiLangString_91.ExpressionLangString_31;
						part ExpressionLangString_31 : ExpressionLangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "Description";
						}
					}
				}
				part ImplementationConstraint_46 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = Module_1.SupportedBy_14.ImplementationConstraint_46.MultiLangString_92;
					part MultiLangString_92 : MultiLangString :> content {
						ref part :> 'value' = (Module_1.SupportedBy_14.ImplementationConstraint_46.MultiLangString_92.LangString_152, Module_1.SupportedBy_14.ImplementationConstraint_46.MultiLangString_92.LangString_153);
						part LangString_152 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "null";
						}
						part LangString_153 : LangString :> value {
							attribute :>> lang = "language";
							attribute :>> content = "result";
						}
					}
				}
			}
		}
	}
}

