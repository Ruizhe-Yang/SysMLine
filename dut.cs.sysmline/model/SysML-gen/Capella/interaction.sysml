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
	part def SequenceMessage :> NamedElement{
		attribute kind : MessageKind [1];
		ref part exchangeContext : Constraint [1];
		ref part sendingEnd : MessageEnd [1];
		ref part receivingEnd : MessageEnd [1];
		ref part invokedOperation : AbstractEventOperation [1];
		ref part exchangedItems : ExchangeItem [*];
		ref part sendingPart : Part [1];
		ref part receivingPart : Part [1];
		ref part sendingFunction : AbstractFunction [1];
		ref part receivingFunction : AbstractFunction [1];
		part ownedSequenceMessageValuations : SequenceMessageValuation [*];
	}
	part def Scenario :> Namespace, AbstractBehavior{
		attribute kind : ScenarioKind [1];
		attribute merged : EBoolean [1];
		ref part preCondition : Constraint [1];
		ref part postCondition : Constraint [1];
		part ownedInstanceRoles : InstanceRole [*];
		part ownedMessages : SequenceMessage [*];
		part ownedInteractionFragments : InteractionFragment [*];
		part ownedTimeLapses : TimeLapse [*];
		part ownedEvents : Event [*];
		part ownedFormalGates : Gate [*];
		part ownedScenarioRealization : ScenarioRealization [*];
		part ownedConstraintDurations : ConstraintDuration [*];
		ref part containedFunctions : AbstractFunction [*];
		ref part containedParts : Part [*];
		ref part referencedScenarios : Scenario [*];
		ref part realizedScenarios : Scenario [*];
		ref part realizingScenarios : Scenario [*];
	}
	part def MessageEnd :> AbstractEnd{
		ref part 'message' : SequenceMessage [1];
	}
	part def Execution :> TimeLapse{
		ref part covered : InstanceRole [1];
	}
	part def ExecutionEnd :> AbstractEnd{
		ref part execution : Execution [1];
	}
	part def CreationEvent :> Event;
	part def DestructionEvent :> Event;
	part def ExecutionEvent :> Event;
	part def InstanceRole :> NamedElement{
		ref part abstractEnds : AbstractEnd [*];
		ref part representedInstance : AbstractInstance [1];
	}
	abstract part def AbstractEnd :> InteractionFragment{
		ref part 'event' : Event [1];
		ref part covered : InstanceRole [1];
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
	abstract part def Event :> NamedElement, AbstractEvent;
	part def EventReceiptOperation :> Event{
		ref part operation : AbstractEventOperation [1];
	}
	part def EventSentOperation :> Event{
		ref part operation : AbstractEventOperation [1];
	}
	part def MergeLink :> Trace;
	part def RefinementLink :> Trace;
	part def AbstractCapabilityRealization :> Allocation{
		ref part realizedCapability : AbstractCapability [1];
		ref part realizingCapability : AbstractCapability [1];
	}
	abstract part def AbstractCapability :> Structure, InvolverElement, AbstractFunctionalChainContainer{
		ref part preCondition : Constraint [1];
		ref part postCondition : Constraint [1];
		part ownedScenarios : Scenario [*];
		ref part incomingCapabilityAllocation : AbstractCapabilityRealization [*];
		ref part outgoingCapabilityAllocation : AbstractCapabilityRealization [*];
		part extends : AbstractCapabilityExtend [*];
		ref part extending : AbstractCapabilityExtend [*];
		part abstractCapabilityExtensionPoints : AbstractCapabilityExtensionPoint [*];
		part superGeneralizations : AbstractCapabilityGeneralization [*];
		ref part subGeneralizations : AbstractCapabilityGeneralization [*];
		part includes : AbstractCapabilityInclude [*];
		ref part including : AbstractCapabilityInclude [*];
		ref part super : AbstractCapability [*];
		ref part sub : AbstractCapability [*];
		ref part includedAbstractCapabilities : AbstractCapability [*];
		ref part includingAbstractCapabilities : AbstractCapability [*];
		ref part extendedAbstractCapabilities : AbstractCapability [*];
		ref part extendingAbstractCapabilities : AbstractCapability [*];
		part ownedFunctionalChainAbstractCapabilityInvolvements : FunctionalChainAbstractCapabilityInvolvement [*];
		part ownedAbstractFunctionAbstractCapabilityInvolvements : AbstractFunctionAbstractCapabilityInvolvement [*];
		ref part availableInStates : State [*];
		part ownedAbstractCapabilityRealizations : AbstractCapabilityRealization [*];
		ref part involvedAbstractFunctions : AbstractFunction [*];
		ref part involvedFunctionalChains : FunctionalChain [*];
	}
	part def AbstractCapabilityExtend :> Relationship{
		ref part extended : AbstractCapability [1];
		ref part extension : AbstractCapability [1];
		ref part extensionLocation : AbstractCapabilityExtensionPoint [1];
	}
	part def AbstractCapabilityExtensionPoint :> NamedRelationship{
		ref part abstractCapability : AbstractCapability [1];
		ref part extendLinks : AbstractCapabilityExtend [*];
	}
	part def AbstractCapabilityGeneralization :> Relationship{
		ref part super : AbstractCapability [1];
		ref part sub : AbstractCapability [1];
	}
	part def AbstractCapabilityInclude :> Relationship{
		ref part included : AbstractCapability [1];
		ref part inclusion : AbstractCapability [1];
	}
	enum def ScenarioKind {
		enum UNSET;
		enum INTERFACE;
		enum DATA_FLOW;
		enum INTERACTION;
		enum FUNCTIONAL;
	}
	abstract part def InteractionFragment :> NamedElement{
		ref part coveredInstanceRoles : InstanceRole [1..*];
	}
	part def InteractionState :> InteractionFragment{
		ref part relatedAbstractState : AbstractState [1];
		ref part relatedAbstractFunction : AbstractFunction [1];
		ref part covered : InstanceRole [1];
	}
	part def InteractionUse :> AbstractFragment{
		ref part referencedScenario : Scenario [1];
		ref part actualGates : Gate [*];
	}
	part def CombinedFragment :> AbstractFragment{
		attribute operator : InteractionOperatorKind [1];
		ref part referencedOperands : InteractionOperand [*];
		ref part expressionGates : Gate [*];
	}
	part def Gate :> MessageEnd;
	part def InteractionOperand :> InteractionFragment{
		ref part referencedInteractionFragments : InteractionFragment [*];
		ref part guard : Constraint [1];
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
	abstract part def TimeLapse :> NamedElement{
		ref part start : InteractionFragment [1];
		ref part finish : InteractionFragment [1];
	}
	abstract part def AbstractFragment :> TimeLapse{
		part ownedGates : Gate [*];
	}
	part def FragmentEnd :> InteractionFragment{
		ref part abstractFragment : AbstractFragment [1];
	}
	part def FunctionalChainAbstractCapabilityInvolvement :> Involvement{
		ref part capability : AbstractCapability [1];
		ref part functionalChain : FunctionalChain [1];
	}
	part def AbstractFunctionAbstractCapabilityInvolvement :> Involvement{
		ref part capability : AbstractCapability [1];
		ref part function : AbstractFunction [1];
	}
	part def ScenarioRealization :> Allocation{
		ref part realizedScenario : Scenario [1];
		ref part realizingScenario : Scenario [1];
	}
	part def StateFragment :> TimeLapse{
		ref part relatedAbstractState : AbstractState [1];
		ref part relatedAbstractFunction : AbstractFunction [1];
	}
	part def ArmTimerEvent :> Event;
	part def CancelTimerEvent :> Event;
	part def ConstraintDuration :> NamedElement{
		attribute duration : EString [1];
		ref part start : InteractionFragment [1];
		ref part finish : InteractionFragment [1];
	}
	part def SequenceMessageValuation :> CapellaElement{
		ref part exchangeItemElement : ExchangeItemElement [1];
		ref part 'value' : ValueSpecification [1];
	}
}

