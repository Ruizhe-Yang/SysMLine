package petrinet {
	private import ecore::*;
	item def System {
		item petrinets : PetriNet [*];
		item petrinetrelationships : PetriNetRelationship [*];
	}
	item def PetriNet {
		item elements : Element [*];
		attribute name : EString [1];
	}
	item def PetriNetRelationship {
		ref item 'from' : PetriNet [1];
		ref item 'to' : PetriNet [1];
	}
	abstract item def Node :> Element{
		attribute minDelay : EDouble [1];
		attribute maxDelay : EDouble [1];
		attribute name : EString [1];
	}
	abstract item def Element;
	abstract item def Arc :> Element;
	item def Place :> Node;
	item def Transition :> Node;
	item def OutputArc :> Arc{
		ref item 'to' : Place [1];
		ref item 'from' : Transition [1];
	}
	item def InputArc :> Arc{
		ref item 'to' : Transition [1];
		ref item 'from' : Place [1];
	}
}

