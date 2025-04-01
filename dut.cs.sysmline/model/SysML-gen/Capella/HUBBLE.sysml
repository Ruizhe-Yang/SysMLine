package HUBBLE {
	public import capellamodeller::*;
	public import oa::*;
	public import pa::*;
	public import deployment::*;
	public import sharedmodel::*;
	public import activity::*;
	public import behavior::*;
	public import capellacommon::*;
	public import fa::*;
	public import interaction::*;
	public import cs::*;
	public import information::*;
	public import communication::*;
	public import datatype::*;
	public import datavalue::*;
	public import libraries::*;
	public import re::*;
	public import capellacore::*;
	public import modellingcore::*;
	public import emde::*;
	public import ctx::*;
	public import la::*;
	public import epbs::*;
	part Project_1 : Project {
		attribute :>> id = "f9b79fca-73fe-42c7-94d3-246d26123ffb";
		attribute :>> name = "HUBBLE Space Telescope";
		attribute :>> visibleInDoc = true;
		attribute :>> visibleInLM = true;
		ref part :> ownedExtensions = ModelInformation_1;
		ref part :> ownedEnumerationPropertyTypes = EnumerationPropertyType_1;
		ref part :> keyValuePairs = KeyValue_1;
		ref part :> ownedModelRoots = SystemEngineering_1;
		part ModelInformation_1 : ModelInformation :> ownedExtensions {
			attribute :>> id = "f2660df2-879c-4996-a814-98e5ab21884f";
		}
		part EnumerationPropertyType_1 : EnumerationPropertyType :> ownedEnumerationPropertyTypes {
			attribute :>> id = "3505f15c-e63e-4fb8-971e-fab11c1428e6";
			attribute :>> name = "ProgressStatus";
			attribute :>> visibleInDoc = true;
			attribute :>> visibleInLM = true;
			ref part :> ownedLiterals = (EnumerationPropertyType_1.EnumerationPropertyLiteral_1, EnumerationPropertyType_1.EnumerationPropertyLiteral_2, EnumerationPropertyType_1.EnumerationPropertyLiteral_3, EnumerationPropertyType_1.EnumerationPropertyLiteral_4, EnumerationPropertyType_1.EnumerationPropertyLiteral_5, EnumerationPropertyType_1.EnumerationPropertyLiteral_6);
			part EnumerationPropertyLiteral_1 : EnumerationPropertyLiteral :> ownedLiterals {
				attribute :>> id = "b8f85486-6ac6-400f-9208-98f7414543a9";
				attribute :>> name = "DRAFT";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
			}
			part EnumerationPropertyLiteral_2 : EnumerationPropertyLiteral :> ownedLiterals {
				attribute :>> id = "18f0a205-b972-49d5-a58f-22ecb1eed8b5";
				attribute :>> name = "TO_BE_REVIEWED";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
			}
			part EnumerationPropertyLiteral_3 : EnumerationPropertyLiteral :> ownedLiterals {
				attribute :>> id = "cf8899a9-f2c8-43da-a9da-6cb456ced962";
				attribute :>> name = "TO_BE_DISCUSSED";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
			}
			part EnumerationPropertyLiteral_4 : EnumerationPropertyLiteral :> ownedLiterals {
				attribute :>> id = "769296ed-9698-4542-8996-759ec142d0de";
				attribute :>> name = "REWORK_NECESSARY";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
			}
			part EnumerationPropertyLiteral_5 : EnumerationPropertyLiteral :> ownedLiterals {
				attribute :>> id = "af95638b-1319-4cfc-8081-eba5c8a0810f";
				attribute :>> name = "UNDER_REWORK";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
			}
			part EnumerationPropertyLiteral_6 : EnumerationPropertyLiteral :> ownedLiterals {
				attribute :>> id = "e091eff5-1925-4e62-9ab4-a42898fb188b";
				attribute :>> name = "REVIEWED_OK";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
			}
		}
		part KeyValue_1 : KeyValue :> keyValuePairs {
			attribute :>> id = "e528bd34-9941-4994-8888-269ad4a29b17";
			attribute :>> visibleInDoc = true;
			attribute :>> visibleInLM = true;
			attribute :>> key = "projectApproach";
			attribute :>> 'value' = "SingletonComponents";
		}
		part SystemEngineering_1 : SystemEngineering :> ownedModelRoots {
			attribute :>> id = "0a51affd-e196-4e2a-a777-62394629d1b0";
			attribute :>> name = "HUBBLE Space Telescope";
			attribute :>> visibleInDoc = true;
			attribute :>> visibleInLM = true;
			attribute :>> description = "description";
			ref part :> ownedArchitectures = (SystemEngineering_1.OperationalAnalysis_1, SystemEngineering_1.SystemAnalysis_1, SystemEngineering_1.LogicalArchitecture_1, SystemEngineering_1.PhysicalArchitecture_1, SystemEngineering_1.EPBSArchitecture_1);
			ref part :> containedOperationalAnalysis = SystemEngineering_1.OperationalAnalysis_1;
			ref part :> containedSystemAnalysis = SystemEngineering_1.SystemAnalysis_1;
			ref part :> containedLogicalArchitectures = SystemEngineering_1.LogicalArchitecture_1;
			ref part :> containedPhysicalArchitectures = SystemEngineering_1.PhysicalArchitecture_1;
			ref part :> containedEPBSArchitectures = SystemEngineering_1.EPBSArchitecture_1;
			part OperationalAnalysis_1 : OperationalAnalysis :> ownedArchitectures {
				attribute :>> id = "29722a87-51c4-4904-8bd9-43bbfab73a05";
				attribute :>> name = "Operational Analysis";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
				ref part :> ownedFunctionPkg = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1;
				ref part :> ownedAbstractCapabilityPkg = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1;
				ref part :> ownedInterfacePkg = SystemEngineering_1.OperationalAnalysis_1.InterfacePkg_1;
				ref part :> ownedDataPkg = SystemEngineering_1.OperationalAnalysis_1.DataPkg_1;
				ref part :> ownedRolePkg = SystemEngineering_1.OperationalAnalysis_1.RolePkg_1;
				ref part :> ownedEntityPkg = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1;
				ref part :> containedOperationalCapabilityPkg = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1;
				ref part :> containedOperationalActivityPkg = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1;
				part OperationalActivityPkg_1 : OperationalActivityPkg :> ownedFunctionPkg {
					attribute :>> id = "8575a576-886d-457a-b078-ebbfcf726865";
					attribute :>> name = "Operational Activities";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedOperationalActivities = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1;
					part OperationalActivity_1 : OperationalActivity :> ownedOperationalActivities {
						attribute :>> id = "5b578a67-ec47-4c4e-8ac8-546844eaf79d";
						attribute :>> name = "Root Operational Activity";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						attribute :>> kind = FUNCTION;
						ref part :> ownedFunctions = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11);
						ref part :> ownedFunctionalExchanges = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_1, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_3, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_10);
						ref part :> subFunctions = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11);
						ref part :> containedOperationalActivities = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11);
						ref part :> childrenOperationalActivities = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11);
						part OperationalActivity_2 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "41e97b7e-79d9-4b37-80f6-0ba4d5749077";
							attribute :>> name = "Maintaining and enhancing the archive data";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part OperationalActivity_3 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "76353d1b-1d2b-4c08-a0a5-504a7daed63b";
							attribute :>> name = "Archive the dataset";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part OperationalActivity_4 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "c250630c-7f75-4eca-a351-63c1ba50e1e5";
							attribute :>> name = "Highlight the result";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part OperationalActivity_5 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "c99987e0-eb90-4ee7-9ea8-07aa805d79d5";
							attribute :>> name = "Manage science and engineering data recorders";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part OperationalActivity_6 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "4062339e-fa7c-4a43-9039-50889f456c86";
							attribute :>> name = "Broadcast information from earth";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part OperationalActivity_7 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "2b9a08c5-31ea-4e3b-b949-9247c055c459";
							attribute :>> name = "Broadcast information from space";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part OperationalActivity_8 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "62a2777e-8b8b-440b-99cb-dbd737bd4832";
							attribute :>> name = "Diffuse light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part OperationalActivity_9 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "b3c1c76e-0ef3-4821-8879-1b75792c7af4";
							attribute :>> name = "Load computers with command sequences";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part OperationalActivity_10 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "8cca56aa-5e42-47e7-b3ce-8b8c53d7910a";
							attribute :>> name = "Creat command timelines";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part OperationalActivity_11 : OperationalActivity :> ownedFunctions {
							attribute :>> id = "fb196a16-08c8-4c59-a196-bca22a51f56a";
							attribute :>> name = "Planning and scheduling";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
						}
						part FunctionalExchange_1 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "2cbeb15d-28cc-4436-92fe-41f3c62e1ab3";
							attribute :>> name = "Science highlights";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4;
						}
						part FunctionalExchange_2 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "378a64fe-1f8a-4e4b-b4cd-d92d29255fe4";
							attribute :>> name = "Science highlights";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4;
						}
						part FunctionalExchange_3 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "f346e7be-80d1-4c72-a396-500b5add40fa";
							attribute :>> name = "Science information";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5;
						}
						part FunctionalExchange_4 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "5f260080-b380-4b97-9e95-d2c4e0087489";
							attribute :>> name = "Space information";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
						}
						part FunctionalExchange_5 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "25ed3e48-2046-44ce-bfdc-c3913be95b90";
							attribute :>> name = "Earth information";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
						}
						part FunctionalExchange_6 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "c0be7677-a6be-469e-a1ec-15ba219bf983";
							attribute :>> name = "Light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8;
						}
						part FunctionalExchange_7 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "c442a7cd-8cdd-4255-91d1-3dff6036b325";
							attribute :>> name = "Sequences";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9;
						}
						part FunctionalExchange_8 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "28a712e7-7ac0-4e0c-97bd-1799c2b1044f";
							attribute :>> name = "Space information";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
						}
						part FunctionalExchange_9 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "02586397-c7ab-4106-b440-5e8a3a72d1dd";
							attribute :>> name = "Request";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11;
						}
						part FunctionalExchange_10 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "15f34810-05aa-4531-8de8-64f7e68c4834";
							attribute :>> name = "Command timelines";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9;
							ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10;
						}
					}
				}
				part OperationalCapabilityPkg_1 : OperationalCapabilityPkg :> ownedAbstractCapabilityPkg {
					attribute :>> id = "145137d1-34f2-4f8a-b499-02eae71daf77";
					attribute :>> name = "Operational Capabilities";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedOperationalCapabilities = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
					part OperationalCapability_1 : OperationalCapability :> ownedOperationalCapabilities {
						attribute :>> id = "bafa93ef-1ebb-4f5a-b4c9-b262075bcdc8";
						attribute :>> name = "Help humanity to explore the universe";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> involvedInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.FunctionalChainAbstractCapabilityInvolvement_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.FunctionalChainAbstractCapabilityInvolvement_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_5, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_6, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_7, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_8, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_9, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_10, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_5);
						ref part :> ownedFunctionalChains = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2);
						ref part :> ownedFunctionalChainAbstractCapabilityInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.FunctionalChainAbstractCapabilityInvolvement_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.FunctionalChainAbstractCapabilityInvolvement_2);
						ref part :> ownedAbstractFunctionAbstractCapabilityInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_5, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_6, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_7, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_8, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_9, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.AbstractFunctionAbstractCapabilityInvolvement_10);
						ref part :> involvedAbstractFunctions = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11);
						ref part :> involvedFunctionalChains = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2);
						ref part :> ownedEntityOperationalCapabilityInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.EntityOperationalCapabilityInvolvement_5);
						ref part :> involvedEntities = (SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4);
						part OperationalProcess_1 : OperationalProcess :> ownedFunctionalChains {
							attribute :>> id = "a0aa0365-7a8c-4208-9de4-9897afbf2734";
							attribute :>> name = "Select a cosmic target";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_5);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_5);
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementLink_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_5);
							ref part :> involvedFunctions = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7);
							ref part :> involvedFunctionalExchanges = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_5);
							ref part :> involvedElements = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7);
							ref part :> enactedFunctions = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7);
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_1, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_2, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_3, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_4, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_5);
							part FunctionalChainInvolvementLink_1 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "dc919f3e-36ba-4a4b-9111-5c3421a404bd";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_9;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_1;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_2;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_9;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_2;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_1;
							}
							part FunctionalChainInvolvementFunction_1 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "a4bf88ff-9114-43f8-aa92-b6383a09d214";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10;
							}
							part FunctionalChainInvolvementFunction_2 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "11643b01-130e-483d-9d86-e1b83219f111";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11;
							}
							part FunctionalChainInvolvementLink_2 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "daeefcd8-31f5-4639-9b88-7506360fc47f";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_10;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_3;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_1;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_10;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_1;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_3;
							}
							part FunctionalChainInvolvementFunction_3 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "972aaa8d-405b-4ab9-9f59-83b284202b0d";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9;
							}
							part FunctionalChainInvolvementLink_3 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "9d5d40ab-8d9e-400d-b5d0-df41b84c3542";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_7;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_4;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_3;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_7;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_3;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_4;
							}
							part FunctionalChainInvolvementFunction_4 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "4299e7fd-d816-4f53-9cd1-906e90972ffe";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
							}
							part FunctionalChainInvolvementLink_4 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "b8937a3c-ce7c-49af-9e03-acc78131701d";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_5;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_5;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_4;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_5;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_4;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1.FunctionalChainInvolvementFunction_5;
							}
							part FunctionalChainInvolvementFunction_5 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "fe50c128-65ae-4925-a40b-237b42721486";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
							}
						}
						part OperationalProcess_2 : OperationalProcess :> ownedFunctionalChains {
							attribute :>> id = "9790683a-8911-429d-9639-234eb5d9bd8f";
							attribute :>> name = "Monitor space environment";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_5, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_6, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_7, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_6, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_8, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_7, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_9, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_8, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_9, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_11, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_10, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_12);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_5, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_6, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_7, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_6, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_8, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_7, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_9, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_8, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_9, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_11, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_10, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_12);
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_5, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_6, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_7, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_6, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_8, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_7, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_9, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_8, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_9, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_11, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementLink_10, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_12);
							ref part :> involvedFunctions = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3);
							ref part :> involvedFunctionalExchanges = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_3, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_1, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_2);
							ref part :> involvedElements = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_3, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_1, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3);
							ref part :> enactedFunctions = (SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2, SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3);
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_6, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_7, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_8, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_9, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_11, SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_12);
							part FunctionalChainInvolvementLink_5 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "40a6c60a-317e-4c36-834b-d8ddd278d9b8";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_6;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_6;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_7;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_6;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_7;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_6;
							}
							part FunctionalChainInvolvementFunction_6 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "efcf3a25-34c3-478e-a846-0024ce75a4aa";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
							}
							part FunctionalChainInvolvementFunction_7 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "8c7d428a-78b4-48ea-bf14-92ad7e1ffbcd";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8;
							}
							part FunctionalChainInvolvementLink_6 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "3d8778d1-f8cc-4183-8a46-29b460ff5074";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_4;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_8;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_6;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_4;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_6;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_8;
							}
							part FunctionalChainInvolvementFunction_8 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "fab8d156-4622-422d-a09b-9f625d1c850d";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
							}
							part FunctionalChainInvolvementLink_7 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "1ad87b75-1c3c-4b3c-8a10-5c084c5b34d3";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_8;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_9;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_8;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_8;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_8;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_9;
							}
							part FunctionalChainInvolvementFunction_9 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "f054b525-4886-4ea3-a3d5-3f36e235dcb0";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5;
							}
							part FunctionalChainInvolvementLink_8 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "8f05fed8-ab22-4478-8993-688c6e48222a";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_3;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_9;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_3;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_9;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10;
							}
							part FunctionalChainInvolvementFunction_10 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "c4e012f8-cbc3-4e96-ae5b-ab898ace76ca";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4;
							}
							part FunctionalChainInvolvementLink_9 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "ed690d08-9ac7-4798-a253-3b0ab4a6f580";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_1;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_11;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_1;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_11;
							}
							part FunctionalChainInvolvementFunction_11 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "bd77e960-7a96-4fff-8e51-5b99528975d8";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2;
							}
							part FunctionalChainInvolvementLink_10 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "bbea46b3-3684-4652-8fce-a0533cad518d";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_2;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_12;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_2;
								ref part :> source = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_10;
								ref part :> target = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2.FunctionalChainInvolvementFunction_12;
							}
							part FunctionalChainInvolvementFunction_12 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "ec353cef-d8c8-43c3-b682-d3b6384bda1a";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
								ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3;
								ref part :> involvedElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3;
							}
						}
						part FunctionalChainAbstractCapabilityInvolvement_1 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "0bcdd6bc-3a5b-4805-8228-27fd318cee0d";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> functionalChain = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_1;
						}
						part FunctionalChainAbstractCapabilityInvolvement_2 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "e7d64a53-950c-4fbf-90e0-32e054c8c1a3";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> functionalChain = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1.OperationalProcess_2;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_1 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "045f5c8a-cfd1-47b8-b40e-f70d1814ac35";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_2 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "a6cbf179-e763-41b5-a038-178747d3cf3a";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_3 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "b4743ebb-c4a4-4fc5-9bf3-4008f910851c";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_4 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "8bf79d53-65db-44ae-9dae-bac21fdd6133";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_5 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "bb827779-6f6d-4707-b8bf-2fabdac265a0";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_6 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "3dd101ab-7cd6-4ed2-ab9d-97cbf096c795";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_7 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "696cbf52-aa5e-4a45-a0fe-87496976248e";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_8 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "9c252ed1-d1a9-4297-a3a8-fc12397ca65f";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_9 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "1cd82a59-1cd1-49db-966d-3ba223109f02";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_10 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "9ec7c7de-1861-4ded-ba62-cd898bc2b28f";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11;
						}
						part EntityOperationalCapabilityInvolvement_1 : EntityOperationalCapabilityInvolvement :> ownedEntityOperationalCapabilityInvolvements {
							attribute :>> id = "52b13ede-7c13-4c3f-91c7-e2472c629f0b";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1;
							ref part :> entity = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
						}
						part EntityOperationalCapabilityInvolvement_2 : EntityOperationalCapabilityInvolvement :> ownedEntityOperationalCapabilityInvolvements {
							attribute :>> id = "50e0eac2-91fd-4810-a04a-a2d8e92bbb3e";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
							ref part :> entity = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
						}
						part EntityOperationalCapabilityInvolvement_3 : EntityOperationalCapabilityInvolvement :> ownedEntityOperationalCapabilityInvolvements {
							attribute :>> id = "e8b1d119-4abf-4ac3-80c0-1d6de2b864a2";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
							ref part :> entity = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
						}
						part EntityOperationalCapabilityInvolvement_4 : EntityOperationalCapabilityInvolvement :> ownedEntityOperationalCapabilityInvolvements {
							attribute :>> id = "3e0b17eb-b4d5-4b71-b81f-1dadceaec820";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6;
							ref part :> entity = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
						}
						part EntityOperationalCapabilityInvolvement_5 : EntityOperationalCapabilityInvolvement :> ownedEntityOperationalCapabilityInvolvements {
							attribute :>> id = "3869a5ea-338f-4f25-be06-e5cafc0d2729";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> involved = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
							ref part :> entity = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
							ref part :> capability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
						}
					}
				}
				part InterfacePkg_1 : InterfacePkg :> ownedInterfacePkg {
					attribute :>> id = "e734c1aa-32ea-42fd-917e-9ad7156234f5";
					attribute :>> name = "Interfaces";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
				}
				part DataPkg_1 : DataPkg :> ownedDataPkg {
					attribute :>> id = "fb345167-0e04-4617-be32-a2fe8e1ded38";
					attribute :>> name = "Data";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					attribute :>> visibility = UNSET;
				}
				part RolePkg_1 : RolePkg :> ownedRolePkg {
					attribute :>> id = "94c91bba-2603-4eb2-a220-9cb796afe9b2";
					attribute :>> name = "Roles";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
				}
				part EntityPkg_1 : EntityPkg :> ownedEntityPkg {
					attribute :>> id = "cab1ab7d-d08b-4952-8c00-7b4d1f175ec5";
					attribute :>> name = "Operational Entities";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedParts = (SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Part_1, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Part_2, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Part_3);
					ref part :> ownedEntities = (SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9);
					part Part_1 : Part :> ownedParts {
						attribute :>> id = "37fd8853-5a60-43a6-b999-1648b6396704";
						attribute :>> name = "Space";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1;
						ref part :> type = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1;
					}
					part Part_2 : Part :> ownedParts {
						attribute :>> id = "3cd40808-be55-4032-b921-7286708098c3";
						attribute :>> name = "GODDARD Space FlightCenter";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2;
						ref part :> type = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2;
					}
					part Part_3 : Part :> ownedParts {
						attribute :>> id = "cc717139-ecfc-4d02-a495-b36eff2d4470";
						attribute :>> name = "Space Telescope Science Institure";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
						ref part :> type = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
					}
					part Entity_1 : Entity :> ownedEntities {
						attribute :>> id = "80b9faae-065f-4482-aaee-f119c4e507d8";
						attribute :>> name = "Space";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> ownedFunctionalAllocation = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1.ComponentFunctionalAllocation_1;
						part ComponentFunctionalAllocation_1 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "5f3c879c-7cbf-4966-8bc3-7cff1a9592fb";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8;
							ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8;
							ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1;
						}
					}
					part Entity_2 : Entity :> ownedEntities {
						attribute :>> id = "3fac260b-9998-4b85-967e-81c0edf48f2f";
						attribute :>> name = "GODDARD Space FlightCenter";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> ownedFeatures = (SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Part_4, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Part_5, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Part_6);
						ref part :> containedParts = (SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Part_4, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Part_5, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Part_6);
						ref part :> subEntities = (SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7);
						ref part :> ownedEntities = (SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7);
						part Part_4 : Part :> ownedFeatures {
							attribute :>> id = "bad141b6-2fe0-4ac4-8b90-071d0dcdaf03";
							attribute :>> name = "Space Segment";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3;
							ref part :> type = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3;
						}
						part Part_5 : Part :> ownedFeatures {
							attribute :>> id = "33261e95-3450-44db-9030-a20eba7a6060";
							attribute :>> name = "Ground Segment";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5;
							ref part :> type = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5;
						}
						part Part_6 : Part :> ownedFeatures {
							attribute :>> id = "0fe68d51-d1fa-4992-af56-08e50831e5e0";
							attribute :>> name = "Space Telescope Operations Control Center";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7;
							ref part :> type = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7;
						}
						part Entity_3 : Entity :> ownedEntities {
							attribute :>> id = "62271503-0d49-44e9-94e5-f847552fd72f";
							attribute :>> name = "Space Segment";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> ownedFeatures = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Part_7;
							ref part :> containedParts = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Part_7;
							ref part :> subEntities = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
							ref part :> ownedEntities = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
							part Part_7 : Part :> ownedFeatures {
								attribute :>> id = "0eb3c2ce-5b1f-4577-a345-71bd2b18fbb9";
								attribute :>> name = "Tracking & Data Relay Satellite";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
								ref part :> type = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
							}
							part Entity_4 : Entity :> ownedEntities {
								attribute :>> id = "4a50509f-62ed-43ff-af2e-71ee2dce485f";
								attribute :>> name = "Tracking & Data Relay Satellite";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> ownedFunctionalAllocation = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4.ComponentFunctionalAllocation_2;
								part ComponentFunctionalAllocation_2 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
									attribute :>> id = "d35c3e94-0702-46b4-870e-beb7c2f398c9";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
									ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
									ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
									ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
								}
							}
						}
						part Entity_5 : Entity :> ownedEntities {
							attribute :>> id = "8f6780eb-4936-4ca3-8dfa-ebd896ee8ebf";
							attribute :>> name = "Ground Segment";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> ownedFeatures = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Part_8;
							ref part :> containedParts = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Part_8;
							ref part :> subEntities = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6;
							ref part :> ownedEntities = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6;
							part Part_8 : Part :> ownedFeatures {
								attribute :>> id = "467b6fae-b25e-4d54-887a-8bd5688d9c5c";
								attribute :>> name = "White Sands Test Facility";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6;
								ref part :> type = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6;
							}
							part Entity_6 : Entity :> ownedEntities {
								attribute :>> id = "08484523-e2f3-41ad-8081-b411bd3802ad";
								attribute :>> name = "White Sands Test Facility";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> ownedFunctionalAllocation = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6.ComponentFunctionalAllocation_3;
								part ComponentFunctionalAllocation_3 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
									attribute :>> id = "2ccc3e8f-3e8e-4ebb-b4e5-afcba0392d19";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
									ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6;
									ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_6;
									ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_5.Entity_6;
								}
							}
						}
						part Entity_7 : Entity :> ownedEntities {
							attribute :>> id = "67f34ebe-dfd0-4272-a1e2-94efbcc17efa";
							attribute :>> name = "Space Telescope Operations Control Center";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> ownedFeatures = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Part_9;
							ref part :> containedParts = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Part_9;
							ref part :> subEntities = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
							ref part :> ownedEntities = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
							part Part_9 : Part :> ownedFeatures {
								attribute :>> id = "a0b8ad5f-ccad-4237-a7a9-f82770ac863e";
								attribute :>> name = "Mission operation";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
								ref part :> type = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
							}
							part Entity_8 : Entity :> ownedEntities {
								attribute :>> id = "7a375796-ac4e-49c5-b9a7-23ccaa139601";
								attribute :>> name = "Mission operation";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> ownedFunctionalAllocation = (SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8.ComponentFunctionalAllocation_4, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8.ComponentFunctionalAllocation_5);
								part ComponentFunctionalAllocation_4 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
									attribute :>> id = "7aa470a1-6869-4406-bcf2-a5533e505c6d";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5;
									ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
									ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_5;
									ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
								}
								part ComponentFunctionalAllocation_5 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
									attribute :>> id = "b2253868-cc1b-4cc3-91e3-e087775483cc";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9;
									ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
									ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_9;
									ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_7.Entity_8;
								}
							}
						}
					}
					part Entity_9 : Entity :> ownedEntities {
						attribute :>> id = "b1976c74-beea-48c8-8265-3b1b7b9251b3";
						attribute :>> name = "Space Telescope Science Institure";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> ownedFunctionalAllocation = (SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9.ComponentFunctionalAllocation_6, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9.ComponentFunctionalAllocation_7, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9.ComponentFunctionalAllocation_8, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9.ComponentFunctionalAllocation_9, SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9.ComponentFunctionalAllocation_10);
						part ComponentFunctionalAllocation_6 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "ba12e986-c33a-4d79-a6e0-381dbe4b41fc";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2;
							ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_2;
							ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
						}
						part ComponentFunctionalAllocation_7 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "eeacaf90-3ec8-4ca8-8535-90b1f502fc65";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3;
							ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_3;
							ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
						}
						part ComponentFunctionalAllocation_8 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "46233299-83c9-43ae-b3bd-b5d44701b159";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4;
							ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_4;
							ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
						}
						part ComponentFunctionalAllocation_9 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "94b633aa-b295-4d5a-9672-c8a135bea1c9";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10;
							ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_10;
							ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
						}
						part ComponentFunctionalAllocation_10 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "db69205b-017c-4ddf-a38d-6f1a506b7e07";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11;
							ref part :> sourceElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
							ref part :> function = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_11;
							ref part :> 'block' = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_9;
						}
					}
				}
			}
			part SystemAnalysis_1 : SystemAnalysis :> ownedArchitectures {
				attribute :>> id = "742b08fd-ac8a-4ec8-ba40-8f8a3bd247af";
				attribute :>> name = "System Analysis";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
				ref part :> ownedFunctionPkg = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1;
				ref part :> ownedAbstractCapabilityPkg = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1;
				ref part :> ownedInterfacePkg = SystemEngineering_1.SystemAnalysis_1.InterfacePkg_2;
				ref part :> ownedDataPkg = SystemEngineering_1.SystemAnalysis_1.DataPkg_2;
				ref part :> system = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
				ref part :> ownedSystemComponentPkg = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1;
				ref part :> ownedMissionPkg = SystemEngineering_1.SystemAnalysis_1.MissionPkg_1;
				ref part :> containedCapabilityPkg = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1;
				ref part :> containedSystemFunctionPkg = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1;
				ref part :> ownedOperationalAnalysisRealizations = SystemEngineering_1.SystemAnalysis_1.OperationalAnalysisRealization_1;
				part SystemFunctionPkg_1 : SystemFunctionPkg :> ownedFunctionPkg {
					attribute :>> id = "9ae80781-af6f-4ccd-8f8e-67d2ea89cea3";
					attribute :>> name = "System Functions";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedSystemFunctions = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1;
					part SystemFunction_1 : SystemFunction :> ownedSystemFunctions {
						attribute :>> id = "dac86db5-5060-4869-9097-ae8080712f6b";
						attribute :>> name = "Root System Function";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						attribute :>> kind = FUNCTION;
						ref part :> ownedFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8);
						ref part :> ownedFunctionRealizations = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionRealization_3;
						ref part :> ownedFunctionalExchanges = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_13, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_14, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_16, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_17, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_18, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_19);
						ref part :> subFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8);
						ref part :> containedSystemFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8);
						ref part :> childrenSystemFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8);
						part SystemFunction_2 : SystemFunction :> ownedFunctions {
							attribute :>> id = "578b0e97-7ad0-4b92-aebb-0872808332c8";
							attribute :>> name = "Broadcast information from space";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> inputs = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionInputPort_1;
							ref part :> outputs = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionOutputPort_1;
							ref part :> ownedFunctionRealizations = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionRealization_1;
							part FunctionInputPort_1 : FunctionInputPort :> inputs {
								attribute :>> id = "3f24f12b-f9a2-4652-a114-f420b94edc1e";
								attribute :>> name = "FIP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionOutputPort_1 : FunctionOutputPort :> outputs {
								attribute :>> id = "0a519a8e-0ac6-4a1d-8ad5-e9a2b8efdce7";
								attribute :>> name = "FOP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionRealization_1 : FunctionRealization :> ownedFunctionRealizations {
								attribute :>> id = "1c79e5fa-34fc-467f-97f7-e1892cb7c903";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
								ref part :> allocatedFunction = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_7;
								ref part :> allocatingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
							}
						}
						part SystemFunction_3 : SystemFunction :> ownedFunctions {
							attribute :>> id = "ae7bb9f9-4159-43f2-9041-813e72bfa5b1";
							attribute :>> name = "Diffuse light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> outputs = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3.FunctionOutputPort_2;
							ref part :> ownedFunctionRealizations = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3.FunctionRealization_2;
							part FunctionOutputPort_2 : FunctionOutputPort :> outputs {
								attribute :>> id = "1f650d64-f477-4b31-b5ea-50475e4597ff";
								attribute :>> name = "outLight";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionRealization_2 : FunctionRealization :> ownedFunctionRealizations {
								attribute :>> id = "be187b58-5ae6-4eb8-af34-89e65c6c14cd";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
								ref part :> allocatedFunction = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.OperationalActivity_8;
								ref part :> allocatingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
							}
						}
						part SystemFunction_4 : SystemFunction :> ownedFunctions {
							attribute :>> id = "89e3d4db-25ab-470d-9b99-fe516cc5b8d0";
							attribute :>> name = "Capture cosmic light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> inputs = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionInputPort_2;
							ref part :> outputs = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_4);
							part FunctionInputPort_2 : FunctionInputPort :> inputs {
								attribute :>> id = "1e085cc2-57be-4923-8b41-20fc91051580";
								attribute :>> name = "inLight";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionOutputPort_3 : FunctionOutputPort :> outputs {
								attribute :>> id = "b5ef947f-817d-49ca-931b-bacf3322003a";
								attribute :>> name = "FOP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionOutputPort_4 : FunctionOutputPort :> outputs {
								attribute :>> id = "2f268b69-b99f-4745-87f3-98256623b023";
								attribute :>> name = "FOP 2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
						}
						part SystemFunction_5 : SystemFunction :> ownedFunctions {
							attribute :>> id = "79834ddf-269b-46e4-936e-ba2114405ffd";
							attribute :>> name = "Control pointing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> inputs = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5.FunctionInputPort_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5.FunctionInputPort_4);
							part FunctionInputPort_3 : FunctionInputPort :> inputs {
								attribute :>> id = "f21d604e-9624-4d82-8eb1-d21b41dca377";
								attribute :>> name = "FIP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionInputPort_4 : FunctionInputPort :> inputs {
								attribute :>> id = "fa897f12-2ad9-4bdf-afd4-2c332fdb3885";
								attribute :>> name = "FIP 2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
						}
						part SystemFunction_6 : SystemFunction :> ownedFunctions {
							attribute :>> id = "071ad5a2-11e8-46f8-8fa2-2767c8eeb7c8";
							attribute :>> name = "Manage data science and engineering";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> inputs = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionInputPort_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionInputPort_6);
							ref part :> outputs = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionOutputPort_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionOutputPort_6);
							part FunctionInputPort_5 : FunctionInputPort :> inputs {
								attribute :>> id = "2c56d779-4a70-4a58-a126-1952bd8f6d1a";
								attribute :>> name = "FIP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionInputPort_6 : FunctionInputPort :> inputs {
								attribute :>> id = "8da367db-eadd-407e-89a1-01523ac3788d";
								attribute :>> name = "FIP 2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionOutputPort_5 : FunctionOutputPort :> outputs {
								attribute :>> id = "cc4a04bd-8a38-4293-9822-536f81274a25";
								attribute :>> name = "FOP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionOutputPort_6 : FunctionOutputPort :> outputs {
								attribute :>> id = "23427a84-b580-465a-8a65-75484b97c667";
								attribute :>> name = "FOP 2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
						}
						part SystemFunction_7 : SystemFunction :> ownedFunctions {
							attribute :>> id = "8d025494-aafc-4b48-831d-f259c0bf4c3d";
							attribute :>> name = "Translate light into data";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> inputs = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7.FunctionInputPort_7;
							ref part :> outputs = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7.FunctionOutputPort_7;
							part FunctionInputPort_7 : FunctionInputPort :> inputs {
								attribute :>> id = "f8f75b07-3f59-4406-a2e1-4cdf2a8e31c9";
								attribute :>> name = "FIP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionOutputPort_7 : FunctionOutputPort :> outputs {
								attribute :>> id = "ce7de50b-9efd-48df-81b3-1ea84bd7b770";
								attribute :>> name = "FOP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
						}
						part SystemFunction_8 : SystemFunction :> ownedFunctions {
							attribute :>> id = "b7b88432-4a66-40b0-819f-296a2aef63ac";
							attribute :>> name = "Manage communication w/ earth";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> inputs = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionInputPort_8, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionInputPort_9);
							ref part :> outputs = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionOutputPort_8, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionOutputPort_9);
							part FunctionInputPort_8 : FunctionInputPort :> inputs {
								attribute :>> id = "b4c96793-f80d-4c6e-8001-bb0f59ee67c0";
								attribute :>> name = "FIP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionInputPort_9 : FunctionInputPort :> inputs {
								attribute :>> id = "be20ef7d-2d5b-4f73-bc4f-bcf3a9e52a65";
								attribute :>> name = "FIP 2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionOutputPort_8 : FunctionOutputPort :> outputs {
								attribute :>> id = "aecf1313-c92a-465b-9a13-8194cf8eeb22";
								attribute :>> name = "FOP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
							part FunctionOutputPort_9 : FunctionOutputPort :> outputs {
								attribute :>> id = "a95941e5-d7f1-4ee8-8d86-7de38603eabe";
								attribute :>> name = "FOP 2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
						}
						part FunctionRealization_3 : FunctionRealization :> ownedFunctionRealizations {
							attribute :>> id = "7bc22458-d5d1-42ca-bed5-d87d9fdb7039";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1;
							ref part :> allocatedFunction = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1;
							ref part :> allocatingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1;
						}
						part FunctionalExchange_11 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "6fe6d6f7-7788-40d5-9ecd-2dc68cb275ef";
							attribute :>> name = "Light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionInputPort_2;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3.FunctionOutputPort_2;
							ref part :> ownedFunctionalExchangeRealizations = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11.FunctionalExchangeRealization_1;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3.FunctionOutputPort_2;
							ref part :> targetFunctionInputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionInputPort_2;
							part FunctionalExchangeRealization_1 : FunctionalExchangeRealization :> ownedFunctionalExchangeRealizations {
								attribute :>> id = "2ccbf594-c0da-4025-9b16-65a2ff2bad40";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_6;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
								ref part :> realizedFunctionalExchange = SystemEngineering_1.OperationalAnalysis_1.OperationalActivityPkg_1.OperationalActivity_1.FunctionalExchange_6;
								ref part :> realizingFunctionalExchange = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
							}
						}
						part FunctionalExchange_12 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "978abbbd-f887-4735-a77e-08c9e395f9eb";
							attribute :>> name = "Light captured";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5.FunctionInputPort_3;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_3;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_3;
							ref part :> targetFunctionInputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5.FunctionInputPort_3;
						}
						part FunctionalExchange_13 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "6245adf7-79a3-41e9-8ac8-63a8a5156907";
							attribute :>> name = "Position to be reached";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5.FunctionInputPort_4;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionOutputPort_5;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionOutputPort_5;
							ref part :> targetFunctionInputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5.FunctionInputPort_4;
						}
						part FunctionalExchange_14 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "82cf173c-aa4a-4e7d-8f63-236fc253a864";
							attribute :>> name = "Light captured";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7.FunctionInputPort_7;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_4;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_4;
							ref part :> targetFunctionInputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7.FunctionInputPort_7;
						}
						part FunctionalExchange_15 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "9b8e503a-831e-4bc5-a1b4-9f52b12d05a4";
							attribute :>> name = "Pointing request";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionInputPort_8;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionOutputPort_1;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionOutputPort_1;
							ref part :> targetFunctionInputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionInputPort_8;
						}
						part FunctionalExchange_16 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "7a1ea388-a3c7-4891-8ca7-0fed4a926d36";
							attribute :>> name = "Pointing request collected";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionInputPort_5;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionOutputPort_8;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionOutputPort_8;
							ref part :> targetFunctionInputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionInputPort_5;
						}
						part FunctionalExchange_17 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "8cf056df-5e9d-4ee0-8659-5da01a12fbcb";
							attribute :>> name = "Light translated into data";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionInputPort_6;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7.FunctionOutputPort_7;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7.FunctionOutputPort_7;
							ref part :> targetFunctionInputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionInputPort_6;
						}
						part FunctionalExchange_18 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "adea806b-6da5-49f1-9bdb-33f7f137bbf2";
							attribute :>> name = "Image to be shared";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionInputPort_9;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionOutputPort_6;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6.FunctionOutputPort_6;
							ref part :> targetFunctionInputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionInputPort_9;
						}
						part FunctionalExchange_19 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "4e432309-1a98-4e61-bb2e-27e39fe51bbf";
							attribute :>> name = "Image from space";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionInputPort_1;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionOutputPort_9;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionOutputPort_9;
							ref part :> targetFunctionInputPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionInputPort_1;
						}
					}
				}
				part CapabilityPkg_1 : CapabilityPkg :> ownedAbstractCapabilityPkg {
					attribute :>> id = "40f19bc8-0ec3-4afa-85d8-ad86aa615d50";
					attribute :>> name = "Capabilities";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedCapabilities = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
					part Capability_1 : Capability :> ownedCapabilities {
						attribute :>> id = "eabfb6db-957f-4785-8aeb-087f6338f3a8";
						attribute :>> name = "Provide image of space environment without atmoshperic constraints";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> involvedInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChainAbstractCapabilityInvolvement_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChainAbstractCapabilityInvolvement_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_11, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_12, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_13, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_14, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_15, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_16, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_17, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.CapabilityInvolvement_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.CapabilityInvolvement_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.CapabilityInvolvement_3);
						ref part :> ownedFunctionalChains = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2);
						ref part :> ownedScenarios = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1;
						ref part :> ownedFunctionalChainAbstractCapabilityInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChainAbstractCapabilityInvolvement_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChainAbstractCapabilityInvolvement_4);
						ref part :> ownedAbstractFunctionAbstractCapabilityInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_11, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_12, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_13, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_14, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_15, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_16, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractFunctionAbstractCapabilityInvolvement_17);
						ref part :> ownedAbstractCapabilityRealizations = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.AbstractCapabilityRealization_1;
						ref part :> involvedAbstractFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8);
						ref part :> involvedFunctionalChains = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2);
						ref part :> ownedCapabilityInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.CapabilityInvolvement_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.CapabilityInvolvement_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.CapabilityInvolvement_3);
						ref part :> involvedSystemComponents = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3);
						part FunctionalChain_1 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "c8ab331a-8e43-42a1-9375-986437693429";
							attribute :>> name = "Image sharing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_11, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_13, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_14, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_12, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_15, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_13, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_16, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_14, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_17, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_15, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_18);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_11, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_13, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_14, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_12, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_15, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_13, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_16, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_14, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_17, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_15, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_18);
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_11, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_13, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_14, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_12, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_15, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_13, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_16, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_14, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_17, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementLink_15, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_18);
							ref part :> involvedFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2);
							ref part :> involvedFunctionalExchanges = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_14, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_17, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_18, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_19);
							ref part :> involvedElements = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_14, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_17, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_18, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_19, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2);
							ref part :> enactedFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2);
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_13, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_14, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_15, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_16, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_17, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_18);
							part FunctionalChainInvolvementLink_11 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "3e3169f9-1448-4a15-93b7-e3cf6b181c57";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_13;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_14;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_14;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_13;
							}
							part FunctionalChainInvolvementFunction_13 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "5284ba85-f04b-4f47-9898-aa96c8341e84";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
							}
							part FunctionalChainInvolvementFunction_14 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "653c4992-de09-409d-a0ea-ec835c342a3d";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
							}
							part FunctionalChainInvolvementLink_12 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "e4e80b7f-d037-4318-8393-b114219c333a";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_14;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_15;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_13;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_14;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_13;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_15;
							}
							part FunctionalChainInvolvementFunction_15 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "24d1d7f6-885d-41ef-99f2-595011b5fbcf";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7;
							}
							part FunctionalChainInvolvementLink_13 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "e3c97b0d-bd12-471f-8118-4a636f7d61fe";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_17;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_16;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_15;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_17;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_15;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_16;
							}
							part FunctionalChainInvolvementFunction_16 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "ddc470ec-c68c-4a4f-9c46-ab75b94b7514";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
							}
							part FunctionalChainInvolvementLink_14 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "895f64b7-e3d5-40f3-9d84-c334390b64a4";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_18;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_17;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_16;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_18;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_16;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_17;
							}
							part FunctionalChainInvolvementFunction_17 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "309d7ef4-2c97-410f-874e-a421a0323835";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
							}
							part FunctionalChainInvolvementLink_15 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "11bf8e50-6cdc-443e-ab80-d57e935e811f";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_19;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_18;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_17;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_19;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_17;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1.FunctionalChainInvolvementFunction_18;
							}
							part FunctionalChainInvolvementFunction_18 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "50f8e9ec-05a3-4e9c-b60c-870f1b7bd914";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
							}
						}
						part FunctionalChain_2 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "78c2908e-7ad6-4fbe-81f7-96531b4ca073";
							attribute :>> name = "Star pointing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_16, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_19, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_20, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_17, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_21, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_18, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_22, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_19, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_23, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_20, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_24);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_16, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_19, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_20, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_17, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_21, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_18, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_22, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_19, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_23, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_20, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_24);
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_16, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_19, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_20, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_17, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_21, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_18, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_22, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_19, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_23, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementLink_20, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_24);
							ref part :> involvedFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2);
							ref part :> involvedFunctionalExchanges = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_13, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_16, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15);
							ref part :> involvedElements = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_13, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_16, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2);
							ref part :> enactedFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2);
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_19, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_20, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_21, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_22, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_23, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_24);
							part FunctionalChainInvolvementLink_16 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "15612c10-f07e-4de5-930b-4a6f711a0b90";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_19;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_20;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_20;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_19;
							}
							part FunctionalChainInvolvementFunction_19 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "7e5efba0-61dc-408f-80d3-0a3a52787211";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
							}
							part FunctionalChainInvolvementFunction_20 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "dd21e934-5b3f-4fad-9bd5-4109569e6514";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
							}
							part FunctionalChainInvolvementLink_17 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "9f9b42ad-c8e8-4f7f-851d-ee4c21cd5780";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_21;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_19;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_19;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_21;
							}
							part FunctionalChainInvolvementFunction_21 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "bf98e0ec-c527-450a-ad4c-cf654c3dbec7";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
							}
							part FunctionalChainInvolvementLink_18 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "0be6595a-9831-4fc6-9475-bb85424fa5ec";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_13;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_21;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_22;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_13;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_22;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_21;
							}
							part FunctionalChainInvolvementFunction_22 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "887693aa-36a0-49dc-bf5a-75033fb9fef0";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
							}
							part FunctionalChainInvolvementLink_19 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "890ebc31-7198-43a5-a1ae-86aa84e332de";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_16;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_22;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_23;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_16;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_23;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_22;
							}
							part FunctionalChainInvolvementFunction_23 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "98d98a67-56f2-4223-814f-7b7d746f3505";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
							}
							part FunctionalChainInvolvementLink_20 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "3f5e21b1-eb60-4ac7-938c-b36e19a37f60";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_23;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_24;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_24;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2.FunctionalChainInvolvementFunction_23;
							}
							part FunctionalChainInvolvementFunction_24 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "e30647b6-212f-4130-976b-c39fce2a460c";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
								ref part :> involvedElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
							}
						}
						part Scenario_1 : Scenario :> ownedScenarios {
							attribute :>> id = "19668a0d-ab5e-4a6a-9b00-31567d858976";
							attribute :>> name = "[FS] Star pointing 1";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = FUNCTIONAL;
							ref part :> ownedTraces = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.TransfoLink_1;
							ref part :> containedGenericTraces = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.TransfoLink_1;
							ref part :> ownedInstanceRoles = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_6);
							ref part :> ownedMessages = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_5);
							ref part :> ownedInteractionFragments = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.FragmentEnd_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InteractionOperand_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_5, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_6, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_7, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_8, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_9, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_10, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_5, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.FragmentEnd_2);
							ref part :> ownedTimeLapses = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_5, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.CombinedFragment_1);
							ref part :> ownedEvents = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_5, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_5, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_5);
							ref part :> containedFunctions = (SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5, SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2);
							part TransfoLink_1 : TransfoLink :> ownedTraces {
								attribute :>> id = "cf32bbf1-bcdd-4960-aa06-795dc4240fa4";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1;
								ref part :> source = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1;
								ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
							}
							part InstanceRole_1 : InstanceRole :> ownedInstanceRoles {
								attribute :>> id = "8bb0ee18-579e-4495-a75a-3805f6b002dd";
								attribute :>> name = "Diffuse light";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> abstractEnds = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_5;
								ref part :> representedInstance = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
							}
							part InstanceRole_2 : InstanceRole :> ownedInstanceRoles {
								attribute :>> id = "cc900b81-9cc3-4663-83a4-c659a080b0b6";
								attribute :>> name = "Capture cosmic light";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> abstractEnds = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_6, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_7);
								ref part :> representedInstance = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
							}
							part InstanceRole_3 : InstanceRole :> ownedInstanceRoles {
								attribute :>> id = "f0b0e413-1614-47a4-aef8-9df2e9a6ee12";
								attribute :>> name = "Manage data science and engineering";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> abstractEnds = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_9);
								ref part :> representedInstance = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
							}
							part InstanceRole_4 : InstanceRole :> ownedInstanceRoles {
								attribute :>> id = "870bb2f7-a5e5-4cdf-a175-d2ccd5ee16ab";
								attribute :>> name = "Manage communication w/ earth";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> abstractEnds = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_1, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_3);
								ref part :> representedInstance = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
							}
							part InstanceRole_5 : InstanceRole :> ownedInstanceRoles {
								attribute :>> id = "7d494580-6110-4503-a758-b707eda1f324";
								attribute :>> name = "Control pointing";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> abstractEnds = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_8, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_10, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_5);
								ref part :> representedInstance = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
							}
							part InstanceRole_6 : InstanceRole :> ownedInstanceRoles {
								attribute :>> id = "25a1a0a4-8059-40a4-bd9a-cdda0936bc52";
								attribute :>> name = "Broadcast information from space";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> abstractEnds = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_1;
								ref part :> representedInstance = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
							}
							part SequenceMessage_1 : SequenceMessage :> ownedMessages {
								attribute :>> id = "0b609481-75d6-497e-95f0-c0482a90c344";
								attribute :>> name = "Pointing request";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kind = ASYNCHRONOUS_CALL;
								ref part :> sendingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_1;
								ref part :> receivingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_2;
								ref part :> invokedOperation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15;
								ref part :> sendingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
								ref part :> receivingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
							}
							part SequenceMessage_2 : SequenceMessage :> ownedMessages {
								attribute :>> id = "e8d4bf2a-d510-4d02-9243-aefa7a4652f0";
								attribute :>> name = "Pointing request collected";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kind = ASYNCHRONOUS_CALL;
								ref part :> sendingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_3;
								ref part :> receivingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_4;
								ref part :> invokedOperation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_16;
								ref part :> sendingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
								ref part :> receivingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
							}
							part SequenceMessage_3 : SequenceMessage :> ownedMessages {
								attribute :>> id = "950642ba-5bf9-4955-8a44-b353dfc1bc8a";
								attribute :>> name = "Position to be reached";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kind = ASYNCHRONOUS_CALL;
								ref part :> sendingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_9;
								ref part :> receivingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_10;
								ref part :> invokedOperation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_13;
								ref part :> sendingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
								ref part :> receivingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
							}
							part SequenceMessage_4 : SequenceMessage :> ownedMessages {
								attribute :>> id = "bb8057e2-3214-44a8-9ffc-31c1747ece59";
								attribute :>> name = "Light";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kind = ASYNCHRONOUS_CALL;
								ref part :> sendingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_5;
								ref part :> receivingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_6;
								ref part :> invokedOperation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
								ref part :> sendingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
								ref part :> receivingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
							}
							part SequenceMessage_5 : SequenceMessage :> ownedMessages {
								attribute :>> id = "0091ada5-e78a-44b4-928b-43a43e5dbdf4";
								attribute :>> name = "Light captured";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kind = ASYNCHRONOUS_CALL;
								ref part :> sendingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_7;
								ref part :> receivingEnd = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_8;
								ref part :> invokedOperation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12;
								ref part :> sendingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
								ref part :> receivingFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
							}
							part MessageEnd_1 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "edcae1a7-2a41-45b4-9638-5f4e7341629e";
								attribute :>> name = "Send Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_6;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_5;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_6;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_1;
							}
							part MessageEnd_2 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "741b8e20-c871-4878-80ff-b7774398a851";
								attribute :>> name = "Receive Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_5;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_1;
							}
							part ExecutionEnd_1 : ExecutionEnd :> ownedInteractionFragments {
								attribute :>> id = "b2cbd6cc-f703-4182-ad50-3e0eae0b3bd4";
								attribute :>> name = "endExec";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_5;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4;
								ref part :> execution = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_5;
							}
							part MessageEnd_3 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "2b3ad0e2-075b-495f-a7a2-9aa452d6a3eb";
								attribute :>> name = "Send Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_4;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_2;
							}
							part MessageEnd_4 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "97829bfe-cdb8-4f00-95a0-c5aba9010ed4";
								attribute :>> name = "Receive Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_4;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_2;
							}
							part ExecutionEnd_2 : ExecutionEnd :> ownedInteractionFragments {
								attribute :>> id = "e888a823-6441-4528-b0b4-a78affe18c8b";
								attribute :>> name = "endExec";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_4;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3;
								ref part :> execution = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_4;
							}
							part FragmentEnd_1 : FragmentEnd :> ownedInteractionFragments {
								attribute :>> id = "93280aee-37a1-4792-9175-00dd3f51ef9b";
								attribute :>> name = "start";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_1);
								ref part :> abstractFragment = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.CombinedFragment_1;
							}
							part InteractionOperand_1 : InteractionOperand :> ownedInteractionFragments {
								attribute :>> id = "21bb1ca1-355e-4ae8-9bd5-4dc1b6adc14c";
								attribute :>> name = "Pointing request";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> ownedConstraints = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InteractionOperand_1.Constraint_1;
								ref part :> coveredInstanceRoles = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_1);
								ref part :> guard = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InteractionOperand_1.Constraint_1;
								part Constraint_1 : Constraint :> ownedConstraints {
									attribute :>> id = "b6488f99-6279-4ca8-8f2f-eaebf36599c7";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> ownedSpecification = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InteractionOperand_1.Constraint_1.OpaqueExpression_1;
									ref part :> context = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InteractionOperand_1;
									part OpaqueExpression_1 : OpaqueExpression :> ownedSpecification {
										attribute :>> id = "0768153a-73d1-41dd-a501-835e350d151e";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										attribute :>> bodies = ("Pointing request = activated");
										attribute :>> languages = ("capella:linkedText");
									}
								}
							}
							part MessageEnd_5 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "8c21be8d-b68e-4f85-9ead-de1db224372b";
								attribute :>> name = "Send Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_1;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_1;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_1;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_4;
							}
							part MessageEnd_6 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "9a71e3dc-75f9-4874-9978-d0e9a897c664";
								attribute :>> name = "Receive Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_1;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_4;
							}
							part ExecutionEnd_3 : ExecutionEnd :> ownedInteractionFragments {
								attribute :>> id = "7dd022c0-74ca-448a-b73e-e60c97f56fed";
								attribute :>> name = "endExec";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_1;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2;
								ref part :> execution = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_1;
							}
							part MessageEnd_7 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "bef29354-14f1-4119-9c67-26e3ae5cd968";
								attribute :>> name = "Send Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_2;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_5;
							}
							part MessageEnd_8 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "dd84a44b-530f-4c6b-86fe-50bf41db3b00";
								attribute :>> name = "Receive Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_2;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_5;
							}
							part ExecutionEnd_4 : ExecutionEnd :> ownedInteractionFragments {
								attribute :>> id = "90dfdb44-27e4-442a-be85-1a4a29270ad3";
								attribute :>> name = "endExec";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_2;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
								ref part :> execution = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_2;
							}
							part MessageEnd_9 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "e30a4f23-dba1-45c7-a96b-096992791a64";
								attribute :>> name = "Send Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventSentOperation_3;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_3;
							}
							part MessageEnd_10 : MessageEnd :> ownedInteractionFragments {
								attribute :>> id = "e75d340e-7126-4c65-b056-f8aa52e67256";
								attribute :>> name = "Receive Call Message Call";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.EventReceiptOperation_3;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
								ref part :> 'message' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.SequenceMessage_3;
							}
							part ExecutionEnd_5 : ExecutionEnd :> ownedInteractionFragments {
								attribute :>> id = "cc5296ae-595d-4283-9298-b0b46f19c80c";
								attribute :>> name = "endExec";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
								ref part :> 'event' = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEvent_3;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
								ref part :> execution = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.Execution_3;
							}
							part FragmentEnd_2 : FragmentEnd :> ownedInteractionFragments {
								attribute :>> id = "6d51274a-d0dd-4ee5-a703-b9a3c8af11bc";
								attribute :>> name = "end";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> coveredInstanceRoles = (SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5, SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_1);
								ref part :> abstractFragment = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.CombinedFragment_1;
							}
							part Execution_1 : Execution :> ownedTimeLapses {
								attribute :>> id = "da60b23f-d955-4cef-b099-2df36a2c0245";
								attribute :>> name = "execution";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> start = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_6;
								ref part :> finish = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_3;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_2;
							}
							part Execution_2 : Execution :> ownedTimeLapses {
								attribute :>> id = "59af2006-406a-4d52-b357-0bc2f0f45643";
								attribute :>> name = "execution";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> start = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_8;
								ref part :> finish = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_4;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
							}
							part Execution_3 : Execution :> ownedTimeLapses {
								attribute :>> id = "a326c760-ebb7-4046-886a-979bbe12f591";
								attribute :>> name = "execution";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> start = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_10;
								ref part :> finish = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_5;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_5;
							}
							part Execution_4 : Execution :> ownedTimeLapses {
								attribute :>> id = "c9ff8fc7-d7c7-47ef-a7cc-95c8886a5346";
								attribute :>> name = "execution";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> start = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_4;
								ref part :> finish = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_2;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_3;
							}
							part Execution_5 : Execution :> ownedTimeLapses {
								attribute :>> id = "e16a47a4-eee1-4205-b4fb-4de19cc4a8a6";
								attribute :>> name = "execution";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> start = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.MessageEnd_2;
								ref part :> finish = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.ExecutionEnd_1;
								ref part :> covered = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InstanceRole_4;
							}
							part CombinedFragment_1 : CombinedFragment :> ownedTimeLapses {
								attribute :>> id = "d0ba0183-9b32-493e-8778-caf079e988c8";
								attribute :>> name = "combined fragment";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> operator = ALT;
								ref part :> start = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.FragmentEnd_1;
								ref part :> finish = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.FragmentEnd_2;
								ref part :> referencedOperands = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.Scenario_1.InteractionOperand_1;
							}
							part EventSentOperation_1 : EventSentOperation :> ownedEvents {
								attribute :>> id = "9291bedb-1c72-41b7-9af5-948c0e4942d8";
								attribute :>> name = "eventSentOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
							}
							part EventReceiptOperation_1 : EventReceiptOperation :> ownedEvents {
								attribute :>> id = "15383f09-a300-4969-9532-20d1b5d5796d";
								attribute :>> name = "eventReceiptOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
							}
							part ExecutionEvent_1 : ExecutionEvent :> ownedEvents {
								attribute :>> id = "5579ee52-1d64-4e3e-89e8-8550d41112a5";
								attribute :>> name = "executionEvent";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
							}
							part EventSentOperation_2 : EventSentOperation :> ownedEvents {
								attribute :>> id = "d3801d08-0d15-4640-aeb3-c35aa4965329";
								attribute :>> name = "eventSentOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12;
							}
							part EventReceiptOperation_2 : EventReceiptOperation :> ownedEvents {
								attribute :>> id = "b6728e1c-7c80-4e21-81dc-3bee8c8489ca";
								attribute :>> name = "eventReceiptOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12;
							}
							part ExecutionEvent_2 : ExecutionEvent :> ownedEvents {
								attribute :>> id = "8c64db16-3454-4222-9f7b-d8b66d7c6463";
								attribute :>> name = "executionEvent";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
							}
							part EventSentOperation_3 : EventSentOperation :> ownedEvents {
								attribute :>> id = "7ee6c693-ee21-4002-a74d-77978915ff60";
								attribute :>> name = "eventSentOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_13;
							}
							part EventReceiptOperation_3 : EventReceiptOperation :> ownedEvents {
								attribute :>> id = "dfb7154c-9896-4d2a-860a-bab504ba2d4e";
								attribute :>> name = "eventReceiptOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_13;
							}
							part ExecutionEvent_3 : ExecutionEvent :> ownedEvents {
								attribute :>> id = "a7421ab9-33fd-4323-986f-08cde3785442";
								attribute :>> name = "executionEvent";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
							}
							part EventSentOperation_4 : EventSentOperation :> ownedEvents {
								attribute :>> id = "fce12371-3056-4f49-bcb1-90155dc6604d";
								attribute :>> name = "eventSentOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_16;
							}
							part EventReceiptOperation_4 : EventReceiptOperation :> ownedEvents {
								attribute :>> id = "2e115622-b780-42ec-bbf3-007b9d37ce9e";
								attribute :>> name = "eventReceiptOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_16;
							}
							part ExecutionEvent_4 : ExecutionEvent :> ownedEvents {
								attribute :>> id = "ef976515-6de0-4333-abc4-a62159c7a2b0";
								attribute :>> name = "executionEvent";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
							}
							part EventSentOperation_5 : EventSentOperation :> ownedEvents {
								attribute :>> id = "0e470d9c-f553-46f5-b8b3-f4f1c252b781";
								attribute :>> name = "eventSentOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15;
							}
							part EventReceiptOperation_5 : EventReceiptOperation :> ownedEvents {
								attribute :>> id = "34c64237-b643-4616-bb17-5335ff2fd8de";
								attribute :>> name = "eventReceiptOp";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> operation = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15;
							}
							part ExecutionEvent_5 : ExecutionEvent :> ownedEvents {
								attribute :>> id = "7171b1b0-e785-433e-8f9b-d21f16fa9bab";
								attribute :>> name = "executionEvent";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
							}
						}
						part FunctionalChainAbstractCapabilityInvolvement_3 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "80a40462-4084-4f16-a68f-2c5f5aebc3a4";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> functionalChain = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
						}
						part FunctionalChainAbstractCapabilityInvolvement_4 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "243fef4c-a8c0-4213-a1e4-70fdb0caa0bc";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> functionalChain = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_11 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "4f044044-4909-4c8c-b54b-3bab87e7af83";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_12 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "ef20a931-2dc3-4b68-8d5a-09263b31ed5f";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_13 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "5b358971-8ba5-473e-bfa7-9a039f11e1a2";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_14 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "5d455cf9-2974-4e16-9508-6383b1342ef7";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_15 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "792e06e0-4c7d-44a7-824b-5c4087133a75";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_16 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "91de9d2f-49fd-41bf-967b-4fc3e8bd0d46";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_17 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "1f78eff1-3735-4a17-b2fd-a5846960661c";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
						}
						part AbstractCapabilityRealization_1 : AbstractCapabilityRealization :> ownedAbstractCapabilityRealizations {
							attribute :>> id = "81342fb1-6ebe-443e-9959-578132c7bc94";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> realizedCapability = SystemEngineering_1.OperationalAnalysis_1.OperationalCapabilityPkg_1.OperationalCapability_1;
							ref part :> realizingCapability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
						}
						part CapabilityInvolvement_1 : CapabilityInvolvement :> ownedCapabilityInvolvements {
							attribute :>> id = "c357b13b-f10e-4dc7-b8b7-56a98dde8935";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> systemComponent = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
						}
						part CapabilityInvolvement_2 : CapabilityInvolvement :> ownedCapabilityInvolvements {
							attribute :>> id = "888c0cad-7bb9-4bb2-9e67-41261b15f55c";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
							ref part :> systemComponent = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
						}
						part CapabilityInvolvement_3 : CapabilityInvolvement :> ownedCapabilityInvolvements {
							attribute :>> id = "32976ff1-62cd-4244-a8ce-d58de8d5c029";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3;
							ref part :> systemComponent = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
						}
					}
				}
				part InterfacePkg_2 : InterfacePkg :> ownedInterfacePkg {
					attribute :>> id = "bdba5346-8c29-4751-a325-307dd9b83023";
					attribute :>> name = "Interfaces";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
				}
				part DataPkg_2 : DataPkg :> ownedDataPkg {
					attribute :>> id = "05791c00-51bc-491c-bd1f-22b6748f6cb3";
					attribute :>> name = "Data";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					attribute :>> visibility = UNSET;
					ref part :> ownedDataPkgs = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3;
					part DataPkg_3 : DataPkg :> ownedDataPkgs {
						attribute :>> id = "1214c606-a53d-46f3-a9a5-369af60c3b81";
						attribute :>> name = "Predefined Types";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						ref part :> ownedDataTypes = (SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.BooleanType_1, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_1, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.StringType_1, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_2, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_3, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_5, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_6, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_7, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_8, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.StringType_2, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_9, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_11, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_12);
						part BooleanType_1 : BooleanType :> ownedDataTypes {
							attribute :>> id = "1a458e94-d265-41e2-ae63-96f6fb288212";
							attribute :>> name = "Boolean";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							ref part :> ownedLiterals = (SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.BooleanType_1.LiteralBooleanValue_1, SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.BooleanType_1.LiteralBooleanValue_2);
							part LiteralBooleanValue_1 : LiteralBooleanValue :> ownedLiterals {
								attribute :>> id = "42f39b29-ef64-4ca9-970d-8a69ff9bdc4d";
								attribute :>> name = "True";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = true;
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.BooleanType_1;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.BooleanType_1;
								ref part :> booleanType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.BooleanType_1;
							}
							part LiteralBooleanValue_2 : LiteralBooleanValue :> ownedLiterals {
								attribute :>> id = "5ba7cd65-f5f4-47e3-9c85-a85270cf0a03";
								attribute :>> name = "False";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.BooleanType_1;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.BooleanType_1;
								ref part :> booleanType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.BooleanType_1;
							}
						}
						part NumericType_1 : NumericType :> ownedDataTypes {
							attribute :>> id = "a273ecaf-f0f3-494d-a668-b5fd70124679";
							attribute :>> name = "Byte";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
							ref part :> ownedMinValue = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_1.LiteralNumericValue_1;
							ref part :> ownedMaxValue = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_1.LiteralNumericValue_2;
							part LiteralNumericValue_1 : LiteralNumericValue :> ownedMinValue {
								attribute :>> id = "97cdfb80-7aa7-4dad-b41e-acc5f8234f0b";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = "0";
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_1;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_1;
								ref part :> numericType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_1;
							}
							part LiteralNumericValue_2 : LiteralNumericValue :> ownedMaxValue {
								attribute :>> id = "d0d9512c-fab5-447d-8838-d6bbaa3a0636";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = "255";
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_1;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_1;
								ref part :> numericType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_1;
							}
						}
						part StringType_1 : StringType :> ownedDataTypes {
							attribute :>> id = "2c3e6e17-2f0d-49fb-8e80-4bdc36448435";
							attribute :>> name = "Char";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							ref part :> ownedMinLength = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.StringType_1.LiteralNumericValue_3;
							ref part :> ownedMaxLength = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.StringType_1.LiteralNumericValue_4;
							part LiteralNumericValue_3 : LiteralNumericValue :> ownedMinLength {
								attribute :>> id = "56817467-f7b8-4960-8f00-11e5ae8b0f69";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = "1";
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10;
								ref part :> numericType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10;
							}
							part LiteralNumericValue_4 : LiteralNumericValue :> ownedMaxLength {
								attribute :>> id = "59b91b4a-8d30-489e-b229-c9c46908d595";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = "1";
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10;
								ref part :> numericType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10;
							}
						}
						part NumericType_2 : NumericType :> ownedDataTypes {
							attribute :>> id = "b9a650cf-4475-48fb-8e2d-8b18d01404d9";
							attribute :>> name = "Double";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = FLOAT;
						}
						part NumericType_3 : NumericType :> ownedDataTypes {
							attribute :>> id = "227afef7-7832-480f-9de1-3e0495476ee5";
							attribute :>> name = "Float";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = FLOAT;
						}
						part NumericType_4 : NumericType :> ownedDataTypes {
							attribute :>> id = "7c25bbd4-95ec-4030-865b-15ed0d5ccb53";
							attribute :>> name = "Hexadecimal";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
							ref part :> ownedMinValue = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4.LiteralNumericValue_5;
							ref part :> ownedMaxValue = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4.BinaryExpression_1;
							part LiteralNumericValue_5 : LiteralNumericValue :> ownedMinValue {
								attribute :>> id = "e3e6decd-9837-4414-8fdb-2adf2b09876c";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = "0";
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4;
								ref part :> numericType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4;
							}
							part BinaryExpression_1 : BinaryExpression :> ownedMaxValue {
								attribute :>> id = "42878db6-9758-4f21-bd65-2734b1def6b2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> expression = "SUB(POW(2, 64), 1)";
								attribute :>> operator = SUB;
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4;
								ref part :> expressionType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4;
								ref part :> ownedLeftOperand = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4.BinaryExpression_1.BinaryExpression_2;
								ref part :> ownedRightOperand = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4.BinaryExpression_1.LiteralNumericValue_8;
								part BinaryExpression_2 : BinaryExpression :> ownedLeftOperand {
									attribute :>> id = "078a13e1-9a68-471c-8772-2f644ede0fc6";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> expression = "POW(2, 64)";
									attribute :>> operator = POW;
									ref part :> ownedLeftOperand = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4.BinaryExpression_1.BinaryExpression_2.LiteralNumericValue_6;
									ref part :> ownedRightOperand = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_4.BinaryExpression_1.BinaryExpression_2.LiteralNumericValue_7;
									part LiteralNumericValue_6 : LiteralNumericValue :> ownedLeftOperand {
										attribute :>> id = "2d35530d-d5f3-4a67-b171-862e038f5757";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										attribute :>> 'value' = "2";
									}
									part LiteralNumericValue_7 : LiteralNumericValue :> ownedRightOperand {
										attribute :>> id = "69606d7c-de58-41e3-abc3-f58b0e3b6697";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										attribute :>> 'value' = "64";
									}
								}
								part LiteralNumericValue_8 : LiteralNumericValue :> ownedRightOperand {
									attribute :>> id = "f62ec578-6835-40f2-b8a9-5be44a442f9d";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> 'value' = "1";
								}
							}
						}
						part NumericType_5 : NumericType :> ownedDataTypes {
							attribute :>> id = "95da5798-4d77-484a-8942-d456ce5b8341";
							attribute :>> name = "Integer";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
						}
						part NumericType_6 : NumericType :> ownedDataTypes {
							attribute :>> id = "eee37240-713b-4b46-9e16-da27d7d945c3";
							attribute :>> name = "Long";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
						}
						part NumericType_7 : NumericType :> ownedDataTypes {
							attribute :>> id = "06af603a-64a0-4420-8a79-5235e0bf200d";
							attribute :>> name = "LongLong";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
						}
						part NumericType_8 : NumericType :> ownedDataTypes {
							attribute :>> id = "f7ed827c-f8bd-4336-8522-11b106b3712e";
							attribute :>> name = "Short";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
						}
						part StringType_2 : StringType :> ownedDataTypes {
							attribute :>> id = "270e4de9-a504-4f64-b166-1c1422d9d122";
							attribute :>> name = "String";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> maxInclusive = true;
							attribute :>> visibility = PUBLIC;
						}
						part NumericType_9 : NumericType :> ownedDataTypes {
							attribute :>> id = "0d49ee93-459d-4418-9dc7-dbd299ef4fa8";
							attribute :>> name = "UnsignedInteger";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
							ref part :> ownedMinValue = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_9.LiteralNumericValue_9;
							part LiteralNumericValue_9 : LiteralNumericValue :> ownedMinValue {
								attribute :>> id = "b0db62d1-ea30-4092-a271-fbe7ba4b5514";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = "0";
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_9;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_9;
								ref part :> numericType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_9;
							}
						}
						part NumericType_10 : NumericType :> ownedDataTypes {
							attribute :>> id = "3adec7c9-6cfd-4e9b-9548-f5cf2ff07735";
							attribute :>> name = "UnsignedShort";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
							ref part :> ownedMinValue = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10.LiteralNumericValue_10;
							part LiteralNumericValue_10 : LiteralNumericValue :> ownedMinValue {
								attribute :>> id = "d16eb9af-0910-4235-81e5-1538d7379dfd";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = "0";
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10;
								ref part :> numericType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_10;
							}
						}
						part NumericType_11 : NumericType :> ownedDataTypes {
							attribute :>> id = "f98da7d9-484a-43ec-839d-dceb21aa84e8";
							attribute :>> name = "UnsignedLong";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
							ref part :> ownedMinValue = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_11.LiteralNumericValue_11;
							part LiteralNumericValue_11 : LiteralNumericValue :> ownedMinValue {
								attribute :>> id = "b4942590-8399-4b44-baf5-46ebfa314949";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = "0";
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_11;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_11;
								ref part :> numericType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_11;
							}
						}
						part NumericType_12 : NumericType :> ownedDataTypes {
							attribute :>> id = "925f6207-a9e8-4c71-a2ea-1e31bbd2f934";
							attribute :>> name = "UnsignedLongLong";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> discrete = true;
							attribute :>> minInclusive = true;
							attribute :>> visibility = PUBLIC;
							attribute :>> kind = INTEGER;
							ref part :> ownedMinValue = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_12.LiteralNumericValue_12;
							part LiteralNumericValue_12 : LiteralNumericValue :> ownedMinValue {
								attribute :>> id = "9ee7e8ae-f9a6-4d9a-a3fe-fb03ed3fe588";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> 'value' = "0";
								ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_12;
								ref part :> type = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_12;
								ref part :> numericType = SystemEngineering_1.SystemAnalysis_1.DataPkg_2.DataPkg_3.NumericType_12;
							}
						}
					}
				}
				part SystemComponentPkg_1 : SystemComponentPkg :> ownedSystemComponentPkg {
					attribute :>> id = "2d4af4f1-7997-4122-89eb-c025b8319a24";
					attribute :>> name = "Structure";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedTraces = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.TransfoLink_2, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.TransfoLink_3);
					ref part :> containedGenericTraces = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.TransfoLink_2, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.TransfoLink_3);
					ref part :> ownedParts = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.Part_10, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.Part_11, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.Part_12);
					ref part :> ownedComponentExchanges = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_1, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_2);
					ref part :> ownedSystemComponents = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3);
					part TransfoLink_2 : TransfoLink :> ownedTraces {
						attribute :>> id = "3fa3b80c-4b5d-4d28-aa4f-b57cbd3087e7";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Part_1;
						ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.Part_11;
						ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.Part_11;
						ref part :> target = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Part_1;
					}
					part TransfoLink_3 : TransfoLink :> ownedTraces {
						attribute :>> id = "ddaadde3-47e9-43b2-bd88-23bd2571de91";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Part_7;
						ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.Part_12;
						ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.Part_12;
						ref part :> target = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Part_7;
					}
					part Part_10 : Part :> ownedParts {
						attribute :>> id = "7ee1bb58-2aa0-416a-ba5e-cab5f4e85d6a";
						attribute :>> name = "HUBBLE Space Telescope";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
						ref part :> type = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
					}
					part Part_11 : Part :> ownedParts {
						attribute :>> id = "acc9d8ac-1000-4285-b984-1976c7ef9d20";
						attribute :>> name = "Space";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
						ref part :> type = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
					}
					part Part_12 : Part :> ownedParts {
						attribute :>> id = "e7f815f1-e772-4923-af0e-cf0c009ed77a";
						attribute :>> name = "Tracking & Data Relay Satellite";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3;
						ref part :> type = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3;
					}
					part ComponentExchange_1 : ComponentExchange :> ownedComponentExchanges {
						attribute :>> id = "c61e9290-a358-4586-9d4d-8ca2f3b30717";
						attribute :>> name = "Space environment";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> kind = FLOW;
						ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentPort_3;
						ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_1;
						ref part :> ownedComponentExchangeFunctionalExchangeAllocations = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_1.ComponentExchangeFunctionalExchangeAllocation_1;
						ref part :> sourcePort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentPort_3;
						ref part :> targetPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_1;
						part ComponentExchangeFunctionalExchangeAllocation_1 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
							attribute :>> id = "32487312-fc39-459f-876c-5f189bb90ce4";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_1;
							ref part :> allocatedFunctionalExchange = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
							ref part :> allocatingComponentExchange = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_1;
						}
					}
					part ComponentExchange_2 : ComponentExchange :> ownedComponentExchanges {
						attribute :>> id = "1ade60be-76db-44cb-ac19-6e1ae9e8feeb";
						attribute :>> name = "Space network";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> kind = FLOW;
						ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4;
						ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2;
						ref part :> ownedComponentExchangeFunctionalExchangeAllocations = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_2.ComponentExchangeFunctionalExchangeAllocation_2, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_2.ComponentExchangeFunctionalExchangeAllocation_3);
						ref part :> sourcePort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4;
						ref part :> targetPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2;
						part ComponentExchangeFunctionalExchangeAllocation_2 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
							attribute :>> id = "4c33b3fc-bb5a-430a-90ea-7907fa3bfb47";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_2;
							ref part :> allocatedFunctionalExchange = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_15;
							ref part :> allocatingComponentExchange = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_2;
						}
						part ComponentExchangeFunctionalExchangeAllocation_3 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
							attribute :>> id = "15fa7fe6-eb8e-4e5c-931a-ba2e5e31da14";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_19;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_2;
							ref part :> allocatedFunctionalExchange = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_19;
							ref part :> allocatingComponentExchange = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_2;
						}
					}
					part SystemComponent_1 : SystemComponent :> ownedSystemComponents {
						attribute :>> id = "ed1d9ecb-a0ea-48ca-9280-f4e1b4cb6ffd";
						attribute :>> name = "HUBBLE Space Telescope";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> ownedFunctionalAllocation = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentFunctionalAllocation_11, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentFunctionalAllocation_12, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentFunctionalAllocation_13, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentFunctionalAllocation_14, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentFunctionalAllocation_15);
						ref part :> ownedStateMachines = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.StateMachine_1;
						ref part :> ownedFeatures = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_1, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2);
						ref part :> containedComponentPorts = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_1, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2);
						part ComponentFunctionalAllocation_11 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "cff8177e-009d-48c3-936a-946ffd82b7c9";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
							ref part :> 'block' = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
						}
						part ComponentFunctionalAllocation_12 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "d195d9f5-6612-4cb8-adcb-37c62b078ab2";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
							ref part :> 'block' = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
						}
						part ComponentFunctionalAllocation_13 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "83aa006e-8e52-46eb-a510-f2c83e5c2d92";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_6;
							ref part :> 'block' = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
						}
						part ComponentFunctionalAllocation_14 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "ef01e743-07e1-43e4-8347-d6e035a8a66a";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7;
							ref part :> 'block' = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
						}
						part ComponentFunctionalAllocation_15 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "60498851-96b6-4f1e-86ae-09756f61a5a7";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8;
							ref part :> 'block' = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
						}
						part StateMachine_1 : StateMachine :> ownedStateMachines {
							attribute :>> id = "22cc6c40-d0bf-4b98-b896-12572c0d4c36";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "System State Machine";
							ref part :> ownedRegions = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.StateMachine_1.Region_1;
							part Region_1 : Region :> ownedRegions {
								attribute :>> id = "aeabcfa1-632b-49bc-b86f-f17b692fcb42";
								attribute :>> name = "Default Region";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
							}
						}
						part ComponentPort_1 : ComponentPort :> ownedFeatures {
							attribute :>> id = "d30fa362-8f38-4bc8-ac46-6001a9c64596";
							attribute :>> name = "CP 1";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> orientation = IN;
							attribute :>> kind = FLOW;
							ref part :> ownedPortAllocations = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_1.PortAllocation_1;
							part PortAllocation_1 : PortAllocation :> ownedPortAllocations {
								attribute :>> id = "5057e09d-647a-4ab4-b916-8b7876ac223a";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionInputPort_2;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_1;
								ref part :> allocatedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionInputPort_2;
								ref part :> allocatingPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_1;
							}
						}
						part ComponentPort_2 : ComponentPort :> ownedFeatures {
							attribute :>> id = "cb779b53-2d30-47a6-8d70-7406d9ed4312";
							attribute :>> name = "CP 2";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> orientation = INOUT;
							attribute :>> kind = FLOW;
							ref part :> ownedPortAllocations = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2.PortAllocation_2, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2.PortAllocation_3);
							part PortAllocation_2 : PortAllocation :> ownedPortAllocations {
								attribute :>> id = "4b43165c-1302-4177-b455-5d5228bca0e4";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionInputPort_8;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2;
								ref part :> allocatedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionInputPort_8;
								ref part :> allocatingPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2;
							}
							part PortAllocation_3 : PortAllocation :> ownedPortAllocations {
								attribute :>> id = "2af291d6-528d-4a5d-aa18-daa50996df0a";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionOutputPort_9;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2;
								ref part :> allocatedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_8.FunctionOutputPort_9;
								ref part :> allocatingPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_2;
							}
						}
					}
					part SystemComponent_2 : SystemComponent :> ownedSystemComponents {
						attribute :>> id = "08f638a2-6e85-4331-92be-8eeee24596db";
						attribute :>> name = "Space";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> 'actor' = true;
						ref part :> ownedTraces = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.TransfoLink_4;
						ref part :> containedGenericTraces = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.TransfoLink_4;
						ref part :> ownedFunctionalAllocation = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentFunctionalAllocation_16;
						ref part :> ownedFeatures = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentPort_3;
						ref part :> ownedComponentRealizations = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentRealization_1;
						ref part :> containedComponentPorts = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentPort_3;
						part TransfoLink_4 : TransfoLink :> ownedTraces {
							attribute :>> id = "b8847091-4532-4d2e-b0b2-36aaf26da214";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1.ComponentFunctionalAllocation_1;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentFunctionalAllocation_16;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentFunctionalAllocation_16;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1.ComponentFunctionalAllocation_1;
						}
						part ComponentFunctionalAllocation_16 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "c580c655-36ad-4a69-9f62-d40b81de811e";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
							ref part :> 'block' = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
						}
						part ComponentPort_3 : ComponentPort :> ownedFeatures {
							attribute :>> id = "03d19b81-d9b3-40d0-99bb-f56b8acb2111";
							attribute :>> name = "CP 1";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> orientation = OUT;
							attribute :>> kind = FLOW;
							ref part :> ownedPortAllocations = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentPort_3.PortAllocation_4;
							part PortAllocation_4 : PortAllocation :> ownedPortAllocations {
								attribute :>> id = "cffbc449-1da7-406b-af58-4f785d98bcad";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3.FunctionOutputPort_2;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentPort_3;
								ref part :> allocatedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3.FunctionOutputPort_2;
								ref part :> allocatingPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentPort_3;
							}
						}
						part ComponentRealization_1 : ComponentRealization :> ownedComponentRealizations {
							attribute :>> id = "0a4c5e9e-3ab1-476a-87b4-41657189cf00";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
							ref part :> realizedComponent = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_1;
							ref part :> realizingComponent = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
						}
					}
					part SystemComponent_3 : SystemComponent :> ownedSystemComponents {
						attribute :>> id = "440d6e03-a9cd-4e78-b3b2-4f0fda32c493";
						attribute :>> name = "Tracking & Data Relay Satellite";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> 'actor' = true;
						ref part :> ownedTraces = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.TransfoLink_5;
						ref part :> containedGenericTraces = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.TransfoLink_5;
						ref part :> ownedFunctionalAllocation = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentFunctionalAllocation_17;
						ref part :> ownedFeatures = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4;
						ref part :> ownedComponentRealizations = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentRealization_2;
						ref part :> containedComponentPorts = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4;
						part TransfoLink_5 : TransfoLink :> ownedTraces {
							attribute :>> id = "4e8cde55-5f69-47f7-a0b5-adeeeb438c9a";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4.ComponentFunctionalAllocation_2;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentFunctionalAllocation_17;
							ref part :> source = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentFunctionalAllocation_17;
							ref part :> target = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4.ComponentFunctionalAllocation_2;
						}
						part ComponentFunctionalAllocation_17 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "b6f1c5ea-b13d-4277-97f4-7baad286173f";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3;
							ref part :> function = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2;
							ref part :> 'block' = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3;
						}
						part ComponentPort_4 : ComponentPort :> ownedFeatures {
							attribute :>> id = "653169d5-88ec-4431-96e4-907f88de7b92";
							attribute :>> name = "CP 1";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> orientation = INOUT;
							attribute :>> kind = FLOW;
							ref part :> ownedPortAllocations = (SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4.PortAllocation_5, SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4.PortAllocation_6);
							part PortAllocation_5 : PortAllocation :> ownedPortAllocations {
								attribute :>> id = "8fb9929d-b393-405c-b2f4-c14d5cadbb4d";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionOutputPort_1;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4;
								ref part :> allocatedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionOutputPort_1;
								ref part :> allocatingPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4;
							}
							part PortAllocation_6 : PortAllocation :> ownedPortAllocations {
								attribute :>> id = "46caa1d7-7613-4c2a-b6f8-ad8c96067145";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionInputPort_1;
								ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4;
								ref part :> allocatedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_2.FunctionInputPort_1;
								ref part :> allocatingPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3.ComponentPort_4;
							}
						}
						part ComponentRealization_2 : ComponentRealization :> ownedComponentRealizations {
							attribute :>> id = "1cb42e9c-2ca2-40f4-b065-381767fb7f6c";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
							ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3;
							ref part :> realizedComponent = SystemEngineering_1.OperationalAnalysis_1.EntityPkg_1.Entity_2.Entity_3.Entity_4;
							ref part :> realizingComponent = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_3;
						}
					}
				}
				part MissionPkg_1 : MissionPkg :> ownedMissionPkg {
					attribute :>> id = "2bca59da-015b-456c-a0bd-469de75a85f3";
					attribute :>> name = "Missions";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedMissions = SystemEngineering_1.SystemAnalysis_1.MissionPkg_1.Mission_1;
					part Mission_1 : Mission :> ownedMissions {
						attribute :>> id = "85ac7766-7631-43b5-a221-a662bbbcf3e2";
						attribute :>> name = "Provide space imagery solution";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> involvedInvolvements = SystemEngineering_1.SystemAnalysis_1.MissionPkg_1.Mission_1.MissionInvolvement_1;
						ref part :> ownedMissionInvolvements = SystemEngineering_1.SystemAnalysis_1.MissionPkg_1.Mission_1.MissionInvolvement_1;
						ref part :> involvedSystemComponents = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
						ref part :> ownedCapabilityExploitations = SystemEngineering_1.SystemAnalysis_1.MissionPkg_1.Mission_1.CapabilityExploitation_1;
						ref part :> exploitedCapabilities = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
						part MissionInvolvement_1 : MissionInvolvement :> ownedMissionInvolvements {
							attribute :>> id = "10630180-48f7-42a4-82ab-6badf8cbefa9";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.SystemAnalysis_1.MissionPkg_1.Mission_1;
							ref part :> involved = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> systemComponent = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> mission = SystemEngineering_1.SystemAnalysis_1.MissionPkg_1.Mission_1;
						}
						part CapabilityExploitation_1 : CapabilityExploitation :> ownedCapabilityExploitations {
							attribute :>> id = "80298e27-54ad-4da3-b797-4a7deb30bdf8";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> mission = SystemEngineering_1.SystemAnalysis_1.MissionPkg_1.Mission_1;
							ref part :> capability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
						}
					}
				}
				part OperationalAnalysisRealization_1 : OperationalAnalysisRealization :> ownedOperationalAnalysisRealizations {
					attribute :>> id = "9cf314fa-d828-4ae4-bc20-755b3642002c";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> targetElement = SystemEngineering_1.OperationalAnalysis_1;
					ref part :> sourceElement = SystemEngineering_1.SystemAnalysis_1;
					ref part :> allocatedArchitecture = SystemEngineering_1.OperationalAnalysis_1;
					ref part :> allocatingArchitecture = SystemEngineering_1.SystemAnalysis_1;
				}
			}
			part LogicalArchitecture_1 : LogicalArchitecture :> ownedArchitectures {
				attribute :>> id = "4f484483-4b3f-4252-b68d-714fc9a1007b";
				attribute :>> name = "Logical Architecture";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
				ref part :> ownedFunctionPkg = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1;
				ref part :> ownedAbstractCapabilityPkg = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1;
				ref part :> ownedInterfacePkg = SystemEngineering_1.LogicalArchitecture_1.InterfacePkg_3;
				ref part :> ownedDataPkg = SystemEngineering_1.LogicalArchitecture_1.DataPkg_4;
				ref part :> system = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
				ref part :> ownedLogicalComponentPkg = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1;
				ref part :> containedCapabilityRealizationPkg = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1;
				ref part :> containedLogicalFunctionPkg = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1;
				ref part :> ownedSystemAnalysisRealizations = SystemEngineering_1.LogicalArchitecture_1.SystemAnalysisRealization_1;
				part LogicalFunctionPkg_1 : LogicalFunctionPkg :> ownedFunctionPkg {
					attribute :>> id = "151170b3-df78-462a-b861-a0ba2fdb79a6";
					attribute :>> name = "Logical Functions";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedLogicalFunctions = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1;
					part LogicalFunction_1 : LogicalFunction :> ownedLogicalFunctions {
						attribute :>> id = "c5f228f8-0628-4814-9361-fad3903c8aad";
						attribute :>> name = "Root Logical Function";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						attribute :>> kind = FUNCTION;
						ref part :> ownedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13);
						ref part :> ownedFunctionRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionRealization_8;
						ref part :> ownedFunctionalExchanges = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_26, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_27);
						ref part :> subFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13);
						ref part :> containedLogicalFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13);
						ref part :> childrenLogicalFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13);
						part LogicalFunction_2 : LogicalFunction :> ownedFunctions {
							attribute :>> id = "ccb9b2e5-0960-4ff4-9c0b-5b9eb940b384";
							attribute :>> name = "Diffuse light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> outputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10;
							ref part :> ownedFunctionRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionRealization_4;
							part FunctionOutputPort_10 : FunctionOutputPort :> outputs {
								attribute :>> id = "9cc266ac-1b77-4295-953a-308855ce5fe2";
								attribute :>> name = "outLight";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
								ref part :> ownedPortRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10.PortRealization_1;
								part PortRealization_1 : PortRealization :> ownedPortRealizations {
									attribute :>> id = "da892390-8a4a-4311-a52a-e299ed39b83e";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3.FunctionOutputPort_2;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10;
									ref part :> realizedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3.FunctionOutputPort_2;
									ref part :> realizingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10;
								}
							}
							part FunctionRealization_4 : FunctionRealization :> ownedFunctionRealizations {
								attribute :>> id = "9494ca64-0e78-4ede-a6ab-1a00e666c834";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
								ref part :> allocatedFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_3;
								ref part :> allocatingFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
							}
						}
						part LogicalFunction_3 : LogicalFunction :> ownedFunctions {
							attribute :>> id = "04c2e7a9-51e0-4667-86f4-aece025825e8";
							attribute :>> name = "Capture cosmic light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> ownedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> ownedFunctionRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.FunctionRealization_5;
							ref part :> ownedFunctionalExchanges = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.FunctionalExchange_20;
							ref part :> subFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> containedLogicalFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> childrenLogicalFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							part LogicalFunction_4 : LogicalFunction :> ownedFunctions {
								attribute :>> id = "a973a06a-042e-45a2-9016-43248779058c";
								attribute :>> name = "Collect light";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> inputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10;
								ref part :> outputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionOutputPort_11;
								part FunctionInputPort_10 : FunctionInputPort :> inputs {
									attribute :>> id = "2bbdfab6-56e1-49b5-a3d1-d5385af57e32";
									attribute :>> name = "inLight";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
									ref part :> ownedPortRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10.PortRealization_2;
									part PortRealization_2 : PortRealization :> ownedPortRealizations {
										attribute :>> id = "e9835f0c-a932-4b74-9d1f-6be367dd780b";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionInputPort_2;
										ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10;
										ref part :> realizedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionInputPort_2;
										ref part :> realizingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10;
									}
								}
								part FunctionOutputPort_11 : FunctionOutputPort :> outputs {
									attribute :>> id = "02d678d2-376c-40c6-8156-6f5b7ae78ee4";
									attribute :>> name = "FOP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
							}
							part LogicalFunction_5 : LogicalFunction :> ownedFunctions {
								attribute :>> id = "6095fa01-0a5c-456d-bf9c-a0e631905f4d";
								attribute :>> name = "Focus light";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> inputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionInputPort_11;
								ref part :> outputs = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_13);
								part FunctionInputPort_11 : FunctionInputPort :> inputs {
									attribute :>> id = "882e8e22-129e-40d3-a811-7a5344fc5863";
									attribute :>> name = "FIP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
								part FunctionOutputPort_12 : FunctionOutputPort :> outputs {
									attribute :>> id = "6d5d9dbe-31aa-4b99-a4de-caec3fa623f6";
									attribute :>> name = "FOP 2";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
									ref part :> ownedPortRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12.PortRealization_3;
									part PortRealization_3 : PortRealization :> ownedPortRealizations {
										attribute :>> id = "56125a02-0175-4723-ac50-b79e74947d6b";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_4;
										ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
										ref part :> realizedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_4;
										ref part :> realizingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
									}
								}
								part FunctionOutputPort_13 : FunctionOutputPort :> outputs {
									attribute :>> id = "3d84dd4f-363a-4f2a-bfc6-36d97723edcb";
									attribute :>> name = "FOP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
									ref part :> ownedPortRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_13.PortRealization_4;
									part PortRealization_4 : PortRealization :> ownedPortRealizations {
										attribute :>> id = "9592bc0e-0885-4328-9ede-57eb7f6e5190";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_3;
										ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_13;
										ref part :> realizedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4.FunctionOutputPort_3;
										ref part :> realizingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_13;
									}
								}
							}
							part FunctionRealization_5 : FunctionRealization :> ownedFunctionRealizations {
								attribute :>> id = "d83ac61e-e985-4f65-bdb1-d63f25a720f3";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3;
								ref part :> allocatedFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_4;
								ref part :> allocatingFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3;
							}
							part FunctionalExchange_20 : FunctionalExchange :> ownedFunctionalExchanges {
								attribute :>> id = "4ae38be9-7658-4590-809c-4e43106fcb1a";
								attribute :>> name = "Light collected";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfRate = Unspecified;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionInputPort_11;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionOutputPort_11;
								ref part :> sourceFunctionOutputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionOutputPort_11;
								ref part :> targetFunctionInputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionInputPort_11;
							}
						}
						part LogicalFunction_6 : LogicalFunction :> ownedFunctions {
							attribute :>> id = "9a700b5a-97f0-475c-849b-efaad69cedd1";
							attribute :>> name = "Control pointing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> ownedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9);
							ref part :> ownedFunctionRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionRealization_6;
							ref part :> ownedFunctionalExchanges = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_21, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_22);
							ref part :> subFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9);
							ref part :> containedLogicalFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9);
							ref part :> childrenLogicalFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9);
							part LogicalFunction_7 : LogicalFunction :> ownedFunctions {
								attribute :>> id = "059ba784-ef05-4bad-ac8a-a8284c770e0c";
								attribute :>> name = "Acquire guide stars";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> inputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionInputPort_12;
								ref part :> outputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionOutputPort_14;
								part FunctionInputPort_12 : FunctionInputPort :> inputs {
									attribute :>> id = "6e1c8ac1-ebb8-4995-bd7e-0a09c38362ab";
									attribute :>> name = "FIP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
									ref part :> ownedPortRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionInputPort_12.PortRealization_5;
									part PortRealization_5 : PortRealization :> ownedPortRealizations {
										attribute :>> id = "90dc17b2-3291-43e0-8685-34e11903c00e";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5.FunctionInputPort_3;
										ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionInputPort_12;
										ref part :> realizedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5.FunctionInputPort_3;
										ref part :> realizingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionInputPort_12;
									}
								}
								part FunctionOutputPort_14 : FunctionOutputPort :> outputs {
									attribute :>> id = "b5a749dd-36b4-4514-937f-4c446b03259e";
									attribute :>> name = "FOP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
							}
							part LogicalFunction_8 : LogicalFunction :> ownedFunctions {
								attribute :>> id = "94883248-4b07-449a-95b3-b392d1448d83";
								attribute :>> name = "Control attitude";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> inputs = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_13, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_14);
								part FunctionInputPort_13 : FunctionInputPort :> inputs {
									attribute :>> id = "e475c330-1e6f-4e07-ba01-f11ee171885f";
									attribute :>> name = "FIP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
								part FunctionInputPort_14 : FunctionInputPort :> inputs {
									attribute :>> id = "f818bd29-f8d9-4060-bb51-896c8e330aa1";
									attribute :>> name = "FIP 2";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
							}
							part LogicalFunction_9 : LogicalFunction :> ownedFunctions {
								attribute :>> id = "a613145c-7a65-433b-9c12-dca7682351b9";
								attribute :>> name = "Measure attitude";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> inputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionInputPort_15;
								ref part :> outputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionOutputPort_15;
								part FunctionInputPort_15 : FunctionInputPort :> inputs {
									attribute :>> id = "49131dbe-ebd5-435f-b0c1-65452becc8f2";
									attribute :>> name = "FIP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
								part FunctionOutputPort_15 : FunctionOutputPort :> outputs {
									attribute :>> id = "fa75449f-fa3b-47a1-863e-ebefd4e6cc89";
									attribute :>> name = "FOP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
							}
							part FunctionRealization_6 : FunctionRealization :> ownedFunctionRealizations {
								attribute :>> id = "6824d757-68ae-43d3-b5d9-cc9212813ca0";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6;
								ref part :> allocatedFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_5;
								ref part :> allocatingFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6;
							}
							part FunctionalExchange_21 : FunctionalExchange :> ownedFunctionalExchanges {
								attribute :>> id = "bb328696-dbcb-43b1-9edc-cbc48f1f4a47";
								attribute :>> name = "Guide stars";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfRate = Unspecified;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_13;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionOutputPort_14;
								ref part :> sourceFunctionOutputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionOutputPort_14;
								ref part :> targetFunctionInputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_13;
							}
							part FunctionalExchange_22 : FunctionalExchange :> ownedFunctionalExchanges {
								attribute :>> id = "8a13649b-5077-4307-879f-b854d21a7240";
								attribute :>> name = "Current attitude";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfRate = Unspecified;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_14;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionOutputPort_15;
								ref part :> sourceFunctionOutputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionOutputPort_15;
								ref part :> targetFunctionInputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_14;
							}
						}
						part LogicalFunction_10 : LogicalFunction :> ownedFunctions {
							attribute :>> id = "b8623794-bd00-4427-929a-c57524130566";
							attribute :>> name = "Translate light into data";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> ownedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12);
							ref part :> ownedFunctionRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.FunctionRealization_7;
							ref part :> subFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12);
							ref part :> containedLogicalFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12);
							ref part :> childrenLogicalFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12);
							part LogicalFunction_11 : LogicalFunction :> ownedFunctions {
								attribute :>> id = "c1fd1713-b860-4392-8f84-a32b8e46e040";
								attribute :>> name = "Provide superb wide field imagery over a broad range wavelength";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> inputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16;
								part FunctionInputPort_16 : FunctionInputPort :> inputs {
									attribute :>> id = "8418f859-1833-4dfb-9d2b-68340dedef7d";
									attribute :>> name = "FIP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
									ref part :> ownedPortRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16.PortRealization_6;
									part PortRealization_6 : PortRealization :> ownedPortRealizations {
										attribute :>> id = "78bea941-ef49-4eed-a081-e559a6703304";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7.FunctionInputPort_7;
										ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16;
										ref part :> realizedPort = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7.FunctionInputPort_7;
										ref part :> realizingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16;
									}
								}
							}
							part LogicalFunction_12 : LogicalFunction :> ownedFunctions {
								attribute :>> id = "5c2cbafa-a052-413d-818b-7d651f42b0f9";
								attribute :>> name = "Capture spectrum";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> inputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12.FunctionInputPort_17;
								part FunctionInputPort_17 : FunctionInputPort :> inputs {
									attribute :>> id = "9aa4cb6b-69df-4a22-bcc3-f0014b92bc4c";
									attribute :>> name = "FIP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
							}
							part FunctionRealization_7 : FunctionRealization :> ownedFunctionRealizations {
								attribute :>> id = "a5ed2a0b-6a8b-4f0c-9bcf-20447aa6854b";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10;
								ref part :> allocatedFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.SystemFunction_7;
								ref part :> allocatingFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10;
							}
						}
						part LogicalFunction_13 : LogicalFunction :> ownedFunctions {
							attribute :>> id = "45fbbaa4-f6c1-411f-9b86-c3d273eefd38";
							attribute :>> name = "Act as reference";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> outputs = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13.FunctionOutputPort_16;
							part FunctionOutputPort_16 : FunctionOutputPort :> outputs {
								attribute :>> id = "eb4e97e7-34ad-45d5-8f7e-7cfa58cd2a99";
								attribute :>> name = "FOP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
							}
						}
						part FunctionRealization_8 : FunctionRealization :> ownedFunctionRealizations {
							attribute :>> id = "1fe9559a-4a87-4d86-9c84-c35212863360";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1;
							ref part :> allocatedFunction = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1;
							ref part :> allocatingFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1;
						}
						part FunctionalExchange_23 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "11e22d60-6f84-4070-802a-386b59a009d5";
							attribute :>> name = "Light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10;
							ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10;
							ref part :> ownedFunctionalExchangeRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23.FunctionalExchangeRealization_2;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10;
							ref part :> targetFunctionInputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10;
							part FunctionalExchangeRealization_2 : FunctionalExchangeRealization :> ownedFunctionalExchangeRealizations {
								attribute :>> id = "e0fa99e9-b457-4c47-bba3-8df2a199bc71";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23;
								ref part :> realizedFunctionalExchange = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_11;
								ref part :> realizingFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23;
							}
						}
						part FunctionalExchange_24 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "6157984e-c67d-46c1-add4-329d4f111139";
							attribute :>> name = "Focused light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionInputPort_12;
							ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_13;
							ref part :> ownedFunctionalExchangeRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24.FunctionalExchangeRealization_3;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_13;
							ref part :> targetFunctionInputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionInputPort_12;
							part FunctionalExchangeRealization_3 : FunctionalExchangeRealization :> ownedFunctionalExchangeRealizations {
								attribute :>> id = "23fc1a59-1ebd-4796-a42f-9eeba90a0c46";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24;
								ref part :> realizedFunctionalExchange = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_12;
								ref part :> realizingFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24;
							}
						}
						part FunctionalExchange_25 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "17944d8a-639b-413d-9b0d-2ef419489b4a";
							attribute :>> name = "Focused light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16;
							ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
							ref part :> ownedFunctionalExchangeRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25.FunctionalExchangeRealization_4;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
							ref part :> targetFunctionInputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16;
							part FunctionalExchangeRealization_4 : FunctionalExchangeRealization :> ownedFunctionalExchangeRealizations {
								attribute :>> id = "e8f9d634-4347-4b75-b0bb-7d7fd1b6ee3b";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_14;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25;
								ref part :> realizedFunctionalExchange = SystemEngineering_1.SystemAnalysis_1.SystemFunctionPkg_1.SystemFunction_1.FunctionalExchange_14;
								ref part :> realizingFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25;
							}
						}
						part FunctionalExchange_26 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "2969ebc4-9a85-4e75-ae61-2cbb50cf39ec";
							attribute :>> name = "Focused light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12.FunctionInputPort_17;
							ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
							ref part :> targetFunctionInputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12.FunctionInputPort_17;
						}
						part FunctionalExchange_27 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "f5e3a9df-1216-4d56-9f0b-bebb853f1e67";
							attribute :>> name = "Space reference";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionInputPort_15;
							ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13.FunctionOutputPort_16;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13.FunctionOutputPort_16;
							ref part :> targetFunctionInputPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionInputPort_15;
						}
					}
				}
				part CapabilityRealizationPkg_1 : CapabilityRealizationPkg :> ownedAbstractCapabilityPkg {
					attribute :>> id = "164b169e-ac60-4722-9507-424775390368";
					attribute :>> name = "Capabilities";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedCapabilityRealizations = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
					part CapabilityRealization_1 : CapabilityRealization :> ownedCapabilityRealizations {
						attribute :>> id = "d1eb578c-3972-4a62-8d24-834ac0f7a371";
						attribute :>> name = "Provide image of space environment without atmoshperic constraints";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> ownedTraces = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.TransfoLink_6;
						ref part :> containedGenericTraces = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.TransfoLink_6;
						ref part :> involvedInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_5, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_6, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_7, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_8, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_18, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_19, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_20, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_21, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_22, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_23, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_24, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_25, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_26, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_27, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_28, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_29, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.CapabilityRealizationInvolvement_1);
						ref part :> ownedFunctionalChains = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6);
						ref part :> ownedFunctionalChainAbstractCapabilityInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_5, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_6, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_7, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_8);
						ref part :> ownedAbstractFunctionAbstractCapabilityInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_18, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_19, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_20, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_21, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_22, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_23, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_24, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_25, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_26, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_27, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_28, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_29);
						ref part :> ownedAbstractCapabilityRealizations = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractCapabilityRealization_2;
						ref part :> involvedAbstractFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13);
						ref part :> involvedFunctionalChains = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6);
						ref part :> ownedCapabilityRealizationInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.CapabilityRealizationInvolvement_1;
						ref part :> involvedComponents = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
						part TransfoLink_6 : TransfoLink :> ownedTraces {
							attribute :>> id = "98b71e58-9e47-4202-b307-bdc665e3d33e";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.CapabilityInvolvement_1;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.CapabilityRealizationInvolvement_1;
							ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.CapabilityRealizationInvolvement_1;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.CapabilityInvolvement_1;
						}
						part FunctionalChain_3 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "e2e37e59-6c22-4b24-88e1-f700fad94ead";
							attribute :>> name = "Space light capturing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementLink_21, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_25, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_26, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementLink_22, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementLink_21, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_25, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_26, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementLink_22, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27);
							ref part :> ownedFunctionalChainRealizations = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainRealization_1, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainRealization_2);
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementLink_21, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_25, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_26, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementLink_22, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27);
							ref part :> involvedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> involvedFunctionalExchanges = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.FunctionalExchange_20);
							ref part :> involvedElements = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.FunctionalExchange_20, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> enactedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_25, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_26, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27);
							part FunctionalChainInvolvementLink_21 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "d8967bbb-e913-4b22-bd62-1dec14a2bf25";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_25;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_26;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_26;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_25;
							}
							part FunctionalChainInvolvementFunction_25 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "0a19402d-cb7a-4d78-9629-95db3ef6a5f1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4;
							}
							part FunctionalChainInvolvementFunction_26 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "c35fb0a1-fd64-4249-96e4-97581430befa";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
							}
							part FunctionalChainInvolvementLink_22 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "abc67842-c3fe-4110-8a61-4f750a5d0ed9";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.FunctionalExchange_20;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_25;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.FunctionalExchange_20;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_25;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27;
							}
							part FunctionalChainInvolvementFunction_27 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "830568de-8f66-4972-b815-819d8306d50c";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
							}
							part FunctionalChainRealization_1 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "edaacdf8-f6e1-4832-8e92-13a26b2d5824";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
							}
							part FunctionalChainRealization_2 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "5952fcc5-8e20-497a-895f-2988520457af";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
							}
						}
						part FunctionalChain_4 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "f418b9fd-54dc-4f56-948d-294b84f25a07";
							attribute :>> name = "Imagery capturing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementLink_23, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_28, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_29, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainReference_1, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementLink_24);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementLink_23, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_28, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_29, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainReference_1, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementLink_24);
							ref part :> ownedFunctionalChainRealizations = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainRealization_3;
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementLink_23, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_28, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_29, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainReference_1, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementLink_24);
							ref part :> involvedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> involvedFunctionalExchanges = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25;
							ref part :> involvedElements = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> enactedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_28, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_29, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainReference_1);
							part FunctionalChainInvolvementLink_23 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "a02c612c-48f3-488b-873c-5197050e612e";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_28;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_29;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_29;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_28;
							}
							part FunctionalChainInvolvementFunction_28 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "2fa3f4f0-9021-4952-864b-8c0ea49905a9";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11;
							}
							part FunctionalChainInvolvementFunction_29 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "29972326-91c4-45be-aeed-5bddf624f98b";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
							}
							part FunctionalChainReference_1 : FunctionalChainReference :> ownedFunctionalChainInvolvements {
								attribute :>> id = "6f901db6-5c74-40fc-a764-6547f9feec88";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> referencedFunctionalChain = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
							}
							part FunctionalChainInvolvementLink_24 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "62cfea55-9c8b-482b-996b-b2b532f3243e";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_29;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> sourceReferenceHierarchy = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainReference_1;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4.FunctionalChainInvolvementFunction_29;
							}
							part FunctionalChainRealization_3 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "14e0c13b-ca83-419a-b774-4fb4ffcca449";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
							}
						}
						part FunctionalChain_5 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "51e5b956-d192-44d5-bc73-21588177e867";
							attribute :>> name = "Spectrum capturing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementLink_25, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_30, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_31, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainReference_2, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementLink_26);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementLink_25, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_30, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_31, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainReference_2, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementLink_26);
							ref part :> ownedFunctionalChainRealizations = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainRealization_4;
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementLink_25, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_30, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_31, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainReference_2, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementLink_26);
							ref part :> involvedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> involvedFunctionalExchanges = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_26;
							ref part :> involvedElements = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_26, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> enactedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_30, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_31, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainReference_2);
							part FunctionalChainInvolvementLink_25 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "c38a3b6d-0470-4eb6-bad7-aab02044e7c2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_26;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_30;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_31;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_26;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_31;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_30;
							}
							part FunctionalChainInvolvementFunction_30 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "180847b5-6d1e-4486-a406-121d9eef291a";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12;
							}
							part FunctionalChainInvolvementFunction_31 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "f27532bb-1fb8-4323-98ba-a5ff4ea2b128";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
							}
							part FunctionalChainReference_2 : FunctionalChainReference :> ownedFunctionalChainInvolvements {
								attribute :>> id = "91d41921-77c7-4280-bec7-0e422ecaa3e2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> referencedFunctionalChain = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
							}
							part FunctionalChainInvolvementLink_26 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "083867fd-eb7b-4a22-94fd-63ba7ac1f887";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_31;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> sourceReferenceHierarchy = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainReference_2;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5.FunctionalChainInvolvementFunction_31;
							}
							part FunctionalChainRealization_4 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "881dee67-9666-4a99-af58-9b4ebba22249";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_1;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
							}
						}
						part FunctionalChain_6 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "32f5e706-e05d-44e3-9ba2-6e3e952658e5";
							attribute :>> name = "Attitude controling";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_27, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_32, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_33, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_28, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_34, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_29, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_35, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_30, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_36, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainReference_3, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_31);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_27, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_32, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_33, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_28, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_34, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_29, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_35, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_30, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_36, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainReference_3, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_31);
							ref part :> ownedFunctionalChainRealizations = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainRealization_5;
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_27, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_32, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_33, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_28, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_34, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_29, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_35, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_30, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_36, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainReference_3, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementLink_31);
							ref part :> involvedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> involvedFunctionalExchanges = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_21, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_22, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_27);
							ref part :> involvedElements = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_21, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_22, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_27, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> enactedFunctions = (SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13, SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5);
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_32, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_33, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_34, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_35, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_36, SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainReference_3);
							part FunctionalChainInvolvementLink_27 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "b4dc5317-31eb-4ea9-aec4-3fe516e672f0";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_32;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_33;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_33;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_32;
							}
							part FunctionalChainInvolvementFunction_32 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "86e7b614-8461-4698-88df-e799de26f29e";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7;
							}
							part FunctionalChainInvolvementFunction_33 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "4e36ae90-4973-4610-9519-f41a98d12462";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
							}
							part FunctionalChainInvolvementLink_28 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "975c011b-9620-4d6e-a12c-eca729e421a2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_21;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_34;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_32;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_21;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_32;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_34;
							}
							part FunctionalChainInvolvementFunction_34 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "25d16fde-f2ba-4f1a-8d5b-eda03dae9584";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8;
							}
							part FunctionalChainInvolvementLink_29 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "a024dc83-bcaa-40fd-960f-8fa21c5f9757";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_22;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_34;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_35;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_22;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_35;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_34;
							}
							part FunctionalChainInvolvementFunction_35 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "4a2223e5-8ab1-44e5-a73e-d2f70e30d9c7";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9;
							}
							part FunctionalChainInvolvementLink_30 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "8f480048-0a59-40de-8b99-c1873bb58a14";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_27;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_35;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_36;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_27;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_36;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_35;
							}
							part FunctionalChainInvolvementFunction_36 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "be5f93c4-c258-4d16-869a-60e7b0a27e7e";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13;
							}
							part FunctionalChainReference_3 : FunctionalChainReference :> ownedFunctionalChainInvolvements {
								attribute :>> id = "4fc4039a-c7bc-449a-925e-6313d68efe81";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> referencedFunctionalChain = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
							}
							part FunctionalChainInvolvementLink_31 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "4b723702-64d4-4452-860a-d7801802cf0f";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
								ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_33;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27;
								ref part :> involvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> sourceReferenceHierarchy = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainReference_3;
								ref part :> source = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3.FunctionalChainInvolvementFunction_27;
								ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6.FunctionalChainInvolvementFunction_33;
							}
							part FunctionalChainRealization_5 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "dce3f33d-2a35-4d56-a059-41a67cceb279";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1.FunctionalChain_2;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
							}
						}
						part FunctionalChainAbstractCapabilityInvolvement_5 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "46dbccd0-9af4-43f7-9a1e-98a5cc6b2335";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> functionalChain = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
						}
						part FunctionalChainAbstractCapabilityInvolvement_6 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "5fc126c0-415d-442c-955d-34ccd0875826";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> functionalChain = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
						}
						part FunctionalChainAbstractCapabilityInvolvement_7 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "ce32e1d2-ed24-4f4b-9131-f04f56c63d96";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> functionalChain = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
						}
						part FunctionalChainAbstractCapabilityInvolvement_8 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "6e795b57-196d-4209-8c89-eab4911ace67";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> functionalChain = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_6;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_18 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "deca9610-b558-425b-925d-a5313f97b1bd";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_19 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "e4800666-f035-48a7-b30e-b0e030226de8";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_20 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "ecd841bd-ad0c-402e-8ef2-fb358f2c11d8";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_21 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "3c2139e9-b16e-4ffe-bb90-d2b1d2326db9";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_22 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "4aca75da-56b9-49ec-9349-0379f5d6eafb";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_23 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "948caf01-d9a8-4b4e-a95d-d1190dba6f41";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_24 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "64e7b463-47bb-4c9d-9e5a-07c31b3e1050";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_25 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "9b240702-3335-452d-a51f-f52fd80fa6dc";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_26 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "336d3d1b-e436-45cc-afb1-350a8b0a5482";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_27 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "3a31da78-3f72-4728-b2b1-8da0777667f5";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_28 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "5511d073-127d-4a0c-98ea-1cbcf043312f";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_29 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "fa6eb87b-82b8-4c9d-994b-1ec70449b69f";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13;
							ref part :> capability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13;
						}
						part AbstractCapabilityRealization_2 : AbstractCapabilityRealization :> ownedAbstractCapabilityRealizations {
							attribute :>> id = "3398eabb-5498-4d04-bfbf-c7412d5ba787";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> realizedCapability = SystemEngineering_1.SystemAnalysis_1.CapabilityPkg_1.Capability_1;
							ref part :> realizingCapability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
						}
						part CapabilityRealizationInvolvement_1 : CapabilityRealizationInvolvement :> ownedCapabilityRealizationInvolvements {
							attribute :>> id = "61ffabe6-97f7-4a09-94d0-a87910b479bd";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> involved = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
							ref part :> involvedCapabilityRealizationInvolvedElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
						}
					}
				}
				part InterfacePkg_3 : InterfacePkg :> ownedInterfacePkg {
					attribute :>> id = "40f6d789-4752-4e60-8283-5b4994249a93";
					attribute :>> name = "Interfaces";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
				}
				part DataPkg_4 : DataPkg :> ownedDataPkg {
					attribute :>> id = "c2c83ba7-6cff-4e1e-a2f1-f36bb9fde5a4";
					attribute :>> name = "Data";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					attribute :>> visibility = UNSET;
				}
				part LogicalComponentPkg_1 : LogicalComponentPkg :> ownedLogicalComponentPkg {
					attribute :>> id = "46824b25-eb6a-40d9-89e4-8790a58e6ef3";
					attribute :>> name = "Structure";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedTraces = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.TransfoLink_7;
					ref part :> containedGenericTraces = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.TransfoLink_7;
					ref part :> ownedParts = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.Part_13, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.Part_14);
					ref part :> ownedComponentExchanges = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_3, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_4);
					ref part :> ownedLogicalComponents = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6);
					part TransfoLink_7 : TransfoLink :> ownedTraces {
						attribute :>> id = "b4ee371f-d8d0-4264-a1e7-6e246ee5f093";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.Part_11;
						ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.Part_14;
						ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.Part_14;
						ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.Part_11;
					}
					part Part_13 : Part :> ownedParts {
						attribute :>> id = "cbd91b9b-cd15-40d1-98bd-643d299a1f06";
						attribute :>> name = "HUBBLE Space Telescope";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
						ref part :> type = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
					}
					part Part_14 : Part :> ownedParts {
						attribute :>> id = "5216df64-3b7e-4669-823e-e8ba28f8cddc";
						attribute :>> name = "Space";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
						ref part :> type = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
					}
					part ComponentExchange_3 : ComponentExchange :> ownedComponentExchanges {
						attribute :>> id = "df050981-4873-4865-a7c6-b002747b0f7a";
						attribute :>> name = "Space environment";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> kind = FLOW;
						ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
						ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5;
						ref part :> ownedComponentExchangeFunctionalExchangeAllocations = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_3.ComponentExchangeFunctionalExchangeAllocation_4;
						ref part :> ownedComponentExchangeRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_3.ComponentExchangeRealization_1;
						ref part :> sourcePort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
						ref part :> targetPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5;
						part ComponentExchangeFunctionalExchangeAllocation_4 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
							attribute :>> id = "46a6c1c7-6042-42da-92cf-2a5b96d42d1a";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_3;
							ref part :> allocatedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23;
							ref part :> allocatingComponentExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_3;
						}
						part ComponentExchangeRealization_1 : ComponentExchangeRealization :> ownedComponentExchangeRealizations {
							attribute :>> id = "42a08041-2ad1-4f82-b5ac-36f2b39ebf2f";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_1;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_3;
							ref part :> realizedExchangeSpecification = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_1;
							ref part :> realizingExchangeSpecification = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_3;
							ref part :> allocatedComponentExchange = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.ComponentExchange_1;
							ref part :> allocatingComponentExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_3;
						}
					}
					part ComponentExchange_4 : ComponentExchange :> ownedComponentExchanges {
						attribute :>> id = "8f512e7b-f697-4509-9b11-b76530b83037";
						attribute :>> name = "Space environment";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> kind = FLOW;
						ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
						ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_7;
						ref part :> ownedComponentExchangeFunctionalExchangeAllocations = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_4.ComponentExchangeFunctionalExchangeAllocation_5;
						ref part :> sourcePort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
						ref part :> targetPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_7;
						part ComponentExchangeFunctionalExchangeAllocation_5 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
							attribute :>> id = "2d724a98-864b-4f22-8120-d05ebdd66008";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_27;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_4;
							ref part :> allocatedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_27;
							ref part :> allocatingComponentExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.ComponentExchange_4;
						}
					}
					part LogicalComponent_1 : LogicalComponent :> ownedLogicalComponents {
						attribute :>> id = "5ff88689-a71a-4f44-9709-fa08aa7c0462";
						attribute :>> name = "HUBBLE Space Telescope";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> ownedComponentExchanges = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_6);
						ref part :> ownedFeatures = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.Part_15, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.Part_16, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.Part_17, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.Part_18);
						ref part :> ownedComponentRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentRealization_3;
						ref part :> containedParts = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.Part_15, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.Part_16, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.Part_17, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.Part_18);
						ref part :> ownedLogicalComponents = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_5);
						ref part :> subLogicalComponents = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_5);
						part ComponentExchange_5 : ComponentExchange :> ownedComponentExchanges {
							attribute :>> id = "10712f1f-8f4c-46c4-9914-6522d9451279";
							attribute :>> name = "Observed light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = FLOW;
							ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8;
							ref part :> ownedComponentExchangeFunctionalExchangeAllocations = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5.ComponentExchangeFunctionalExchangeAllocation_6, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5.ComponentExchangeFunctionalExchangeAllocation_7, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5.ComponentExchangeFunctionalExchangeAllocation_8);
							ref part :> sourcePort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6;
							ref part :> targetPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8;
							part ComponentExchangeFunctionalExchangeAllocation_6 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
								attribute :>> id = "9178f32c-a6d0-455a-a397-ed15a8296829";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5;
								ref part :> allocatedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_24;
								ref part :> allocatingComponentExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5;
							}
							part ComponentExchangeFunctionalExchangeAllocation_7 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
								attribute :>> id = "926c981c-c156-441d-ba83-83fe43817b81";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_26;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5;
								ref part :> allocatedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_26;
								ref part :> allocatingComponentExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5;
							}
							part ComponentExchangeFunctionalExchangeAllocation_8 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
								attribute :>> id = "da5b408d-b251-4b5b-85d9-32ea2a54c0e1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5;
								ref part :> allocatedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25;
								ref part :> allocatingComponentExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_5;
							}
						}
						part ComponentExchange_6 : ComponentExchange :> ownedComponentExchanges {
							attribute :>> id = "585051a8-995e-48d8-b627-489777cf5cb4";
							attribute :>> name = "Sensed data";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = FLOW;
							ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10;
							ref part :> ownedComponentExchangeFunctionalExchangeAllocations = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_6.ComponentExchangeFunctionalExchangeAllocation_9, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_6.ComponentExchangeFunctionalExchangeAllocation_10);
							ref part :> sourcePort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9;
							ref part :> targetPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10;
							part ComponentExchangeFunctionalExchangeAllocation_9 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
								attribute :>> id = "7fda12fc-18a0-4cc7-a21d-d1bb724025e1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_21;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_6;
								ref part :> allocatedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_21;
								ref part :> allocatingComponentExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_6;
							}
							part ComponentExchangeFunctionalExchangeAllocation_10 : ComponentExchangeFunctionalExchangeAllocation :> ownedComponentExchangeFunctionalExchangeAllocations {
								attribute :>> id = "cae2ccf6-aec8-4bf7-807d-2352b907b757";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_22;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_6;
								ref part :> allocatedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.FunctionalExchange_22;
								ref part :> allocatingComponentExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.ComponentExchange_6;
							}
						}
						part Part_15 : Part :> ownedFeatures {
							attribute :>> id = "d043a58c-4b7c-405b-aa6f-36c2f3a2ca7e";
							attribute :>> name = "Observation";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2;
							ref part :> type = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2;
						}
						part Part_16 : Part :> ownedFeatures {
							attribute :>> id = "97c238f1-bc99-4e85-8200-d7b8e2408cda";
							attribute :>> name = "Sensing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
							ref part :> type = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
						}
						part Part_17 : Part :> ownedFeatures {
							attribute :>> id = "70e7c501-de2a-4554-bb69-bd9eeda03804";
							attribute :>> name = "Navigation";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4;
							ref part :> type = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4;
						}
						part Part_18 : Part :> ownedFeatures {
							attribute :>> id = "1796ea48-63cf-4615-b44f-e4ffef891041";
							attribute :>> name = "Others...";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_5;
							ref part :> type = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_5;
						}
						part ComponentRealization_3 : ComponentRealization :> ownedComponentRealizations {
							attribute :>> id = "653494bc-0d89-4b63-babc-0a6b85becab7";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
							ref part :> realizedComponent = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1;
							ref part :> realizingComponent = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
						}
						part LogicalComponent_2 : LogicalComponent :> ownedLogicalComponents {
							attribute :>> id = "2942fbe1-d7da-449f-9d94-d9d61a7b54df";
							attribute :>> name = "Observation";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> ownedFunctionalAllocation = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentFunctionalAllocation_18, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentFunctionalAllocation_19);
							ref part :> ownedFeatures = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6);
							ref part :> containedComponentPorts = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6);
							part ComponentFunctionalAllocation_18 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "b1002b96-6de0-4a27-a375-93b27a834349";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2;
								ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
								ref part :> 'block' = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2;
							}
							part ComponentFunctionalAllocation_19 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "4759bdda-31f2-4e24-994d-baafbe385a28";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2;
								ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4;
								ref part :> 'block' = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2;
							}
							part ComponentPort_5 : ComponentPort :> ownedFeatures {
								attribute :>> id = "9c9938c6-d6d0-4ea2-99c9-66a21dec0c09";
								attribute :>> name = "CP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> orientation = IN;
								attribute :>> kind = FLOW;
								ref part :> ownedPortRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5.PortRealization_7;
								ref part :> ownedPortAllocations = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5.PortAllocation_7;
								part PortRealization_7 : PortRealization :> ownedPortRealizations {
									attribute :>> id = "2e4b9819-7769-425c-8929-2b507b38166a";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_1;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5;
									ref part :> realizedPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_1.ComponentPort_1;
									ref part :> realizingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5;
								}
								part PortAllocation_7 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "9761ee9f-659f-4f62-b46a-be43399b442e";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_5;
								}
							}
							part ComponentPort_6 : ComponentPort :> ownedFeatures {
								attribute :>> id = "e7698657-e704-4ce1-8604-3c4f3e16b395";
								attribute :>> name = "CP 2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> orientation = OUT;
								attribute :>> kind = FLOW;
								ref part :> ownedPortAllocations = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6.PortAllocation_8, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6.PortAllocation_9);
								part PortAllocation_8 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "ed8d5506-8b69-4cbf-b936-f77caab50431";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_13;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_13;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6;
								}
								part PortAllocation_9 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "de653cf1-d6a2-410a-9789-f709ab2bf02c";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_2.ComponentPort_6;
								}
							}
						}
						part LogicalComponent_3 : LogicalComponent :> ownedLogicalComponents {
							attribute :>> id = "84037522-f6bb-4fae-a803-f0d5cc5e55f3";
							attribute :>> name = "Sensing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> ownedFunctionalAllocation = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentFunctionalAllocation_20, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentFunctionalAllocation_21, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentFunctionalAllocation_22, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentFunctionalAllocation_23);
							ref part :> ownedFeatures = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_7, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9);
							ref part :> containedComponentPorts = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_7, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9);
							part ComponentFunctionalAllocation_20 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "dbe2b595-7c94-4f36-b852-1f30f3adc21b";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
								ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11;
								ref part :> 'block' = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
							}
							part ComponentFunctionalAllocation_21 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "b2dac196-d980-41e7-8eca-0bfaef4ed7c8";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
								ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12;
								ref part :> 'block' = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
							}
							part ComponentFunctionalAllocation_22 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "f9036d31-1fbc-46cf-a608-dd2302368671";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
								ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7;
								ref part :> 'block' = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
							}
							part ComponentFunctionalAllocation_23 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "959e7e45-b955-425a-8227-5e778d614cd0";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
								ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9;
								ref part :> 'block' = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3;
							}
							part ComponentPort_7 : ComponentPort :> ownedFeatures {
								attribute :>> id = "1cc5ae1d-9d53-41f6-b21f-55273625902f";
								attribute :>> name = "CP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> orientation = IN;
								attribute :>> kind = FLOW;
								ref part :> ownedPortAllocations = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_7.PortAllocation_10;
								part PortAllocation_10 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "db819732-1c54-4132-b6db-5a32419cccdd";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionInputPort_15;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_7;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionInputPort_15;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_7;
								}
							}
							part ComponentPort_8 : ComponentPort :> ownedFeatures {
								attribute :>> id = "21362ff6-e8fe-4215-8e38-2874661cf4f2";
								attribute :>> name = "CP 2";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> orientation = IN;
								attribute :>> kind = FLOW;
								ref part :> ownedPortAllocations = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8.PortAllocation_11, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8.PortAllocation_12, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8.PortAllocation_13);
								part PortAllocation_11 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "46298963-ad92-4611-9a85-51b01e720245";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionInputPort_12;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionInputPort_12;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8;
								}
								part PortAllocation_12 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "fd7f9700-5af6-468b-aff1-121bc3c09806";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12.FunctionInputPort_17;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12.FunctionInputPort_17;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8;
								}
								part PortAllocation_13 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "6ef3f313-3143-4cb5-add0-fd8dd1f4cbc1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_8;
								}
							}
							part ComponentPort_9 : ComponentPort :> ownedFeatures {
								attribute :>> id = "7d1a0a2b-e50d-4b3d-af6f-68da1beea359";
								attribute :>> name = "CP 3";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> orientation = OUT;
								attribute :>> kind = FLOW;
								ref part :> ownedPortAllocations = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9.PortAllocation_14, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9.PortAllocation_15);
								part PortAllocation_14 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "78708363-e2a5-45bb-b8e4-0d35bc5bf931";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionOutputPort_14;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_7.FunctionOutputPort_14;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9;
								}
								part PortAllocation_15 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "0e3a7573-c8dc-47b9-855e-76676b81a287";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionOutputPort_15;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_9.FunctionOutputPort_15;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_3.ComponentPort_9;
								}
							}
						}
						part LogicalComponent_4 : LogicalComponent :> ownedLogicalComponents {
							attribute :>> id = "a9df1b30-a523-4f26-9706-d9c079453d7d";
							attribute :>> name = "Navigation";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> ownedFunctionalAllocation = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentFunctionalAllocation_24;
							ref part :> ownedFeatures = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10;
							ref part :> containedComponentPorts = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10;
							part ComponentFunctionalAllocation_24 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "27c0c68e-b7e9-46f8-9b11-b40f44ee11e4";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4;
								ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8;
								ref part :> 'block' = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4;
							}
							part ComponentPort_10 : ComponentPort :> ownedFeatures {
								attribute :>> id = "0117506b-992d-4f02-8172-d89303ff9a9e";
								attribute :>> name = "CP 1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> orientation = IN;
								attribute :>> kind = FLOW;
								ref part :> ownedPortAllocations = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10.PortAllocation_16, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10.PortAllocation_17);
								part PortAllocation_16 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "4b4c4672-0ea3-4b44-948f-11a31aa045c7";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_13;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_13;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10;
								}
								part PortAllocation_17 : PortAllocation :> ownedPortAllocations {
									attribute :>> id = "246d86fe-99c8-42fd-b76b-ba7ce20a7450";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_14;
									ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10;
									ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_6.LogicalFunction_8.FunctionInputPort_14;
									ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1.LogicalComponent_4.ComponentPort_10;
								}
							}
						}
						part LogicalComponent_5 : LogicalComponent :> ownedLogicalComponents {
							attribute :>> id = "e0e88a66-bb46-487f-a447-85f837bad0b0";
							attribute :>> name = "Others...";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
						}
					}
					part LogicalComponent_6 : LogicalComponent :> ownedLogicalComponents {
						attribute :>> id = "974761c2-225d-4a74-b2a4-af86c886766d";
						attribute :>> name = "Space";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> 'actor' = true;
						ref part :> ownedTraces = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.TransfoLink_8;
						ref part :> containedGenericTraces = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.TransfoLink_8;
						ref part :> ownedFunctionalAllocation = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentFunctionalAllocation_25, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentFunctionalAllocation_26);
						ref part :> ownedFeatures = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
						ref part :> ownedComponentRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentRealization_4;
						ref part :> containedComponentPorts = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
						part TransfoLink_8 : TransfoLink :> ownedTraces {
							attribute :>> id = "1861b9df-ad34-42ee-9f78-27af870ff0fc";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentFunctionalAllocation_16;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentFunctionalAllocation_25;
							ref part :> source = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentFunctionalAllocation_25;
							ref part :> target = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentFunctionalAllocation_16;
						}
						part ComponentFunctionalAllocation_25 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "f9220af5-1b36-43f3-917d-1a859b036846";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
							ref part :> 'block' = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
						}
						part ComponentFunctionalAllocation_26 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "5666c9c8-9dfb-4947-987c-822917796d20";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
							ref part :> function = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13;
							ref part :> 'block' = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
						}
						part ComponentPort_11 : ComponentPort :> ownedFeatures {
							attribute :>> id = "214a558c-d7fe-422d-b134-b4a111ef0946";
							attribute :>> name = "CP 1";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> orientation = OUT;
							attribute :>> kind = FLOW;
							ref part :> ownedPortRealizations = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11.PortRealization_8;
							ref part :> ownedPortAllocations = (SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11.PortAllocation_18, SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11.PortAllocation_19);
							part PortRealization_8 : PortRealization :> ownedPortRealizations {
								attribute :>> id = "1b031d8b-4c0e-4531-a755-b9e0fb1f3db6";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentPort_3;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
								ref part :> realizedPort = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2.ComponentPort_3;
								ref part :> realizingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
							}
							part PortAllocation_18 : PortAllocation :> ownedPortAllocations {
								attribute :>> id = "7636f7ba-290f-48a7-8afe-7c49c8597988";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13.FunctionOutputPort_16;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
								ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_13.FunctionOutputPort_16;
								ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
							}
							part PortAllocation_19 : PortAllocation :> ownedPortAllocations {
								attribute :>> id = "2910d8cd-aae6-4b45-8b3a-07a4b2602a34";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10;
								ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
								ref part :> allocatedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10;
								ref part :> allocatingPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
							}
						}
						part ComponentRealization_4 : ComponentRealization :> ownedComponentRealizations {
							attribute :>> id = "55148c96-1c52-41c4-80c2-d976ebe30c7b";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
							ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
							ref part :> realizedComponent = SystemEngineering_1.SystemAnalysis_1.SystemComponentPkg_1.SystemComponent_2;
							ref part :> realizingComponent = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
						}
					}
				}
				part SystemAnalysisRealization_1 : SystemAnalysisRealization :> ownedSystemAnalysisRealizations {
					attribute :>> id = "a516898c-daf7-48ff-aab5-fc08b76dec18";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> targetElement = SystemEngineering_1.SystemAnalysis_1;
					ref part :> sourceElement = SystemEngineering_1.LogicalArchitecture_1;
					ref part :> allocatedArchitecture = SystemEngineering_1.SystemAnalysis_1;
					ref part :> allocatingArchitecture = SystemEngineering_1.LogicalArchitecture_1;
				}
			}
			part PhysicalArchitecture_1 : PhysicalArchitecture :> ownedArchitectures {
				attribute :>> id = "dab91e53-1a06-4181-910b-c098c4968dec";
				attribute :>> name = "Physical Architecture";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
				ref part :> ownedFunctionPkg = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1;
				ref part :> ownedAbstractCapabilityPkg = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2;
				ref part :> ownedInterfacePkg = SystemEngineering_1.PhysicalArchitecture_1.InterfacePkg_4;
				ref part :> ownedDataPkg = SystemEngineering_1.PhysicalArchitecture_1.DataPkg_5;
				ref part :> system = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
				ref part :> ownedPhysicalComponentPkg = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1;
				ref part :> containedCapabilityRealizationPkg = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2;
				ref part :> containedPhysicalFunctionPkg = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1;
				ref part :> ownedLogicalArchitectureRealizations = SystemEngineering_1.PhysicalArchitecture_1.LogicalArchitectureRealization_1;
				part PhysicalFunctionPkg_1 : PhysicalFunctionPkg :> ownedFunctionPkg {
					attribute :>> id = "9d63f057-e318-414f-b516-5ec1af023fa2";
					attribute :>> name = "Physical Functions";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedPhysicalFunctions = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1;
					part PhysicalFunction_1 : PhysicalFunction :> ownedPhysicalFunctions {
						attribute :>> id = "0dd3deba-6480-4ad2-8789-5902b6bd60bd";
						attribute :>> name = "Root Physical Function";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						attribute :>> kind = FUNCTION;
						ref part :> ownedFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7);
						ref part :> ownedFunctionRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionRealization_16;
						ref part :> ownedFunctionalExchanges = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_30, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_31, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_32, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_33, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_34);
						ref part :> subFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7);
						ref part :> containedPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7);
						ref part :> childrenPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7);
						part PhysicalFunction_2 : PhysicalFunction :> ownedFunctions {
							attribute :>> id = "75dd5cca-da5f-4a68-80f6-871bcc2b09a1";
							attribute :>> name = "Diffuse light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> outputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2.FunctionOutputPort_17;
							ref part :> ownedFunctionRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2.FunctionRealization_9;
							part FunctionOutputPort_17 : FunctionOutputPort :> outputs {
								attribute :>> id = "24757bd3-6cec-4b8b-be67-c5cbab44b39e";
								attribute :>> name = "outLight";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfNode = Unspecified;
								attribute :>> ordering = FIFO;
								ref part :> ownedPortRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2.FunctionOutputPort_17.PortRealization_9;
								part PortRealization_9 : PortRealization :> ownedPortRealizations {
									attribute :>> id = "4c182d84-21e0-4aa8-bc95-ef08cd91aa2e";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10;
									ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2.FunctionOutputPort_17;
									ref part :> realizedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2.FunctionOutputPort_10;
									ref part :> realizingPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2.FunctionOutputPort_17;
								}
							}
							part FunctionRealization_9 : FunctionRealization :> ownedFunctionRealizations {
								attribute :>> id = "76bfe9f1-6938-4472-b8a2-005f22a47cd0";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2;
								ref part :> allocatedFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_2;
								ref part :> allocatingFunction = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2;
							}
						}
						part PhysicalFunction_3 : PhysicalFunction :> ownedFunctions {
							attribute :>> id = "f47769a7-7173-4f27-aed5-0419672fc5ca";
							attribute :>> name = "Capture cosmic light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> ownedFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6);
							ref part :> ownedFunctionRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionRealization_12;
							ref part :> ownedFunctionalExchanges = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_28, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_29);
							ref part :> subFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6);
							ref part :> containedPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6);
							ref part :> childrenPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6);
							part PhysicalFunction_4 : PhysicalFunction :> ownedFunctions {
								attribute :>> id = "b5274130-36a6-461a-93fb-4d97f80a0736";
								attribute :>> name = "Collect light";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> inputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionInputPort_18;
								ref part :> outputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionOutputPort_18;
								ref part :> ownedFunctionRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionRealization_10;
								part FunctionInputPort_18 : FunctionInputPort :> inputs {
									attribute :>> id = "64178636-a138-416c-84aa-01404b69a347";
									attribute :>> name = "inLight";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
									ref part :> ownedPortRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionInputPort_18.PortRealization_10;
									part PortRealization_10 : PortRealization :> ownedPortRealizations {
										attribute :>> id = "1f425b3b-ce23-47b3-8a6c-9bfc5027bced";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10;
										ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionInputPort_18;
										ref part :> realizedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionInputPort_10;
										ref part :> realizingPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionInputPort_18;
									}
								}
								part FunctionOutputPort_18 : FunctionOutputPort :> outputs {
									attribute :>> id = "d38efbef-e7da-4a06-a90d-f9dd3ea70e9e";
									attribute :>> name = "FOP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
									ref part :> ownedPortRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionOutputPort_18.PortRealization_11;
									part PortRealization_11 : PortRealization :> ownedPortRealizations {
										attribute :>> id = "a49ff882-6e94-4f87-a29d-ad656c13ec85";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionOutputPort_11;
										ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionOutputPort_18;
										ref part :> realizedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4.FunctionOutputPort_11;
										ref part :> realizingPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionOutputPort_18;
									}
								}
								part FunctionRealization_10 : FunctionRealization :> ownedFunctionRealizations {
									attribute :>> id = "a78c4178-032b-42b3-8cce-23506a0a02db";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4;
									ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4;
									ref part :> allocatedFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_4;
									ref part :> allocatingFunction = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4;
								}
							}
							part PhysicalFunction_5 : PhysicalFunction :> ownedFunctions {
								attribute :>> id = "5f814867-7c04-401a-b900-2147146b7413";
								attribute :>> name = "Focus light";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> inputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionInputPort_19;
								ref part :> outputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionOutputPort_19;
								ref part :> ownedFunctionRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionRealization_11;
								part FunctionInputPort_19 : FunctionInputPort :> inputs {
									attribute :>> id = "3270503f-0006-4a4f-bc40-326cdd16172c";
									attribute :>> name = "FIP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
									ref part :> ownedPortRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionInputPort_19.PortRealization_12;
									part PortRealization_12 : PortRealization :> ownedPortRealizations {
										attribute :>> id = "fbe380b1-88b6-47b1-a3b7-3b628fb975db";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionInputPort_11;
										ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionInputPort_19;
										ref part :> realizedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionInputPort_11;
										ref part :> realizingPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionInputPort_19;
									}
								}
								part FunctionOutputPort_19 : FunctionOutputPort :> outputs {
									attribute :>> id = "b8c8ce9b-91b1-4ef5-8134-58b576f1f943";
									attribute :>> name = "FOP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
								part FunctionRealization_11 : FunctionRealization :> ownedFunctionRealizations {
									attribute :>> id = "2a16e8b8-9d37-4588-9b9e-22d377bcbd17";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
									ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5;
									ref part :> allocatedFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5;
									ref part :> allocatingFunction = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5;
								}
							}
							part PhysicalFunction_6 : PhysicalFunction :> ownedFunctions {
								attribute :>> id = "7858091e-7e7d-4924-879c-518e59fcbd1f";
								attribute :>> name = "PhysicalFunction 4";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = SPLIT;
								ref part :> inputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionInputPort_20;
								ref part :> outputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
								part FunctionInputPort_20 : FunctionInputPort :> inputs {
									attribute :>> id = "9f34792b-153c-4c2b-8bdf-88420ee03825";
									attribute :>> name = "FIP 1";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
								}
								part FunctionOutputPort_20 : FunctionOutputPort :> outputs {
									attribute :>> id = "b8157624-7f08-4c34-94e8-e8fd4150a714";
									attribute :>> name = "FOP 2";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> kindOfNode = Unspecified;
									attribute :>> ordering = FIFO;
									ref part :> ownedPortRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20.PortRealization_13;
									part PortRealization_13 : PortRealization :> ownedPortRealizations {
										attribute :>> id = "5c396779-d4bc-4942-9f48-94cf2ca955be";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
										ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
										ref part :> realizedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.LogicalFunction_5.FunctionOutputPort_12;
										ref part :> realizingPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
									}
								}
							}
							part FunctionRealization_12 : FunctionRealization :> ownedFunctionRealizations {
								attribute :>> id = "835e5052-5acd-49e0-b0bb-b175c6ec71c3";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3;
								ref part :> allocatedFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3;
								ref part :> allocatingFunction = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3;
							}
							part FunctionalExchange_28 : FunctionalExchange :> ownedFunctionalExchanges {
								attribute :>> id = "8c5fffd5-29a2-4fc6-940d-302e513ab2d3";
								attribute :>> name = "Light collected";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfRate = Unspecified;
								ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionInputPort_19;
								ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionOutputPort_18;
								ref part :> ownedFunctionalExchangeRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_28.FunctionalExchangeRealization_5;
								ref part :> sourceFunctionOutputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionOutputPort_18;
								ref part :> targetFunctionInputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionInputPort_19;
								part FunctionalExchangeRealization_5 : FunctionalExchangeRealization :> ownedFunctionalExchangeRealizations {
									attribute :>> id = "828fc4b5-4d25-4ff4-a59f-f4508c7d3853";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.FunctionalExchange_20;
									ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_28;
									ref part :> realizedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_3.FunctionalExchange_20;
									ref part :> realizingFunctionalExchange = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_28;
								}
							}
							part FunctionalExchange_29 : FunctionalExchange :> ownedFunctionalExchanges {
								attribute :>> id = "66c2da14-daba-465a-8de2-cfcc73424631";
								attribute :>> name = "Focued light";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> kindOfRate = Unspecified;
								ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionInputPort_20;
								ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionOutputPort_19;
								ref part :> sourceFunctionOutputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5.FunctionOutputPort_19;
								ref part :> targetFunctionInputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionInputPort_20;
							}
						}
						part PhysicalFunction_7 : PhysicalFunction :> ownedFunctions {
							attribute :>> id = "c73aac2e-447e-41af-985d-aceaf8c45bf1";
							attribute :>> name = "Translate light into data";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> kind = FUNCTION;
							ref part :> ownedFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11);
							ref part :> ownedFunctionRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.FunctionRealization_15;
							ref part :> subFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11);
							ref part :> containedPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11);
							ref part :> childrenPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11);
							part PhysicalFunction_8 : PhysicalFunction :> ownedFunctions {
								attribute :>> id = "a46ff7f8-45eb-43df-a013-f1c3c7c69d5e";
								attribute :>> name = "Provide superb wide field imagery over a broad range wavelength";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> ownedFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10);
								ref part :> ownedFunctionRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.FunctionRealization_13;
								ref part :> subFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10);
								ref part :> containedPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10);
								ref part :> childrenPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10);
								part PhysicalFunction_9 : PhysicalFunction :> ownedFunctions {
									attribute :>> id = "1190f17c-1158-44aa-a0e6-aed3fc13069c";
									attribute :>> name = "Provide wide field imagery in visible wavelengths";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> visibility = UNSET;
									attribute :>> aggregationKind = UNSET;
									attribute :>> kind = FUNCTION;
									ref part :> inputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9.FunctionInputPort_21;
									part FunctionInputPort_21 : FunctionInputPort :> inputs {
										attribute :>> id = "8b6231f8-f1ac-44cb-bca3-826eec545090";
										attribute :>> name = "FIP 1";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										attribute :>> kindOfNode = Unspecified;
										attribute :>> ordering = FIFO;
										ref part :> ownedPortRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9.FunctionInputPort_21.PortRealization_14;
										part PortRealization_14 : PortRealization :> ownedPortRealizations {
											attribute :>> id = "49e49c5a-f9e2-4f2c-99b5-aba2a87d326e";
											attribute :>> visibleInDoc = true;
											attribute :>> visibleInLM = true;
											ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16;
											ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9.FunctionInputPort_21;
											ref part :> realizedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11.FunctionInputPort_16;
											ref part :> realizingPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9.FunctionInputPort_21;
										}
									}
								}
								part PhysicalFunction_10 : PhysicalFunction :> ownedFunctions {
									attribute :>> id = "f03775a0-fc26-4779-851c-a3e723d95757";
									attribute :>> name = "Provide wide field imagery in ultra violet, infra red and  visible lights";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> visibility = UNSET;
									attribute :>> aggregationKind = UNSET;
									attribute :>> kind = FUNCTION;
									ref part :> inputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10.FunctionInputPort_22;
									part FunctionInputPort_22 : FunctionInputPort :> inputs {
										attribute :>> id = "6ae692e0-c2ad-4910-956c-3644bd65b2bc";
										attribute :>> name = "FIP 1";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										attribute :>> kindOfNode = Unspecified;
										attribute :>> ordering = FIFO;
									}
								}
								part FunctionRealization_13 : FunctionRealization :> ownedFunctionRealizations {
									attribute :>> id = "7f6df57a-ee13-45c9-b0a1-aac61acf514f";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11;
									ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8;
									ref part :> allocatedFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_11;
									ref part :> allocatingFunction = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8;
								}
							}
							part PhysicalFunction_11 : PhysicalFunction :> ownedFunctions {
								attribute :>> id = "dd9e65cf-fbe6-4c54-92b1-5d0803a55c78";
								attribute :>> name = "Capture spectrum";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								attribute :>> kind = FUNCTION;
								ref part :> ownedFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13);
								ref part :> ownedFunctionRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.FunctionRealization_14;
								ref part :> subFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13);
								ref part :> containedPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13);
								ref part :> childrenPhysicalFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13);
								part PhysicalFunction_12 : PhysicalFunction :> ownedFunctions {
									attribute :>> id = "f03c230d-e637-46a2-a1d2-3b3dbc231c33";
									attribute :>> name = "Provide ultra violet spectrum";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> visibility = UNSET;
									attribute :>> aggregationKind = UNSET;
									attribute :>> kind = FUNCTION;
									ref part :> inputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12.FunctionInputPort_23;
									part FunctionInputPort_23 : FunctionInputPort :> inputs {
										attribute :>> id = "f1ecfcca-04ec-49c1-ac5a-85919bcf68e4";
										attribute :>> name = "FIP 1";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										attribute :>> kindOfNode = Unspecified;
										attribute :>> ordering = FIFO;
										ref part :> ownedPortRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12.FunctionInputPort_23.PortRealization_15;
										part PortRealization_15 : PortRealization :> ownedPortRealizations {
											attribute :>> id = "d87e60c7-69f0-4b25-a50b-b8fd60a4e64c";
											attribute :>> visibleInDoc = true;
											attribute :>> visibleInLM = true;
											ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12.FunctionInputPort_17;
											ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12.FunctionInputPort_23;
											ref part :> realizedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12.FunctionInputPort_17;
											ref part :> realizingPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12.FunctionInputPort_23;
										}
									}
								}
								part PhysicalFunction_13 : PhysicalFunction :> ownedFunctions {
									attribute :>> id = "9a458901-3728-4935-bbde-af4e07f71725";
									attribute :>> name = "Obtain high resolution spectra of resolved objects";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									attribute :>> visibility = UNSET;
									attribute :>> aggregationKind = UNSET;
									attribute :>> kind = FUNCTION;
									ref part :> inputs = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13.FunctionInputPort_24;
									part FunctionInputPort_24 : FunctionInputPort :> inputs {
										attribute :>> id = "fac483c1-b600-4d47-aa44-f438b9b887bf";
										attribute :>> name = "FIP 1";
										attribute :>> visibleInDoc = true;
										attribute :>> visibleInLM = true;
										attribute :>> kindOfNode = Unspecified;
										attribute :>> ordering = FIFO;
									}
								}
								part FunctionRealization_14 : FunctionRealization :> ownedFunctionRealizations {
									attribute :>> id = "73545414-996c-4184-8dc7-0b6895af31c7";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12;
									ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11;
									ref part :> allocatedFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10.LogicalFunction_12;
									ref part :> allocatingFunction = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11;
								}
							}
							part FunctionRealization_15 : FunctionRealization :> ownedFunctionRealizations {
								attribute :>> id = "b0e05e28-210e-42d1-888f-5dc58ccf7728";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7;
								ref part :> allocatedFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.LogicalFunction_10;
								ref part :> allocatingFunction = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7;
							}
						}
						part FunctionRealization_16 : FunctionRealization :> ownedFunctionRealizations {
							attribute :>> id = "174cb004-9402-488c-9ee6-79fe23646362";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1;
							ref part :> allocatedFunction = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1;
							ref part :> allocatingFunction = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1;
						}
						part FunctionalExchange_30 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "415e4862-c15a-45f7-8ff9-6bb942fcd706";
							attribute :>> name = "Light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionInputPort_18;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2.FunctionOutputPort_17;
							ref part :> ownedFunctionalExchangeRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_30.FunctionalExchangeRealization_6;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2.FunctionOutputPort_17;
							ref part :> targetFunctionInputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4.FunctionInputPort_18;
							part FunctionalExchangeRealization_6 : FunctionalExchangeRealization :> ownedFunctionalExchangeRealizations {
								attribute :>> id = "afecf06b-73b0-4f92-ac88-709e64b663fa";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_30;
								ref part :> realizedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_23;
								ref part :> realizingFunctionalExchange = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_30;
							}
						}
						part FunctionalExchange_31 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "434774cb-b470-4ebd-8570-44ec888634f5";
							attribute :>> name = "Shared focused light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9.FunctionInputPort_21;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
							ref part :> ownedFunctionalExchangeRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_31.FunctionalExchangeRealization_7;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
							ref part :> targetFunctionInputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9.FunctionInputPort_21;
							part FunctionalExchangeRealization_7 : FunctionalExchangeRealization :> ownedFunctionalExchangeRealizations {
								attribute :>> id = "0e9f1f95-0c7e-4ffe-bd2d-1e3e72bdd6fc";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_31;
								ref part :> realizedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_25;
								ref part :> realizingFunctionalExchange = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_31;
							}
						}
						part FunctionalExchange_32 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "f54bcd09-3741-4aa3-b238-7b26e3f523ae";
							attribute :>> name = "Shared focused light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12.FunctionInputPort_23;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
							ref part :> ownedFunctionalExchangeRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_32.FunctionalExchangeRealization_8;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
							ref part :> targetFunctionInputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12.FunctionInputPort_23;
							part FunctionalExchangeRealization_8 : FunctionalExchangeRealization :> ownedFunctionalExchangeRealizations {
								attribute :>> id = "5cc57200-7f5f-41d2-92b6-ad5d2771b4bb";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_26;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_32;
								ref part :> realizedFunctionalExchange = SystemEngineering_1.LogicalArchitecture_1.LogicalFunctionPkg_1.LogicalFunction_1.FunctionalExchange_26;
								ref part :> realizingFunctionalExchange = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_32;
							}
						}
						part FunctionalExchange_33 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "a9b840df-ca5e-48d3-a0f0-038645b0f9cd";
							attribute :>> name = "Shared focused light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10.FunctionInputPort_22;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
							ref part :> targetFunctionInputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10.FunctionInputPort_22;
						}
						part FunctionalExchange_34 : FunctionalExchange :> ownedFunctionalExchanges {
							attribute :>> id = "7ab41412-8809-415d-85e9-83f0df2cd00b";
							attribute :>> name = "Shared focused light";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kindOfRate = Unspecified;
							ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13.FunctionInputPort_24;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
							ref part :> sourceFunctionOutputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6.FunctionOutputPort_20;
							ref part :> targetFunctionInputPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13.FunctionInputPort_24;
						}
					}
				}
				part CapabilityRealizationPkg_2 : CapabilityRealizationPkg :> ownedAbstractCapabilityPkg {
					attribute :>> id = "ab78331a-8ead-4708-9cbb-ce659d1b18b5";
					attribute :>> name = "Capabilities";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedCapabilityRealizations = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
					part CapabilityRealization_2 : CapabilityRealization :> ownedCapabilityRealizations {
						attribute :>> id = "b6d03b29-e324-4294-81c9-1e5e9f01418b";
						attribute :>> name = "Provide image of space environment without atmoshperic constraints";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> ownedTraces = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_9, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_10, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_11, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_12, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_13, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_14, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_15, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_16, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_17);
						ref part :> containedGenericTraces = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_9, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_10, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_11, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_12, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_13, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_14, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_15, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_16, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.TransfoLink_17);
						ref part :> involvedInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_9, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_10, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_11, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_12, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_13, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_30, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_31, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_32, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_33, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_34, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_35, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_36, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.CapabilityRealizationInvolvement_2);
						ref part :> ownedFunctionalChains = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11);
						ref part :> ownedFunctionalChainAbstractCapabilityInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_9, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_10, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_11, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_12, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_13);
						ref part :> ownedAbstractFunctionAbstractCapabilityInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_30, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_31, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_32, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_33, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_34, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_35, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_36);
						ref part :> ownedAbstractCapabilityRealizations = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractCapabilityRealization_3;
						ref part :> involvedAbstractFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11);
						ref part :> involvedFunctionalChains = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10);
						ref part :> ownedCapabilityRealizationInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.CapabilityRealizationInvolvement_2;
						ref part :> involvedComponents = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
						part TransfoLink_9 : TransfoLink :> ownedTraces {
							attribute :>> id = "aee1c855-8629-4dc3-8174-d7ea038a13c3";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.CapabilityRealizationInvolvement_1;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.CapabilityRealizationInvolvement_2;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.CapabilityRealizationInvolvement_2;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.CapabilityRealizationInvolvement_1;
						}
						part TransfoLink_10 : TransfoLink :> ownedTraces {
							attribute :>> id = "327a5856-2d78-4df0-ade9-98b94c438849";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_18;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_30;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_30;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_18;
						}
						part TransfoLink_11 : TransfoLink :> ownedTraces {
							attribute :>> id = "32c6c2ca-41d3-470d-878b-d3fdb90c9e75";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_5;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_9;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChainAbstractCapabilityInvolvement_9;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChainAbstractCapabilityInvolvement_5;
						}
						part TransfoLink_12 : TransfoLink :> ownedTraces {
							attribute :>> id = "edff96ba-6a9b-4ca3-a7bd-02c6abb770ea";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_19;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_31;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_31;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_19;
						}
						part TransfoLink_13 : TransfoLink :> ownedTraces {
							attribute :>> id = "24485aad-0e6b-4ad2-926e-a09d234c683f";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_21;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_32;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_32;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_21;
						}
						part TransfoLink_14 : TransfoLink :> ownedTraces {
							attribute :>> id = "84e61e38-de2c-4909-838b-ca49023b22aa";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_22;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_33;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_33;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_22;
						}
						part TransfoLink_15 : TransfoLink :> ownedTraces {
							attribute :>> id = "3a6ca0a2-30b8-4a7a-b996-a24e8d3cdf6a";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_23;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_34;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_34;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_23;
						}
						part TransfoLink_16 : TransfoLink :> ownedTraces {
							attribute :>> id = "51225f86-c4f6-4632-a179-37ad6cb693f9";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_24;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_35;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_35;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_24;
						}
						part TransfoLink_17 : TransfoLink :> ownedTraces {
							attribute :>> id = "0ea85d76-b436-4056-9562-6aa3788167b1";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_25;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_36;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.AbstractFunctionAbstractCapabilityInvolvement_36;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.AbstractFunctionAbstractCapabilityInvolvement_25;
						}
						part FunctionalChain_7 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "90feea9f-408b-4191-b4b0-f2009d154194";
							attribute :>> name = "[PFCD] Wide field imagery acquiring ( UV, Visible, IR)";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainInvolvementFunction_37, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainReference_4, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainInvolvementLink_32);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainInvolvementFunction_37, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainReference_4, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainInvolvementLink_32);
							ref part :> ownedFunctionalChainRealizations = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainRealization_6;
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainInvolvementFunction_37, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainReference_4, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainInvolvementLink_32);
							ref part :> involvedFunctions = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10;
							ref part :> involvedFunctionalExchanges = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_33;
							ref part :> involvedElements = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_33);
							ref part :> enactedFunctions = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10;
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainInvolvementFunction_37, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainReference_4);
							part FunctionalChainInvolvementFunction_37 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "cdb2f0c9-dc83-4744-a362-6af2407ea7c1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10;
							}
							part FunctionalChainReference_4 : FunctionalChainReference :> ownedFunctionalChainInvolvements {
								attribute :>> id = "d908b435-64b6-4d6a-af85-a103cfe109fa";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> referencedFunctionalChain = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
							}
							part FunctionalChainInvolvementLink_32 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "c631cdf7-f03a-48d5-a0c1-52489385bd96";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_33;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainInvolvementFunction_37;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_33;
								ref part :> sourceReferenceHierarchy = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainReference_4;
								ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
								ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7.FunctionalChainInvolvementFunction_37;
							}
							part FunctionalChainRealization_6 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "a211c24b-8690-44a0-8c6f-0521a07717b4";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7;
							}
						}
						part FunctionalChain_8 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "3387fcc9-3bd3-44a4-8d30-2010632ea61c";
							attribute :>> name = "Utra violet spectrum acquiring";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainInvolvementFunction_38, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainReference_5, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainInvolvementLink_33);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainInvolvementFunction_38, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainReference_5, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainInvolvementLink_33);
							ref part :> ownedFunctionalChainRealizations = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainRealization_7;
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainInvolvementFunction_38, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainReference_5, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainInvolvementLink_33);
							ref part :> involvedFunctions = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12;
							ref part :> involvedFunctionalExchanges = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_32;
							ref part :> involvedElements = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_32);
							ref part :> enactedFunctions = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12;
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainInvolvementFunction_38, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainReference_5);
							part FunctionalChainInvolvementFunction_38 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "15cd684a-63c4-4c8f-9f08-959412383496";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12;
							}
							part FunctionalChainReference_5 : FunctionalChainReference :> ownedFunctionalChainInvolvements {
								attribute :>> id = "a3368061-3499-44ba-97b6-fe388d28adba";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> referencedFunctionalChain = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
							}
							part FunctionalChainInvolvementLink_33 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "83cd62f8-526d-421d-b3c2-865b83a00496";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_32;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainInvolvementFunction_38;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_32;
								ref part :> sourceReferenceHierarchy = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainReference_5;
								ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
								ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8.FunctionalChainInvolvementFunction_38;
							}
							part FunctionalChainRealization_7 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "310d1991-2c06-436b-9a73-c2977dbf4204";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8;
							}
						}
						part FunctionalChain_9 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "7156242a-fb68-4dfa-a768-b082de10b04d";
							attribute :>> name = "Wide field imagery acquiring (Visible)";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainInvolvementFunction_39, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainReference_6, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainInvolvementLink_34);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainInvolvementFunction_39, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainReference_6, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainInvolvementLink_34);
							ref part :> ownedFunctionalChainRealizations = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainRealization_8;
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainInvolvementFunction_39, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainReference_6, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainInvolvementLink_34);
							ref part :> involvedFunctions = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9;
							ref part :> involvedFunctionalExchanges = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_31;
							ref part :> involvedElements = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_31);
							ref part :> enactedFunctions = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9;
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainInvolvementFunction_39, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainReference_6);
							part FunctionalChainInvolvementFunction_39 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "2e2bca35-7f9e-4b45-af03-1d2f056ee371";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9;
							}
							part FunctionalChainReference_6 : FunctionalChainReference :> ownedFunctionalChainInvolvements {
								attribute :>> id = "02ef6a3a-6e38-44bd-a94e-4ca31499514a";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> referencedFunctionalChain = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
							}
							part FunctionalChainInvolvementLink_34 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "310358e3-0039-40cc-88f8-71fb640135ff";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_31;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainInvolvementFunction_39;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_31;
								ref part :> sourceReferenceHierarchy = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainReference_6;
								ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
								ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9.FunctionalChainInvolvementFunction_39;
							}
							part FunctionalChainRealization_8 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "48d443ad-541b-4d20-8a2a-2a63ea42f873";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_4;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9;
							}
						}
						part FunctionalChain_10 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "e96a8883-01d8-435b-a831-22fb7b45eaae";
							attribute :>> name = "High resolution acquiring";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainInvolvementFunction_40, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainReference_7, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainInvolvementLink_35);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainInvolvementFunction_40, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainReference_7, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainInvolvementLink_35);
							ref part :> ownedFunctionalChainRealizations = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainRealization_9;
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainInvolvementFunction_40, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainReference_7, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainInvolvementLink_35);
							ref part :> involvedFunctions = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13;
							ref part :> involvedFunctionalExchanges = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_34;
							ref part :> involvedElements = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_34);
							ref part :> enactedFunctions = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13;
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainInvolvementFunction_40, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainReference_7);
							part FunctionalChainInvolvementFunction_40 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "12f86d70-94ed-44f7-855b-89c818819136";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13;
							}
							part FunctionalChainReference_7 : FunctionalChainReference :> ownedFunctionalChainInvolvements {
								attribute :>> id = "80aa9a46-1c83-4c48-8602-89cecb607ccc";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> referencedFunctionalChain = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
							}
							part FunctionalChainInvolvementLink_35 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "e8e5dc65-4e20-4e74-a63e-dc17526b18ab";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_34;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainInvolvementFunction_40;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_34;
								ref part :> sourceReferenceHierarchy = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainReference_7;
								ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
								ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10.FunctionalChainInvolvementFunction_40;
							}
							part FunctionalChainRealization_9 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "a80199af-7fed-40db-958d-ad682c9dc8c8";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_5;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10;
							}
						}
						part FunctionalChain_11 : FunctionalChain :> ownedFunctionalChains {
							attribute :>> id = "e681691d-1054-4247-ace8-9b945d851db0";
							attribute :>> name = "Space light capturing";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> kind = SIMPLE;
							ref part :> involvedInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementLink_36, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_41, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_42, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementLink_37, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_43, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementLink_38, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44);
							ref part :> ownedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementLink_36, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_41, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_42, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementLink_37, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_43, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementLink_38, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44);
							ref part :> ownedFunctionalChainRealizations = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainRealization_10;
							ref part :> involvedFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementLink_36, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_41, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_42, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementLink_37, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_43, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementLink_38, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44);
							ref part :> involvedFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6);
							ref part :> involvedFunctionalExchanges = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_30, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_28, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_29);
							ref part :> involvedElements = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_30, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_28, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_29, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6);
							ref part :> enactedFunctions = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6);
							ref part :> firstFunctionalChainInvolvements = (SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_41, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_42, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_43, SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44);
							part FunctionalChainInvolvementLink_36 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "365137ba-12ce-45ff-91cc-6546ec97440a";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_30;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_41;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_42;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.FunctionalExchange_30;
								ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_42;
								ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_41;
							}
							part FunctionalChainInvolvementFunction_41 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "a7bb9718-7a6c-42c1-ab3c-7f431e4b9d08";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4;
							}
							part FunctionalChainInvolvementFunction_42 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "54e3f26f-2abb-4345-9830-f526ecaaa13f";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2;
							}
							part FunctionalChainInvolvementLink_37 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "497cb7e4-4dcc-4c22-9249-290ea1a81f7d";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_28;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_43;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_41;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_28;
								ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_41;
								ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_43;
							}
							part FunctionalChainInvolvementFunction_43 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "6673747d-65a8-46ca-bd11-3ab998f261c0";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5;
							}
							part FunctionalChainInvolvementLink_38 : FunctionalChainInvolvementLink :> ownedFunctionalChainInvolvements {
								attribute :>> id = "84efbe00-dbc3-426e-a7d5-115c895f5170";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_29;
								ref part :> nextFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
								ref part :> previousFunctionalChainInvolvements = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_43;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.FunctionalExchange_29;
								ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_43;
								ref part :> target = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11.FunctionalChainInvolvementFunction_44;
							}
							part FunctionalChainInvolvementFunction_44 : FunctionalChainInvolvementFunction :> ownedFunctionalChainInvolvements {
								attribute :>> id = "82487f22-63a7-41ce-9ba6-3471acd08ee4";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
								ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6;
								ref part :> involvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6;
							}
							part FunctionalChainRealization_10 : FunctionalChainRealization :> ownedFunctionalChainRealizations {
								attribute :>> id = "6b3390fd-a5dd-413e-9a72-6ba6164e0718";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1.FunctionalChain_3;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
							}
						}
						part FunctionalChainAbstractCapabilityInvolvement_9 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "7f9a5fc2-5190-4bdc-be4f-c3bc66e762f7";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> functionalChain = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_11;
						}
						part FunctionalChainAbstractCapabilityInvolvement_10 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "a083ea7e-b0c2-42fb-8b02-b48a10ce410a";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> functionalChain = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_7;
						}
						part FunctionalChainAbstractCapabilityInvolvement_11 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "1d23dacd-82fe-4448-8974-d4a2c937b423";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> functionalChain = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_8;
						}
						part FunctionalChainAbstractCapabilityInvolvement_12 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "262666b3-363c-4f2f-a81a-8bd4265d41f2";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> functionalChain = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_9;
						}
						part FunctionalChainAbstractCapabilityInvolvement_13 : FunctionalChainAbstractCapabilityInvolvement :> ownedFunctionalChainAbstractCapabilityInvolvements {
							attribute :>> id = "b6c83270-3bda-45eb-805a-5f7cc3b4ab6d";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> functionalChain = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2.FunctionalChain_10;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_30 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "595bdd44-647f-4dec-9bec-ee55d1818164";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_31 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "e7120607-fbb5-4687-ad6c-5534d469a4db";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_32 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "eef6c600-1926-481d-9733-4e6317faed29";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_33 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "12c594a6-183c-4757-a1df-f9493c3dd2b7";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_34 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "2cc1b54c-582f-4c62-9d48-70c534e56275";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_35 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "0af2d2e5-4834-477c-a69b-45d1545af187";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8;
						}
						part AbstractFunctionAbstractCapabilityInvolvement_36 : AbstractFunctionAbstractCapabilityInvolvement :> ownedAbstractFunctionAbstractCapabilityInvolvements {
							attribute :>> id = "4eae5e51-8ee6-471d-ae48-2f269379583d";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11;
							ref part :> capability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11;
						}
						part AbstractCapabilityRealization_3 : AbstractCapabilityRealization :> ownedAbstractCapabilityRealizations {
							attribute :>> id = "51340600-ac1d-40a0-a89f-315b6c00ec6b";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> realizedCapability = SystemEngineering_1.LogicalArchitecture_1.CapabilityRealizationPkg_1.CapabilityRealization_1;
							ref part :> realizingCapability = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
						}
						part CapabilityRealizationInvolvement_2 : CapabilityRealizationInvolvement :> ownedCapabilityRealizationInvolvements {
							attribute :>> id = "b1517936-b4ae-475e-9856-3a68796ecaf9";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> involver = SystemEngineering_1.PhysicalArchitecture_1.CapabilityRealizationPkg_2.CapabilityRealization_2;
							ref part :> involved = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
							ref part :> involvedCapabilityRealizationInvolvedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
						}
					}
				}
				part InterfacePkg_4 : InterfacePkg :> ownedInterfacePkg {
					attribute :>> id = "e74dc81c-f6e7-4628-b9a5-062dabf9863f";
					attribute :>> name = "Interfaces";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
				}
				part DataPkg_5 : DataPkg :> ownedDataPkg {
					attribute :>> id = "143b7ada-275b-4a1c-8d04-351ce7cf945c";
					attribute :>> name = "Data";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					attribute :>> visibility = UNSET;
				}
				part PhysicalComponentPkg_1 : PhysicalComponentPkg :> ownedPhysicalComponentPkg {
					attribute :>> id = "0042cb46-6404-4b32-b878-fbc71ad3532d";
					attribute :>> name = "Structure";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					attribute :>> visibility = UNSET;
					ref part :> ownedTraces = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.TransfoLink_18;
					ref part :> containedGenericTraces = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.TransfoLink_18;
					ref part :> ownedParts = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.Part_19, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.Part_20);
					ref part :> ownedPhysicalComponents = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19);
					part TransfoLink_18 : TransfoLink :> ownedTraces {
						attribute :>> id = "fbe1eaf0-9781-4a8c-b0dc-b6773ac2eaca";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.Part_14;
						ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.Part_20;
						ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.Part_20;
						ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.Part_14;
					}
					part Part_19 : Part :> ownedParts {
						attribute :>> id = "32899255-08b6-463a-84d3-c6e8d3b0fe12";
						attribute :>> name = "HUBBLE SPace Telescope";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
						ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
					}
					part Part_20 : Part :> ownedParts {
						attribute :>> id = "e5cd8ef2-7c32-470f-82a9-7fd7bd826297";
						attribute :>> name = "Space";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19;
						ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19;
					}
					part PhysicalComponent_1 : PhysicalComponent :> ownedPhysicalComponents {
						attribute :>> id = "1c95108e-7549-42ca-b2c5-361bf1b784a1";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> name = "HUBBLE SPace Telescope";
						attribute :>> kind = UNSET;
						attribute :>> nature = UNSET;
						ref part :> ownedFeatures = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_21, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_22, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_23, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_24, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_25, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_26, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_27, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_28, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_29, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_30);
						ref part :> ownedComponentRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.ComponentRealization_5;
						ref part :> containedParts = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_21, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_22, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_23, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_24, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_25, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_26, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_27, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_28, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_29, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_30);
						ref part :> ownedPhysicalComponents = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_3, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_6, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_7, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_8, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_18);
						ref part :> subPhysicalComponents = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_2, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_3, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_4, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_5, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_6, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_7, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_8, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_18);
						part Part_21 : Part :> ownedFeatures {
							attribute :>> id = "a7797d41-7814-429c-854e-9d484c3ae127";
							attribute :>> name = "Light collector";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_2;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_2;
						}
						part Part_22 : Part :> ownedFeatures {
							attribute :>> id = "bc4edcfc-7be7-45c6-b37c-08b6f824a158";
							attribute :>> name = "Light concentrator";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_3;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_3;
						}
						part Part_23 : Part :> ownedFeatures {
							attribute :>> id = "f9d0a22c-0fa4-41e3-a54a-3a1920d2a71e";
							attribute :>> name = "Focal Plane";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_4;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_4;
						}
						part Part_24 : Part :> ownedFeatures {
							attribute :>> id = "90249251-8cf9-48b0-b03f-94ec8c1e9dbf";
							attribute :>> name = "Ultra Violet sensor";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_5;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_5;
						}
						part Part_25 : Part :> ownedFeatures {
							attribute :>> id = "84e69be9-0c92-4506-985d-bed47b167afc";
							attribute :>> name = "Spetrograph Imagery sensor";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_6;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_6;
						}
						part Part_26 : Part :> ownedFeatures {
							attribute :>> id = "dcddf232-1486-425f-8339-6fc9a14e236f";
							attribute :>> name = "Wide Field Imagery sensor#1";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_7;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_7;
						}
						part Part_27 : Part :> ownedFeatures {
							attribute :>> id = "6efb370f-b7d4-42c6-a912-f166759d8564";
							attribute :>> name = "Wide Field Imagery sensor#2";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_8;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_8;
						}
						part Part_28 : Part :> ownedFeatures {
							attribute :>> id = "ba45b4c3-ebb2-4da1-a5e7-a1989e860ae8";
							attribute :>> name = "Optical Telescope Assembly (OTA)";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9;
						}
						part Part_29 : Part :> ownedFeatures {
							attribute :>> id = "967f16e6-c841-471d-8beb-6e07469154ff";
							attribute :>> name = "Scientist Instruments (SIs)";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13;
						}
						part Part_30 : Part :> ownedFeatures {
							attribute :>> id = "8450d794-bdb1-47be-9373-9972a2de23d0";
							attribute :>> name = "Others..";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_18;
							ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_18;
						}
						part ComponentRealization_5 : ComponentRealization :> ownedComponentRealizations {
							attribute :>> id = "84947298-41ef-4830-bd8b-00a599b71f38";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
							ref part :> realizedComponent = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_1;
							ref part :> realizingComponent = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
						}
						part PhysicalComponent_2 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "7c5e153a-35ba-498f-9546-e5a111bb44c9";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Light collector";
							attribute :>> kind = UNSET;
							attribute :>> nature = BEHAVIOR;
							ref part :> ownedFunctionalAllocation = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_2.ComponentFunctionalAllocation_27;
							part ComponentFunctionalAllocation_27 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "2ecec93b-4428-4fc6-97fd-a1b6f1cf3551";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_2;
								ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_4;
								ref part :> 'block' = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_2;
							}
						}
						part PhysicalComponent_3 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "2fdd5c12-9502-4818-a8b1-ff409e465e1a";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Light concentrator";
							attribute :>> kind = UNSET;
							attribute :>> nature = BEHAVIOR;
							ref part :> ownedFunctionalAllocation = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_3.ComponentFunctionalAllocation_28;
							part ComponentFunctionalAllocation_28 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "d2a4f35d-87d3-4e8e-a1d3-f840f84f3110";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_3;
								ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_5;
								ref part :> 'block' = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_3;
							}
						}
						part PhysicalComponent_4 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "f8e1f379-efe9-446e-8598-ecbd24701dbb";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Focal Plane";
							attribute :>> kind = UNSET;
							attribute :>> nature = BEHAVIOR;
							ref part :> ownedFunctionalAllocation = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_4.ComponentFunctionalAllocation_29;
							part ComponentFunctionalAllocation_29 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "c21789f4-85ae-4f31-bd8d-82046abed67f";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_4;
								ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_3.PhysicalFunction_6;
								ref part :> 'block' = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_4;
							}
						}
						part PhysicalComponent_5 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "7e283776-fe7e-4f80-a0bf-927214f4121e";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Ultra Violet sensor";
							attribute :>> kind = UNSET;
							attribute :>> nature = BEHAVIOR;
							ref part :> ownedFunctionalAllocation = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_5.ComponentFunctionalAllocation_30;
							part ComponentFunctionalAllocation_30 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "514c60f5-4fbf-4f5a-a813-0668433179ee";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_5;
								ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_12;
								ref part :> 'block' = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_5;
							}
						}
						part PhysicalComponent_6 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "3a5db0ac-8611-44dd-86f0-906ec8dd53fc";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Spetrograph Imagery sensor";
							attribute :>> kind = UNSET;
							attribute :>> nature = BEHAVIOR;
							ref part :> ownedFunctionalAllocation = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_6.ComponentFunctionalAllocation_31;
							part ComponentFunctionalAllocation_31 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "bd854907-f6f1-47f4-b131-c64cc1df3c44";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_6;
								ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_11.PhysicalFunction_13;
								ref part :> 'block' = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_6;
							}
						}
						part PhysicalComponent_7 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "f54e1cd6-5483-4e93-bf89-f86a26fad906";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Wide Field Imagery sensor#1";
							attribute :>> kind = UNSET;
							attribute :>> nature = BEHAVIOR;
							ref part :> ownedFunctionalAllocation = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_7.ComponentFunctionalAllocation_32;
							part ComponentFunctionalAllocation_32 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "724d1dc3-d6a9-4880-ab36-ec913282e0cd";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_7;
								ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_9;
								ref part :> 'block' = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_7;
							}
						}
						part PhysicalComponent_8 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "e1f417fd-2b5b-406d-aa6e-1bd40ce112ff";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Wide Field Imagery sensor#2";
							attribute :>> kind = UNSET;
							attribute :>> nature = BEHAVIOR;
							ref part :> ownedFunctionalAllocation = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_8.ComponentFunctionalAllocation_33;
							part ComponentFunctionalAllocation_33 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
								attribute :>> id = "d08bdd43-03a4-40cc-96db-f35bb791b911";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_8;
								ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_7.PhysicalFunction_8.PhysicalFunction_10;
								ref part :> 'block' = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_8;
							}
						}
						part PhysicalComponent_9 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "7eb397e5-76eb-4683-a4c8-a8e295839f17";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Optical Telescope Assembly (OTA)";
							attribute :>> kind = UNSET;
							attribute :>> nature = NODE;
							ref part :> ownedFeatures = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_31, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_32, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_33);
							ref part :> containedParts = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_31, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_32, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_33);
							ref part :> ownedPhysicalComponents = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_10, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_11, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_12);
							ref part :> subPhysicalComponents = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_10, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_11, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_12);
							part Part_31 : Part :> ownedFeatures {
								attribute :>> id = "a2d9d418-3767-45e6-9035-60e0e6af4e52";
								attribute :>> name = "Primary Mirror Assembky (PMA)";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_10;
								ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_10;
								ref part :> ownedDeploymentLinks = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_31.PartDeploymentLink_1;
								part PartDeploymentLink_1 : PartDeploymentLink :> ownedDeploymentLinks {
									attribute :>> id = "7f6ee8c6-1f32-4444-a25d-15472aa53ff8";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> deployedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_21;
									ref part :> location = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_31;
								}
							}
							part Part_32 : Part :> ownedFeatures {
								attribute :>> id = "cafc5168-8dc8-450c-a4ec-246c1f779d7a";
								attribute :>> name = "Secondary Mirror Assembly (SMA)";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_11;
								ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_11;
								ref part :> ownedDeploymentLinks = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_32.PartDeploymentLink_2;
								part PartDeploymentLink_2 : PartDeploymentLink :> ownedDeploymentLinks {
									attribute :>> id = "6ec5b2d2-d721-4da7-a609-dc4b3e320635";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> deployedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_22;
									ref part :> location = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_32;
								}
							}
							part Part_33 : Part :> ownedFeatures {
								attribute :>> id = "4b9fd158-e068-4905-90b3-8cf996415436";
								attribute :>> name = "Focal Plan Structure Assembly (FPSA)";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_12;
								ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.PhysicalComponent_12;
								ref part :> ownedDeploymentLinks = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_33.PartDeploymentLink_3;
								part PartDeploymentLink_3 : PartDeploymentLink :> ownedDeploymentLinks {
									attribute :>> id = "05feb1ea-82c2-40ce-9dcc-161935655ef6";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> deployedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_23;
									ref part :> location = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_9.Part_33;
								}
							}
							part PhysicalComponent_10 : PhysicalComponent :> ownedPhysicalComponents {
								attribute :>> id = "9a874471-be9b-4ef8-b98f-7072b378b496";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> name = "Primary Mirror Assembky (PMA)";
								attribute :>> kind = UNSET;
								attribute :>> nature = NODE;
							}
							part PhysicalComponent_11 : PhysicalComponent :> ownedPhysicalComponents {
								attribute :>> id = "abd9b6df-8392-4ce1-bc99-612893ef9231";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> name = "Secondary Mirror Assembly (SMA)";
								attribute :>> kind = UNSET;
								attribute :>> nature = NODE;
							}
							part PhysicalComponent_12 : PhysicalComponent :> ownedPhysicalComponents {
								attribute :>> id = "7372fd03-4b3b-406b-b29f-1f50a4e4b108";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> name = "Focal Plan Structure Assembly (FPSA)";
								attribute :>> kind = UNSET;
								attribute :>> nature = NODE;
							}
						}
						part PhysicalComponent_13 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "fdde9cba-d343-4876-a7f3-0f835c6e48e6";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Scientist Instruments (SIs)";
							attribute :>> kind = UNSET;
							attribute :>> nature = NODE;
							ref part :> ownedFeatures = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_34, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_35, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_36, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_37);
							ref part :> containedParts = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_34, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_35, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_36, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_37);
							ref part :> ownedPhysicalComponents = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_14, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_15, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_16, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_17);
							ref part :> subPhysicalComponents = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_14, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_15, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_16, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_17);
							part Part_34 : Part :> ownedFeatures {
								attribute :>> id = "bb31330b-e8c1-4001-b07d-31f1e1bfd36a";
								attribute :>> name = "Cosmic Origins Spectrograph (COS)";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_14;
								ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_14;
								ref part :> ownedDeploymentLinks = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_34.PartDeploymentLink_4;
								part PartDeploymentLink_4 : PartDeploymentLink :> ownedDeploymentLinks {
									attribute :>> id = "2071fb84-f2a8-43fd-9979-f871a052562c";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> deployedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_24;
									ref part :> location = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_34;
								}
							}
							part Part_35 : Part :> ownedFeatures {
								attribute :>> id = "be1cd2be-2ab9-4ad9-99a6-194ffe2850cd";
								attribute :>> name = "Space Telescope Imaging Spectrograph (STIS)";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_15;
								ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_15;
								ref part :> ownedDeploymentLinks = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_35.PartDeploymentLink_5;
								part PartDeploymentLink_5 : PartDeploymentLink :> ownedDeploymentLinks {
									attribute :>> id = "e8361b3f-80ab-43fb-8e6e-fccb5c480d41";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> deployedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_25;
									ref part :> location = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_35;
								}
							}
							part Part_36 : Part :> ownedFeatures {
								attribute :>> id = "d206faa4-86bf-44b5-8aad-d995356946ed";
								attribute :>> name = "Adnavec Camera for Survey (ACS)";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_16;
								ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_16;
								ref part :> ownedDeploymentLinks = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_36.PartDeploymentLink_6;
								part PartDeploymentLink_6 : PartDeploymentLink :> ownedDeploymentLinks {
									attribute :>> id = "f36b0cda-0940-406b-985d-c49b309ce0a0";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> deployedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_26;
									ref part :> location = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_36;
								}
							}
							part Part_37 : Part :> ownedFeatures {
								attribute :>> id = "e310a993-966c-4be8-b65c-b90a23855fc5";
								attribute :>> name = "Wide Filed Planetary Camera (WFPC)";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> visibility = UNSET;
								attribute :>> aggregationKind = UNSET;
								ref part :> abstractType = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_17;
								ref part :> type = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.PhysicalComponent_17;
								ref part :> ownedDeploymentLinks = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_37.PartDeploymentLink_7;
								part PartDeploymentLink_7 : PartDeploymentLink :> ownedDeploymentLinks {
									attribute :>> id = "ebc0e6dd-e85c-4a5d-a282-f7c5d9e74405";
									attribute :>> visibleInDoc = true;
									attribute :>> visibleInLM = true;
									ref part :> deployedElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.Part_27;
									ref part :> location = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1.PhysicalComponent_13.Part_37;
								}
							}
							part PhysicalComponent_14 : PhysicalComponent :> ownedPhysicalComponents {
								attribute :>> id = "b75a4f0b-2fe5-4e07-b8f2-54300be6630c";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> name = "Cosmic Origins Spectrograph (COS)";
								attribute :>> kind = UNSET;
								attribute :>> nature = NODE;
							}
							part PhysicalComponent_15 : PhysicalComponent :> ownedPhysicalComponents {
								attribute :>> id = "0ce48b53-726e-4629-929d-b3bd36154305";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> name = "Space Telescope Imaging Spectrograph (STIS)";
								attribute :>> kind = UNSET;
								attribute :>> nature = NODE;
							}
							part PhysicalComponent_16 : PhysicalComponent :> ownedPhysicalComponents {
								attribute :>> id = "e7584ebb-c319-4614-bd7c-dced9c0804d1";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> name = "Adnavec Camera for Survey (ACS)";
								attribute :>> kind = UNSET;
								attribute :>> nature = NODE;
							}
							part PhysicalComponent_17 : PhysicalComponent :> ownedPhysicalComponents {
								attribute :>> id = "a6acdb1a-8023-4a41-8278-bbdef5bc9187";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								attribute :>> name = "Wide Filed Planetary Camera (WFPC)";
								attribute :>> kind = UNSET;
								attribute :>> nature = NODE;
							}
						}
						part PhysicalComponent_18 : PhysicalComponent :> ownedPhysicalComponents {
							attribute :>> id = "73a16daa-8ca9-450d-bd42-66991e45b989";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> name = "Others..";
							attribute :>> kind = UNSET;
							attribute :>> nature = NODE;
						}
					}
					part PhysicalComponent_19 : PhysicalComponent :> ownedPhysicalComponents {
						attribute :>> id = "a0b7a8d9-347d-4949-b1f3-980be410b304";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> name = "Space";
						attribute :>> 'actor' = true;
						attribute :>> kind = UNSET;
						attribute :>> nature = NODE;
						ref part :> ownedTraces = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.TransfoLink_19, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.TransfoLink_20);
						ref part :> containedGenericTraces = (SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.TransfoLink_19, SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.TransfoLink_20);
						ref part :> ownedFunctionalAllocation = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentFunctionalAllocation_34;
						ref part :> ownedFeatures = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12;
						ref part :> ownedComponentRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentRealization_6;
						ref part :> containedComponentPorts = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12;
						part TransfoLink_19 : TransfoLink :> ownedTraces {
							attribute :>> id = "269a36ba-d41b-493c-ae3c-1d646c83941e";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentFunctionalAllocation_25;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentFunctionalAllocation_34;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentFunctionalAllocation_34;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentFunctionalAllocation_25;
						}
						part TransfoLink_20 : TransfoLink :> ownedTraces {
							attribute :>> id = "3ef4b329-11f0-4b85-8d0c-671a11c8caff";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11.PortAllocation_19;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12.PortAllocation_20;
							ref part :> source = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12.PortAllocation_20;
							ref part :> target = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11.PortAllocation_19;
						}
						part ComponentFunctionalAllocation_34 : ComponentFunctionalAllocation :> ownedFunctionalAllocation {
							attribute :>> id = "711639c8-beea-4364-b7ef-33338e02d422";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19;
							ref part :> function = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2;
							ref part :> 'block' = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19;
						}
						part ComponentPort_12 : ComponentPort :> ownedFeatures {
							attribute :>> id = "340e968c-4007-475e-a47c-bc283bf2b5fc";
							attribute :>> name = "CP 1";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							attribute :>> visibility = UNSET;
							attribute :>> aggregationKind = UNSET;
							attribute :>> orientation = OUT;
							attribute :>> kind = FLOW;
							ref part :> ownedPortRealizations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12.PortRealization_16;
							ref part :> ownedPortAllocations = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12.PortAllocation_20;
							part PortRealization_16 : PortRealization :> ownedPortRealizations {
								attribute :>> id = "1e2ae22f-a809-484e-b1f7-d78e0d044401";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12;
								ref part :> realizedPort = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6.ComponentPort_11;
								ref part :> realizingPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12;
							}
							part PortAllocation_20 : PortAllocation :> ownedPortAllocations {
								attribute :>> id = "f7dc7a2a-f777-42ff-b3ea-91b4cdf96b10";
								attribute :>> visibleInDoc = true;
								attribute :>> visibleInLM = true;
								ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2.FunctionOutputPort_17;
								ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12;
								ref part :> allocatedPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalFunctionPkg_1.PhysicalFunction_1.PhysicalFunction_2.FunctionOutputPort_17;
								ref part :> allocatingPort = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19.ComponentPort_12;
							}
						}
						part ComponentRealization_6 : ComponentRealization :> ownedComponentRealizations {
							attribute :>> id = "f0ded4e4-fadd-4563-9589-473e68119c32";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
							ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19;
							ref part :> realizedComponent = SystemEngineering_1.LogicalArchitecture_1.LogicalComponentPkg_1.LogicalComponent_6;
							ref part :> realizingComponent = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_19;
						}
					}
				}
				part LogicalArchitectureRealization_1 : LogicalArchitectureRealization :> ownedLogicalArchitectureRealizations {
					attribute :>> id = "a69e57df-034f-4d88-b01e-dd255dfdb16a";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> targetElement = SystemEngineering_1.LogicalArchitecture_1;
					ref part :> sourceElement = SystemEngineering_1.PhysicalArchitecture_1;
					ref part :> allocatedArchitecture = SystemEngineering_1.LogicalArchitecture_1;
					ref part :> allocatingArchitecture = SystemEngineering_1.PhysicalArchitecture_1;
				}
			}
			part EPBSArchitecture_1 : EPBSArchitecture :> ownedArchitectures {
				attribute :>> id = "f9216900-e6b6-4615-bf28-aa943c5da3d4";
				attribute :>> name = "EPBS Architecture";
				attribute :>> visibleInDoc = true;
				attribute :>> visibleInLM = true;
				ref part :> ownedAbstractCapabilityPkg = SystemEngineering_1.EPBSArchitecture_1.CapabilityRealizationPkg_3;
				ref part :> system = SystemEngineering_1.EPBSArchitecture_1.ConfigurationItemPkg_1.ConfigurationItem_1;
				ref part :> ownedConfigurationItemPkg = SystemEngineering_1.EPBSArchitecture_1.ConfigurationItemPkg_1;
				ref part :> containedCapabilityRealizationPkg = SystemEngineering_1.EPBSArchitecture_1.CapabilityRealizationPkg_3;
				ref part :> ownedPhysicalArchitectureRealizations = SystemEngineering_1.EPBSArchitecture_1.PhysicalArchitectureRealization_1;
				part CapabilityRealizationPkg_3 : CapabilityRealizationPkg :> ownedAbstractCapabilityPkg {
					attribute :>> id = "dfa44c02-8b55-4892-b7be-1b8f8d1b50da";
					attribute :>> name = "Capabilities";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
				}
				part ConfigurationItemPkg_1 : ConfigurationItemPkg :> ownedConfigurationItemPkg {
					attribute :>> id = "1bcae6a2-d58f-4b76-a2cd-151529150c3b";
					attribute :>> name = "Structure";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> ownedParts = SystemEngineering_1.EPBSArchitecture_1.ConfigurationItemPkg_1.Part_38;
					ref part :> ownedConfigurationItems = SystemEngineering_1.EPBSArchitecture_1.ConfigurationItemPkg_1.ConfigurationItem_1;
					part Part_38 : Part :> ownedParts {
						attribute :>> id = "a1b9c251-c8ea-4428-be12-5c16d7ca5a38";
						attribute :>> name = "System";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> visibility = UNSET;
						attribute :>> aggregationKind = UNSET;
						ref part :> abstractType = SystemEngineering_1.EPBSArchitecture_1.ConfigurationItemPkg_1.ConfigurationItem_1;
						ref part :> type = SystemEngineering_1.EPBSArchitecture_1.ConfigurationItemPkg_1.ConfigurationItem_1;
					}
					part ConfigurationItem_1 : Configurationpart :> ownedConfigurationItems {
						attribute :>> id = "43f7d151-bd25-42bb-a3ee-de9135f47731";
						attribute :>> visibleInDoc = true;
						attribute :>> visibleInLM = true;
						attribute :>> name = "System";
						attribute :>> kind = SystemCI;
						ref part :> ownedPhysicalArtifactRealizations = SystemEngineering_1.EPBSArchitecture_1.ConfigurationItemPkg_1.ConfigurationItem_1.PhysicalArtifactRealization_1;
						part PhysicalArtifactRealization_1 : PhysicalArtifactRealization :> ownedPhysicalArtifactRealizations {
							attribute :>> id = "34a46ab1-6fde-4c82-89aa-c7a4b6b2bf10";
							attribute :>> visibleInDoc = true;
							attribute :>> visibleInLM = true;
							ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
							ref part :> sourceElement = SystemEngineering_1.EPBSArchitecture_1.ConfigurationItemPkg_1.ConfigurationItem_1;
							ref part :> realizedPhysicalArtifact = SystemEngineering_1.PhysicalArchitecture_1.PhysicalComponentPkg_1.PhysicalComponent_1;
							ref part :> realizingConfigurationpart = SystemEngineering_1.EPBSArchitecture_1.ConfigurationItemPkg_1.ConfigurationItem_1;
						}
					}
				}
				part PhysicalArchitectureRealization_1 : PhysicalArchitectureRealization :> ownedPhysicalArchitectureRealizations {
					attribute :>> id = "074390ba-9fb3-4ca1-a961-3decdf747548";
					attribute :>> visibleInDoc = true;
					attribute :>> visibleInLM = true;
					ref part :> targetElement = SystemEngineering_1.PhysicalArchitecture_1;
					ref part :> sourceElement = SystemEngineering_1.EPBSArchitecture_1;
					ref part :> allocatedArchitecture = SystemEngineering_1.PhysicalArchitecture_1;
					ref part :> allocatingArchitecture = SystemEngineering_1.EPBSArchitecture_1;
				}
			}
		}
	}
}

