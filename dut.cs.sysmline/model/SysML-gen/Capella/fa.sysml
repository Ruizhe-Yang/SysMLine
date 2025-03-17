package fa {
	private import ecore::*;
	public import capellacore::*;
	public import capellacommon::*;
	public import ctx::*;
	public import la::*;
	public import information::*;
	public import cs::*;
	public import modellingcore::*;
	public import emde::*;
	public import activity::*;
	public import behavior::*;
	public import interaction::*;
	public import oa::*;
	public import pa::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import epbs::*;
	public import deployment::*;
	abstract item def AbstractFunctionalArchitecture :> ModellingArchitecture{
		item ownedFunctionPkg : FunctionPkg [1];
		item ownedComponentExchanges : ComponentExchange [*];
		item ownedComponentExchangeCategories : ComponentExchangeCategory [*];
		item ownedFunctionalLinks : ExchangeLink [*];
		item ownedFunctionalAllocations : ComponentFunctionalAllocation [*];
		item ownedComponentExchangeRealizations : ComponentExchangeRealization [*];
	}
	abstract item def AbstractFunctionalBlock :> ModellingBlock{
		item ownedFunctionalAllocation : ComponentFunctionalAllocation [*];
		item ownedComponentExchanges : ComponentExchange [*];
		item ownedComponentExchangeCategories : ComponentExchangeCategory [*];
		ref item functionalAllocations : ComponentFunctionalAllocation [*];
		ref item allocatedFunctions : AbstractFunction [*];
		ref item inExchangeLinks : ExchangeLink [*];
		ref item outExchangeLinks : ExchangeLink [*];
	}
	abstract item def FunctionPkg :> Structure{
		item ownedFunctionalLinks : ExchangeLink [*];
		item ownedExchanges : FunctionalExchangeSpecification [*];
		item ownedExchangeSpecificationRealizations : ExchangeSpecificationRealization [*];
		item ownedCategories : ExchangeCategory [*];
		item ownedFunctionSpecifications : FunctionSpecification [*];
	}
	item def FunctionSpecification :> Namespace, AbstractActivity{
		ref item inExchangeLinks : ExchangeLink [*];
		ref item outExchangeLinks : ExchangeLink [*];
		item ownedFunctionPorts : FunctionPort [*];
		ref item subFunctionSpecifications : FunctionSpecification [*];
	}
	item def ExchangeCategory :> NamedElement{
		ref item exchanges : FunctionalExchange [*];
	}
	item def ExchangeLink :> NamedRelationship{
		ref item exchanges : ExchangeSpecification [*];
		ref item exchangeContainmentLinks : ExchangeContainment [*];
		item ownedExchangeContainments : ExchangeContainment [*];
		ref item sources : FunctionSpecification [*];
		ref item destinations : FunctionSpecification [*];
	}
	item def ExchangeContainment :> Relationship{
		ref item exchange : ExchangeSpecification [1];
		ref item link : ExchangeLink [1];
	}
	abstract item def ExchangeSpecification :> NamedElement, ActivityExchange{
		ref item containingLink : ExchangeLink [1];
		ref item link : ExchangeContainment [1];
		ref item outgoingExchangeSpecificationRealizations : ExchangeSpecificationRealization [*];
		ref item incomingExchangeSpecificationRealizations : ExchangeSpecificationRealization [*];
	}
	item def FunctionalExchangeSpecification :> ExchangeSpecification{
		ref item functionalExchanges : FunctionalExchange [*];
	}
	item def FunctionalChain :> NamedElement, InvolverElement, InvolvedElement{
		attribute kind : FunctionalChainKind [1];
		item ownedFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		item ownedFunctionalChainRealizations : FunctionalChainRealization [*];
		ref item involvedFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		ref item involvedFunctions : AbstractFunction [*];
		ref item involvedFunctionalExchanges : FunctionalExchange [*];
		ref item involvedElements : InvolvedElement [*];
		ref item enactedFunctions : AbstractFunction [*];
		ref item enactedFunctionalBlocks : AbstractFunctionalBlock [*];
		ref item availableInStates : State [*];
		ref item firstFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		ref item involvingCapabilities : Capability [*];
		ref item involvingCapabilityRealizations : CapabilityRealization [*];
		ref item realizedFunctionalChains : FunctionalChain [*];
		ref item realizingFunctionalChains : FunctionalChain [*];
		ref item preCondition : Constraint [1];
		ref item postCondition : Constraint [1];
		item ownedSequenceNodes : ControlNode [*];
		item ownedSequenceLinks : SequenceLink [*];
	}
	enum def FunctionalChainKind {
		enum SIMPLE;
		enum COMPOSITE;
		enum FRAGMENT;
	}
	abstract item def AbstractFunctionalChainContainer :> CapellaElement{
		item ownedFunctionalChains : FunctionalChain [*];
	}
	abstract item def FunctionalChainInvolvement :> Involvement{
		ref item nextFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		ref item previousFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		ref item involvedElement : InvolvedElement [1];
	}
	item def FunctionalChainReference :> FunctionalChainInvolvement{
		ref item referencedFunctionalChain : FunctionalChain [1];
	}
	item def FunctionInputPort :> FunctionPort, InputPin{
		ref item incomingExchangeItems : ExchangeItem [*];
		ref item incomingFunctionalExchanges : FunctionalExchange [*];
	}
	item def FunctionOutputPort :> FunctionPort, OutputPin{
		ref item outgoingExchangeItems : ExchangeItem [*];
		ref item outgoingFunctionalExchanges : FunctionalExchange [*];
	}
	abstract item def AbstractFunctionAllocation :> Allocation;
	item def ComponentFunctionalAllocation :> AbstractFunctionAllocation{
		ref item function : AbstractFunction [1];
		ref item 'block' : AbstractFunctionalBlock [1];
	}
	item def FunctionalChainRealization :> Allocation;
	abstract item def ExchangeSpecificationRealization :> Allocation{
		ref item realizedExchangeSpecification : ExchangeSpecification [1];
		ref item realizingExchangeSpecification : ExchangeSpecification [1];
	}
	item def FunctionalExchangeRealization :> Allocation{
		ref item realizedFunctionalExchange : FunctionalExchange [1];
		ref item realizingFunctionalExchange : FunctionalExchange [1];
	}
	item def FunctionRealization :> AbstractFunctionAllocation{
		ref item allocatedFunction : AbstractFunction [1];
		ref item allocatingFunction : AbstractFunction [1];
	}
	item def FunctionalExchange :> NamedElement, Relationship, InvolvedElement, ObjectFlow, AbstractEvent, AbstractEventOperation{
		ref item exchangeSpecifications : FunctionalExchangeSpecification [*];
		ref item involvingFunctionalChains : FunctionalChain [*];
		ref item exchangedItems : ExchangeItem [*];
		ref item allocatingComponentExchanges : ComponentExchange [*];
		ref item incomingComponentExchangeFunctionalExchangeRealizations : ComponentExchangeFunctionalExchangeAllocation [*];
		ref item incomingFunctionalExchangeRealizations : FunctionalExchangeRealization [*];
		ref item outgoingFunctionalExchangeRealizations : FunctionalExchangeRealization [*];
		ref item categories : ExchangeCategory [*];
		item ownedFunctionalExchangeRealizations : FunctionalExchangeRealization [*];
		ref item sourceFunctionOutputPort : FunctionOutputPort [1];
		ref item targetFunctionInputPort : FunctionInputPort [1];
		ref item realizedFunctionalExchanges : FunctionalExchange [*];
		ref item realizingFunctionalExchanges : FunctionalExchange [*];
	}
	abstract item def AbstractFunction :> Namespace, InvolvedElement, AbstractInstance, AbstractFunctionalChainContainer, CallBehaviorAction, AbstractEvent{
		attribute kind : FunctionKind [1];
		attribute condition : EString [1];
		item ownedFunctions : AbstractFunction [*];
		item ownedFunctionRealizations : FunctionRealization [*];
		item ownedFunctionalExchanges : FunctionalExchange [*];
		ref item subFunctions : AbstractFunction [*];
		ref item outFunctionRealizations : FunctionRealization [*];
		ref item inFunctionRealizations : FunctionRealization [*];
		ref item componentFunctionalAllocations : ComponentFunctionalAllocation [*];
		ref item allocationBlocks : AbstractFunctionalBlock [*];
		ref item availableInStates : State [*];
		ref item involvingCapabilities : Capability [*];
		ref item involvingCapabilityRealizations : CapabilityRealization [*];
		ref item involvingFunctionalChains : FunctionalChain [*];
		ref item linkedStateMachine : StateMachine [1];
		ref item linkedFunctionSpecification : FunctionSpecification [1];
	}
	enum def FunctionKind {
		enum FUNCTION;
		enum DUPLICATE;
		enum GATHER;
		enum SELECT;
		enum SPLIT;
		enum ROUTE;
	}
	abstract item def FunctionPort :> Port, TypedElement, AbstractEvent{
		ref item representedComponentPort : ComponentPort [1];
		ref item allocatorComponentPorts : ComponentPort [*];
		ref item realizedFunctionPorts : FunctionPort [*];
		ref item realizingFunctionPorts : FunctionPort [*];
	}
	enum def ComponentExchangeKind {
		enum UNSET;
		enum DELEGATION;
		enum ASSEMBLY;
		enum FLOW;
	}
	enum def ComponentPortKind {
		enum STANDARD;
		enum FLOW;
	}
	enum def OrientationPortKind {
		enum UNSET;
		enum IN;
		enum OUT;
		enum INOUT;
	}
	item def ComponentExchange :> AbstractEvent, AbstractEventOperation, NamedElement, ExchangeSpecification{
		attribute kind : ComponentExchangeKind [1];
		attribute oriented : EBoolean [1];
		ref item allocatedFunctionalExchanges : FunctionalExchange [*];
		ref item incomingComponentExchangeRealizations : ComponentExchangeRealization [*];
		ref item outgoingComponentExchangeRealizations : ComponentExchangeRealization [*];
		ref item outgoingComponentExchangeFunctionalExchangeAllocations : ComponentExchangeFunctionalExchangeAllocation [*];
		item ownedComponentExchangeFunctionalExchangeAllocations : ComponentExchangeFunctionalExchangeAllocation [*];
		item ownedComponentExchangeRealizations : ComponentExchangeRealization [*];
		item ownedComponentExchangeEnds : ComponentExchangeEnd [*];
		ref item sourcePort : Port [1];
		ref item sourcePart : Part [1];
		ref item targetPort : Port [1];
		ref item targetPart : Part [1];
		ref item categories : ComponentExchangeCategory [*];
		ref item allocatorPhysicalLinks : PhysicalLink [*];
		ref item realizedComponentExchanges : ComponentExchange [*];
		ref item realizingComponentExchanges : ComponentExchange [*];
	}
	item def ComponentExchangeAllocation :> Allocation{
		ref item componentExchangeAllocated : ComponentExchange [1];
		ref item componentExchangeAllocator : ComponentExchangeAllocator [1];
	}
	abstract item def ComponentExchangeAllocator :> NamedElement{
		item ownedComponentExchangeAllocations : ComponentExchangeAllocation [*];
		ref item allocatedComponentExchanges : ComponentExchange [*];
	}
	item def ComponentExchangeCategory :> NamedElement{
		ref item exchanges : ComponentExchange [*];
	}
	item def ComponentExchangeEnd :> InformationsExchanger, CapellaElement{
		ref item 'port' : Port [1];
		ref item 'part' : Part [1];
	}
	item def ComponentExchangeFunctionalExchangeAllocation :> AbstractFunctionAllocation{
		ref item allocatedFunctionalExchange : FunctionalExchange [1];
		ref item allocatingComponentExchange : ComponentExchange [1];
	}
	item def ComponentExchangeRealization :> ExchangeSpecificationRealization{
		ref item allocatedComponentExchange : ComponentExchange [1];
		ref item allocatingComponentExchange : ComponentExchange [1];
	}
	item def ComponentPort :> Port, InformationsExchanger, Property{
		attribute orientation : OrientationPortKind [1];
		attribute kind : ComponentPortKind [1];
		ref item componentExchanges : ComponentExchange [*];
		ref item allocatedFunctionPorts : FunctionPort [*];
		ref item delegatedComponentPorts : ComponentPort [*];
		ref item delegatingComponentPorts : ComponentPort [*];
		ref item allocatingPhysicalPorts : PhysicalPort [*];
		ref item realizedComponentPorts : ComponentPort [*];
		ref item realizingComponentPorts : ComponentPort [*];
	}
	item def ComponentPortAllocation :> Allocation{
		item ownedComponentPortAllocationEnds : ComponentPortAllocationEnd [*];
		ref item allocatedPort : Port [1];
		ref item allocatingPort : Port [1];
	}
	item def ComponentPortAllocationEnd :> CapellaElement{
		ref item 'port' : Port [1];
		ref item 'part' : Part [1];
		ref item owningComponentPortAllocation : ComponentPortAllocation [1];
	}
	item def FunctionalChainInvolvementLink :> FunctionalChainInvolvement, ReferenceHierarchyContext{
		ref item exchangeContext : Constraint [1];
		ref item exchangedItems : ExchangeItem [*];
		ref item source : FunctionalChainInvolvementFunction [1];
		ref item target : FunctionalChainInvolvementFunction [1];
	}
	item def SequenceLink :> CapellaElement, ReferenceHierarchyContext{
		ref item condition : Constraint [1];
		ref item links : FunctionalChainInvolvementLink [*];
		ref item source : SequenceLinkEnd [1];
		ref item target : SequenceLinkEnd [1];
	}
	abstract item def SequenceLinkEnd :> CapellaElement;
	item def FunctionalChainInvolvementFunction :> FunctionalChainInvolvement, SequenceLinkEnd{
		ref item outgoingInvolvementLinks : FunctionalChainInvolvementLink [*];
		ref item incomingInvolvementLinks : FunctionalChainInvolvementLink [*];
	}
	item def ControlNode :> SequenceLinkEnd{
		attribute kind : ControlNodeKind [1];
	}
	enum def ControlNodeKind {
		enum OR;
		enum AND;
		enum ITERATE;
	}
	abstract item def ReferenceHierarchyContext {
		ref item sourceReferenceHierarchy : FunctionalChainReference [*];
		ref item targetReferenceHierarchy : FunctionalChainReference [*];
	}
}

