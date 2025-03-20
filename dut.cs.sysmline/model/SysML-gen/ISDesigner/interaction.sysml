package interaction {
	private import ecore::*;
	public import environment::*;
	public import metadatadef::*;
	public import technicalid::*;
	abstract item def NamedElement :> ObeoDSMObject{
		attribute name : EString [1];
	}
	item def Interaction :> NamedElement, Behaviour{
		item participants : Participant [*];
		item messages : Message [*];
		item executions : Execution [*];
		item stateInvariants : StateInvariant [*];
		item interactionUses : InteractionUse [*];
		item ends : End [*];
		item combinedFragments : CombinedFragment [*];
	}
	item def Participant :> NamedElement{
		ref item type : ObeoDSMObject [1];
	}
	abstract item def Message :> InteractionFragment;
	item def Execution :> InteractionFragment{
		ref item owner : Participant [1];
	}
	item def CreateParticipantMessage :> Message;
	item def DestroyParticipantMessage :> Message;
	item def ReturnMessage :> Message{
		ref item invocationMessage : Message [1];
	}
	item def StateInvariant :> InteractionFragment{
		ref item owner : Participant [1];
	}
	item def InteractionUse :> InteractionFragment{
		attribute type : EString [1];
		ref item interaction : Interaction [1];
		ref item coveredParticipants : Participant [1..*];
	}
	item def End :> NamedElement{
		ref item context : Participant [1];
		ref item owner : InteractionFragment [1];
	}
	abstract item def InteractionFragment :> NamedElement{
		ref item startingEnd : End [1];
		ref item finishingEnd : End [1];
	}
	item def CombinedFragment :> InteractionFragment{
		attribute operator : EString [1];
		ref item coveredParticipants : Participant [*];
		item ownedOperands : Operand [*];
	}
	item def Operand :> InteractionFragment;
	item def CallMessage :> Message;
	item def CompoundEnd :> End{
		ref item otherOwner : Message [1];
	}
}

