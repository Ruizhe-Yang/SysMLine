package bpmn2_model_n {
	private import bpmn2::*;
	part Definitions_1 : Definitions {
		attribute :>> id = "_lYwdsJMvEeKGz_kv5DLbCg";
		attribute :>> expressionLanguage = "http://www.w3.org/1999/XPath";
		attribute :>> typeLanguage = "http://www.w3.org/2001/XMLSchema";
		ref part :> rootElements = (Process_1, Collaboration_1);
		part Process_1 : Process :> rootElements {
			attribute :>> id = "_lYv2oJMvEeKGz_kv5DLbCg";
			attribute :>> name = "Nobel Prize";
			ref part :> flowElements = (Process_1.SendTask_1, Process_1.SequenceFlow_1, Process_1.ReceiveTask_1, Process_1.SequenceFlow_2, Process_1.UserTask_1, Process_1.SequenceFlow_3, Process_1.UserTask_2, Process_1.SequenceFlow_4, Process_1.UserTask_3, Process_1.SendTask_2, Process_1.SequenceFlow_5, Process_1.EndEvent_1, Process_1.SequenceFlow_6, Process_1.StartEvent_1, Process_1.SequenceFlow_7, Process_1.StartEvent_2, Process_1.SendTask_3, Process_1.SequenceFlow_8, Process_1.UserTask_4, Process_1.EndEvent_2, Process_1.SequenceFlow_9, Process_1.StartEvent_3, Process_1.UserTask_5, Process_1.SequenceFlow_10, Process_1.UserTask_6, Process_1.SequenceFlow_11, Process_1.UserTask_7, Process_1.SequenceFlow_12, Process_1.EndEvent_3, Process_1.SequenceFlow_13, Process_1.ExclusiveGateway_1, Process_1.SequenceFlow_14, Process_1.SendTask_4, Process_1.SequenceFlow_15, Process_1.ReceiveTask_2, Process_1.SequenceFlow_16, Process_1.UserTask_8, Process_1.SequenceFlow_17, Process_1.Task_1, Process_1.SequenceFlow_18, Process_1.StartEvent_4, Process_1.SequenceFlow_19, Process_1.SendTask_5, Process_1.SequenceFlow_20, Process_1.UserTask_9, Process_1.SequenceFlow_21, Process_1.EndEvent_4, Process_1.SequenceFlow_22, Process_1.ReceiveTask_3, Process_1.SequenceFlow_23, Process_1.SequenceFlow_24, Process_1.SequenceFlow_25, Process_1.SequenceFlow_26);
			ref part :> laneSets = (Process_1.LaneSet_1, Process_1.LaneSet_2, Process_1.LaneSet_3, Process_1.LaneSet_4, Process_1.LaneSet_5);
			ref part :> artifacts = (Process_1.Association_1, Process_1.Association_2, Process_1.Association_3, Process_1.Association_4, Process_1.Association_5, Process_1.Association_6, Process_1.Association_7, Process_1.Association_8, Process_1.Association_9, Process_1.Association_10, Process_1.Association_11, Process_1.Association_12);
			part SendTask_1 : SendTask :> flowElements {
				attribute :>> id = "_6TLCIJMvEeKGz_kv5DLbCg";
				attribute :>> name = "Send Nomination Form";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_2;
				ref part :> incoming = (Process_1.SequenceFlow_1, Process_1.SequenceFlow_19);
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_1 : SequenceFlow :> flowElements {
				attribute :>> id = "_6TMQQJMvEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.SendTask_1;
			}
			part ReceiveTask_1 : ReceiveTask :> flowElements {
				attribute :>> id = "_7TqOwJMvEeKGz_kv5DLbCg";
				attribute :>> name = "Collect Completed form";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_3;
				ref part :> incoming = Process_1.SequenceFlow_2;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_2 : SequenceFlow :> flowElements {
				attribute :>> id = "_7Tq10JMvEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.ReceiveTask_1;
				ref part :> sourceRef = Process_1.SendTask_1;
			}
			part UserTask_1 : UserTask :> flowElements {
				attribute :>> id = "_98-aYJMvEeKGz_kv5DLbCg";
				attribute :>> name = "Screen & Select Preliminary Candidates";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_4;
				ref part :> incoming = Process_1.SequenceFlow_3;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_3 : SequenceFlow :> flowElements {
				attribute :>> id = "_98_BcJMvEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.UserTask_1;
				ref part :> sourceRef = Process_1.ReceiveTask_1;
			}
			part UserTask_2 : UserTask :> flowElements {
				attribute :>> id = "__CClAJMvEeKGz_kv5DLbCg";
				attribute :>> name = "Determine Need for Expert Assistance";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_14;
				ref part :> incoming = Process_1.SequenceFlow_4;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_4 : SequenceFlow :> flowElements {
				attribute :>> id = "__CDMEJMvEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.UserTask_2;
				ref part :> sourceRef = Process_1.UserTask_1;
			}
			part UserTask_3 : UserTask :> flowElements {
				attribute :>> id = "_i2xzsJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Identify Potentiel Nominee(s)";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_5;
				ref part :> incoming = Process_1.SequenceFlow_7;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SendTask_2 : SendTask :> flowElements {
				attribute :>> id = "_oH02kJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Send Nominee Completed Form(s)";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_6;
				ref part :> incoming = Process_1.SequenceFlow_5;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_5 : SequenceFlow :> flowElements {
				attribute :>> id = "_oH1doJMwEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.SendTask_2;
				ref part :> sourceRef = Process_1.UserTask_3;
			}
			part EndEvent_1 : EndEvent :> flowElements {
				attribute :>> id = "_pKgbkJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Nomination form(s) Sent";
				ref part :> incoming = Process_1.SequenceFlow_6;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_6 : SequenceFlow :> flowElements {
				attribute :>> id = "_pKhCoJMwEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.EndEvent_1;
				ref part :> sourceRef = Process_1.SendTask_2;
			}
			part StartEvent_1 : StartEvent :> flowElements {
				attribute :>> id = "_rfsKQJMwEeKGz_kv5DLbCg";
				attribute :>> isInterrupting = true;
				ref part :> outgoing = Process_1.SequenceFlow_7;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				ref part :> eventDefinitions = Process_1.StartEvent_1.MessageEventDefinition_1;
				part MessageEventDefinition_1 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_r9ECwJMwEeKGz_kv5DLbCg";
				}
			}
			part SequenceFlow_7 : SequenceFlow :> flowElements {
				attribute :>> id = "_teojMJMwEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.UserTask_3;
				ref part :> sourceRef = Process_1.StartEvent_1;
			}
			part StartEvent_2 : StartEvent :> flowElements {
				attribute :>> id = "_z-5yQJMwEeKGz_kv5DLbCg";
				attribute :>> isInterrupting = true;
				ref part :> outgoing = Process_1.SequenceFlow_8;
				ref part :> lanes = Process_1.LaneSet_3.Lane_3;
				ref part :> eventDefinitions = Process_1.StartEvent_2.MessageEventDefinition_2;
				part MessageEventDefinition_2 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_0zhtIJMwEeKGz_kv5DLbCg";
				}
			}
			part SendTask_3 : SendTask :> flowElements {
				attribute :>> id = "_1cULcJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Send candidates Assessments Report";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_9;
				ref part :> incoming = Process_1.SequenceFlow_24;
				ref part :> lanes = Process_1.LaneSet_3.Lane_3;
			}
			part SequenceFlow_8 : SequenceFlow :> flowElements {
				attribute :>> id = "_1cUygJMwEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.UserTask_4;
				ref part :> sourceRef = Process_1.StartEvent_2;
			}
			part UserTask_4 : UserTask :> flowElements {
				attribute :>> id = "_3AwZsJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Assess Candidates work";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_24;
				ref part :> incoming = Process_1.SequenceFlow_8;
				ref part :> lanes = Process_1.LaneSet_3.Lane_3;
			}
			part EndEvent_2 : EndEvent :> flowElements {
				attribute :>> id = "_4YtrIJMwEeKGz_kv5DLbCg";
				attribute :>> name = "End Assesments";
				ref part :> incoming = Process_1.SequenceFlow_9;
				ref part :> lanes = Process_1.LaneSet_3.Lane_3;
			}
			part SequenceFlow_9 : SequenceFlow :> flowElements {
				attribute :>> id = "_4YuSMJMwEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.EndEvent_2;
				ref part :> sourceRef = Process_1.SendTask_3;
			}
			part StartEvent_3 : StartEvent :> flowElements {
				attribute :>> id = "_Ag7IYJMxEeKGz_kv5DLbCg";
				attribute :>> isInterrupting = true;
				ref part :> outgoing = Process_1.SequenceFlow_10;
				ref part :> lanes = Process_1.LaneSet_4.Lane_4;
				ref part :> eventDefinitions = Process_1.StartEvent_3.MessageEventDefinition_3;
				part MessageEventDefinition_3 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_DyK2sJMxEeKGz_kv5DLbCg";
				}
			}
			part UserTask_5 : UserTask :> flowElements {
				attribute :>> id = "_GEKHcJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Discuss Nominations (Meeting 1)";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_11;
				ref part :> incoming = Process_1.SequenceFlow_10;
				ref part :> lanes = Process_1.LaneSet_4.Lane_4;
			}
			part SequenceFlow_10 : SequenceFlow :> flowElements {
				attribute :>> id = "_GEKugJMxEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.UserTask_5;
				ref part :> sourceRef = Process_1.StartEvent_3;
			}
			part UserTask_6 : UserTask :> flowElements {
				attribute :>> id = "_HiDo0JMxEeKGz_kv5DLbCg";
				attribute :>> name = "Select Laureates (Meeting 2)";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_12;
				ref part :> incoming = Process_1.SequenceFlow_11;
				ref part :> lanes = Process_1.LaneSet_4.Lane_4;
			}
			part SequenceFlow_11 : SequenceFlow :> flowElements {
				attribute :>> id = "_HiEP4JMxEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.UserTask_6;
				ref part :> sourceRef = Process_1.UserTask_5;
			}
			part UserTask_7 : UserTask :> flowElements {
				attribute :>> id = "_Jcbq0JMxEeKGz_kv5DLbCg";
				attribute :>> name = "Announce Nobel Prize Laureates";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_13;
				ref part :> incoming = Process_1.SequenceFlow_12;
				ref part :> lanes = Process_1.LaneSet_4.Lane_4;
			}
			part SequenceFlow_12 : SequenceFlow :> flowElements {
				attribute :>> id = "_JccR4JMxEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.UserTask_7;
				ref part :> sourceRef = Process_1.UserTask_6;
			}
			part EndEvent_3 : EndEvent :> flowElements {
				attribute :>> id = "_PExMUJMxEeKGz_kv5DLbCg";
				ref part :> incoming = Process_1.SequenceFlow_13;
				ref part :> lanes = Process_1.LaneSet_4.Lane_4;
			}
			part SequenceFlow_13 : SequenceFlow :> flowElements {
				attribute :>> id = "_PExzYJMxEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.EndEvent_3;
				ref part :> sourceRef = Process_1.UserTask_7;
			}
			part ExclusiveGateway_1 : ExclusiveGateway :> flowElements {
				attribute :>> id = "_0iytAJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Expert Assistance?";
				ref part :> outgoing = (Process_1.SequenceFlow_15, Process_1.SequenceFlow_23);
				ref part :> incoming = Process_1.SequenceFlow_14;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_14 : SequenceFlow :> flowElements {
				attribute :>> id = "_0izUEJMxEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.ExclusiveGateway_1;
				ref part :> sourceRef = Process_1.UserTask_2;
			}
			part SendTask_4 : SendTask :> flowElements {
				attribute :>> id = "_3Jx9YJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Send List of preliminary Candidates";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_16;
				ref part :> incoming = Process_1.SequenceFlow_15;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_15 : SequenceFlow :> flowElements {
				attribute :>> id = "_3JykcJMxEeKGz_kv5DLbCg";
				attribute :>> name = "yes";
				ref part :> targetRef = Process_1.SendTask_4;
				ref part :> sourceRef = Process_1.ExclusiveGateway_1;
			}
			part ReceiveTask_2 : ReceiveTask :> flowElements {
				attribute :>> id = "_5NndYJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Collect Candidates Work Assesment Report";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_17;
				ref part :> incoming = Process_1.SequenceFlow_16;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_16 : SequenceFlow :> flowElements {
				attribute :>> id = "_5NorgJMxEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.ReceiveTask_2;
				ref part :> sourceRef = Process_1.SendTask_4;
			}
			part UserTask_8 : UserTask :> flowElements {
				attribute :>> id = "_72TW4JMxEeKGz_kv5DLbCg";
				attribute :>> name = "Select Final Candidates and their Works";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_18;
				ref part :> incoming = Process_1.SequenceFlow_17;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_17 : SequenceFlow :> flowElements {
				attribute :>> id = "_72UlAJMxEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.UserTask_8;
				ref part :> sourceRef = Process_1.ReceiveTask_2;
			}
			part Task_1 : Task :> flowElements {
				attribute :>> id = "_9n86sJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Write Recommendation Report";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_20;
				ref part :> incoming = (Process_1.SequenceFlow_18, Process_1.SequenceFlow_23);
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_18 : SequenceFlow :> flowElements {
				attribute :>> id = "_9n9hwJMxEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.Task_1;
				ref part :> sourceRef = Process_1.UserTask_8;
			}
			part StartEvent_4 : StartEvent :> flowElements {
				attribute :>> id = "_N6Z1gJMyEeKGz_kv5DLbCg";
				attribute :>> isInterrupting = true;
				ref part :> outgoing = Process_1.SequenceFlow_19;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
				ref part :> eventDefinitions = Process_1.StartEvent_4.TimerEventDefinition_1;
				part TimerEventDefinition_1 : TimerEventDefinition :> eventDefinitions {
					attribute :>> id = "_PDoHYJMyEeKGz_kv5DLbCg";
				}
			}
			part SequenceFlow_19 : SequenceFlow :> flowElements {
				attribute :>> id = "_QFWqIJMyEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.SendTask_1;
				ref part :> sourceRef = Process_1.StartEvent_4;
			}
			part SendTask_5 : SendTask :> flowElements {
				attribute :>> id = "_Vymg0JMyEeKGz_kv5DLbCg";
				attribute :>> name = "Submit Report with Reconmmendations";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_21;
				ref part :> incoming = Process_1.SequenceFlow_20;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_20 : SequenceFlow :> flowElements {
				attribute :>> id = "_VynH4JMyEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.SendTask_5;
				ref part :> sourceRef = Process_1.Task_1;
			}
			part UserTask_9 : UserTask :> flowElements {
				attribute :>> id = "_YxmBgJMyEeKGz_kv5DLbCg";
				attribute :>> name = "Hold Nobel Prize";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_22;
				ref part :> incoming = Process_1.SequenceFlow_21;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_21 : SequenceFlow :> flowElements {
				attribute :>> id = "_YxmBgZMyEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.UserTask_9;
				ref part :> sourceRef = Process_1.SendTask_5;
			}
			part EndEvent_4 : EndEvent :> flowElements {
				attribute :>> id = "_gyIwgJMyEeKGz_kv5DLbCg";
				ref part :> incoming = Process_1.SequenceFlow_22;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part SequenceFlow_22 : SequenceFlow :> flowElements {
				attribute :>> id = "_gyIwgZMyEeKGz_kv5DLbCg";
				ref part :> targetRef = Process_1.EndEvent_4;
				ref part :> sourceRef = Process_1.UserTask_9;
			}
			part ReceiveTask_3 : ReceiveTask :> flowElements {
				attribute :>> id = "_QSM94JMzEeKGz_kv5DLbCg";
				attribute :>> name = "Receive Nomination";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_26;
				ref part :> lanes = Process_1.LaneSet_5.Lane_5;
			}
			part SequenceFlow_23 : SequenceFlow :> flowElements {
				attribute :>> id = "_x59XoJMzEeKGz_kv5DLbCg";
				attribute :>> name = "No";
				ref part :> targetRef = Process_1.Task_1;
				ref part :> sourceRef = Process_1.ExclusiveGateway_1;
			}
			part SequenceFlow_24 : SequenceFlow :> flowElements {
				attribute :>> id = "__ZHvEJUuEeKSM8dNXYpfyA";
				ref part :> targetRef = Process_1.SendTask_3;
				ref part :> sourceRef = Process_1.UserTask_4;
			}
			part SequenceFlow_25 : SequenceFlow :> flowElements {
				attribute :>> id = "_B0GegJYFEeKOGPdNF5Ql-Q";
			}
			part SequenceFlow_26 : SequenceFlow :> flowElements {
				attribute :>> id = "_0bxp0KOqEeKWPL0NwOif5A";
				ref part :> sourceRef = Process_1.ReceiveTask_3;
			}
			part LaneSet_1 : LaneSet :> laneSets {
				attribute :>> id = "_tFVu4JMvEeKGz_kv5DLbCg";
				attribute :>> name = "Nobel commitee for Medecine";
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
				part Lane_1 : Lane :> lanes {
					attribute :>> id = "_tFXkEJMvEeKGz_kv5DLbCg";
					ref part :> extensionValues = (Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_1, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_2, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_3, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_4, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_5, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_6);
					ref part :> flowNodeRefs = (Process_1.SendTask_1, Process_1.ReceiveTask_1, Process_1.UserTask_1, Process_1.UserTask_2, Process_1.ExclusiveGateway_1, Process_1.SendTask_4, Process_1.ReceiveTask_2, Process_1.UserTask_8, Process_1.Task_1, Process_1.StartEvent_4, Process_1.SendTask_5, Process_1.UserTask_9, Process_1.EndEvent_4);
					part ExtensionAttributeValue_1 : ExtensionAttributeValue :> extensionValues {
						ref part :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_1.DataStore_1;
						part DataStore_1 : DataStore :> value {
							attribute :>> id = "_nfEtIJMzEeKGz_kv5DLbCg";
							attribute :>> capacity = 0;
							attribute :>> isUnlimited = true;
						}
					}
					part ExtensionAttributeValue_2 : ExtensionAttributeValue :> extensionValues {
						ref part :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_2.DataStore_2;
						part DataStore_2 : DataStore :> value {
							attribute :>> id = "_r4Gi4JMzEeKGz_kv5DLbCg";
							attribute :>> capacity = 0;
							attribute :>> isUnlimited = true;
						}
					}
					part ExtensionAttributeValue_3 : ExtensionAttributeValue :> extensionValues {
						ref part :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_3.DataStore_3;
						part DataStore_3 : DataStore :> value {
							attribute :>> id = "_tSQMsJMzEeKGz_kv5DLbCg";
							attribute :>> capacity = 0;
							attribute :>> isUnlimited = true;
						}
					}
					part ExtensionAttributeValue_4 : ExtensionAttributeValue :> extensionValues {
						ref part :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_4.DataStore_4;
						part DataStore_4 : DataStore :> value {
							attribute :>> id = "_tfbGAJMzEeKGz_kv5DLbCg";
							attribute :>> capacity = 0;
							attribute :>> isUnlimited = true;
						}
					}
					part ExtensionAttributeValue_5 : ExtensionAttributeValue :> extensionValues {
						ref part :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_5.DataObject_1;
						part DataObject_1 : DataObject :> value {
							attribute :>> id = "_1C6soJMzEeKGz_kv5DLbCg";
							attribute :>> name = "Report with Recommendations";
						}
					}
					part ExtensionAttributeValue_6 : ExtensionAttributeValue :> extensionValues {
						ref part :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_6.TextAnnotation_1;
						part TextAnnotation_1 : TextAnnotation :> value {
							attribute :>> id = "_sRn88JUyEeKCl81VVvO1pQ";
							attribute :>> text = "Around 3000 invitations/confidential nomination forms are sent to selected Nominators";
							attribute :>> textFormat = "text/plain";
						}
					}
				}
			}
			part LaneSet_2 : LaneSet :> laneSets {
				attribute :>> id = "_DEZnMJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Nominator";
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				part Lane_2 : Lane :> lanes {
					attribute :>> id = "_DEaOQJMwEeKGz_kv5DLbCg";
					attribute :>> name = " ";
					ref part :> extensionValues = (Process_1.LaneSet_2.Lane_2.ExtensionAttributeValue_7, Process_1.LaneSet_2.Lane_2.ExtensionAttributeValue_8);
					ref part :> flowNodeRefs = (Process_1.UserTask_3, Process_1.SendTask_2, Process_1.EndEvent_1, Process_1.StartEvent_1);
					part ExtensionAttributeValue_7 : ExtensionAttributeValue :> extensionValues {
						ref part :> value = Process_1.LaneSet_2.Lane_2.ExtensionAttributeValue_7.TextAnnotation_2;
						part TextAnnotation_2 : TextAnnotation :> value {
							attribute :>> id = "_Ur4M8JUtEeKSM8dNXYpfyA";
							attribute :>> text = "Nominator may nominate one or more Nominees";
							attribute :>> textFormat = "text/plain";
						}
					}
					part ExtensionAttributeValue_8 : ExtensionAttributeValue :> extensionValues;
				}
			}
			part LaneSet_3 : LaneSet :> laneSets {
				attribute :>> id = "_LBI0QJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Expert";
				ref part :> lanes = Process_1.LaneSet_3.Lane_3;
				part Lane_3 : Lane :> lanes {
					attribute :>> id = "_LBJbUJMwEeKGz_kv5DLbCg";
					ref part :> extensionValues = Process_1.LaneSet_3.Lane_3.ExtensionAttributeValue_9;
					ref part :> flowNodeRefs = (Process_1.StartEvent_2, Process_1.SendTask_3, Process_1.UserTask_4, Process_1.EndEvent_2);
					part ExtensionAttributeValue_9 : ExtensionAttributeValue :> extensionValues {
						ref part :> value = Process_1.LaneSet_3.Lane_3.ExtensionAttributeValue_9.TextAnnotation_3;
						part TextAnnotation_3 : TextAnnotation :> value {
							attribute :>> id = "_GzIUcJUtEeKSM8dNXYpfyA";
							attribute :>> text = "A selected expert is asked to asses the work of the Preliminary Candidates in the list";
							attribute :>> textFormat = "text/plain";
						}
					}
				}
			}
			part LaneSet_4 : LaneSet :> laneSets {
				attribute :>> id = "_NQXr8JMwEeKGz_kv5DLbCg";
				attribute :>> name = "Nobel Assembly";
				ref part :> lanes = Process_1.LaneSet_4.Lane_4;
				part Lane_4 : Lane :> lanes {
					attribute :>> id = "_NQYTAJMwEeKGz_kv5DLbCg";
					ref part :> flowNodeRefs = (Process_1.StartEvent_3, Process_1.UserTask_5, Process_1.UserTask_6, Process_1.UserTask_7, Process_1.EndEvent_3);
				}
			}
			part LaneSet_5 : LaneSet :> laneSets {
				attribute :>> id = "_d3cWcJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Noble Prize Laureat";
				ref part :> lanes = Process_1.LaneSet_5.Lane_5;
				part Lane_5 : Lane :> lanes {
					attribute :>> id = "_d3cWcZMxEeKGz_kv5DLbCg";
					ref part :> flowNodeRefs = Process_1.ReceiveTask_3;
				}
			}
			part Association_1 : Association :> artifacts {
				attribute :>> id = "_3YSBgJMzEeKGz_kv5DLbCg";
				ref part :> sourceRef = Process_1.Task_1;
				ref part :> targetRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_5.DataObject_1;
			}
			part Association_2 : Association :> artifacts {
				attribute :>> id = "_4Td3YJMzEeKGz_kv5DLbCg";
				ref part :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_5.DataObject_1;
				ref part :> targetRef = Process_1.SendTask_5;
			}
			part Association_3 : Association :> artifacts {
				attribute :>> id = "_Rz2zwJUpEeKHo-HauyzVXA";
				ref part :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_1.DataStore_1;
				ref part :> targetRef = Process_1.SendTask_1;
			}
			part Association_4 : Association :> artifacts {
				attribute :>> id = "_e4kAMJUpEeKHo-HauyzVXA";
				ref part :> sourceRef = Process_1.ReceiveTask_1;
				ref part :> targetRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_2.DataStore_2;
			}
			part Association_5 : Association :> artifacts {
				attribute :>> id = "_hXhV8JUpEeKHo-HauyzVXA";
				ref part :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_2.DataStore_2;
				ref part :> targetRef = Process_1.UserTask_1;
			}
			part Association_6 : Association :> artifacts {
				attribute :>> id = "_kV4kgJUpEeKHo-HauyzVXA";
				ref part :> sourceRef = Process_1.UserTask_1;
				ref part :> targetRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_4.DataStore_4;
			}
			part Association_7 : Association :> artifacts {
				attribute :>> id = "_lLXbAJUpEeKHo-HauyzVXA";
				ref part :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_4.DataStore_4;
				ref part :> targetRef = Process_1.SendTask_4;
			}
			part Association_8 : Association :> artifacts {
				attribute :>> id = "_rtY9kJUpEeKHo-HauyzVXA";
				ref part :> sourceRef = Process_1.ReceiveTask_2;
				ref part :> targetRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_3.DataStore_3;
			}
			part Association_9 : Association :> artifacts {
				attribute :>> id = "_sw5pAJUpEeKHo-HauyzVXA";
				ref part :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_3.DataStore_3;
				ref part :> targetRef = Process_1.UserTask_8;
			}
			part Association_10 : Association :> artifacts {
				attribute :>> id = "_Q6lsoJUtEeKSM8dNXYpfyA";
				ref part :> sourceRef = Process_1.LaneSet_3.Lane_3.ExtensionAttributeValue_9.TextAnnotation_3;
				ref part :> targetRef = Process_1.UserTask_4;
			}
			part Association_11 : Association :> artifacts {
				attribute :>> id = "_YOVnEJUtEeKSM8dNXYpfyA";
				ref part :> sourceRef = Process_1.LaneSet_2.Lane_2.ExtensionAttributeValue_7.TextAnnotation_2;
				ref part :> targetRef = Process_1.UserTask_3;
			}
			part Association_12 : Association :> artifacts {
				attribute :>> id = "_6rnhUJUyEeKCl81VVvO1pQ";
				ref part :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_6.TextAnnotation_1;
				ref part :> targetRef = Process_1.SendTask_1;
			}
		}
		part Collaboration_1 : Collaboration :> rootElements {
			attribute :>> id = "_2XpgYJMyEeKGz_kv5DLbCg";
			ref part :> messageFlows = (Collaboration_1.MessageFlow_1, Collaboration_1.MessageFlow_2, Collaboration_1.MessageFlow_3, Collaboration_1.MessageFlow_4, Collaboration_1.MessageFlow_5, Collaboration_1.MessageFlow_6);
			part MessageFlow_1 : MessageFlow :> messageFlows {
				attribute :>> id = "_2XpgYZMyEeKGz_kv5DLbCg";
				ref part :> sourceRef = Process_1.SendTask_1;
				ref part :> targetRef = Process_1.StartEvent_1;
			}
			part MessageFlow_2 : MessageFlow :> messageFlows {
				attribute :>> id = "_5stXsJMyEeKGz_kv5DLbCg";
				ref part :> sourceRef = Process_1.SendTask_2;
				ref part :> targetRef = Process_1.ReceiveTask_1;
			}
			part MessageFlow_3 : MessageFlow :> messageFlows {
				attribute :>> id = "_BaPrIJMzEeKGz_kv5DLbCg";
				ref part :> sourceRef = Process_1.SendTask_4;
				ref part :> targetRef = Process_1.StartEvent_2;
			}
			part MessageFlow_4 : MessageFlow :> messageFlows {
				attribute :>> id = "_FZS6oJMzEeKGz_kv5DLbCg";
				ref part :> sourceRef = Process_1.SendTask_3;
				ref part :> targetRef = Process_1.ReceiveTask_2;
			}
			part MessageFlow_5 : MessageFlow :> messageFlows {
				attribute :>> id = "_KtLPEJMzEeKGz_kv5DLbCg";
				ref part :> sourceRef = Process_1.SendTask_5;
				ref part :> targetRef = Process_1.StartEvent_3;
			}
			part MessageFlow_6 : MessageFlow :> messageFlows {
				attribute :>> id = "_TWvF4JMzEeKGz_kv5DLbCg";
				ref part :> sourceRef = Process_1.UserTask_7;
				ref part :> targetRef = Process_1.ReceiveTask_3;
			}
		}
	}
}

