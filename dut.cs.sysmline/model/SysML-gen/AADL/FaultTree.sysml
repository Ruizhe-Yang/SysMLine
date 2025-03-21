package FaultTree {
	private import ecore::*;
	item def FaultTree {
		attribute name : EString [1];
		attribute 'message' : EString [1];
		attribute faultTreeType : FaultTreeType [1];
		ref item root : Event [1];
		ref item instanceRoot : EObject [1];
		item events : Event [*];
	}
	item def Event {
		attribute name : EString [1];
		attribute 'message' : EString [1];
		ref item subEvents : Event [*];
		attribute k : EInt [1];
		attribute assignedProbability : EDouble [1];
		attribute computedProbability : EDouble [1];
		ref item relatedInstanceObject : EObject [1];
		ref item relatedErrorType : EObject [1];
		attribute referenceCount : EInt [1];
		attribute type : EventType [1];
		attribute subEventLogic : LogicOperation [1];
		ref item relatedEMV2Object : EObject [1];
		attribute sharedEvent : EBoolean [1];
	}
	enum def EventType {
		enum Basic;
		enum External;
		enum Undeveloped;
		enum Intermediate;
	}
	enum def LogicOperation {
		enum Or;
		enum And;
		enum Xor;
		enum PriorityAnd;
		enum kOf;
		enum kOrmore;
		enum kOrless;
	}
	enum def FaultTreeType {
		enum FaultTree;
		enum FaultTrace;
		enum CompositeParts;
		enum MinimalCutSet;
	}
}

