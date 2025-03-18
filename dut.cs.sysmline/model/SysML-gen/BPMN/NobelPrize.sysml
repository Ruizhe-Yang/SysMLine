package bpmn2_model {
	public import bpmn2::*;
	public import bpmndi::*;
	item Definitions_1 : Definitions {
		attribute :>> id = "_lYwdsJMvEeKGz_kv5DLbCg";
		attribute :>> expressionLanguage = "http://www.w3.org/1999/XPath";
		attribute :>> typeLanguage = "http://www.w3.org/2001/XMLSchema";
		ref item :> rootElements = (Process_1, Collaboration_1);
		item Process_1 : Process :> rootElements {
			attribute :>> id = "_lYv2oJMvEeKGz_kv5DLbCg";
			attribute :>> name = "Nobel Prize";
			ref item :> flowElements = (Process_1.SendTask_1, Process_1.SequenceFlow_1, Process_1.ReceiveTask_1, Process_1.SequenceFlow_2, Process_1.UserTask_1, Process_1.SequenceFlow_3, Process_1.UserTask_2, Process_1.SequenceFlow_4, Process_1.UserTask_3, Process_1.SendTask_2, Process_1.SequenceFlow_5, Process_1.EndEvent_1, Process_1.SequenceFlow_6, Process_1.StartEvent_1, Process_1.SequenceFlow_7, Process_1.StartEvent_2, Process_1.SendTask_3, Process_1.SequenceFlow_8, Process_1.UserTask_4, Process_1.EndEvent_2, Process_1.SequenceFlow_9, Process_1.StartEvent_3, Process_1.UserTask_5, Process_1.SequenceFlow_10, Process_1.UserTask_6, Process_1.SequenceFlow_11, Process_1.UserTask_7, Process_1.SequenceFlow_12, Process_1.EndEvent_3, Process_1.SequenceFlow_13, Process_1.ExclusiveGateway_1, Process_1.SequenceFlow_14, Process_1.SendTask_4, Process_1.SequenceFlow_15, Process_1.ReceiveTask_2, Process_1.SequenceFlow_16, Process_1.UserTask_8, Process_1.SequenceFlow_17, Process_1.Task_1, Process_1.SequenceFlow_18, Process_1.StartEvent_4, Process_1.SequenceFlow_19, Process_1.SendTask_5, Process_1.SequenceFlow_20, Process_1.UserTask_9, Process_1.SequenceFlow_21, Process_1.EndEvent_4, Process_1.SequenceFlow_22, Process_1.ReceiveTask_3, Process_1.SequenceFlow_23, Process_1.SequenceFlow_24, Process_1.SequenceFlow_25, Process_1.SequenceFlow_26);
			ref item :> laneSets = (Process_1.LaneSet_1, Process_1.LaneSet_2, Process_1.LaneSet_3, Process_1.LaneSet_4, Process_1.LaneSet_5);
			ref item :> artifacts = (Process_1.Association_1, Process_1.Association_2, Process_1.Association_3, Process_1.Association_4, Process_1.Association_5, Process_1.Association_6, Process_1.Association_7, Process_1.Association_8, Process_1.Association_9, Process_1.Association_10, Process_1.Association_11, Process_1.Association_12);
			item SendTask_1 : SendTask :> flowElements {
				attribute :>> id = "_6TLCIJMvEeKGz_kv5DLbCg";
				attribute :>> name = "Send Nomination Form";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_2;
				ref item :> incoming = (Process_1.SequenceFlow_1, Process_1.SequenceFlow_19);
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_1 : SequenceFlow :> flowElements {
				attribute :>> id = "_6TMQQJMvEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.SendTask_1;
			}
			item ReceiveTask_1 : ReceiveTask :> flowElements {
				attribute :>> id = "_7TqOwJMvEeKGz_kv5DLbCg";
				attribute :>> name = "Collect Completed form";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_3;
				ref item :> incoming = Process_1.SequenceFlow_2;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_2 : SequenceFlow :> flowElements {
				attribute :>> id = "_7Tq10JMvEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.ReceiveTask_1;
				ref item :> sourceRef = Process_1.SendTask_1;
			}
			item UserTask_1 : UserTask :> flowElements {
				attribute :>> id = "_98-aYJMvEeKGz_kv5DLbCg";
				attribute :>> name = "Screen & Select Preliminary Candidates";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_4;
				ref item :> incoming = Process_1.SequenceFlow_3;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_3 : SequenceFlow :> flowElements {
				attribute :>> id = "_98_BcJMvEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.UserTask_1;
				ref item :> sourceRef = Process_1.ReceiveTask_1;
			}
			item UserTask_2 : UserTask :> flowElements {
				attribute :>> id = "__CClAJMvEeKGz_kv5DLbCg";
				attribute :>> name = "Determine Need for Expert Assistance";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_14;
				ref item :> incoming = Process_1.SequenceFlow_4;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_4 : SequenceFlow :> flowElements {
				attribute :>> id = "__CDMEJMvEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.UserTask_2;
				ref item :> sourceRef = Process_1.UserTask_1;
			}
			item UserTask_3 : UserTask :> flowElements {
				attribute :>> id = "_i2xzsJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Identify Potentiel Nominee(s)";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_5;
				ref item :> incoming = Process_1.SequenceFlow_7;
				ref item :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			item SendTask_2 : SendTask :> flowElements {
				attribute :>> id = "_oH02kJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Send Nominee Completed Form(s)";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_6;
				ref item :> incoming = Process_1.SequenceFlow_5;
				ref item :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			item SequenceFlow_5 : SequenceFlow :> flowElements {
				attribute :>> id = "_oH1doJMwEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.SendTask_2;
				ref item :> sourceRef = Process_1.UserTask_3;
			}
			item EndEvent_1 : EndEvent :> flowElements {
				attribute :>> id = "_pKgbkJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Nomination form(s) Sent";
				ref item :> incoming = Process_1.SequenceFlow_6;
				ref item :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			item SequenceFlow_6 : SequenceFlow :> flowElements {
				attribute :>> id = "_pKhCoJMwEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.EndEvent_1;
				ref item :> sourceRef = Process_1.SendTask_2;
			}
			item StartEvent_1 : StartEvent :> flowElements {
				attribute :>> id = "_rfsKQJMwEeKGz_kv5DLbCg";
				attribute :>> isInterrupting = true;
				ref item :> outgoing = Process_1.SequenceFlow_7;
				ref item :> lanes = Process_1.LaneSet_2.Lane_2;
				ref item :> eventDefinitions = Process_1.StartEvent_1.MessageEventDefinition_1;
				item MessageEventDefinition_1 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_r9ECwJMwEeKGz_kv5DLbCg";
				}
			}
			item SequenceFlow_7 : SequenceFlow :> flowElements {
				attribute :>> id = "_teojMJMwEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.UserTask_3;
				ref item :> sourceRef = Process_1.StartEvent_1;
			}
			item StartEvent_2 : StartEvent :> flowElements {
				attribute :>> id = "_z-5yQJMwEeKGz_kv5DLbCg";
				attribute :>> isInterrupting = true;
				ref item :> outgoing = Process_1.SequenceFlow_8;
				ref item :> lanes = Process_1.LaneSet_3.Lane_3;
				ref item :> eventDefinitions = Process_1.StartEvent_2.MessageEventDefinition_2;
				item MessageEventDefinition_2 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_0zhtIJMwEeKGz_kv5DLbCg";
				}
			}
			item SendTask_3 : SendTask :> flowElements {
				attribute :>> id = "_1cULcJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Send candidates Assessments Report";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_9;
				ref item :> incoming = Process_1.SequenceFlow_24;
				ref item :> lanes = Process_1.LaneSet_3.Lane_3;
			}
			item SequenceFlow_8 : SequenceFlow :> flowElements {
				attribute :>> id = "_1cUygJMwEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.UserTask_4;
				ref item :> sourceRef = Process_1.StartEvent_2;
			}
			item UserTask_4 : UserTask :> flowElements {
				attribute :>> id = "_3AwZsJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Assess Candidates work";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_24;
				ref item :> incoming = Process_1.SequenceFlow_8;
				ref item :> lanes = Process_1.LaneSet_3.Lane_3;
			}
			item EndEvent_2 : EndEvent :> flowElements {
				attribute :>> id = "_4YtrIJMwEeKGz_kv5DLbCg";
				attribute :>> name = "End Assesments";
				ref item :> incoming = Process_1.SequenceFlow_9;
				ref item :> lanes = Process_1.LaneSet_3.Lane_3;
			}
			item SequenceFlow_9 : SequenceFlow :> flowElements {
				attribute :>> id = "_4YuSMJMwEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.EndEvent_2;
				ref item :> sourceRef = Process_1.SendTask_3;
			}
			item StartEvent_3 : StartEvent :> flowElements {
				attribute :>> id = "_Ag7IYJMxEeKGz_kv5DLbCg";
				attribute :>> isInterrupting = true;
				ref item :> outgoing = Process_1.SequenceFlow_10;
				ref item :> lanes = Process_1.LaneSet_4.Lane_4;
				ref item :> eventDefinitions = Process_1.StartEvent_3.MessageEventDefinition_3;
				item MessageEventDefinition_3 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_DyK2sJMxEeKGz_kv5DLbCg";
				}
			}
			item UserTask_5 : UserTask :> flowElements {
				attribute :>> id = "_GEKHcJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Discuss Nominations (Meeting 1)";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_11;
				ref item :> incoming = Process_1.SequenceFlow_10;
				ref item :> lanes = Process_1.LaneSet_4.Lane_4;
			}
			item SequenceFlow_10 : SequenceFlow :> flowElements {
				attribute :>> id = "_GEKugJMxEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.UserTask_5;
				ref item :> sourceRef = Process_1.StartEvent_3;
			}
			item UserTask_6 : UserTask :> flowElements {
				attribute :>> id = "_HiDo0JMxEeKGz_kv5DLbCg";
				attribute :>> name = "Select Laureates (Meeting 2)";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_12;
				ref item :> incoming = Process_1.SequenceFlow_11;
				ref item :> lanes = Process_1.LaneSet_4.Lane_4;
			}
			item SequenceFlow_11 : SequenceFlow :> flowElements {
				attribute :>> id = "_HiEP4JMxEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.UserTask_6;
				ref item :> sourceRef = Process_1.UserTask_5;
			}
			item UserTask_7 : UserTask :> flowElements {
				attribute :>> id = "_Jcbq0JMxEeKGz_kv5DLbCg";
				attribute :>> name = "Announce Nobel Prize Laureates";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_13;
				ref item :> incoming = Process_1.SequenceFlow_12;
				ref item :> lanes = Process_1.LaneSet_4.Lane_4;
			}
			item SequenceFlow_12 : SequenceFlow :> flowElements {
				attribute :>> id = "_JccR4JMxEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.UserTask_7;
				ref item :> sourceRef = Process_1.UserTask_6;
			}
			item EndEvent_3 : EndEvent :> flowElements {
				attribute :>> id = "_PExMUJMxEeKGz_kv5DLbCg";
				ref item :> incoming = Process_1.SequenceFlow_13;
				ref item :> lanes = Process_1.LaneSet_4.Lane_4;
			}
			item SequenceFlow_13 : SequenceFlow :> flowElements {
				attribute :>> id = "_PExzYJMxEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.EndEvent_3;
				ref item :> sourceRef = Process_1.UserTask_7;
			}
			item ExclusiveGateway_1 : ExclusiveGateway :> flowElements {
				attribute :>> id = "_0iytAJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Expert Assistance?";
				ref item :> outgoing = (Process_1.SequenceFlow_15, Process_1.SequenceFlow_23);
				ref item :> incoming = Process_1.SequenceFlow_14;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_14 : SequenceFlow :> flowElements {
				attribute :>> id = "_0izUEJMxEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.ExclusiveGateway_1;
				ref item :> sourceRef = Process_1.UserTask_2;
			}
			item SendTask_4 : SendTask :> flowElements {
				attribute :>> id = "_3Jx9YJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Send List of preliminary Candidates";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_16;
				ref item :> incoming = Process_1.SequenceFlow_15;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_15 : SequenceFlow :> flowElements {
				attribute :>> id = "_3JykcJMxEeKGz_kv5DLbCg";
				attribute :>> name = "yes";
				ref item :> targetRef = Process_1.SendTask_4;
				ref item :> sourceRef = Process_1.ExclusiveGateway_1;
			}
			item ReceiveTask_2 : ReceiveTask :> flowElements {
				attribute :>> id = "_5NndYJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Collect Candidates Work Assesment Report";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_17;
				ref item :> incoming = Process_1.SequenceFlow_16;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_16 : SequenceFlow :> flowElements {
				attribute :>> id = "_5NorgJMxEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.ReceiveTask_2;
				ref item :> sourceRef = Process_1.SendTask_4;
			}
			item UserTask_8 : UserTask :> flowElements {
				attribute :>> id = "_72TW4JMxEeKGz_kv5DLbCg";
				attribute :>> name = "Select Final Candidates and their Works";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_18;
				ref item :> incoming = Process_1.SequenceFlow_17;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_17 : SequenceFlow :> flowElements {
				attribute :>> id = "_72UlAJMxEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.UserTask_8;
				ref item :> sourceRef = Process_1.ReceiveTask_2;
			}
			item Task_1 : Task :> flowElements {
				attribute :>> id = "_9n86sJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Write Recommendation Report";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_20;
				ref item :> incoming = (Process_1.SequenceFlow_18, Process_1.SequenceFlow_23);
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_18 : SequenceFlow :> flowElements {
				attribute :>> id = "_9n9hwJMxEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.Task_1;
				ref item :> sourceRef = Process_1.UserTask_8;
			}
			item StartEvent_4 : StartEvent :> flowElements {
				attribute :>> id = "_N6Z1gJMyEeKGz_kv5DLbCg";
				attribute :>> isInterrupting = true;
				ref item :> outgoing = Process_1.SequenceFlow_19;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
				ref item :> eventDefinitions = Process_1.StartEvent_4.TimerEventDefinition_1;
				item TimerEventDefinition_1 : TimerEventDefinition :> eventDefinitions {
					attribute :>> id = "_PDoHYJMyEeKGz_kv5DLbCg";
				}
			}
			item SequenceFlow_19 : SequenceFlow :> flowElements {
				attribute :>> id = "_QFWqIJMyEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.SendTask_1;
				ref item :> sourceRef = Process_1.StartEvent_4;
			}
			item SendTask_5 : SendTask :> flowElements {
				attribute :>> id = "_Vymg0JMyEeKGz_kv5DLbCg";
				attribute :>> name = "Submit Report with Reconmmendations";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_21;
				ref item :> incoming = Process_1.SequenceFlow_20;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_20 : SequenceFlow :> flowElements {
				attribute :>> id = "_VynH4JMyEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.SendTask_5;
				ref item :> sourceRef = Process_1.Task_1;
			}
			item UserTask_9 : UserTask :> flowElements {
				attribute :>> id = "_YxmBgJMyEeKGz_kv5DLbCg";
				attribute :>> name = "Hold Nobel Prize";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_22;
				ref item :> incoming = Process_1.SequenceFlow_21;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_21 : SequenceFlow :> flowElements {
				attribute :>> id = "_YxmBgZMyEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.UserTask_9;
				ref item :> sourceRef = Process_1.SendTask_5;
			}
			item EndEvent_4 : EndEvent :> flowElements {
				attribute :>> id = "_gyIwgJMyEeKGz_kv5DLbCg";
				ref item :> incoming = Process_1.SequenceFlow_22;
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			item SequenceFlow_22 : SequenceFlow :> flowElements {
				attribute :>> id = "_gyIwgZMyEeKGz_kv5DLbCg";
				ref item :> targetRef = Process_1.EndEvent_4;
				ref item :> sourceRef = Process_1.UserTask_9;
			}
			item ReceiveTask_3 : ReceiveTask :> flowElements {
				attribute :>> id = "_QSM94JMzEeKGz_kv5DLbCg";
				attribute :>> name = "Receive Nomination";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref item :> outgoing = Process_1.SequenceFlow_26;
				ref item :> lanes = Process_1.LaneSet_5.Lane_5;
			}
			item SequenceFlow_23 : SequenceFlow :> flowElements {
				attribute :>> id = "_x59XoJMzEeKGz_kv5DLbCg";
				attribute :>> name = "No";
				ref item :> targetRef = Process_1.Task_1;
				ref item :> sourceRef = Process_1.ExclusiveGateway_1;
			}
			item SequenceFlow_24 : SequenceFlow :> flowElements {
				attribute :>> id = "__ZHvEJUuEeKSM8dNXYpfyA";
				ref item :> targetRef = Process_1.SendTask_3;
				ref item :> sourceRef = Process_1.UserTask_4;
			}
			item SequenceFlow_25 : SequenceFlow :> flowElements {
				attribute :>> id = "_B0GegJYFEeKOGPdNF5Ql-Q";
			}
			item SequenceFlow_26 : SequenceFlow :> flowElements {
				attribute :>> id = "_0bxp0KOqEeKWPL0NwOif5A";
				ref item :> sourceRef = Process_1.ReceiveTask_3;
			}
			item LaneSet_1 : LaneSet :> laneSets {
				attribute :>> id = "_tFVu4JMvEeKGz_kv5DLbCg";
				attribute :>> name = "Nobel commitee for Medecine";
				ref item :> lanes = Process_1.LaneSet_1.Lane_1;
				item Lane_1 : Lane :> lanes {
					attribute :>> id = "_tFXkEJMvEeKGz_kv5DLbCg";
					ref item :> extensionValues = (Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_1, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_2, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_3, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_4, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_5, Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_6);
					ref item :> flowNodeRefs = (Process_1.SendTask_1, Process_1.ReceiveTask_1, Process_1.UserTask_1, Process_1.UserTask_2, Process_1.ExclusiveGateway_1, Process_1.SendTask_4, Process_1.ReceiveTask_2, Process_1.UserTask_8, Process_1.Task_1, Process_1.StartEvent_4, Process_1.SendTask_5, Process_1.UserTask_9, Process_1.EndEvent_4);
					item ExtensionAttributeValue_1 : ExtensionAttributeValue :> extensionValues {
						ref item :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_1.DataStore_1;
						item DataStore_1 : DataStore :> value {
							attribute :>> id = "_nfEtIJMzEeKGz_kv5DLbCg";
							attribute :>> capacity = 0;
							attribute :>> isUnlimited = true;
						}
					}
					item ExtensionAttributeValue_2 : ExtensionAttributeValue :> extensionValues {
						ref item :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_2.DataStore_2;
						item DataStore_2 : DataStore :> value {
							attribute :>> id = "_r4Gi4JMzEeKGz_kv5DLbCg";
							attribute :>> capacity = 0;
							attribute :>> isUnlimited = true;
						}
					}
					item ExtensionAttributeValue_3 : ExtensionAttributeValue :> extensionValues {
						ref item :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_3.DataStore_3;
						item DataStore_3 : DataStore :> value {
							attribute :>> id = "_tSQMsJMzEeKGz_kv5DLbCg";
							attribute :>> capacity = 0;
							attribute :>> isUnlimited = true;
						}
					}
					item ExtensionAttributeValue_4 : ExtensionAttributeValue :> extensionValues {
						ref item :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_4.DataStore_4;
						item DataStore_4 : DataStore :> value {
							attribute :>> id = "_tfbGAJMzEeKGz_kv5DLbCg";
							attribute :>> capacity = 0;
							attribute :>> isUnlimited = true;
						}
					}
					item ExtensionAttributeValue_5 : ExtensionAttributeValue :> extensionValues {
						ref item :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_5.DataObject_1;
						item DataObject_1 : DataObject :> value {
							attribute :>> id = "_1C6soJMzEeKGz_kv5DLbCg";
							attribute :>> name = "Report with Recommendations";
						}
					}
					item ExtensionAttributeValue_6 : ExtensionAttributeValue :> extensionValues {
						ref item :> value = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_6.TextAnnotation_1;
						item TextAnnotation_1 : TextAnnotation :> value {
							attribute :>> id = "_sRn88JUyEeKCl81VVvO1pQ";
							attribute :>> text = "Around 3000 invitations/confidential nomination forms are sent to selected Nominators";
							attribute :>> textFormat = "text/plain";
						}
					}
				}
			}
			item LaneSet_2 : LaneSet :> laneSets {
				attribute :>> id = "_DEZnMJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Nominator";
				ref item :> lanes = Process_1.LaneSet_2.Lane_2;
				item Lane_2 : Lane :> lanes {
					attribute :>> id = "_DEaOQJMwEeKGz_kv5DLbCg";
					attribute :>> name = " ";
					ref item :> extensionValues = (Process_1.LaneSet_2.Lane_2.ExtensionAttributeValue_7, Process_1.LaneSet_2.Lane_2.ExtensionAttributeValue_8);
					ref item :> flowNodeRefs = (Process_1.UserTask_3, Process_1.SendTask_2, Process_1.EndEvent_1, Process_1.StartEvent_1);
					item ExtensionAttributeValue_7 : ExtensionAttributeValue :> extensionValues {
						ref item :> value = Process_1.LaneSet_2.Lane_2.ExtensionAttributeValue_7.TextAnnotation_2;
						item TextAnnotation_2 : TextAnnotation :> value {
							attribute :>> id = "_Ur4M8JUtEeKSM8dNXYpfyA";
							attribute :>> text = "Nominator may nominate one or more Nominees";
							attribute :>> textFormat = "text/plain";
						}
					}
					item ExtensionAttributeValue_8 : ExtensionAttributeValue :> extensionValues;
				}
			}
			item LaneSet_3 : LaneSet :> laneSets {
				attribute :>> id = "_LBI0QJMwEeKGz_kv5DLbCg";
				attribute :>> name = "Expert";
				ref item :> lanes = Process_1.LaneSet_3.Lane_3;
				item Lane_3 : Lane :> lanes {
					attribute :>> id = "_LBJbUJMwEeKGz_kv5DLbCg";
					ref item :> extensionValues = Process_1.LaneSet_3.Lane_3.ExtensionAttributeValue_9;
					ref item :> flowNodeRefs = (Process_1.StartEvent_2, Process_1.SendTask_3, Process_1.UserTask_4, Process_1.EndEvent_2);
					item ExtensionAttributeValue_9 : ExtensionAttributeValue :> extensionValues {
						ref item :> value = Process_1.LaneSet_3.Lane_3.ExtensionAttributeValue_9.TextAnnotation_3;
						item TextAnnotation_3 : TextAnnotation :> value {
							attribute :>> id = "_GzIUcJUtEeKSM8dNXYpfyA";
							attribute :>> text = "A selected expert is asked to asses the work of the Preliminary Candidates in the list";
							attribute :>> textFormat = "text/plain";
						}
					}
				}
			}
			item LaneSet_4 : LaneSet :> laneSets {
				attribute :>> id = "_NQXr8JMwEeKGz_kv5DLbCg";
				attribute :>> name = "Nobel Assembly";
				ref item :> lanes = Process_1.LaneSet_4.Lane_4;
				item Lane_4 : Lane :> lanes {
					attribute :>> id = "_NQYTAJMwEeKGz_kv5DLbCg";
					ref item :> flowNodeRefs = (Process_1.StartEvent_3, Process_1.UserTask_5, Process_1.UserTask_6, Process_1.UserTask_7, Process_1.EndEvent_3);
				}
			}
			item LaneSet_5 : LaneSet :> laneSets {
				attribute :>> id = "_d3cWcJMxEeKGz_kv5DLbCg";
				attribute :>> name = "Noble Prize Laureat";
				ref item :> lanes = Process_1.LaneSet_5.Lane_5;
				item Lane_5 : Lane :> lanes {
					attribute :>> id = "_d3cWcZMxEeKGz_kv5DLbCg";
					ref item :> flowNodeRefs = Process_1.ReceiveTask_3;
				}
			}
			item Association_1 : Association :> artifacts {
				attribute :>> id = "_3YSBgJMzEeKGz_kv5DLbCg";
				ref item :> sourceRef = Process_1.Task_1;
				ref item :> targetRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_5.DataObject_1;
			}
			item Association_2 : Association :> artifacts {
				attribute :>> id = "_4Td3YJMzEeKGz_kv5DLbCg";
				ref item :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_5.DataObject_1;
				ref item :> targetRef = Process_1.SendTask_5;
			}
			item Association_3 : Association :> artifacts {
				attribute :>> id = "_Rz2zwJUpEeKHo-HauyzVXA";
				ref item :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_1.DataStore_1;
				ref item :> targetRef = Process_1.SendTask_1;
			}
			item Association_4 : Association :> artifacts {
				attribute :>> id = "_e4kAMJUpEeKHo-HauyzVXA";
				ref item :> sourceRef = Process_1.ReceiveTask_1;
				ref item :> targetRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_2.DataStore_2;
			}
			item Association_5 : Association :> artifacts {
				attribute :>> id = "_hXhV8JUpEeKHo-HauyzVXA";
				ref item :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_2.DataStore_2;
				ref item :> targetRef = Process_1.UserTask_1;
			}
			item Association_6 : Association :> artifacts {
				attribute :>> id = "_kV4kgJUpEeKHo-HauyzVXA";
				ref item :> sourceRef = Process_1.UserTask_1;
				ref item :> targetRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_4.DataStore_4;
			}
			item Association_7 : Association :> artifacts {
				attribute :>> id = "_lLXbAJUpEeKHo-HauyzVXA";
				ref item :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_4.DataStore_4;
				ref item :> targetRef = Process_1.SendTask_4;
			}
			item Association_8 : Association :> artifacts {
				attribute :>> id = "_rtY9kJUpEeKHo-HauyzVXA";
				ref item :> sourceRef = Process_1.ReceiveTask_2;
				ref item :> targetRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_3.DataStore_3;
			}
			item Association_9 : Association :> artifacts {
				attribute :>> id = "_sw5pAJUpEeKHo-HauyzVXA";
				ref item :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_3.DataStore_3;
				ref item :> targetRef = Process_1.UserTask_8;
			}
			item Association_10 : Association :> artifacts {
				attribute :>> id = "_Q6lsoJUtEeKSM8dNXYpfyA";
				ref item :> sourceRef = Process_1.LaneSet_3.Lane_3.ExtensionAttributeValue_9.TextAnnotation_3;
				ref item :> targetRef = Process_1.UserTask_4;
			}
			item Association_11 : Association :> artifacts {
				attribute :>> id = "_YOVnEJUtEeKSM8dNXYpfyA";
				ref item :> sourceRef = Process_1.LaneSet_2.Lane_2.ExtensionAttributeValue_7.TextAnnotation_2;
				ref item :> targetRef = Process_1.UserTask_3;
			}
			item Association_12 : Association :> artifacts {
				attribute :>> id = "_6rnhUJUyEeKCl81VVvO1pQ";
				ref item :> sourceRef = Process_1.LaneSet_1.Lane_1.ExtensionAttributeValue_6.TextAnnotation_1;
				ref item :> targetRef = Process_1.SendTask_1;
			}
		}
		item Collaboration_1 : Collaboration :> rootElements {
			attribute :>> id = "_2XpgYJMyEeKGz_kv5DLbCg";
			ref item :> messageFlows = (Collaboration_1.MessageFlow_1, Collaboration_1.MessageFlow_2, Collaboration_1.MessageFlow_3, Collaboration_1.MessageFlow_4, Collaboration_1.MessageFlow_5, Collaboration_1.MessageFlow_6);
			item MessageFlow_1 : MessageFlow :> messageFlows {
				attribute :>> id = "_2XpgYZMyEeKGz_kv5DLbCg";
				ref item :> sourceRef = Process_1.SendTask_1;
				ref item :> targetRef = Process_1.StartEvent_1;
			}
			item MessageFlow_2 : MessageFlow :> messageFlows {
				attribute :>> id = "_5stXsJMyEeKGz_kv5DLbCg";
				ref item :> sourceRef = Process_1.SendTask_2;
				ref item :> targetRef = Process_1.ReceiveTask_1;
			}
			item MessageFlow_3 : MessageFlow :> messageFlows {
				attribute :>> id = "_BaPrIJMzEeKGz_kv5DLbCg";
				ref item :> sourceRef = Process_1.SendTask_4;
				ref item :> targetRef = Process_1.StartEvent_2;
			}
			item MessageFlow_4 : MessageFlow :> messageFlows {
				attribute :>> id = "_FZS6oJMzEeKGz_kv5DLbCg";
				ref item :> sourceRef = Process_1.SendTask_3;
				ref item :> targetRef = Process_1.ReceiveTask_2;
			}
			item MessageFlow_5 : MessageFlow :> messageFlows {
				attribute :>> id = "_KtLPEJMzEeKGz_kv5DLbCg";
				ref item :> sourceRef = Process_1.SendTask_5;
				ref item :> targetRef = Process_1.StartEvent_3;
			}
			item MessageFlow_6 : MessageFlow :> messageFlows {
				attribute :>> id = "_TWvF4JMzEeKGz_kv5DLbCg";
				ref item :> sourceRef = Process_1.UserTask_7;
				ref item :> targetRef = Process_1.ReceiveTask_3;
			}
		}
	}
}

