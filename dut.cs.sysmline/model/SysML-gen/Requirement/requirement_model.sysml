package requirement_model {
	public import requirement::*;
	public import base::*;
	part RequirementPackage_1 : RequirementPackage {
		ref part :> name = LangString_1;
		ref part :> description = Description_1;
		ref part :> requirementAsset = RequirementPackage_2;
		part LangString_1 : LangString :> name {
			attribute :>> content = "AUV Requirement Package";
		}
		part Description_1 : Description :> description {
			ref part :> content = Description_1.MultiLangString_1;
			part MultiLangString_1 : MultiLangString :> content {
				ref part :> 'value' = Description_1.MultiLangString_1.LangString_2;
				part LangString_2 : LangString :> value;
			}
		}
		part RequirementPackage_2 : RequirementPackage :> requirementAsset {
			attribute :>> gid = "RP1";
			ref part :> name = RequirementPackage_2.LangString_3;
			ref part :> description = RequirementPackage_2.Description_2;
			ref part :> externalReference = RequirementPackage_2.ExternalReference_1;
			ref part :> requirementAsset = (RequirementPackage_2.NonFunctionalRequirement_1, RequirementPackage_2.NonFunctionalRequirement_2, RequirementPackage_2.NonFunctionalRequirement_3, RequirementPackage_2.NonFunctionalRequirement_4, RequirementPackage_2.NonFunctionalRequirement_5, RequirementPackage_2.NonFunctionalRequirement_6, RequirementPackage_2.NonFunctionalRequirement_7, RequirementPackage_2.NonFunctionalRequirement_8, RequirementPackage_2.NonFunctionalRequirement_9, RequirementPackage_2.NonFunctionalRequirement_10, RequirementPackage_2.NonFunctionalRequirement_11, RequirementPackage_2.NonFunctionalRequirement_12, RequirementPackage_2.NonFunctionalRequirement_13, RequirementPackage_2.NonFunctionalRequirement_14, RequirementPackage_2.NonFunctionalRequirement_15, RequirementPackage_2.NonFunctionalRequirement_16, RequirementPackage_2.NonFunctionalRequirement_17, RequirementPackage_2.RequirementPackage_3, RequirementPackage_2.FunctionalRequirement_23, RequirementPackage_2.FunctionalRequirement_24, RequirementPackage_2.FunctionalRequirement_25);
			part LangString_3 : LangString :> name {
				attribute :>> content = "AUV Overall Requirement Package";
			}
			part Description_2 : Description :> description {
				ref part :> content = RequirementPackage_2.Description_2.MultiLangString_2;
				part MultiLangString_2 : MultiLangString :> content {
					ref part :> 'value' = RequirementPackage_2.Description_2.MultiLangString_2.LangString_4;
					part LangString_4 : LangString :> value {
						attribute :>> content = "The AUV (Autonomous Underwater Vehicle) is a portable untethered remotely operated vehicle, equipped with a visual mapping system and verified on-board autonomy.
The AUV is capable of conducting light intervention tasks, such as cathodic protection surveys (oil and gas) and simple coring (offshore), with potential to move to more complex interventions in a later phase, such as valve turning.
";
					}
				}
			}
			part ExternalReference_1 : ExternalReference :> externalReference {
				ref part :> location = RequirementPackage_2.ExternalReference_1.LangString_5;
				ref part :> type = RequirementPackage_2.ExternalReference_1.LangString_6;
				ref part :> 'metadata' = RequirementPackage_2.ExternalReference_1.LangString_7;
				ref part :> version = RequirementPackage_2.ExternalReference_1.LangString_8;
				ref part :> implementationConstraint = RequirementPackage_2.ExternalReference_1.ImplementationConstraint_1;
				part LangString_5 : LangString :> location {
					attribute :>> content = "location";
				}
				part LangString_6 : LangString :> type {
					attribute :>> content = "type";
				}
				part LangString_7 : LangString :> metadata {
					attribute :>> content = "metadata";
				}
				part LangString_8 : LangString :> version {
					attribute :>> content = "version";
				}
				part ImplementationConstraint_1 : ImplementationConstraint :> implementationConstraint {
					ref part :> content = RequirementPackage_2.ExternalReference_1.ImplementationConstraint_1.MultiLangString_3;
					part MultiLangString_3 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.ExternalReference_1.ImplementationConstraint_1.MultiLangString_3.LangString_9;
						part LangString_9 : LangString :> value {
							attribute :>> content = "Constraint";
						}
					}
				}
			}
			part NonFunctionalRequirement_1 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "SD1";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_1.LangString_10;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_1.Description_3;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_1.ExternalReference_2;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_1.SecondaryRequirementType_1;
				part LangString_10 : LangString :> name {
					attribute :>> content = "SD1";
				}
				part Description_3 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_1.Description_3.MultiLangString_4;
					part MultiLangString_4 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_1.Description_3.MultiLangString_4.LangString_11;
						part LangString_11 : LangString :> value {
							attribute :>> content = "The AUV system is developed as a Module named "AUV_Module".";
						}
					}
				}
				part ExternalReference_2 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_1.ExternalReference_2.LangString_12;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_1.ExternalReference_2.LangString_13;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_1.ExternalReference_2.LangString_14;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_1.ExternalReference_2.LangString_15;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_1.ExternalReference_2.ImplementationConstraint_2;
					part LangString_12 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_13 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_14 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_15 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_2 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_1.ExternalReference_2.ImplementationConstraint_2.MultiLangString_5;
						part MultiLangString_5 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_1.ExternalReference_2.ImplementationConstraint_2.MultiLangString_5.LangString_16;
							part LangString_16 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_1 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_2 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "SD2";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_2.LangString_17;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_2.Description_4;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_2.ExternalReference_3;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_2.SecondaryRequirementType_2;
				part LangString_17 : LangString :> name {
					attribute :>> content = "SD2";
				}
				part Description_4 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_2.Description_4.MultiLangString_6;
					part MultiLangString_6 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_2.Description_4.MultiLangString_6.LangString_18;
						part LangString_18 : LangString :> value {
							attribute :>> content = ""AUV_Module" should contain a Robotic Platform named "AUV_Platform", it should use the Interfaces "Sensors" and "Actuators".";
						}
					}
				}
				part ExternalReference_3 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_2.ExternalReference_3.LangString_19;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_2.ExternalReference_3.LangString_20;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_2.ExternalReference_3.LangString_21;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_2.ExternalReference_3.LangString_22;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_2.ExternalReference_3.ImplementationConstraint_3;
					part LangString_19 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_20 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_21 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_22 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_3 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_2.ExternalReference_3.ImplementationConstraint_3.MultiLangString_7;
						part MultiLangString_7 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_2.ExternalReference_3.ImplementationConstraint_3.MultiLangString_7.LangString_23;
							part LangString_23 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_2 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_3 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "SD3";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_3.LangString_24;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_3.Description_5;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_3.ExternalReference_4;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_3.SecondaryRequirementType_3;
				part LangString_24 : LangString :> name {
					attribute :>> content = "SD3";
				}
				part Description_5 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_3.Description_5.MultiLangString_8;
					part MultiLangString_8 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_3.Description_5.MultiLangString_8.LangString_25;
						part LangString_25 : LangString :> value {
							attribute :>> content = ""AUV_Module" should contain a Controller named "AUV_Operator", it should use the Interface "Inputs".";
						}
					}
				}
				part ExternalReference_4 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_3.ExternalReference_4.LangString_26;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_3.ExternalReference_4.LangString_27;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_3.ExternalReference_4.LangString_28;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_3.ExternalReference_4.LangString_29;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_3.ExternalReference_4.ImplementationConstraint_4;
					part LangString_26 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_27 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_28 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_29 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_4 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_3.ExternalReference_4.ImplementationConstraint_4.MultiLangString_9;
						part MultiLangString_9 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_3.ExternalReference_4.ImplementationConstraint_4.MultiLangString_9.LangString_30;
							part LangString_30 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_3 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_4 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "SD4";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_4.LangString_31;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_4.Description_6;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_4.ExternalReference_5;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_4.SecondaryRequirementType_4;
				part LangString_31 : LangString :> name {
					attribute :>> content = "SD4";
				}
				part Description_6 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_4.Description_6.MultiLangString_10;
					part MultiLangString_10 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_4.Description_6.MultiLangString_10.LangString_32;
						part LangString_32 : LangString :> value {
							attribute :>> content = ""AUV_Module" should contain a Controller named "LRE_Ctrl" (for Last Response Engine), it should use the Interfaces "Inputs" and "Outputs".";
						}
					}
				}
				part ExternalReference_5 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_4.ExternalReference_5.LangString_33;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_4.ExternalReference_5.LangString_34;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_4.ExternalReference_5.LangString_35;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_4.ExternalReference_5.LangString_36;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_4.ExternalReference_5.ImplementationConstraint_5;
					part LangString_33 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_34 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_35 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_36 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_5 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_4.ExternalReference_5.ImplementationConstraint_5.MultiLangString_11;
						part MultiLangString_11 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_4.ExternalReference_5.ImplementationConstraint_5.MultiLangString_11.LangString_37;
							part LangString_37 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_4 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_5 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "SD5";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_5.LangString_38;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_5.Description_7;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_5.ExternalReference_6;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_5.SecondaryRequirementType_5;
				part LangString_38 : LangString :> name {
					attribute :>> content = "SD5";
				}
				part Description_7 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_5.Description_7.MultiLangString_12;
					part MultiLangString_12 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_5.Description_7.MultiLangString_12.LangString_39;
						part LangString_39 : LangString :> value {
							attribute :>> content = ""AUV_Module" should contain a Controller named "AUV_Autopilot", it should use the Interface "Outputs".";
						}
					}
				}
				part ExternalReference_6 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_5.ExternalReference_6.LangString_40;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_5.ExternalReference_6.LangString_41;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_5.ExternalReference_6.LangString_42;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_5.ExternalReference_6.LangString_43;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_5.ExternalReference_6.ImplementationConstraint_6;
					part LangString_40 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_41 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_42 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_43 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_6 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_5.ExternalReference_6.ImplementationConstraint_6.MultiLangString_13;
						part MultiLangString_13 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_5.ExternalReference_6.ImplementationConstraint_6.MultiLangString_13.LangString_44;
							part LangString_44 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_5 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_6 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "PT1";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_6.LangString_45;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_6.Description_8;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_6.ExternalReference_7;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_6.SecondaryRequirementType_6;
				part LangString_45 : LangString :> name {
					attribute :>> content = "PT1";
				}
				part Description_8 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_6.Description_8.MultiLangString_14;
					part MultiLangString_14 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_6.Description_8.MultiLangString_14.LangString_46;
						part LangString_46 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" should define a Primitive Type named "nat" (for natural numbers).";
						}
					}
				}
				part ExternalReference_7 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_6.ExternalReference_7.LangString_47;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_6.ExternalReference_7.LangString_48;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_6.ExternalReference_7.LangString_49;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_6.ExternalReference_7.LangString_50;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_6.ExternalReference_7.ImplementationConstraint_7;
					part LangString_47 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_48 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_49 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_50 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_7 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_6.ExternalReference_7.ImplementationConstraint_7.MultiLangString_15;
						part MultiLangString_15 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_6.ExternalReference_7.ImplementationConstraint_7.MultiLangString_15.LangString_51;
							part LangString_51 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_6 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_7 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "PT2";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_7.LangString_52;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_7.Description_9;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_7.ExternalReference_8;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_7.SecondaryRequirementType_7;
				part LangString_52 : LangString :> name {
					attribute :>> content = "PT2";
				}
				part Description_9 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_7.Description_9.MultiLangString_16;
					part MultiLangString_16 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_7.Description_9.MultiLangString_16.LangString_53;
						part LangString_53 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" should define a Primitive Type named "int" (for integers).";
						}
					}
				}
				part ExternalReference_8 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_7.ExternalReference_8.LangString_54;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_7.ExternalReference_8.LangString_55;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_7.ExternalReference_8.LangString_56;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_7.ExternalReference_8.LangString_57;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_7.ExternalReference_8.ImplementationConstraint_8;
					part LangString_54 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_55 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_56 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_57 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_8 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_7.ExternalReference_8.ImplementationConstraint_8.MultiLangString_17;
						part MultiLangString_17 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_7.ExternalReference_8.ImplementationConstraint_8.MultiLangString_17.LangString_58;
							part LangString_58 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_7 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_8 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "PT3";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_8.LangString_59;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_8.Description_10;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_8.ExternalReference_9;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_8.SecondaryRequirementType_8;
				part LangString_59 : LangString :> name {
					attribute :>> content = "PT3";
				}
				part Description_10 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_8.Description_10.MultiLangString_18;
					part MultiLangString_18 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_8.Description_10.MultiLangString_18.LangString_60;
						part LangString_60 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" should define a Primitive Type named "string" (for string values).";
						}
					}
				}
				part ExternalReference_9 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_8.ExternalReference_9.LangString_61;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_8.ExternalReference_9.LangString_62;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_8.ExternalReference_9.LangString_63;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_8.ExternalReference_9.LangString_64;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_8.ExternalReference_9.ImplementationConstraint_9;
					part LangString_61 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_62 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_63 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_64 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_9 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_8.ExternalReference_9.ImplementationConstraint_9.MultiLangString_19;
						part MultiLangString_19 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_8.ExternalReference_9.ImplementationConstraint_9.MultiLangString_19.LangString_65;
							part LangString_65 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_8 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_9 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "PT4";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_9.LangString_66;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_9.Description_11;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_9.ExternalReference_10;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_9.SecondaryRequirementType_9;
				part LangString_66 : LangString :> name {
					attribute :>> content = "PT4";
				}
				part Description_11 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_9.Description_11.MultiLangString_20;
					part MultiLangString_20 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_9.Description_11.MultiLangString_20.LangString_67;
						part LangString_67 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" should define a Primitive Type named "boolean" (for boolean values).";
						}
					}
				}
				part ExternalReference_10 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_9.ExternalReference_10.LangString_68;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_9.ExternalReference_10.LangString_69;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_9.ExternalReference_10.LangString_70;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_9.ExternalReference_10.LangString_71;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_9.ExternalReference_10.ImplementationConstraint_10;
					part LangString_68 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_69 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_70 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_71 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_10 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_9.ExternalReference_10.ImplementationConstraint_10.MultiLangString_21;
						part MultiLangString_21 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_9.ExternalReference_10.ImplementationConstraint_10.MultiLangString_21.LangString_72;
							part LangString_72 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_9 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_10 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "PT5";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_10.LangString_73;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_10.Description_12;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_10.ExternalReference_11;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_10.SecondaryRequirementType_10;
				part LangString_73 : LangString :> name {
					attribute :>> content = "PT5";
				}
				part Description_12 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_10.Description_12.MultiLangString_22;
					part MultiLangString_22 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_10.Description_12.MultiLangString_22.LangString_74;
						part LangString_74 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" should define a Primitive Type named "real" (for real numbers).";
						}
					}
				}
				part ExternalReference_11 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_10.ExternalReference_11.LangString_75;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_10.ExternalReference_11.LangString_76;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_10.ExternalReference_11.LangString_77;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_10.ExternalReference_11.LangString_78;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_10.ExternalReference_11.ImplementationConstraint_11;
					part LangString_75 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_76 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_77 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_78 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_11 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_10.ExternalReference_11.ImplementationConstraint_11.MultiLangString_23;
						part MultiLangString_23 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_10.ExternalReference_11.ImplementationConstraint_11.MultiLangString_23.LangString_79;
							part LangString_79 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_10 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_11 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "CT1";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_11.LangString_80;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_11.Description_13;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_11.ExternalReference_12;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_11.SecondaryRequirementType_11;
				part LangString_80 : LangString :> name {
					attribute :>> content = "CT1";
				}
				part Description_13 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_11.Description_13.MultiLangString_24;
					part MultiLangString_24 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_11.Description_13.MultiLangString_24.LangString_81;
						part LangString_81 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" should define a Composite Type named "SVec" (Spherical Vector), to record values such as "radial" (of type "real"), "polar" (of type "real"), and "azimuth" (of type "real").";
						}
					}
				}
				part ExternalReference_12 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_11.ExternalReference_12.LangString_82;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_11.ExternalReference_12.LangString_83;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_11.ExternalReference_12.LangString_84;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_11.ExternalReference_12.LangString_85;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_11.ExternalReference_12.ImplementationConstraint_12;
					part LangString_82 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_83 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_84 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_85 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_12 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_11.ExternalReference_12.ImplementationConstraint_12.MultiLangString_25;
						part MultiLangString_25 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_11.ExternalReference_12.ImplementationConstraint_12.MultiLangString_25.LangString_86;
							part LangString_86 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_11 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_12 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "CT2";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_12.LangString_87;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_12.Description_14;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_12.ExternalReference_13;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_12.SecondaryRequirementType_12;
				part LangString_87 : LangString :> name {
					attribute :>> content = "CT2";
				}
				part Description_14 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_12.Description_14.MultiLangString_26;
					part MultiLangString_26 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_12.Description_14.MultiLangString_26.LangString_88;
						part LangString_88 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" should define a Composite Type named "Obstacle", to record the following values: "ns_rel_dist" (of type "real"), "ew_rel_dist" (of type real), "depth" (of type "real"), "id" (of type "real"), "obs_hdng" (of type "SVec").";
						}
					}
				}
				part ExternalReference_13 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_12.ExternalReference_13.LangString_89;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_12.ExternalReference_13.LangString_90;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_12.ExternalReference_13.LangString_91;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_12.ExternalReference_13.LangString_92;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_12.ExternalReference_13.ImplementationConstraint_13;
					part LangString_89 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_90 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_91 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_92 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_13 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_12.ExternalReference_13.ImplementationConstraint_13.MultiLangString_27;
						part MultiLangString_27 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_12.ExternalReference_13.ImplementationConstraint_13.MultiLangString_27.LangString_93;
							part LangString_93 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_12 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_13 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "Interface1";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_13.LangString_94;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_13.Description_15;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_13.ExternalReference_14;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_13.SecondaryRequirementType_13;
				part LangString_94 : LangString :> name {
					attribute :>> content = "Interface1";
				}
				part Description_15 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_13.Description_15.MultiLangString_28;
					part MultiLangString_28 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_13.Description_15.MultiLangString_28.LangString_95;
						part LangString_95 : LangString :> value {
							attribute :>> content = "The "AUV_Module" shall define an Interface named "Sensors", which contains  the following Values: "depth" (of type "real"), "hdng" (of type "SVec") and "obs" (of type "Obstacle").";
						}
					}
				}
				part ExternalReference_14 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_13.ExternalReference_14.LangString_96;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_13.ExternalReference_14.LangString_97;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_13.ExternalReference_14.LangString_98;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_13.ExternalReference_14.LangString_99;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_13.ExternalReference_14.ImplementationConstraint_14;
					part LangString_96 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_97 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_98 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_99 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_14 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_13.ExternalReference_14.ImplementationConstraint_14.MultiLangString_29;
						part MultiLangString_29 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_13.ExternalReference_14.ImplementationConstraint_14.MultiLangString_29.LangString_100;
							part LangString_100 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_13 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_14 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "Interface2";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_14.LangString_101;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_14.Description_16;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_14.ExternalReference_15;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_14.SecondaryRequirementType_14;
				part LangString_101 : LangString :> name {
					attribute :>> content = "Interface2";
				}
				part Description_16 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_14.Description_16.MultiLangString_30;
					part MultiLangString_30 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_14.Description_16.MultiLangString_30.LangString_102;
						part LangString_102 : LangString :> value {
							attribute :>> content = "The "AUV_Module" shall define an Interface named "Intpus", which defines the following Events: "endTask", "reqOCM" (with no Parameters and no Return Value), "reqMOM" (with no Parameters and no Return Value), "reqHCM" (with no Parameters and no Return Value), "reqVel" (with no Parameters, but with a Return Value of type "real"), and "reqHdng" (with no Parameters, but with a Return Value of type "real").";
						}
					}
				}
				part ExternalReference_15 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_14.ExternalReference_15.LangString_103;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_14.ExternalReference_15.LangString_104;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_14.ExternalReference_15.LangString_105;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_14.ExternalReference_15.LangString_106;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_14.ExternalReference_15.ImplementationConstraint_15;
					part LangString_103 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_104 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_105 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_106 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_15 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_14.ExternalReference_15.ImplementationConstraint_15.MultiLangString_31;
						part MultiLangString_31 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_14.ExternalReference_15.ImplementationConstraint_15.MultiLangString_31.LangString_107;
							part LangString_107 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_14 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_15 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "Interface3";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_15.LangString_108;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_15.Description_17;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_15.ExternalReference_16;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_15.SecondaryRequirementType_15;
				part LangString_108 : LangString :> name {
					attribute :>> content = "Interface3";
				}
				part Description_17 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_15.Description_17.MultiLangString_32;
					part MultiLangString_32 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_15.Description_17.MultiLangString_32.LangString_109;
						part LangString_109 : LangString :> value {
							attribute :>> content = "An Interface named "Outputs" should be defined for "AUV_Module", which outputs the following Events: "advVel" (which takes one Parameters of type "real", and no Return Value) and "advHdng" (which takes one Parameter of type "real", and no Return Value).";
						}
					}
				}
				part ExternalReference_16 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_15.ExternalReference_16.LangString_110;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_15.ExternalReference_16.LangString_111;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_15.ExternalReference_16.LangString_112;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_15.ExternalReference_16.LangString_113;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_15.ExternalReference_16.ImplementationConstraint_16;
					part LangString_110 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_111 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_112 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_113 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_16 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_15.ExternalReference_16.ImplementationConstraint_16.MultiLangString_33;
						part MultiLangString_33 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_15.ExternalReference_16.ImplementationConstraint_16.MultiLangString_33.LangString_114;
							part LangString_114 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_15 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_16 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "Interface4";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_16.LangString_115;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_16.Description_18;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_16.ExternalReference_17;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_16.SecondaryRequirementType_16;
				part LangString_115 : LangString :> name {
					attribute :>> content = "Interface4";
				}
				part Description_18 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_16.Description_18.MultiLangString_34;
					part MultiLangString_34 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_16.Description_18.MultiLangString_34.LangString_116;
						part LangString_116 : LangString :> value {
							attribute :>> content = "The "AUV_Module" shall define an Interface named "Actuators", which should remain empty at this point.";
						}
					}
				}
				part ExternalReference_17 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_16.ExternalReference_17.LangString_117;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_16.ExternalReference_17.LangString_118;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_16.ExternalReference_17.LangString_119;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_16.ExternalReference_17.LangString_120;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_16.ExternalReference_17.ImplementationConstraint_17;
					part LangString_117 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_118 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_119 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_120 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_17 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_16.ExternalReference_17.ImplementationConstraint_17.MultiLangString_35;
						part MultiLangString_35 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_16.ExternalReference_17.ImplementationConstraint_17.MultiLangString_35.LangString_121;
							part LangString_121 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_16 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part NonFunctionalRequirement_17 : NonFunctionalRequirement :> requirementAsset {
				attribute :>> gid = "CF3";
				attribute :>> priority = 6;
				ref part :> name = RequirementPackage_2.NonFunctionalRequirement_17.LangString_122;
				ref part :> description = RequirementPackage_2.NonFunctionalRequirement_17.Description_19;
				ref part :> externalReference = RequirementPackage_2.NonFunctionalRequirement_17.ExternalReference_18;
				ref part :> type = RequirementPackage_2.NonFunctionalRequirement_17.SecondaryRequirementType_17;
				part LangString_122 : LangString :> name {
					attribute :>> content = "CT3";
				}
				part Description_19 : Description :> description {
					ref part :> content = RequirementPackage_2.NonFunctionalRequirement_17.Description_19.MultiLangString_36;
					part MultiLangString_36 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_17.Description_19.MultiLangString_36.LangString_123;
						part LangString_123 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" should define a Composite Type named "Close", to record the following values: "horiz_cda" (of type "real"), "vert_cda" (of type "real"), and "id" (of type "nat").";
						}
					}
				}
				part ExternalReference_18 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.NonFunctionalRequirement_17.ExternalReference_18.LangString_124;
					ref part :> type = RequirementPackage_2.NonFunctionalRequirement_17.ExternalReference_18.LangString_125;
					ref part :> 'metadata' = RequirementPackage_2.NonFunctionalRequirement_17.ExternalReference_18.LangString_126;
					ref part :> version = RequirementPackage_2.NonFunctionalRequirement_17.ExternalReference_18.LangString_127;
					ref part :> implementationConstraint = RequirementPackage_2.NonFunctionalRequirement_17.ExternalReference_18.ImplementationConstraint_18;
					part LangString_124 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_125 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_126 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_127 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_18 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.NonFunctionalRequirement_17.ExternalReference_18.ImplementationConstraint_18.MultiLangString_37;
						part MultiLangString_37 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.NonFunctionalRequirement_17.ExternalReference_18.ImplementationConstraint_18.MultiLangString_37.LangString_128;
							part LangString_128 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part SecondaryRequirementType_17 : SecondaryRequirementType :> type {
					attribute :>> architecture = true;
				}
			}
			part RequirementPackage_3 : RequirementPackage :> requirementAsset {
				attribute :>> gid = "LRE_RP";
				ref part :> name = RequirementPackage_2.RequirementPackage_3.LangString_129;
				ref part :> description = RequirementPackage_2.RequirementPackage_3.Description_20;
				ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.ExternalReference_19;
				ref part :> requirementAsset = (RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32, RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21, RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22);
				part LangString_129 : LangString :> name {
					attribute :>> content = "LRE_Behaviour Requirement Package";
				}
				part Description_20 : Description :> description {
					ref part :> content = RequirementPackage_2.RequirementPackage_3.Description_20.MultiLangString_38;
					part MultiLangString_38 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.Description_20.MultiLangString_38.LangString_130;
						part LangString_130 : LangString :> value {
							attribute :>> content = "This package captures the requirements for the behaviour of the Last Response Engine (LRE).";
						}
					}
				}
				part ExternalReference_19 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.RequirementPackage_3.ExternalReference_19.LangString_131;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.ExternalReference_19.LangString_132;
					ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.ExternalReference_19.LangString_133;
					ref part :> version = RequirementPackage_2.RequirementPackage_3.ExternalReference_19.LangString_134;
					ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.ExternalReference_19.ImplementationConstraint_19;
					part LangString_131 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_132 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_133 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_134 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_19 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.ExternalReference_19.ImplementationConstraint_19.MultiLangString_39;
						part MultiLangString_39 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.ExternalReference_19.ImplementationConstraint_19.MultiLangString_39.LangString_135;
							part LangString_135 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
				part NonFunctionalRequirement_18 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-NF1";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.LangString_136;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.Description_21;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.ExternalReference_20;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.SecondaryRequirementType_18;
					part LangString_136 : LangString :> name {
						attribute :>> content = "LRE_Beh";
					}
					part Description_21 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.Description_21.MultiLangString_40;
						part MultiLangString_40 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.Description_21.MultiLangString_40.LangString_137;
							part LangString_137 : LangString :> value {
								attribute :>> content = "A State Machine named "LRE_Beh" shall be created to model the behaviour of the LRE.";
							}
						}
					}
					part ExternalReference_20 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.ExternalReference_20.LangString_138;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.ExternalReference_20.LangString_139;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.ExternalReference_20.LangString_140;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.ExternalReference_20.LangString_141;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.ExternalReference_20.ImplementationConstraint_20;
						part LangString_138 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_139 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_140 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_141 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_20 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.ExternalReference_20.ImplementationConstraint_20.MultiLangString_41;
							part MultiLangString_41 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_18.ExternalReference_20.ImplementationConstraint_20.MultiLangString_41.LangString_142;
								part LangString_142 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_18 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_19 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var1";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.LangString_143;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.Description_22;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.ExternalReference_21;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.SecondaryRequirementType_19;
					part LangString_143 : LangString :> name {
						attribute :>> content = "Variable1";
					}
					part Description_22 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.Description_22.MultiLangString_42;
						part MultiLangString_42 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.Description_22.MultiLangString_42.LangString_144;
							part LangString_144 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Variable "cobs" of type Close (defined by the "AUV platform"), to denote the closest obstacle.";
							}
						}
					}
					part ExternalReference_21 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.ExternalReference_21.LangString_145;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.ExternalReference_21.LangString_146;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.ExternalReference_21.LangString_147;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.ExternalReference_21.LangString_148;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.ExternalReference_21.ImplementationConstraint_21;
						part LangString_145 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_146 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_147 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_148 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_21 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.ExternalReference_21.ImplementationConstraint_21.MultiLangString_43;
							part MultiLangString_43 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_19.ExternalReference_21.ImplementationConstraint_21.MultiLangString_43.LangString_149;
								part LangString_149 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_19 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_20 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var2";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.LangString_150;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.Description_23;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.ExternalReference_22;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.SecondaryRequirementType_20;
					part LangString_150 : LangString :> name {
						attribute :>> content = "Variable2";
					}
					part Description_23 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.Description_23.MultiLangString_44;
						part MultiLangString_44 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.Description_23.MultiLangString_44.LangString_151;
							part LangString_151 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Variable "inOPEZ" of type boolean (defined by the AUV platform), to denote if the AUV is in an Object Proximity Exclusion Zone (OPEZ). ";
							}
						}
					}
					part ExternalReference_22 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.ExternalReference_22.LangString_152;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.ExternalReference_22.LangString_153;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.ExternalReference_22.LangString_154;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.ExternalReference_22.LangString_155;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.ExternalReference_22.ImplementationConstraint_22;
						part LangString_152 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_153 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_154 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_155 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_22 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.ExternalReference_22.ImplementationConstraint_22.MultiLangString_45;
							part MultiLangString_45 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_20.ExternalReference_22.ImplementationConstraint_22.MultiLangString_45.LangString_156;
								part LangString_156 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_20 : SecondaryRequirementType :> type;
				}
				part NonFunctionalRequirement_21 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var3";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.LangString_157;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.Description_24;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.ExternalReference_23;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.SecondaryRequirementType_21;
					part LangString_157 : LangString :> name {
						attribute :>> content = "Variable3";
					}
					part Description_24 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.Description_24.MultiLangString_46;
						part MultiLangString_46 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.Description_24.MultiLangString_46.LangString_158;
							part LangString_158 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Variable "hvel" of type real (defined by the AUV platform), to denote the AVU's horizontal velocity.";
							}
						}
					}
					part ExternalReference_23 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.ExternalReference_23.LangString_159;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.ExternalReference_23.LangString_160;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.ExternalReference_23.LangString_161;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.ExternalReference_23.LangString_162;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.ExternalReference_23.ImplementationConstraint_23;
						part LangString_159 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_160 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_161 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_162 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_23 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.ExternalReference_23.ImplementationConstraint_23.MultiLangString_47;
							part MultiLangString_47 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_21.ExternalReference_23.ImplementationConstraint_23.MultiLangString_47.LangString_163;
								part LangString_163 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_21 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_22 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var4";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.LangString_164;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.Description_25;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.ExternalReference_24;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.SecondaryRequirementType_22;
					part LangString_164 : LangString :> name {
						attribute :>> content = "Variable4";
					}
					part Description_25 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.Description_25.MultiLangString_48;
						part MultiLangString_48 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.Description_25.MultiLangString_48.LangString_165;
							part LangString_165 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Variable "vvel" of type real (defined by the AUV platform), to denote the AVU's vertical velocity.";
							}
						}
					}
					part ExternalReference_24 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.ExternalReference_24.LangString_166;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.ExternalReference_24.LangString_167;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.ExternalReference_24.LangString_168;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.ExternalReference_24.LangString_169;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.ExternalReference_24.ImplementationConstraint_24;
						part LangString_166 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_167 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_168 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_169 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_24 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.ExternalReference_24.ImplementationConstraint_24.MultiLangString_49;
							part MultiLangString_49 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_22.ExternalReference_24.ImplementationConstraint_24.MultiLangString_49.LangString_170;
								part LangString_170 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_22 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_23 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var5";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.LangString_171;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.Description_26;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.ExternalReference_25;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.SecondaryRequirementType_23;
					part LangString_171 : LangString :> name {
						attribute :>> content = "Variable5";
					}
					part Description_26 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.Description_26.MultiLangString_50;
						part MultiLangString_50 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.Description_26.MultiLangString_50.LangString_172;
							part LangString_172 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Variable "cstc" of type Obstacle (defined by the AUV platform), to denote the closest static obstacle.";
							}
						}
					}
					part ExternalReference_25 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.ExternalReference_25.LangString_173;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.ExternalReference_25.LangString_174;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.ExternalReference_25.LangString_175;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.ExternalReference_25.LangString_176;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.ExternalReference_25.ImplementationConstraint_25;
						part LangString_173 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_174 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_175 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_176 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_25 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.ExternalReference_25.ImplementationConstraint_25.MultiLangString_51;
							part MultiLangString_51 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_23.ExternalReference_25.ImplementationConstraint_25.MultiLangString_51.LangString_177;
								part LangString_177 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_23 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_24 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var6";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.LangString_178;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.Description_27;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.ExternalReference_26;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.SecondaryRequirementType_24;
					part LangString_178 : LangString :> name {
						attribute :>> content = "Variable6";
					}
					part Description_27 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.Description_27.MultiLangString_52;
						part MultiLangString_52 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.Description_27.MultiLangString_52.LangString_179;
							part LangString_179 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Variable "cdyn" of type Obstacle (defined by the AUV platform), to denote the closest dynamic obstacle.";
							}
						}
					}
					part ExternalReference_26 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.ExternalReference_26.LangString_180;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.ExternalReference_26.LangString_181;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.ExternalReference_26.LangString_182;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.ExternalReference_26.LangString_183;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.ExternalReference_26.ImplementationConstraint_26;
						part LangString_180 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_181 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_182 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_183 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_26 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.ExternalReference_26.ImplementationConstraint_26.MultiLangString_53;
							part MultiLangString_53 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_24.ExternalReference_26.ImplementationConstraint_26.MultiLangString_53.LangString_184;
								part LangString_184 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_24 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_25 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var7";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.LangString_185;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.Description_28;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.ExternalReference_27;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.SecondaryRequirementType_25;
					part LangString_185 : LangString :> name {
						attribute :>> content = "Variable7";
					}
					part Description_28 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.Description_28.MultiLangString_54;
						part MultiLangString_54 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.Description_28.MultiLangString_54.LangString_186;
							part LangString_186 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Variable "depth" of type real (defined by the AUV platform), to denote the depth of the AUV.";
							}
						}
					}
					part ExternalReference_27 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.ExternalReference_27.LangString_187;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.ExternalReference_27.LangString_188;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.ExternalReference_27.LangString_189;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.ExternalReference_27.LangString_190;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.ExternalReference_27.ImplementationConstraint_27;
						part LangString_187 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_188 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_189 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_190 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_27 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.ExternalReference_27.ImplementationConstraint_27.MultiLangString_55;
							part MultiLangString_55 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_25.ExternalReference_27.ImplementationConstraint_27.MultiLangString_55.LangString_191;
								part LangString_191 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_25 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_26 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var8";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.LangString_192;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.Description_29;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.ExternalReference_28;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.SecondaryRequirementType_26;
					part LangString_192 : LangString :> name {
						attribute :>> content = "Variable8";
					}
					part Description_29 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.Description_29.MultiLangString_56;
						part MultiLangString_56 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.Description_29.MultiLangString_56.LangString_193;
							part LangString_193 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Variable "CDA" of type real (defined by the AUV platform), to denote the Closest Distance of Approach to an obstacle.";
							}
						}
					}
					part ExternalReference_28 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.ExternalReference_28.LangString_194;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.ExternalReference_28.LangString_195;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.ExternalReference_28.LangString_196;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.ExternalReference_28.LangString_197;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.ExternalReference_28.ImplementationConstraint_28;
						part LangString_194 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_195 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_196 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_197 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_28 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.ExternalReference_28.ImplementationConstraint_28.MultiLangString_57;
							part MultiLangString_57 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_26.ExternalReference_28.ImplementationConstraint_28.MultiLangString_57.LangString_198;
								part LangString_198 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_26 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_27 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Const1";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.LangString_199;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.Description_30;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.ExternalReference_29;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.SecondaryRequirementType_27;
					part LangString_199 : LangString :> name {
						attribute :>> content = "Constant1";
					}
					part Description_30 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.Description_30.MultiLangString_58;
						part MultiLangString_58 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.Description_30.MultiLangString_58.LangString_200;
							part LangString_200 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Constant "AvoidanceMargin" of type real (defined by the AUV platform), to denote the avoidance margin to obstacles.";
							}
						}
					}
					part ExternalReference_29 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.ExternalReference_29.LangString_201;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.ExternalReference_29.LangString_202;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.ExternalReference_29.LangString_203;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.ExternalReference_29.LangString_204;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.ExternalReference_29.ImplementationConstraint_29;
						part LangString_201 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_202 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_203 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_204 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_29 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.ExternalReference_29.ImplementationConstraint_29.MultiLangString_59;
							part MultiLangString_59 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_27.ExternalReference_29.ImplementationConstraint_29.MultiLangString_59.LangString_205;
								part LangString_205 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_27 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_28 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Const2";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.LangString_206;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.Description_31;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.ExternalReference_30;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.SecondaryRequirementType_28;
					part LangString_206 : LangString :> name {
						attribute :>> content = "Constant2";
					}
					part Description_31 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.Description_31.MultiLangString_60;
						part MultiLangString_60 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.Description_31.MultiLangString_60.LangString_207;
							part LangString_207 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Constant "StaticObsHorizDist" of type real (defined by the AUV platform), to denote the shortest distance allowed horizontally to an obstacle.";
							}
						}
					}
					part ExternalReference_30 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.ExternalReference_30.LangString_208;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.ExternalReference_30.LangString_209;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.ExternalReference_30.LangString_210;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.ExternalReference_30.LangString_211;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.ExternalReference_30.ImplementationConstraint_30;
						part LangString_208 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_209 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_210 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_211 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_30 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.ExternalReference_30.ImplementationConstraint_30.MultiLangString_61;
							part MultiLangString_61 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_28.ExternalReference_30.ImplementationConstraint_30.MultiLangString_61.LangString_212;
								part LangString_212 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_28 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_29 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Const3";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.LangString_213;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.Description_32;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.ExternalReference_31;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.SecondaryRequirementType_29;
					part LangString_213 : LangString :> name {
						attribute :>> content = "Constant3";
					}
					part Description_32 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.Description_32.MultiLangString_62;
						part MultiLangString_62 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.Description_32.MultiLangString_62.LangString_214;
							part LangString_214 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Constant "StaticObsVertDist" of type real (defined by the AUV platform), to denote the shortest distance allowed vertically to an obstacle.";
							}
						}
					}
					part ExternalReference_31 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.ExternalReference_31.LangString_215;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.ExternalReference_31.LangString_216;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.ExternalReference_31.LangString_217;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.ExternalReference_31.LangString_218;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.ExternalReference_31.ImplementationConstraint_31;
						part LangString_215 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_216 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_217 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_218 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_31 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.ExternalReference_31.ImplementationConstraint_31.MultiLangString_63;
							part MultiLangString_63 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_29.ExternalReference_31.ImplementationConstraint_31.MultiLangString_63.LangString_219;
								part LangString_219 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_29 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_30 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Const5";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.LangString_220;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.Description_33;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.ExternalReference_32;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.SecondaryRequirementType_30;
					part LangString_220 : LangString :> name {
						attribute :>> content = "Constant5";
					}
					part Description_33 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.Description_33.MultiLangString_64;
						part MultiLangString_64 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.Description_33.MultiLangString_64.LangString_221;
							part LangString_221 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Constant "MinSafeDist" of type real (defined by the AUV platform), to denote the minimal overall safe distance allowed to an obstacle.";
							}
						}
					}
					part ExternalReference_32 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.ExternalReference_32.LangString_222;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.ExternalReference_32.LangString_223;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.ExternalReference_32.LangString_224;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.ExternalReference_32.LangString_225;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.ExternalReference_32.ImplementationConstraint_32;
						part LangString_222 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_223 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_224 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_225 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_32 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.ExternalReference_32.ImplementationConstraint_32.MultiLangString_65;
							part MultiLangString_65 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_30.ExternalReference_32.ImplementationConstraint_32.MultiLangString_65.LangString_226;
								part LangString_226 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_30 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part FunctionalRequirement_1 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-FR1";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.LangString_227;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.Description_34;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.ExternalReference_33;
					part LangString_227 : LangString :> name {
						attribute :>> content = "State1";
					}
					part Description_34 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.Description_34.MultiLangString_66;
						part MultiLangString_66 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.Description_34.MultiLangString_66.LangString_228;
							part LangString_228 : LangString :> value {
								attribute :>> content = "The LRE shall define a State named "OCM" (Operation Control Mode).";
							}
						}
					}
					part ExternalReference_33 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.ExternalReference_33.LangString_229;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.ExternalReference_33.LangString_230;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.ExternalReference_33.LangString_231;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.ExternalReference_33.LangString_232;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.ExternalReference_33.ImplementationConstraint_33;
						part LangString_229 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_230 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_231 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_232 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_33 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.ExternalReference_33.ImplementationConstraint_33.MultiLangString_67;
							part MultiLangString_67 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_1.ExternalReference_33.ImplementationConstraint_33.MultiLangString_67.LangString_233;
								part LangString_233 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_2 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-FR2";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.LangString_234;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.Description_35;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.ExternalReference_34;
					part LangString_234 : LangString :> name {
						attribute :>> content = "State2";
					}
					part Description_35 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.Description_35.MultiLangString_68;
						part MultiLangString_68 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.Description_35.MultiLangString_68.LangString_235;
							part LangString_235 : LangString :> value {
								attribute :>> content = "The LRE shall define a State named "MOM" (Main Operating Mode). On entrying MOM, the Event (from the Interface "Output") "advVel" should be tiggered to advice the velocity of AUV to 1.";
							}
						}
					}
					part ExternalReference_34 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.ExternalReference_34.LangString_236;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.ExternalReference_34.LangString_237;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.ExternalReference_34.LangString_238;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.ExternalReference_34.LangString_239;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.ExternalReference_34.ImplementationConstraint_34;
						part LangString_236 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_237 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_238 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_239 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_34 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.ExternalReference_34.ImplementationConstraint_34.MultiLangString_69;
							part MultiLangString_69 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_2.ExternalReference_34.ImplementationConstraint_34.MultiLangString_69.LangString_240;
								part LangString_240 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_3 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-FR3";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.LangString_241;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.Description_36;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.ExternalReference_35;
					part LangString_241 : LangString :> name {
						attribute :>> content = "State3";
					}
					part Description_36 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.Description_36.MultiLangString_70;
						part MultiLangString_70 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.Description_36.MultiLangString_70.LangString_242;
							part LangString_242 : LangString :> value {
								attribute :>> content = "The LRE shall define a State named "CAM" (Collision Avoidance Mode).";
							}
						}
					}
					part ExternalReference_35 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.ExternalReference_35.LangString_243;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.ExternalReference_35.LangString_244;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.ExternalReference_35.LangString_245;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.ExternalReference_35.LangString_246;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.ExternalReference_35.ImplementationConstraint_35;
						part LangString_243 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_244 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_245 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_246 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_35 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.ExternalReference_35.ImplementationConstraint_35.MultiLangString_71;
							part MultiLangString_71 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_3.ExternalReference_35.ImplementationConstraint_35.MultiLangString_71.LangString_247;
								part LangString_247 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_4 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-FR4";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.LangString_248;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.Description_37;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.ExternalReference_36;
					part LangString_248 : LangString :> name {
						attribute :>> content = "State4";
					}
					part Description_37 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.Description_37.MultiLangString_72;
						part MultiLangString_72 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.Description_37.MultiLangString_72.LangString_249;
							part LangString_249 : LangString :> value {
								attribute :>> content = "The LRE shall define a State named "HCM" (High Caution Mode). On entrying HCM, the Event (from the Interface "Output") "advVel" should be tiggered to advice the velocity of AUV to 1.";
							}
						}
					}
					part ExternalReference_36 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.ExternalReference_36.LangString_250;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.ExternalReference_36.LangString_251;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.ExternalReference_36.LangString_252;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.ExternalReference_36.LangString_253;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.ExternalReference_36.ImplementationConstraint_36;
						part LangString_250 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_251 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_252 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_253 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_36 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.ExternalReference_36.ImplementationConstraint_36.MultiLangString_73;
							part MultiLangString_73 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_4.ExternalReference_36.ImplementationConstraint_36.MultiLangString_73.LangString_254;
								part LangString_254 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part NonFunctionalRequirement_31 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var9";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.LangString_255;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.Description_38;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.ExternalReference_37;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.SecondaryRequirementType_31;
					part LangString_255 : LangString :> name {
						attribute :>> content = "Variable9";
					}
					part Description_38 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.Description_38.MultiLangString_74;
						part MultiLangString_74 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.Description_38.MultiLangString_74.LangString_256;
							part LangString_256 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a variable "TCPA" of type real (defined by the AUV platform), to denote the Time at Closest Point of Approach to an obstacle.";
							}
						}
					}
					part ExternalReference_37 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.ExternalReference_37.LangString_257;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.ExternalReference_37.LangString_258;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.ExternalReference_37.LangString_259;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.ExternalReference_37.LangString_260;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.ExternalReference_37.ImplementationConstraint_37;
						part LangString_257 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_258 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_259 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_260 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_37 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.ExternalReference_37.ImplementationConstraint_37.MultiLangString_75;
							part MultiLangString_75 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_31.ExternalReference_37.ImplementationConstraint_37.MultiLangString_75.LangString_261;
								part LangString_261 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_31 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_32 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Var10";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.LangString_262;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.Description_39;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.ExternalReference_38;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.SecondaryRequirementType_32;
					part LangString_262 : LangString :> name {
						attribute :>> content = "Variable10";
					}
					part Description_39 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.Description_39.MultiLangString_76;
						part MultiLangString_76 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.Description_39.MultiLangString_76.LangString_263;
							part LangString_263 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a variable "x" of type real (defined by the AUV platform), to denote the parameter to be passed to other components of the AUV.";
							}
						}
					}
					part ExternalReference_38 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.ExternalReference_38.LangString_264;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.ExternalReference_38.LangString_265;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.ExternalReference_38.LangString_266;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.ExternalReference_38.LangString_267;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.ExternalReference_38.ImplementationConstraint_38;
						part LangString_264 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_265 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_266 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_267 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_38 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.ExternalReference_38.ImplementationConstraint_38.MultiLangString_77;
							part MultiLangString_77 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_32.ExternalReference_38.ImplementationConstraint_38.MultiLangString_77.LangString_268;
								part LangString_268 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_32 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part NonFunctionalRequirement_33 : NonFunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Const4";
					attribute :>> priority = 6;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.LangString_269;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.Description_40;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.ExternalReference_39;
					ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.SecondaryRequirementType_33;
					part LangString_269 : LangString :> name {
						attribute :>> content = "Constant4";
					}
					part Description_40 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.Description_40.MultiLangString_78;
						part MultiLangString_78 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.Description_40.MultiLangString_78.LangString_270;
							part LangString_270 : LangString :> value {
								attribute :>> content = "LRE_Beh shall define a Constant "StaticObsDfltVertDist" of type real (defined by the AUV platform), to denote the default vertical distance limit to a static obstacle.";
							}
						}
					}
					part ExternalReference_39 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.ExternalReference_39.LangString_271;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.ExternalReference_39.LangString_272;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.ExternalReference_39.LangString_273;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.ExternalReference_39.LangString_274;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.ExternalReference_39.ImplementationConstraint_39;
						part LangString_271 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_272 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_273 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_274 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_39 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.ExternalReference_39.ImplementationConstraint_39.MultiLangString_79;
							part MultiLangString_79 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.NonFunctionalRequirement_33.ExternalReference_39.ImplementationConstraint_39.MultiLangString_79.LangString_275;
								part LangString_275 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
					part SecondaryRequirementType_33 : SecondaryRequirementType :> type {
						attribute :>> architecture = true;
					}
				}
				part FunctionalRequirement_5 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh1";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.LangString_276;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.Description_41;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.ExternalReference_40;
					part LangString_276 : LangString :> name {
						attribute :>> content = "Beh1";
					}
					part Description_41 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.Description_41.MultiLangString_80;
						part MultiLangString_80 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.Description_41.MultiLangString_80.LangString_277;
							part LangString_277 : LangString :> value {
								attribute :>> content = "On start up, the LRE shall be in the the OCM mode. ";
							}
						}
					}
					part ExternalReference_40 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.ExternalReference_40.LangString_278;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.ExternalReference_40.LangString_279;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.ExternalReference_40.LangString_280;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.ExternalReference_40.LangString_281;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.ExternalReference_40.ImplementationConstraint_40;
						part LangString_278 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_279 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_280 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_281 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_40 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.ExternalReference_40.ImplementationConstraint_40.MultiLangString_81;
							part MultiLangString_81 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_5.ExternalReference_40.ImplementationConstraint_40.MultiLangString_81.LangString_282;
								part LangString_282 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_6 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh2";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.LangString_283;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.Description_42;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.ExternalReference_41;
					part LangString_283 : LangString :> name {
						attribute :>> content = "Beh2";
					}
					part Description_42 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.Description_42.MultiLangString_82;
						part MultiLangString_82 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.Description_42.MultiLangString_82.LangString_284;
							part LangString_284 : LangString :> value {
								attribute :>> content = "The LRE shall transition from OCM to OCM if the Event "reqVel" (from the Interface "Input") is triggered, the returned value of the Event shall be stored in variable "x". Then the event "advVel" (from the Interface "Output") shall be triggered, to pass the value of "x". ";
							}
						}
					}
					part ExternalReference_41 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.ExternalReference_41.LangString_285;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.ExternalReference_41.LangString_286;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.ExternalReference_41.LangString_287;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.ExternalReference_41.LangString_288;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.ExternalReference_41.ImplementationConstraint_41;
						part LangString_285 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_286 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_287 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_288 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_41 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.ExternalReference_41.ImplementationConstraint_41.MultiLangString_83;
							part MultiLangString_83 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_6.ExternalReference_41.ImplementationConstraint_41.MultiLangString_83.LangString_289;
								part LangString_289 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_7 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh3";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.LangString_290;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.Description_43;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.ExternalReference_42;
					part LangString_290 : LangString :> name {
						attribute :>> content = "Beh3";
					}
					part Description_43 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.Description_43.MultiLangString_84;
						part MultiLangString_84 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.Description_43.MultiLangString_84.LangString_291;
							part LangString_291 : LangString :> value {
								attribute :>> content = "The LRE shall transition from OCM to OCM if the Event "reqHdng" (from the Interface "Input") is triggered, the returned value of the Event shall be stored in variable "x". Then the Event "advHdng" (from the Interface "Output") shall be triggered, to pass the value of "x". ";
							}
						}
					}
					part ExternalReference_42 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.ExternalReference_42.LangString_292;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.ExternalReference_42.LangString_293;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.ExternalReference_42.LangString_294;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.ExternalReference_42.LangString_295;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.ExternalReference_42.ImplementationConstraint_42;
						part LangString_292 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_293 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_294 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_295 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_42 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.ExternalReference_42.ImplementationConstraint_42.MultiLangString_85;
							part MultiLangString_85 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_7.ExternalReference_42.ImplementationConstraint_42.MultiLangString_85.LangString_296;
								part LangString_296 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_8 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh4";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.LangString_297;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.Description_44;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.ExternalReference_43;
					part LangString_297 : LangString :> name {
						attribute :>> content = "Beh4";
					}
					part Description_44 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.Description_44.MultiLangString_86;
						part MultiLangString_86 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.Description_44.MultiLangString_86.LangString_298;
							part LangString_298 : LangString :> value {
								attribute :>> content = "The LRE shall transition from OCM to MOM, with a trigger Event "reqMOM" (from the Interface "Input"), with the condition that: the velocity ("vel") of the AUV is less than 0.1, the distance from the AUV to the closest dynamic obstacle is greater than 7.5, the the distance from the AUV to the closest static obstacle is greater than 0.3, and that the AUV is not in an OPEZ.";
							}
						}
					}
					part ExternalReference_43 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.ExternalReference_43.LangString_299;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.ExternalReference_43.LangString_300;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.ExternalReference_43.LangString_301;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.ExternalReference_43.LangString_302;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.ExternalReference_43.ImplementationConstraint_43;
						part LangString_299 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_300 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_301 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_302 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_43 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.ExternalReference_43.ImplementationConstraint_43.MultiLangString_87;
							part MultiLangString_87 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_8.ExternalReference_43.ImplementationConstraint_43.MultiLangString_87.LangString_303;
								part LangString_303 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_9 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh5";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.LangString_304;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.Description_45;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.ExternalReference_44;
					part LangString_304 : LangString :> name {
						attribute :>> content = "Beh5";
					}
					part Description_45 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.Description_45.MultiLangString_88;
						part MultiLangString_88 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.Description_45.MultiLangString_88.LangString_305;
							part LangString_305 : LangString :> value {
								attribute :>> content = "The LRE shall transition from MOM to OCM, if it determines that it is in an OPEZ ("inOPEZ").";
							}
						}
					}
					part ExternalReference_44 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.ExternalReference_44.LangString_306;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.ExternalReference_44.LangString_307;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.ExternalReference_44.LangString_308;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.ExternalReference_44.LangString_309;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.ExternalReference_44.ImplementationConstraint_44;
						part LangString_306 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_307 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_308 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_309 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_44 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.ExternalReference_44.ImplementationConstraint_44.MultiLangString_89;
							part MultiLangString_89 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_9.ExternalReference_44.ImplementationConstraint_44.MultiLangString_89.LangString_310;
								part LangString_310 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_10 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh6";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.LangString_311;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.Description_46;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.ExternalReference_45;
					part LangString_311 : LangString :> name {
						attribute :>> content = "Beh6";
					}
					part Description_46 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.Description_46.MultiLangString_90;
						part MultiLangString_90 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.Description_46.MultiLangString_90.LangString_312;
							part LangString_312 : LangString :> value {
								attribute :>> content = "The LRE shall transition from MOM to OCM, if the Event "reqOCM" is triggered.";
							}
						}
					}
					part ExternalReference_45 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.ExternalReference_45.LangString_313;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.ExternalReference_45.LangString_314;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.ExternalReference_45.LangString_315;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.ExternalReference_45.LangString_316;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.ExternalReference_45.ImplementationConstraint_45;
						part LangString_313 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_314 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_315 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_316 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_45 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.ExternalReference_45.ImplementationConstraint_45.MultiLangString_91;
							part MultiLangString_91 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_10.ExternalReference_45.ImplementationConstraint_45.MultiLangString_91.LangString_317;
								part LangString_317 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_11 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh8";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.LangString_318;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.Description_47;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.ExternalReference_46;
					part LangString_318 : LangString :> name {
						attribute :>> content = "Beh8";
					}
					part Description_47 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.Description_47.MultiLangString_92;
						part MultiLangString_92 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.Description_47.MultiLangString_92.LangString_319;
							part LangString_319 : LangString :> value {
								attribute :>> content = "The LRE shall transition from MOM to CAM, if it determines that the Closest Distance of Approach ("CDA") to an obstacle is less than the defined minimal overall safe distance allowed to an obstacle ("MinSafeDist"), and that the Time at Closest Point of Approach to an obstacle ("TCPA") is greater than or equal to 0.";
							}
						}
					}
					part ExternalReference_46 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.ExternalReference_46.LangString_320;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.ExternalReference_46.LangString_321;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.ExternalReference_46.LangString_322;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.ExternalReference_46.LangString_323;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.ExternalReference_46.ImplementationConstraint_46;
						part LangString_320 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_321 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_322 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_323 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_46 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.ExternalReference_46.ImplementationConstraint_46.MultiLangString_93;
							part MultiLangString_93 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_11.ExternalReference_46.ImplementationConstraint_46.MultiLangString_93.LangString_324;
								part LangString_324 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_12 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh7";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.LangString_325;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.Description_48;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.ExternalReference_47;
					part LangString_325 : LangString :> name {
						attribute :>> content = "Beh7";
					}
					part Description_48 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.Description_48.MultiLangString_94;
						part MultiLangString_94 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.Description_48.MultiLangString_94.LangString_326;
							part LangString_326 : LangString :> value {
								attribute :>> content = "The LRE shall transition from MOM to OCM, if the Event "endTask" is triggered, then the LRE triggers the Event "advVel", to set the velocity of the AUV to 0.";
							}
						}
					}
					part ExternalReference_47 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.ExternalReference_47.LangString_327;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.ExternalReference_47.LangString_328;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.ExternalReference_47.LangString_329;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.ExternalReference_47.LangString_330;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.ExternalReference_47.ImplementationConstraint_47;
						part LangString_327 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_328 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_329 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_330 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_47 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.ExternalReference_47.ImplementationConstraint_47.MultiLangString_95;
							part MultiLangString_95 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_12.ExternalReference_47.ImplementationConstraint_47.MultiLangString_95.LangString_331;
								part LangString_331 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_13 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh9";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.LangString_332;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.Description_49;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.ExternalReference_48;
					part LangString_332 : LangString :> name {
						attribute :>> content = "Beh9";
					}
					part Description_49 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.Description_49.MultiLangString_96;
						part MultiLangString_96 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.Description_49.MultiLangString_96.LangString_333;
							part LangString_333 : LangString :> value {
								attribute :>> content = "The LRE shall transition from MOM to HCM, if the horizontal velocity ("hvel") is greater than or equal to 0.1, the horizontal distance ("hdist") to the closest static obstacle ("cstc") is less than the defined allowed horizontal distance to static osbstacle ("StaticObsHorizDist").";
							}
						}
					}
					part ExternalReference_48 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.ExternalReference_48.LangString_334;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.ExternalReference_48.LangString_335;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.ExternalReference_48.LangString_336;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.ExternalReference_48.LangString_337;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.ExternalReference_48.ImplementationConstraint_48;
						part LangString_334 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_335 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_336 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_337 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_48 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.ExternalReference_48.ImplementationConstraint_48.MultiLangString_97;
							part MultiLangString_97 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_13.ExternalReference_48.ImplementationConstraint_48.MultiLangString_97.LangString_338;
								part LangString_338 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_14 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh10";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.LangString_339;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.Description_50;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.ExternalReference_49;
					part LangString_339 : LangString :> name {
						attribute :>> content = "Beh10";
					}
					part Description_50 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.Description_50.MultiLangString_98;
						part MultiLangString_98 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.Description_50.MultiLangString_98.LangString_340;
							part LangString_340 : LangString :> value {
								attribute :>> content = "The LRE shall transition from MOM to HCM, if the vertical distance (call to "vdist") to the closest static obstacle ("cstc") is less than or equal to the defined allowed default vertical distance to a static obstacle ("StaticObsDfltVertDist").";
							}
						}
					}
					part ExternalReference_49 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.ExternalReference_49.LangString_341;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.ExternalReference_49.LangString_342;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.ExternalReference_49.LangString_343;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.ExternalReference_49.LangString_344;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.ExternalReference_49.ImplementationConstraint_49;
						part LangString_341 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_342 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_343 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_344 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_49 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.ExternalReference_49.ImplementationConstraint_49.MultiLangString_99;
							part MultiLangString_99 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_14.ExternalReference_49.ImplementationConstraint_49.MultiLangString_99.LangString_345;
								part LangString_345 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_15 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh11";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.LangString_346;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.Description_51;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.ExternalReference_50;
					part LangString_346 : LangString :> name {
						attribute :>> content = "Beh11";
					}
					part Description_51 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.Description_51.MultiLangString_100;
						part MultiLangString_100 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.Description_51.MultiLangString_100.LangString_347;
							part LangString_347 : LangString :> value {
								attribute :>> content = "The LRE shall transition from MOM to HCM, if the vertical velocity (call to "hvel") is greater than or equal to 0.1, the vertical distance (call to "hdist") to the closest static obstacle ("cstc") is less than the defined allowed vertical distance to static osbstacle ("StaticObsVertDist").";
							}
						}
					}
					part ExternalReference_50 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.ExternalReference_50.LangString_348;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.ExternalReference_50.LangString_349;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.ExternalReference_50.LangString_350;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.ExternalReference_50.LangString_351;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.ExternalReference_50.ImplementationConstraint_50;
						part LangString_348 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_349 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_350 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_351 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_50 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.ExternalReference_50.ImplementationConstraint_50.MultiLangString_101;
							part MultiLangString_101 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_15.ExternalReference_50.ImplementationConstraint_50.MultiLangString_101.LangString_352;
								part LangString_352 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_16 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh12";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.LangString_353;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.Description_52;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.ExternalReference_51;
					part LangString_353 : LangString :> name {
						attribute :>> content = "Beh12";
					}
					part Description_52 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.Description_52.MultiLangString_102;
						part MultiLangString_102 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.Description_52.MultiLangString_102.LangString_354;
							part LangString_354 : LangString :> value {
								attribute :>> content = "The LRE shall transition from MOM to HCM, if the Event "reqHCM" is triggered.";
							}
						}
					}
					part ExternalReference_51 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.ExternalReference_51.LangString_355;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.ExternalReference_51.LangString_356;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.ExternalReference_51.LangString_357;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.ExternalReference_51.LangString_358;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.ExternalReference_51.ImplementationConstraint_51;
						part LangString_355 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_356 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_357 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_358 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_51 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.ExternalReference_51.ImplementationConstraint_51.MultiLangString_103;
							part MultiLangString_103 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_16.ExternalReference_51.ImplementationConstraint_51.MultiLangString_103.LangString_359;
								part LangString_359 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_17 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh13";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.LangString_360;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.Description_53;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.ExternalReference_52;
					part LangString_360 : LangString :> name {
						attribute :>> content = "Beh13";
					}
					part Description_53 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.Description_53.MultiLangString_104;
						part MultiLangString_104 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.Description_53.MultiLangString_104.LangString_361;
							part LangString_361 : LangString :> value {
								attribute :>> content = "The LRE shall transition from HCM to MOM, if the horizontal distance (call to "hdist") to the closest static obstacle ("cstc") is greater than the allowed horizondal distance to a static obstacle ("StaticObsHorzDist"), and the vertical distance (call to "vdist") to the closest static obstacle ("cstc") is greater than the allowed vertical distance to a static obstacle ("StaticObsVertDist").";
							}
						}
					}
					part ExternalReference_52 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.ExternalReference_52.LangString_362;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.ExternalReference_52.LangString_363;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.ExternalReference_52.LangString_364;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.ExternalReference_52.LangString_365;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.ExternalReference_52.ImplementationConstraint_52;
						part LangString_362 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_363 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_364 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_365 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_52 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.ExternalReference_52.ImplementationConstraint_52.MultiLangString_105;
							part MultiLangString_105 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_17.ExternalReference_52.ImplementationConstraint_52.MultiLangString_105.LangString_366;
								part LangString_366 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_18 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh14";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.LangString_367;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.Description_54;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.ExternalReference_53;
					part LangString_367 : LangString :> name {
						attribute :>> content = "Beh14";
					}
					part Description_54 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.Description_54.MultiLangString_106;
						part MultiLangString_106 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.Description_54.MultiLangString_106.LangString_368;
							part LangString_368 : LangString :> value {
								attribute :>> content = "The LRE shall transition from HCM to CAM, if the the Closest Distance of Approach ("CDA") to an obstacle is less than the defined minimal safe distance allowed to an obstacle ("MinSafeDist"), and that the Time at Closest Point of Approach to an obstacle ("TCPA") is greater than or equal to 0.";
							}
						}
					}
					part ExternalReference_53 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.ExternalReference_53.LangString_369;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.ExternalReference_53.LangString_370;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.ExternalReference_53.LangString_371;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.ExternalReference_53.LangString_372;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.ExternalReference_53.ImplementationConstraint_53;
						part LangString_369 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_370 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_371 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_372 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_53 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.ExternalReference_53.ImplementationConstraint_53.MultiLangString_107;
							part MultiLangString_107 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_18.ExternalReference_53.ImplementationConstraint_53.MultiLangString_107.LangString_373;
								part LangString_373 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_19 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh15";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.LangString_374;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.Description_55;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.ExternalReference_54;
					part LangString_374 : LangString :> name {
						attribute :>> content = "Beh15";
					}
					part Description_55 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.Description_55.MultiLangString_108;
						part MultiLangString_108 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.Description_55.MultiLangString_108.LangString_375;
							part LangString_375 : LangString :> value {
								attribute :>> content = "The LRE shall transition from HCM to OCM, if the Event "reqOCM" is triggered.";
							}
						}
					}
					part ExternalReference_54 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.ExternalReference_54.LangString_376;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.ExternalReference_54.LangString_377;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.ExternalReference_54.LangString_378;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.ExternalReference_54.LangString_379;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.ExternalReference_54.ImplementationConstraint_54;
						part LangString_376 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_377 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_378 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_379 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_54 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.ExternalReference_54.ImplementationConstraint_54.MultiLangString_109;
							part MultiLangString_109 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_19.ExternalReference_54.ImplementationConstraint_54.MultiLangString_109.LangString_380;
								part LangString_380 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_20 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh16";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.LangString_381;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.Description_56;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.ExternalReference_55;
					part LangString_381 : LangString :> name {
						attribute :>> content = "Beh16";
					}
					part Description_56 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.Description_56.MultiLangString_110;
						part MultiLangString_110 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.Description_56.MultiLangString_110.LangString_382;
							part LangString_382 : LangString :> value {
								attribute :>> content = "The LRE shall transition from HCM to OCM, if it determines that it is in an OPEZ ("inOPEZ").";
							}
						}
					}
					part ExternalReference_55 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.ExternalReference_55.LangString_383;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.ExternalReference_55.LangString_384;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.ExternalReference_55.LangString_385;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.ExternalReference_55.LangString_386;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.ExternalReference_55.ImplementationConstraint_55;
						part LangString_383 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_384 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_385 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_386 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_55 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.ExternalReference_55.ImplementationConstraint_55.MultiLangString_111;
							part MultiLangString_111 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_20.ExternalReference_55.ImplementationConstraint_55.MultiLangString_111.LangString_387;
								part LangString_387 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_21 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh17";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.LangString_388;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.Description_57;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.ExternalReference_56;
					part LangString_388 : LangString :> name {
						attribute :>> content = "Beh17";
					}
					part Description_57 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.Description_57.MultiLangString_112;
						part MultiLangString_112 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.Description_57.MultiLangString_112.LangString_389;
							part LangString_389 : LangString :> value {
								attribute :>> content = "The LRE shall transition from CAM to OCM, if the Event "reqOCM" is triggered.";
							}
						}
					}
					part ExternalReference_56 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.ExternalReference_56.LangString_390;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.ExternalReference_56.LangString_391;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.ExternalReference_56.LangString_392;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.ExternalReference_56.LangString_393;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.ExternalReference_56.ImplementationConstraint_56;
						part LangString_390 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_391 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_392 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_393 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_56 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.ExternalReference_56.ImplementationConstraint_56.MultiLangString_113;
							part MultiLangString_113 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_21.ExternalReference_56.ImplementationConstraint_56.MultiLangString_113.LangString_394;
								part LangString_394 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
				part FunctionalRequirement_22 : FunctionalRequirement :> requirementAsset {
					attribute :>> gid = "LRE-Beh18";
					attribute :>> priority = 5;
					ref part :> name = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.LangString_395;
					ref part :> description = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.Description_58;
					ref part :> externalReference = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.ExternalReference_57;
					part LangString_395 : LangString :> name {
						attribute :>> content = "Beh18";
					}
					part Description_58 : Description :> description {
						ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.Description_58.MultiLangString_114;
						part MultiLangString_114 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.Description_58.MultiLangString_114.LangString_396;
							part LangString_396 : LangString :> value {
								attribute :>> content = "The LRE shall transition from CAM to OCM, if the the Closest Distance of Approach ("CDA") to an obstacle is greater than or equal to the defined minimal safe distance allowed to an obstacle ("MinSafeDist").";
							}
						}
					}
					part ExternalReference_57 : ExternalReference :> externalReference {
						ref part :> location = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.ExternalReference_57.LangString_397;
						ref part :> type = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.ExternalReference_57.LangString_398;
						ref part :> 'metadata' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.ExternalReference_57.LangString_399;
						ref part :> version = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.ExternalReference_57.LangString_400;
						ref part :> implementationConstraint = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.ExternalReference_57.ImplementationConstraint_57;
						part LangString_397 : LangString :> location {
							attribute :>> content = "location";
						}
						part LangString_398 : LangString :> type {
							attribute :>> content = "type";
						}
						part LangString_399 : LangString :> metadata {
							attribute :>> content = "metadata";
						}
						part LangString_400 : LangString :> version {
							attribute :>> content = "version";
						}
						part ImplementationConstraint_57 : ImplementationConstraint :> implementationConstraint {
							ref part :> content = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.ExternalReference_57.ImplementationConstraint_57.MultiLangString_115;
							part MultiLangString_115 : MultiLangString :> content {
								ref part :> 'value' = RequirementPackage_2.RequirementPackage_3.FunctionalRequirement_22.ExternalReference_57.ImplementationConstraint_57.MultiLangString_115.LangString_401;
								part LangString_401 : LangString :> value {
									attribute :>> content = "Constraint";
								}
							}
						}
					}
				}
			}
			part FunctionalRequirement_23 : FunctionalRequirement :> requirementAsset {
				attribute :>> gid = "Platform-F1";
				attribute :>> priority = 5;
				attribute :>> function = "odist";
				attribute :>> inputs = "Obstacle obstacle";
				attribute :>> outputs = "real distance";
				attribute :>> source = "AUV_Platform";
				attribute :>> destination = "Navigation module, Obstacle avoidance module, or any component requiring proximity awareness";
				attribute :>> 'action' = "Computes the Euclidean distance from the AUV¡¯s current position to the given Obstacle";
				attribute :>> requires = "The Obstacle must have a defined position; the AUV¡¯s current position must be available";
				attribute :>> pre_condition = "Both the AUV and the Obstacle are located in the same coordinate reference frame";
				attribute :>> post_condition = "A non-negative real value representing the distance is returned";
				attribute :>> side_effects = "None ¨C this function is read-only and does not alter system state";
				ref part :> name = RequirementPackage_2.FunctionalRequirement_23.LangString_402;
				ref part :> description = RequirementPackage_2.FunctionalRequirement_23.Description_59;
				ref part :> externalReference = RequirementPackage_2.FunctionalRequirement_23.ExternalReference_58;
				part LangString_402 : LangString :> name {
					attribute :>> content = "Function1";
				}
				part Description_59 : Description :> description {
					ref part :> content = RequirementPackage_2.FunctionalRequirement_23.Description_59.MultiLangString_116;
					part MultiLangString_116 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.FunctionalRequirement_23.Description_59.MultiLangString_116.LangString_403;
						part LangString_403 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" shall provide a Function named "odist", which takes an "Obstacle" as input, that returns the distance from the AUV to the Obstacle (as "real").";
						}
					}
				}
				part ExternalReference_58 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.FunctionalRequirement_23.ExternalReference_58.LangString_404;
					ref part :> type = RequirementPackage_2.FunctionalRequirement_23.ExternalReference_58.LangString_405;
					ref part :> 'metadata' = RequirementPackage_2.FunctionalRequirement_23.ExternalReference_58.LangString_406;
					ref part :> version = RequirementPackage_2.FunctionalRequirement_23.ExternalReference_58.LangString_407;
					ref part :> implementationConstraint = RequirementPackage_2.FunctionalRequirement_23.ExternalReference_58.ImplementationConstraint_58;
					part LangString_404 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_405 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_406 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_407 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_58 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.FunctionalRequirement_23.ExternalReference_58.ImplementationConstraint_58.MultiLangString_117;
						part MultiLangString_117 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.FunctionalRequirement_23.ExternalReference_58.ImplementationConstraint_58.MultiLangString_117.LangString_408;
							part LangString_408 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
			}
			part FunctionalRequirement_24 : FunctionalRequirement :> requirementAsset {
				attribute :>> gid = "Platform-F2";
				attribute :>> priority = 5;
				ref part :> name = RequirementPackage_2.FunctionalRequirement_24.LangString_409;
				ref part :> description = RequirementPackage_2.FunctionalRequirement_24.Description_60;
				ref part :> externalReference = RequirementPackage_2.FunctionalRequirement_24.ExternalReference_59;
				part LangString_409 : LangString :> name {
					attribute :>> content = "Function2";
				}
				part Description_60 : Description :> description {
					ref part :> content = RequirementPackage_2.FunctionalRequirement_24.Description_60.MultiLangString_118;
					part MultiLangString_118 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.FunctionalRequirement_24.Description_60.MultiLangString_118.LangString_410;
						part LangString_410 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" shall provide a Function named "hdist", which takes an "Obstacle" as input, that returns the horizontal distance from the AUV to the Obstacle (as "real").";
						}
					}
				}
				part ExternalReference_59 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.FunctionalRequirement_24.ExternalReference_59.LangString_411;
					ref part :> type = RequirementPackage_2.FunctionalRequirement_24.ExternalReference_59.LangString_412;
					ref part :> 'metadata' = RequirementPackage_2.FunctionalRequirement_24.ExternalReference_59.LangString_413;
					ref part :> version = RequirementPackage_2.FunctionalRequirement_24.ExternalReference_59.LangString_414;
					ref part :> implementationConstraint = RequirementPackage_2.FunctionalRequirement_24.ExternalReference_59.ImplementationConstraint_59;
					part LangString_411 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_412 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_413 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_414 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_59 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.FunctionalRequirement_24.ExternalReference_59.ImplementationConstraint_59.MultiLangString_119;
						part MultiLangString_119 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.FunctionalRequirement_24.ExternalReference_59.ImplementationConstraint_59.MultiLangString_119.LangString_415;
							part LangString_415 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
			}
			part FunctionalRequirement_25 : FunctionalRequirement :> requirementAsset {
				attribute :>> gid = "Platform-F3";
				attribute :>> priority = 5;
				ref part :> name = RequirementPackage_2.FunctionalRequirement_25.LangString_416;
				ref part :> description = RequirementPackage_2.FunctionalRequirement_25.Description_61;
				ref part :> externalReference = RequirementPackage_2.FunctionalRequirement_25.ExternalReference_60;
				part LangString_416 : LangString :> name {
					attribute :>> content = "Function3";
				}
				part Description_61 : Description :> description {
					ref part :> content = RequirementPackage_2.FunctionalRequirement_25.Description_61.MultiLangString_120;
					part MultiLangString_120 : MultiLangString :> content {
						ref part :> 'value' = RequirementPackage_2.FunctionalRequirement_25.Description_61.MultiLangString_120.LangString_417;
						part LangString_417 : LangString :> value {
							attribute :>> content = "The "AUV_Platform" shall provide a Function named "vdist", which takes an "Obstacle" as input, that returns the vertical distance from the AUV to the Obstacle (as "real").";
						}
					}
				}
				part ExternalReference_60 : ExternalReference :> externalReference {
					ref part :> location = RequirementPackage_2.FunctionalRequirement_25.ExternalReference_60.LangString_418;
					ref part :> type = RequirementPackage_2.FunctionalRequirement_25.ExternalReference_60.LangString_419;
					ref part :> 'metadata' = RequirementPackage_2.FunctionalRequirement_25.ExternalReference_60.LangString_420;
					ref part :> version = RequirementPackage_2.FunctionalRequirement_25.ExternalReference_60.LangString_421;
					ref part :> implementationConstraint = RequirementPackage_2.FunctionalRequirement_25.ExternalReference_60.ImplementationConstraint_60;
					part LangString_418 : LangString :> location {
						attribute :>> content = "location";
					}
					part LangString_419 : LangString :> type {
						attribute :>> content = "type";
					}
					part LangString_420 : LangString :> metadata {
						attribute :>> content = "metadata";
					}
					part LangString_421 : LangString :> version {
						attribute :>> content = "version";
					}
					part ImplementationConstraint_60 : ImplementationConstraint :> implementationConstraint {
						ref part :> content = RequirementPackage_2.FunctionalRequirement_25.ExternalReference_60.ImplementationConstraint_60.MultiLangString_121;
						part MultiLangString_121 : MultiLangString :> content {
							ref part :> 'value' = RequirementPackage_2.FunctionalRequirement_25.ExternalReference_60.ImplementationConstraint_60.MultiLangString_121.LangString_422;
							part LangString_422 : LangString :> value {
								attribute :>> content = "Constraint";
							}
						}
					}
				}
			}
		}
	}
}

