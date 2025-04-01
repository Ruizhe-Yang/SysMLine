package petrinet_model {
	public import petrinet::*;
	part System_1 : System {
		ref part :> petrinets = (PetriNet_1, PetriNet_2);
		ref part :> petrinetrelationships = PetriNetRelationship_1;
		part PetriNet_1 : PetriNet :> petrinets {
			attribute :>> name = "Net1";
			ref part :> elements = (PetriNet_1.Transition_1, PetriNet_1.Transition_2, PetriNet_1.Transition_3, PetriNet_1.Place_1, PetriNet_1.Place_2, PetriNet_1.OutputArc_1, PetriNet_1.OutputArc_2, PetriNet_1.InputArc_1, PetriNet_1.InputArc_2);
			part Transition_1 : Transition :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "T1";
			}
			part Transition_2 : Transition :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "T2";
			}
			part Transition_3 : Transition :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "T3";
			}
			part Place_1 : Place :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "P1";
			}
			part Place_2 : Place :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "P2";
			}
			part OutputArc_1 : OutputArc :> elements {
				ref part :> 'to' = PetriNet_1.Place_1;
				ref part :> 'from' = PetriNet_1.Transition_1;
			}
			part OutputArc_2 : OutputArc :> elements {
				ref part :> 'to' = PetriNet_1.Place_2;
				ref part :> 'from' = PetriNet_1.Transition_2;
			}
			part InputArc_1 : InputArc :> elements {
				ref part :> 'to' = PetriNet_1.Transition_2;
				ref part :> 'from' = PetriNet_1.Place_1;
			}
			part InputArc_2 : InputArc :> elements {
				ref part :> 'to' = PetriNet_1.Transition_3;
				ref part :> 'from' = PetriNet_1.Place_2;
			}
		}
		part PetriNet_2 : PetriNet :> petrinets {
			attribute :>> name = "Net2";
			ref part :> elements = (PetriNet_2.Transition_4, PetriNet_2.Place_3, PetriNet_2.Place_4, PetriNet_2.OutputArc_3, PetriNet_2.InputArc_3, PetriNet_2.OutputArc_4);
			part Transition_4 : Transition :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "NT1";
			}
			part Place_3 : Place :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "NP1";
			}
			part Place_4 : Place :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "NP2";
			}
			part OutputArc_3 : OutputArc :> elements {
				ref part :> 'to' = PetriNet_2.Place_3;
				ref part :> 'from' = PetriNet_1.Transition_3;
			}
			part InputArc_3 : InputArc :> elements {
				ref part :> 'to' = PetriNet_2.Transition_4;
				ref part :> 'from' = PetriNet_2.Place_3;
			}
			part OutputArc_4 : OutputArc :> elements {
				ref part :> 'to' = PetriNet_2.Place_4;
				ref part :> 'from' = PetriNet_2.Transition_4;
			}
		}
		part PetriNetRelationship_1 : PetriNetRelationship :> petrinetrelationships {
			ref part :> 'from' = PetriNet_1;
			ref part :> 'to' = PetriNet_2;
		}
	}
}

