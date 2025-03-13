package capellacommon {
	private import ecore::*;
	public import capellacore::*;
	public import modellingcore::*;
	public import la::*;
	public import fa::*;
	public import interaction::*;
	public import behavior::*;
	public import information::*;
	public import ctx::*;
	public import pa::*;
	public import cs::*;
	public import activity::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import oa::*;
	public import epbs::*;
	public import deployment::*;
	abstract item def AbstractCapabilityPkg :> Structure;
	item def GenericTrace :> Trace{
		item keyValuePairs : KeyValue [*];
		ref item source : TraceableElement [1];
		ref item target : TraceableElement [1];
	}
	item def TransfoLink :> GenericTrace;
	item def JustificationLink :> GenericTrace;
	item def CapabilityRealizationInvolvement :> Involvement{
		ref item involvedCapabilityRealizationInvolvedElement : CapabilityRealizationInvolvedElement [1];
	}
	abstract item def CapabilityRealizationInvolvedElement :> InvolvedElement{
		ref item capabilityRealizationInvolvements : CapabilityRealizationInvolvement [*];
		ref item involvingCapabilityRealizations : CapabilityRealization [*];
	}
	item def StateMachine :> CapellaElement, {
		item ownedRegions : Region [*];
		item ownedConnectionPoints : Pseudostate [*];
	}
	item def Region :> NamedElement{
		item ownedStates : AbstractState [*];
		item ownedTransitions : StateTransition [*];
		ref item involvedStates : AbstractState [*];
	}
	item def State :> AbstractState{
		item ownedRegions : Region [*];
		item ownedConnectionPoints : Pseudostate [*];
		ref item availableAbstractFunctions : AbstractFunction [*];
		ref item availableFunctionalChains : FunctionalChain [*];
		ref item availableAbstractCapabilities : AbstractCapability [*];
		ref item entry : AbstractEvent [*];
		ref item doActivity : AbstractEvent [*];
		ref item exit : AbstractEvent [*];
		item stateInvariant : AbstractConstraint [1];
	}
	item def Mode :> State;
	item def FinalState :> State;
	abstract item def AbstractState :> NamedElement, {
		item ownedAbstractStateRealizations : AbstractStateRealization [*];
		ref item realizedAbstractStates : AbstractState [*];
		ref item realizingAbstractStates : AbstractState [*];
		ref item outgoing : StateTransition [*];
		ref item incoming : StateTransition [*];
		ref item involverRegions : Region [*];
	}
	item def StateTransition :> NamedElement, Relationship{
		attribute kind : TransitionKind [1];
		attribute triggerDescription : EString [1];
		ref item guard : Constraint [1];
		ref item source : AbstractState [1];
		ref item target : AbstractState [1];
		ref item effect : AbstractEvent [*];
		ref item triggers : AbstractEvent [*];
		item ownedStateTransitionRealizations : StateTransitionRealization [*];
		ref item realizedStateTransitions : StateTransition [*];
		ref item realizingStateTransitions : StateTransition [*];
	}
	abstract item def Pseudostate :> AbstractState;
	item def InitialPseudoState :> Pseudostate;
	item def JoinPseudoState :> Pseudostate;
	item def ForkPseudoState :> Pseudostate;
	item def ChoicePseudoState :> Pseudostate;
	item def TerminatePseudoState :> Pseudostate;
	item def AbstractStateRealization :> Allocation{
		ref item realizedAbstractState : AbstractState [1];
		ref item realizingAbstractState : AbstractState [1];
	}
	item def StateTransitionRealization :> Allocation{
		ref item realizedStateTransition : StateTransition [1];
		ref item realizingStateTransition : StateTransition [1];
	}
	enum def TransitionKind {
		enum internal;
		enum local;
		enum external;
	}
	item def ShallowHistoryPseudoState :> Pseudostate;
	item def DeepHistoryPseudoState :> Pseudostate;
	item def EntryPointPseudoState :> Pseudostate;
	item def ExitPointPseudoState :> Pseudostate;
	item def StateEventRealization :> Allocation{
		ref item realizedEvent : StateEvent [1];
		ref item realizingEvent : StateEvent [1];
	}
	abstract item def StateEvent :> NamedElement, {
		ref item expression : Constraint [1];
		item ownedStateEventRealizations : StateEventRealization [*];
	}
	item def ChangeEvent :> StateEvent{
		attribute kind : ChangeEventKind [1];
	}
	item def TimeEvent :> StateEvent{
		attribute kind : TimeEventKind [1];
	}
	enum def TimeEventKind {
		enum AT;
		enum AFTER;
	}
	enum def ChangeEventKind {
		enum WHEN;
	}
}

