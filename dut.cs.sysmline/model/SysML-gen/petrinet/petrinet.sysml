package petrinet {
	private import ecore::*;
	part def System {
		part petrinets : PetriNet [*];
		part petrinetrelationships : PetriNetRelationship [*];
	}
	part def PetriNet {
		part elements : Element [*];
		attribute name : EString [1];
	}
	part def PetriNetRelationship {
		ref part 'from' : PetriNet [1];
		ref part 'to' : PetriNet [1];
	}
	abstract part def Node :> Element{
		attribute minDelay : EDouble [1];
		attribute maxDelay : EDouble [1];
		attribute name : EString [1];
	}
	abstract part def Element;
	abstract part def Arc :> Element;
	part def Place :> Node;
	part def Transition :> Node;
	part def OutputArc :> Arc{
		ref part 'to' : Place [1];
		ref part 'from' : Transition [1];
	}
	part def InputArc :> Arc{
		ref part 'to' : Transition [1];
		ref part 'from' : Place [1];
	}
}

