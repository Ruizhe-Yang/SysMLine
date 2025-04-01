package capellacommon {
	private import ecore::*;
	public import capellacore::*;
	public import modellingcore::*;
	public import la::*;
	public import fa::*;
	public import interaction::*;
	public import behavior::*;
	public import information::*;
	public import emde::*;
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
	abstract part def AbstractCapabilityPkg :> Structure;
	part def GenericTrace :> Trace{
		part keyValuePairs : KeyValue [*];
		ref part source : TraceableElement [1];
		ref part target : TraceableElement [1];
	}
	part def TransfoLink :> GenericTrace;
	part def JustificationLink :> GenericTrace;
	part def CapabilityRealizationInvolvement :> Involvement{
		ref part involvedCapabilityRealizationInvolvedElement : CapabilityRealizationInvolvedElement [1];
	}
	abstract part def CapabilityRealizationInvolvedElement :> InvolvedElement{
		ref part capabilityRealizationInvolvements : CapabilityRealizationInvolvement [*];
		ref part involvingCapabilityRealizations : CapabilityRealization [*];
	}
	part def StateMachine :> CapellaElement, AbstractBehavior{
		part ownedRegions : Region [*];
		part ownedConnectionPoints : Pseudostate [*];
	}
	part def Region :> NamedElement{
		part ownedStates : AbstractState [*];
		part ownedTransitions : StateTransition [*];
		ref part involvedStates : AbstractState [*];
	}
	part def State :> AbstractState{
		part ownedRegions : Region [*];
		part ownedConnectionPoints : Pseudostate [*];
		ref part availableAbstractFunctions : AbstractFunction [*];
		ref part availableFunctionalChains : FunctionalChain [*];
		ref part availableAbstractCapabilities : AbstractCapability [*];
		ref part 'entry' : AbstractEvent [*];
		ref part doActivity : AbstractEvent [*];
		ref part 'exit' : AbstractEvent [*];
		part stateInvariant : AbstractConstraint [1];
	}
	part def Mode :> State;
	part def FinalState :> State;
	abstract part def AbstractState :> NamedElement, IState{
		part ownedAbstractStateRealizations : AbstractStateRealization [*];
		ref part realizedAbstractStates : AbstractState [*];
		ref part realizingAbstractStates : AbstractState [*];
		ref part outgoing : StateTransition [*];
		ref part incoming : StateTransition [*];
		ref part involverRegions : Region [*];
	}
	part def StateTransition :> NamedElement, Relationship{
		attribute kind : TransitionKind [1];
		attribute triggerDescription : EString [1];
		ref part guard : Constraint [1];
		ref part source : AbstractState [1];
		ref part target : AbstractState [1];
		ref part effect : AbstractEvent [*];
		ref part triggers : AbstractEvent [*];
		part ownedStateTransitionRealizations : StateTransitionRealization [*];
		ref part realizedStateTransitions : StateTransition [*];
		ref part realizingStateTransitions : StateTransition [*];
	}
	abstract part def Pseudostate :> AbstractState;
	part def InitialPseudoState :> Pseudostate;
	part def JoinPseudoState :> Pseudostate;
	part def ForkPseudoState :> Pseudostate;
	part def ChoicePseudoState :> Pseudostate;
	part def TerminatePseudoState :> Pseudostate;
	part def AbstractStateRealization :> Allocation{
		ref part realizedAbstractState : AbstractState [1];
		ref part realizingAbstractState : AbstractState [1];
	}
	part def StateTransitionRealization :> Allocation{
		ref part realizedStateTransition : StateTransition [1];
		ref part realizingStateTransition : StateTransition [1];
	}
	enum def TransitionKind {
		enum internal;
		enum local;
		enum external;
	}
	part def ShallowHistoryPseudoState :> Pseudostate;
	part def DeepHistoryPseudoState :> Pseudostate;
	part def EntryPointPseudoState :> Pseudostate;
	part def ExitPointPseudoState :> Pseudostate;
	part def StateEventRealization :> Allocation{
		ref part realizedEvent : StateEvent [1];
		ref part realizingEvent : StateEvent [1];
	}
	abstract part def StateEvent :> NamedElement, AbstractEvent{
		ref part expression : Constraint [1];
		part ownedStateEventRealizations : StateEventRealization [*];
	}
	part def ChangeEvent :> StateEvent{
		attribute kind : ChangeEventKind [1];
	}
	part def TimeEvent :> StateEvent{
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

