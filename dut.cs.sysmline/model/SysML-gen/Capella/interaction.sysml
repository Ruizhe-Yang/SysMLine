package interaction {
	private import ecore::*;
	public import capellacore::*;
	public import information::*;
	public import cs::*;
	public import fa::*;
	public import capellacommon::*;
	public import modellingcore::*;
	public import emde::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import epbs::*;
	public import ctx::*;
	public import la::*;
	public import behavior::*;
	public import activity::*;
	public import pa::*;
	public import oa::*;
	item def SequenceMessage :> NamedElement{
		attribute kind : MessageKind [1];
		ref item exchangeContext : Constraint [1];
		ref item sendingEnd : MessageEnd [1];
		ref item receivingEnd : MessageEnd [1];
		ref item invokedOperation : AbstractEventOperation [1];
		ref item exchangedItems : ExchangeItem [*];
		ref item sendingPart : Part [1];
		ref item receivingPart : Part [1];
		ref item sendingFunction : AbstractFunction [1];
		ref item receivingFunction : AbstractFunction [1];
		item ownedSequenceMessageValuations : SequenceMessageValuation [*];
	}
	item def Scenario :> Namespace, AbstractBehavior{
		attribute kind : ScenarioKind [1];
		attribute merged : EBoolean [1];
		ref item preCondition : Constraint [1];
		ref item postCondition : Constraint [1];
		item ownedInstanceRoles : InstanceRole [*];
		item ownedMessages : SequenceMessage [*];
		item ownedInteractionFragments : InteractionFragment [*];
		item ownedTimeLapses : TimeLapse [*];
		item ownedEvents : Event [*];
		item ownedFormalGates : Gate [*];
		item ownedScenarioRealization : ScenarioRealization [*];
		item ownedConstraintDurations : ConstraintDuration [*];
		ref item containedFunctions : AbstractFunction [*];
		ref item containedParts : Part [*];
		ref item referencedScenarios : Scenario [*];
		ref item realizedScenarios : Scenario [*];
		ref item realizingScenarios : Scenario [*];
	}
	item def MessageEnd :> AbstractEnd{
		ref item 'message' : SequenceMessage [1];
	}
	item def Execution :> TimeLapse{
		ref item covered : InstanceRole [1];
	}
	item def ExecutionEnd :> AbstractEnd{
		ref item execution : Execution [1];
	}
	item def CreationEvent :> Event;
	item def DestructionEvent :> Event;
	item def ExecutionEvent :> Event;
	item def InstanceRole :> NamedElement{
		ref item abstractEnds : AbstractEnd [*];
		ref item representedInstance : AbstractInstance [1];
	}
	abstract item def AbstractEnd :> InteractionFragment{
		ref item 'event' : Event [1];
		ref item covered : InstanceRole [1];
	}
	enum def MessageKind {
		enum UNSET;
		enum ASYNCHRONOUS_CALL;
		enum SYNCHRONOUS_CALL;
		enum REPLY;
		enum DELETE;
		enum CREATE;
		enum TIMER;
	}
	abstract item def Event :> NamedElement, AbstractEvent;
	item def EventReceiptOperation :> Event{
		ref item operation : AbstractEventOperation [1];
	}
	item def EventSentOperation :> Event{
		ref item operation : AbstractEventOperation [1];
	}
	item def MergeLink :> Trace;
	item def RefinementLink :> Trace;
	item def AbstractCapabilityRealization :> Allocation{
		ref item realizedCapability : AbstractCapability [1];
		ref item realizingCapability : AbstractCapability [1];
	}
	abstract item def AbstractCapability :> Structure, InvolverElement, AbstractFunctionalChainContainer{
		ref item preCondition : Constraint [1];
		ref item postCondition : Constraint [1];
		item ownedScenarios : Scenario [*];
		ref item incomingCapabilityAllocation : AbstractCapabilityRealization [*];
		ref item outgoingCapabilityAllocation : AbstractCapabilityRealization [*];
		item extends : AbstractCapabilityExtend [*];
		ref item extending : AbstractCapabilityExtend [*];
		item abstractCapabilityExtensionPoints : AbstractCapabilityExtensionPoint [*];
		item superGeneralizations : AbstractCapabilityGeneralization [*];
		ref item subGeneralizations : AbstractCapabilityGeneralization [*];
		item includes : AbstractCapabilityInclude [*];
		ref item including : AbstractCapabilityInclude [*];
		ref item super : AbstractCapability [*];
		ref item sub : AbstractCapability [*];
		ref item includedAbstractCapabilities : AbstractCapability [*];
		ref item includingAbstractCapabilities : AbstractCapability [*];
		ref item extendedAbstractCapabilities : AbstractCapability [*];
		ref item extendingAbstractCapabilities : AbstractCapability [*];
		item ownedFunctionalChainAbstractCapabilityInvolvements : FunctionalChainAbstractCapabilityInvolvement [*];
		item ownedAbstractFunctionAbstractCapabilityInvolvements : AbstractFunctionAbstractCapabilityInvolvement [*];
		ref item availableInStates : State [*];
		item ownedAbstractCapabilityRealizations : AbstractCapabilityRealization [*];
		ref item involvedAbstractFunctions : AbstractFunction [*];
		ref item involvedFunctionalChains : FunctionalChain [*];
	}
	item def AbstractCapabilityExtend :> Relationship{
		ref item extended : AbstractCapability [1];
		ref item extension : AbstractCapability [1];
		ref item extensionLocation : AbstractCapabilityExtensionPoint [1];
	}
	item def AbstractCapabilityExtensionPoint :> NamedRelationship{
		ref item abstractCapability : AbstractCapability [1];
		ref item extendLinks : AbstractCapabilityExtend [*];
	}
	item def AbstractCapabilityGeneralization :> Relationship{
		ref item super : AbstractCapability [1];
		ref item sub : AbstractCapability [1];
	}
	item def AbstractCapabilityInclude :> Relationship{
		ref item included : AbstractCapability [1];
		ref item inclusion : AbstractCapability [1];
	}
	enum def ScenarioKind {
		enum UNSET;
		enum INTERFACE;
		enum DATA_FLOW;
		enum INTERACTION;
		enum FUNCTIONAL;
	}
	abstract item def InteractionFragment :> NamedElement{
		ref item coveredInstanceRoles : InstanceRole [1..*];
	}
	item def InteractionState :> InteractionFragment{
		ref item relatedAbstractState : AbstractState [1];
		ref item relatedAbstractFunction : AbstractFunction [1];
		ref item covered : InstanceRole [1];
	}
	item def InteractionUse :> AbstractFragment{
		ref item referencedScenario : Scenario [1];
		ref item actualGates : Gate [*];
	}
	item def CombinedFragment :> AbstractFragment{
		attribute operator : InteractionOperatorKind [1];
		ref item referencedOperands : InteractionOperand [*];
		ref item expressionGates : Gate [*];
	}
	item def Gate :> MessageEnd;
	item def InteractionOperand :> InteractionFragment{
		ref item referencedInteractionFragments : InteractionFragment [*];
		ref item guard : Constraint [1];
	}
	enum def InteractionOperatorKind {
		enum UNSET;
		enum ALT;
		enum OPT;
		enum PAR;
		enum LOOP;
		enum CRITICAL;
		enum NEG;
		enum ASSERT;
		enum STRICT;
		enum SEQ;
		enum IGNORE;
		enum CONSIDER;
	}
	abstract item def TimeLapse :> NamedElement{
		ref item start : InteractionFragment [1];
		ref item finish : InteractionFragment [1];
	}
	abstract item def AbstractFragment :> TimeLapse{
		item ownedGates : Gate [*];
	}
	item def FragmentEnd :> InteractionFragment{
		ref item abstractFragment : AbstractFragment [1];
	}
	item def FunctionalChainAbstractCapabilityInvolvement :> Involvement{
		ref item capability : AbstractCapability [1];
		ref item functionalChain : FunctionalChain [1];
	}
	item def AbstractFunctionAbstractCapabilityInvolvement :> Involvement{
		ref item capability : AbstractCapability [1];
		ref item function : AbstractFunction [1];
	}
	item def ScenarioRealization :> Allocation{
		ref item realizedScenario : Scenario [1];
		ref item realizingScenario : Scenario [1];
	}
	item def StateFragment :> TimeLapse{
		ref item relatedAbstractState : AbstractState [1];
		ref item relatedAbstractFunction : AbstractFunction [1];
	}
	item def ArmTimerEvent :> Event;
	item def CancelTimerEvent :> Event;
	item def ConstraintDuration :> NamedElement{
		attribute duration : EString [1];
		ref item start : InteractionFragment [1];
		ref item finish : InteractionFragment [1];
	}
	item def SequenceMessageValuation :> CapellaElement{
		ref item exchangeItemElement : ExchangeItemElement [1];
		ref item 'value' : ValueSpecification [1];
	}
}

