package scaffold {
	private import ecore::*;
	item def ScaffoldInfo {
		ref item leftObject : EObject [1];
		ref item rightObject : EObject [1];
		ref item leftToRightAdditionalObjects : EObject [*];
		ref item rightToLeftAdditionalObjects : EObject [*];
		item traceabilityInfos : TraceabilityInfo [*];
	}
	enum def ScaffoldType {
		enum EntityToMld;
		enum MldToEntity;
		enum MpdToMld;
		enum MldToMpd;
	}
	item def TraceabilityInfo {
		ref item left : EObject [1];
		ref item right : EObject [1];
	}
	item def EObjectToEObjectMap {
		ref item key : EObject [1];
		ref item 'value' : EObject [1];
	}
}

