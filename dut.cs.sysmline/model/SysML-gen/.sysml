package  {
	private import bpmn2::*;
	part Definitions_1 : Definitions {
		attribute :>> id = "_VgLhQajBEeK_xvwrSf5u4w";
		attribute :>> expressionLanguage = "http://www.w3.org/1999/XPath";
		attribute :>> typeLanguage = "http://www.w3.org/2001/XMLSchema";
		ref part :> rootElements = (Process_1, Collaboration_1);
		part Process_1 : Process :> rootElements {
			attribute :>> id = "_VgLhQKjBEeK_xvwrSf5u4w";
			attribute :>> name = "TravelAgency";
			ref part :> flowElements = (Process_1.Task_1, Process_1.SendTask_1, Process_1.StartEvent_1, Process_1.SequenceFlow_1, Process_1.ParallelGateway_1, Process_1.SequenceFlow_2, Process_1.ManualTask_1, Process_1.SequenceFlow_3, Process_1.ManualTask_2, Process_1.SequenceFlow_4, Process_1.ManualTask_3, Process_1.SequenceFlow_5, Process_1.ParallelGateway_2, Process_1.SequenceFlow_6, Process_1.ManualTask_4, Process_1.SequenceFlow_7, Process_1.SequenceFlow_8, Process_1.ManualTask_5, Process_1.SequenceFlow_9, Process_1.ManualTask_6, Process_1.SequenceFlow_10, Process_1.SequenceFlow_11, Process_1.StartEvent_2, Process_1.SequenceFlow_12, Process_1.StartEvent_3, Process_1.SequenceFlow_13, Process_1.StartEvent_4, Process_1.SequenceFlow_14, Process_1.EventBasedGateway_1, Process_1.SequenceFlow_15, Process_1.SequenceFlow_16, Process_1.SequenceFlow_17, Process_1.SequenceFlow_18, Process_1.ManualTask_7, Process_1.SequenceFlow_19, Process_1.ServiceTask_1, Process_1.SequenceFlow_20, Process_1.ScriptTask_1, Process_1.SequenceFlow_21, Process_1.EndEvent_1, Process_1.SequenceFlow_22, Process_1.StartEvent_5, Process_1.SequenceFlow_23, Process_1.EndEvent_2, Process_1.BoundaryEvent_1, Process_1.SequenceFlow_24, Process_1.BoundaryEvent_2, Process_1.BoundaryEvent_3, Process_1.BoundaryEvent_4, Process_1.BoundaryEvent_5, Process_1.BoundaryEvent_6, Process_1.StartEvent_6, Process_1.Task_2, Process_1.SequenceFlow_25, Process_1.BoundaryEvent_7, Process_1.SequenceFlow_26);
			ref part :> laneSets = (Process_1.LaneSet_1, Process_1.LaneSet_2);
			part Task_1 : Task :> flowElements {
				attribute :>> id = "_yJjVcKjBEeK_xvwrSf5u4w";
				attribute :>> name = "Chose alternative";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
				ref part :> boundaryEventRefs = Process_1.BoundaryEvent_5;
			}
			part SendTask_1 : SendTask :> flowElements {
				attribute :>> id = "_yp_JAKjBEeK_xvwrSf5u4w";
				attribute :>> name = "Send credit card information";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
				ref part :> boundaryEventRefs = Process_1.BoundaryEvent_3;
			}
			part StartEvent_1 : StartEvent :> flowElements {
				attribute :>> id = "_5F1LEKjBEeK_xvwrSf5u4w";
				attribute :>> isInterrupting = true;
				ref part :> outgoing = (Process_1.SequenceFlow_1, Process_1.SequenceFlow_2);
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				ref part :> eventDefinitions = Process_1.StartEvent_1.MessageEventDefinition_1;
				part MessageEventDefinition_1 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_5lGhAKjBEeK_xvwrSf5u4w";
				}
			}
			part SequenceFlow_1 : SequenceFlow :> flowElements {
				attribute :>> id = "_6Y-N8KjBEeK_xvwrSf5u4w";
				ref part :> sourceRef = Process_1.StartEvent_1;
			}
			part ParallelGateway_1 : ParallelGateway :> flowElements {
				attribute :>> id = "_9dquAKjBEeK_xvwrSf5u4w";
				ref part :> outgoing = (Process_1.SequenceFlow_3, Process_1.SequenceFlow_4);
				ref part :> incoming = Process_1.SequenceFlow_2;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_2 : SequenceFlow :> flowElements {
				attribute :>> id = "_9drVEKjBEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ParallelGateway_1;
				ref part :> sourceRef = Process_1.StartEvent_1;
			}
			part ManualTask_1 : ManualTask :> flowElements {
				attribute :>> id = "__M0-gKjBEeK_xvwrSf5u4w";
				attribute :>> name = "Search hotel room";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_7;
				ref part :> incoming = Process_1.SequenceFlow_3;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_3 : SequenceFlow :> flowElements {
				attribute :>> id = "__M1lkKjBEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ManualTask_1;
				ref part :> sourceRef = Process_1.ParallelGateway_1;
			}
			part ManualTask_2 : ManualTask :> flowElements {
				attribute :>> id = "__vFXAKjBEeK_xvwrSf5u4w";
				attribute :>> name = "Search Flight";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_5;
				ref part :> incoming = Process_1.SequenceFlow_4;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_4 : SequenceFlow :> flowElements {
				attribute :>> id = "__vF-EKjBEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ManualTask_2;
				ref part :> sourceRef = Process_1.ParallelGateway_1;
			}
			part ManualTask_3 : ManualTask :> flowElements {
				attribute :>> id = "_GvXi4KjCEeK_xvwrSf5u4w";
				attribute :>> name = "Evaluate Flight within customer critaria";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_6;
				ref part :> incoming = Process_1.SequenceFlow_5;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				ref part :> boundaryEventRefs = Process_1.BoundaryEvent_6;
			}
			part SequenceFlow_5 : SequenceFlow :> flowElements {
				attribute :>> id = "_GvYJ8KjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ManualTask_3;
				ref part :> sourceRef = Process_1.ManualTask_2;
			}
			part ParallelGateway_2 : ParallelGateway :> flowElements {
				attribute :>> id = "_H5i3AKjCEeK_xvwrSf5u4w";
				ref part :> outgoing = Process_1.SequenceFlow_9;
				ref part :> incoming = (Process_1.SequenceFlow_6, Process_1.SequenceFlow_8);
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_6 : SequenceFlow :> flowElements {
				attribute :>> id = "_H5jeEKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ParallelGateway_2;
				ref part :> sourceRef = Process_1.ManualTask_3;
			}
			part ManualTask_4 : ManualTask :> flowElements {
				attribute :>> id = "_JAQncKjCEeK_xvwrSf5u4w";
				attribute :>> name = "Evaluate hotels within customer critaria";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_8;
				ref part :> incoming = Process_1.SequenceFlow_7;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_7 : SequenceFlow :> flowElements {
				attribute :>> id = "_JAR1kKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ManualTask_4;
				ref part :> sourceRef = Process_1.ManualTask_1;
			}
			part SequenceFlow_8 : SequenceFlow :> flowElements {
				attribute :>> id = "_Lmr3IKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ParallelGateway_2;
				ref part :> sourceRef = Process_1.ManualTask_4;
			}
			part ManualTask_5 : ManualTask :> flowElements {
				attribute :>> id = "_QD63cKjCEeK_xvwrSf5u4w";
				attribute :>> name = "Package flights and hotels for customer review";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_10;
				ref part :> incoming = Process_1.SequenceFlow_9;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_9 : SequenceFlow :> flowElements {
				attribute :>> id = "_QD8FkKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ManualTask_5;
				ref part :> sourceRef = Process_1.ParallelGateway_2;
			}
			part ManualTask_6 : ManualTask :> flowElements {
				attribute :>> id = "_REim8KjCEeK_xvwrSf5u4w";
				attribute :>> name = "Present flights and hotels to customer";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = (Process_1.SequenceFlow_11, Process_1.SequenceFlow_15);
				ref part :> incoming = Process_1.SequenceFlow_10;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_10 : SequenceFlow :> flowElements {
				attribute :>> id = "_REj1EKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ManualTask_6;
				ref part :> sourceRef = Process_1.ManualTask_5;
			}
			part SequenceFlow_11 : SequenceFlow :> flowElements {
				attribute :>> id = "_VNq_gajCEeK_xvwrSf5u4w";
				ref part :> sourceRef = Process_1.ManualTask_6;
			}
			part StartEvent_2 : StartEvent :> flowElements {
				attribute :>> id = "_fl4wgKjCEeK_xvwrSf5u4w";
				attribute :>> isInterrupting = true;
				ref part :> outgoing = Process_1.SequenceFlow_19;
				ref part :> incoming = (Process_1.SequenceFlow_12, Process_1.SequenceFlow_16);
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				ref part :> eventDefinitions = Process_1.StartEvent_2.MessageEventDefinition_2;
				part MessageEventDefinition_2 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_1pBQgKjCEeK_xvwrSf5u4w";
				}
			}
			part SequenceFlow_12 : SequenceFlow :> flowElements {
				attribute :>> id = "_fl5XkKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.StartEvent_2;
			}
			part StartEvent_3 : StartEvent :> flowElements {
				attribute :>> id = "_gLpI8KjCEeK_xvwrSf5u4w";
				attribute :>> isInterrupting = true;
				ref part :> outgoing = Process_1.SequenceFlow_21;
				ref part :> incoming = (Process_1.SequenceFlow_13, Process_1.SequenceFlow_18);
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				ref part :> eventDefinitions = Process_1.StartEvent_3.MessageEventDefinition_3;
				part MessageEventDefinition_3 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_2nV58KjCEeK_xvwrSf5u4w";
				}
			}
			part SequenceFlow_13 : SequenceFlow :> flowElements {
				attribute :>> id = "_gLpwAKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.StartEvent_3;
			}
			part StartEvent_4 : StartEvent :> flowElements {
				attribute :>> id = "_gsrZcKjCEeK_xvwrSf5u4w";
				attribute :>> isInterrupting = true;
				ref part :> outgoing = Process_1.SequenceFlow_20;
				ref part :> incoming = (Process_1.SequenceFlow_14, Process_1.SequenceFlow_17);
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				ref part :> eventDefinitions = Process_1.StartEvent_4.TimerEventDefinition_1;
				part TimerEventDefinition_1 : TimerEventDefinition :> eventDefinitions {
					attribute :>> id = "_2KgM8KjCEeK_xvwrSf5u4w";
				}
			}
			part SequenceFlow_14 : SequenceFlow :> flowElements {
				attribute :>> id = "_gssAgKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.StartEvent_4;
			}
			part EventBasedGateway_1 : EventBasedGateway :> flowElements {
				attribute :>> id = "_mKHSgKjCEeK_xvwrSf5u4w";
				ref part :> outgoing = (Process_1.SequenceFlow_16, Process_1.SequenceFlow_17, Process_1.SequenceFlow_18);
				ref part :> incoming = Process_1.SequenceFlow_15;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_15 : SequenceFlow :> flowElements {
				attribute :>> id = "_nVHtEKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.EventBasedGateway_1;
				ref part :> sourceRef = Process_1.ManualTask_6;
			}
			part SequenceFlow_16 : SequenceFlow :> flowElements {
				attribute :>> id = "_n03kIKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.StartEvent_2;
				ref part :> sourceRef = Process_1.EventBasedGateway_1;
			}
			part SequenceFlow_17 : SequenceFlow :> flowElements {
				attribute :>> id = "_oNSrMKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.StartEvent_4;
				ref part :> sourceRef = Process_1.EventBasedGateway_1;
			}
			part SequenceFlow_18 : SequenceFlow :> flowElements {
				attribute :>> id = "_onOOIKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.StartEvent_3;
				ref part :> sourceRef = Process_1.EventBasedGateway_1;
			}
			part ManualTask_7 : ManualTask :> flowElements {
				attribute :>> id = "_wHPC8KjCEeK_xvwrSf5u4w";
				attribute :>> name = "Request credit card information";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_23;
				ref part :> incoming = Process_1.SequenceFlow_19;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				ref part :> boundaryEventRefs = (Process_1.BoundaryEvent_1, Process_1.BoundaryEvent_4);
			}
			part SequenceFlow_19 : SequenceFlow :> flowElements {
				attribute :>> id = "_wHPqAKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ManualTask_7;
				ref part :> sourceRef = Process_1.StartEvent_2;
			}
			part ServiceTask_1 : ServiceTask :> flowElements {
				attribute :>> id = "_xgIIgKjCEeK_xvwrSf5u4w";
				attribute :>> name = "Notify customer to start again";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_26;
				ref part :> incoming = (Process_1.SequenceFlow_20, Process_1.SequenceFlow_24);
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				ref part :> boundaryEventRefs = Process_1.BoundaryEvent_2;
			}
			part SequenceFlow_20 : SequenceFlow :> flowElements {
				attribute :>> id = "_xgIvkKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ServiceTask_1;
				ref part :> sourceRef = Process_1.StartEvent_4;
			}
			part ScriptTask_1 : ScriptTask :> flowElements {
				attribute :>> id = "_zJLxAKjCEeK_xvwrSf5u4w";
				attribute :>> name = "Update  record customer";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> outgoing = Process_1.SequenceFlow_22;
				ref part :> incoming = (Process_1.SequenceFlow_21, Process_1.SequenceFlow_26);
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_21 : SequenceFlow :> flowElements {
				attribute :>> id = "_zJMYEKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ScriptTask_1;
				ref part :> sourceRef = Process_1.StartEvent_3;
			}
			part EndEvent_1 : EndEvent :> flowElements {
				attribute :>> id = "_4iFvYKjCEeK_xvwrSf5u4w";
				ref part :> incoming = Process_1.SequenceFlow_22;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
			}
			part SequenceFlow_22 : SequenceFlow :> flowElements {
				attribute :>> id = "_4iGWcKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.EndEvent_1;
				ref part :> sourceRef = Process_1.ScriptTask_1;
			}
			part StartEvent_5 : StartEvent :> flowElements {
				attribute :>> id = "_6bfhAKjCEeK_xvwrSf5u4w";
				attribute :>> isInterrupting = true;
				ref part :> incoming = Process_1.SequenceFlow_23;
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				ref part :> eventDefinitions = Process_1.StartEvent_5.LinkEventDefinition_1;
				part LinkEventDefinition_1 : LinkEventDefinition :> eventDefinitions {
					attribute :>> id = "_7pEucKjCEeK_xvwrSf5u4w";
				}
			}
			part SequenceFlow_23 : SequenceFlow :> flowElements {
				attribute :>> id = "_6bgIEKjCEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.StartEvent_5;
				ref part :> sourceRef = Process_1.ManualTask_7;
			}
			part EndEvent_2 : EndEvent :> flowElements {
				attribute :>> id = "__GfQgKjCEeK_xvwrSf5u4w";
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part BoundaryEvent_1 : BoundaryEvent :> flowElements {
				attribute :>> id = "_G5c2gKjDEeK_xvwrSf5u4w";
				attribute :>> cancelActivity = true;
				ref part :> outgoing = Process_1.SequenceFlow_24;
				ref part :> eventDefinitions = Process_1.BoundaryEvent_1.TimerEventDefinition_2;
				ref part :> attachedToRef = Process_1.ManualTask_7;
				part TimerEventDefinition_2 : TimerEventDefinition :> eventDefinitions {
					attribute :>> id = "_KEJ38KjDEeK_xvwrSf5u4w";
				}
			}
			part SequenceFlow_24 : SequenceFlow :> flowElements {
				attribute :>> id = "_NNqmkKjDEeK_xvwrSf5u4w";
				ref part :> targetRef = Process_1.ServiceTask_1;
				ref part :> sourceRef = Process_1.BoundaryEvent_1;
			}
			part BoundaryEvent_2 : BoundaryEvent :> flowElements {
				attribute :>> id = "_e_FH0KjFEeKByZYE3SKnNQ";
				attribute :>> cancelActivity = true;
				ref part :> eventDefinitions = Process_1.BoundaryEvent_2.MessageEventDefinition_4;
				ref part :> attachedToRef = Process_1.ServiceTask_1;
				part MessageEventDefinition_4 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_f9mlkKjFEeKByZYE3SKnNQ";
				}
			}
			part BoundaryEvent_3 : BoundaryEvent :> flowElements {
				attribute :>> id = "_mePoEKjFEeKByZYE3SKnNQ";
				attribute :>> cancelActivity = true;
				ref part :> eventDefinitions = Process_1.BoundaryEvent_3.MessageEventDefinition_5;
				ref part :> attachedToRef = Process_1.SendTask_1;
				part MessageEventDefinition_5 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_oUjXgKjHEeKfxP_htjREQQ";
				}
			}
			part BoundaryEvent_4 : BoundaryEvent :> flowElements {
				attribute :>> id = "_vjRoAKjHEeKfxP_htjREQQ";
				attribute :>> cancelActivity = true;
				ref part :> eventDefinitions = Process_1.BoundaryEvent_4.MessageEventDefinition_6;
				ref part :> attachedToRef = Process_1.ManualTask_7;
				part MessageEventDefinition_6 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_wZXigKjHEeKfxP_htjREQQ";
				}
			}
			part BoundaryEvent_5 : BoundaryEvent :> flowElements {
				attribute :>> id = "_7e0soKjKEeKSNoCYL5SGfQ";
				attribute :>> cancelActivity = true;
				ref part :> eventDefinitions = Process_1.BoundaryEvent_5.MessageEventDefinition_7;
				ref part :> attachedToRef = Process_1.Task_1;
				part MessageEventDefinition_7 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_8Yp3oKjKEeKSNoCYL5SGfQ";
				}
			}
			part BoundaryEvent_6 : BoundaryEvent :> flowElements {
				attribute :>> id = "_9F0foKjKEeKSNoCYL5SGfQ";
				attribute :>> cancelActivity = true;
				ref part :> eventDefinitions = Process_1.BoundaryEvent_6.MessageEventDefinition_8;
				ref part :> attachedToRef = Process_1.ManualTask_3;
				part MessageEventDefinition_8 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_91khkKjKEeKSNoCYL5SGfQ";
				}
			}
			part StartEvent_6 : StartEvent :> flowElements {
				attribute :>> id = "_5Jf-kKjLEeKSNoCYL5SGfQ";
				attribute :>> isInterrupting = true;
				ref part :> outgoing = Process_1.SequenceFlow_25;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
			}
			part Task_2 : Task :> flowElements {
				attribute :>> id = "_52XEkKjLEeKSNoCYL5SGfQ";
				attribute :>> name = "Request a trip";
				attribute :>> startQuantity = 1;
				attribute :>> completionQuantity = 1;
				ref part :> incoming = Process_1.SequenceFlow_25;
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
				ref part :> boundaryEventRefs = Process_1.BoundaryEvent_7;
			}
			part SequenceFlow_25 : SequenceFlow :> flowElements {
				attribute :>> id = "_52aH4KjLEeKSNoCYL5SGfQ";
				ref part :> targetRef = Process_1.Task_2;
				ref part :> sourceRef = Process_1.StartEvent_6;
			}
			part BoundaryEvent_7 : BoundaryEvent :> flowElements {
				attribute :>> id = "_9_kVoKjLEeKSNoCYL5SGfQ";
				attribute :>> cancelActivity = true;
				ref part :> eventDefinitions = Process_1.BoundaryEvent_7.MessageEventDefinition_9;
				ref part :> attachedToRef = Process_1.Task_2;
				part MessageEventDefinition_9 : MessageEventDefinition :> eventDefinitions {
					attribute :>> id = "_-ZlYIKjLEeKSNoCYL5SGfQ";
				}
			}
			part SequenceFlow_26 : SequenceFlow :> flowElements {
				attribute :>> id = "_LKKcwKjOEeKSNoCYL5SGfQ";
				ref part :> targetRef = Process_1.ScriptTask_1;
				ref part :> sourceRef = Process_1.ServiceTask_1;
			}
			part LaneSet_1 : LaneSet :> laneSets {
				attribute :>> id = "_bnUeoKjBEeK_xvwrSf5u4w";
				attribute :>> name = "Customer";
				ref part :> lanes = Process_1.LaneSet_1.Lane_1;
				part Lane_1 : Lane :> lanes {
					attribute :>> id = "_bnYJAKjBEeK_xvwrSf5u4w";
					attribute :>> name = "Travel booking";
					ref part :> flowNodeRefs = (Process_1.Task_1, Process_1.SendTask_1, Process_1.EndEvent_2, Process_1.StartEvent_6, Process_1.Task_2);
				}
			}
			part LaneSet_2 : LaneSet :> laneSets {
				attribute :>> id = "_gxuG8KjBEeK_xvwrSf5u4w";
				attribute :>> name = "Travel Agency";
				ref part :> lanes = Process_1.LaneSet_2.Lane_2;
				part Lane_2 : Lane :> lanes {
					attribute :>> id = "_gxuuAKjBEeK_xvwrSf5u4w";
					attribute :>> name = "Travel";
					ref part :> flowNodeRefs = (Process_1.StartEvent_1, Process_1.ParallelGateway_1, Process_1.ManualTask_1, Process_1.ManualTask_2, Process_1.ManualTask_3, Process_1.ParallelGateway_2, Process_1.ManualTask_4, Process_1.ManualTask_5, Process_1.ManualTask_6, Process_1.StartEvent_2, Process_1.StartEvent_3, Process_1.StartEvent_4, Process_1.EventBasedGateway_1, Process_1.ManualTask_7, Process_1.ServiceTask_1, Process_1.ScriptTask_1, Process_1.EndEvent_1, Process_1.StartEvent_5);
				}
			}
		}
		part Collaboration_1 : Collaboration :> rootElements {
			attribute :>> id = "_mzUyIKjDEeK_xvwrSf5u4w";
			ref part :> messageFlows = (Collaboration_1.MessageFlow_1, Collaboration_1.MessageFlow_2, Collaboration_1.MessageFlow_3, Collaboration_1.MessageFlow_4, Collaboration_1.MessageFlow_5, Collaboration_1.MessageFlow_6);
			part MessageFlow_1 : MessageFlow :> messageFlows {
				attribute :>> id = "_7LA_0KjKEeKSNoCYL5SGfQ";
				ref part :> sourceRef = Process_1.BoundaryEvent_6;
				ref part :> targetRef = Process_1.Task_1;
			}
			part MessageFlow_2 : MessageFlow :> messageFlows {
				attribute :>> id = "_CF0OwKjLEeKSNoCYL5SGfQ";
				ref part :> sourceRef = Process_1.BoundaryEvent_5;
				ref part :> targetRef = Process_1.ManualTask_3;
			}
			part MessageFlow_3 : MessageFlow :> messageFlows {
				attribute :>> id = "_Ns60wKjLEeKSNoCYL5SGfQ";
				ref part :> sourceRef = Process_1.BoundaryEvent_4;
				ref part :> targetRef = Process_1.SendTask_1;
			}
			part MessageFlow_4 : MessageFlow :> messageFlows {
				attribute :>> id = "_Oci64KjLEeKSNoCYL5SGfQ";
				ref part :> sourceRef = Process_1.BoundaryEvent_3;
				ref part :> targetRef = Process_1.ManualTask_7;
			}
			part MessageFlow_5 : MessageFlow :> messageFlows {
				attribute :>> id = "_YXW-MKjLEeKSNoCYL5SGfQ";
				ref part :> sourceRef = Process_1.BoundaryEvent_2;
				ref part :> targetRef = Process_1.EndEvent_2;
			}
			part MessageFlow_6 : MessageFlow :> messageFlows {
				attribute :>> id = "__TvTQKjLEeKSNoCYL5SGfQ";
				ref part :> sourceRef = Process_1.BoundaryEvent_7;
				ref part :> targetRef = Process_1.StartEvent_1;
			}
		}
	}
}

