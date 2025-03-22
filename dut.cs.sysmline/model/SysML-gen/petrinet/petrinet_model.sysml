package petrinet_model {
	public import petrinet::*;
	item System_1 : System {
		ref item :> petrinets = (PetriNet_1, PetriNet_2);
		ref item :> petrinetrelationships = PetriNetRelationship_1;
		item PetriNet_1 : PetriNet :> petrinets {
			attribute :>> name = "Net1";
			ref item :> elements = (PetriNet_1.Transition_1, PetriNet_1.Transition_2, PetriNet_1.Transition_3, PetriNet_1.Place_1, PetriNet_1.Place_2, PetriNet_1.OutputArc_1, PetriNet_1.OutputArc_2, PetriNet_1.InputArc_1, PetriNet_1.InputArc_2);
			item Transition_1 : Transition :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "T1";
			}
			item Transition_2 : Transition :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "T2";
			}
			item Transition_3 : Transition :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "T3";
			}
			item Place_1 : Place :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "P1";
			}
			item Place_2 : Place :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "P2";
			}
			item OutputArc_1 : OutputArc :> elements {
				ref item :> 'to' = PetriNet_1.Place_1;
				ref item :> 'from' = PetriNet_1.Transition_1;
			}
			item OutputArc_2 : OutputArc :> elements {
				ref item :> 'to' = PetriNet_1.Place_2;
				ref item :> 'from' = PetriNet_1.Transition_2;
			}
			item InputArc_1 : InputArc :> elements {
				ref item :> 'to' = PetriNet_1.Transition_2;
				ref item :> 'from' = PetriNet_1.Place_1;
			}
			item InputArc_2 : InputArc :> elements {
				ref item :> 'to' = PetriNet_1.Transition_3;
				ref item :> 'from' = PetriNet_1.Place_2;
			}
		}
		item PetriNet_2 : PetriNet :> petrinets {
			attribute :>> name = "Net2";
			ref item :> elements = (PetriNet_2.Transition_4, PetriNet_2.Place_3, PetriNet_2.Place_4, PetriNet_2.OutputArc_3, PetriNet_2.InputArc_3, PetriNet_2.OutputArc_4);
			item Transition_4 : Transition :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "NT1";
			}
			item Place_3 : Place :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "NP1";
			}
			item Place_4 : Place :> elements {
				attribute :>> minDelay = 0.0;
				attribute :>> maxDelay = 0.0;
				attribute :>> name = "NP2";
			}
			item OutputArc_3 : OutputArc :> elements {
				ref item :> 'to' = PetriNet_2.Place_3;
				ref item :> 'from' = PetriNet_1.Transition_3;
			}
			item InputArc_3 : InputArc :> elements {
				ref item :> 'to' = PetriNet_2.Transition_4;
				ref item :> 'from' = PetriNet_2.Place_3;
			}
			item OutputArc_4 : OutputArc :> elements {
				ref item :> 'to' = PetriNet_2.Place_4;
				ref item :> 'from' = PetriNet_2.Transition_4;
			}
		}
		item PetriNetRelationship_1 : PetriNetRelationship :> petrinetrelationships {
			ref item :> 'from' = PetriNet_1;
			ref item :> 'to' = PetriNet_2;
		}
	}
}

