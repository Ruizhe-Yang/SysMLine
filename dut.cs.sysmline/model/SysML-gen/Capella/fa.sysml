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
	abstract part def AbstractFunctionalArchitecture :> ModellingArchitecture{
		part ownedFunctionPkg : FunctionPkg [1];
		part ownedComponentExchanges : ComponentExchange [*];
		part ownedComponentExchangeCategories : ComponentExchangeCategory [*];
		part ownedFunctionalLinks : ExchangeLink [*];
		part ownedFunctionalAllocations : ComponentFunctionalAllocation [*];
		part ownedComponentExchangeRealizations : ComponentExchangeRealization [*];
	}
	abstract part def AbstractFunctionalBlock :> ModellingBlock{
		part ownedFunctionalAllocation : ComponentFunctionalAllocation [*];
		part ownedComponentExchanges : ComponentExchange [*];
		part ownedComponentExchangeCategories : ComponentExchangeCategory [*];
		ref part functionalAllocations : ComponentFunctionalAllocation [*];
		ref part allocatedFunctions : AbstractFunction [*];
		ref part inExchangeLinks : ExchangeLink [*];
		ref part outExchangeLinks : ExchangeLink [*];
	}
	abstract part def FunctionPkg :> Structure{
		part ownedFunctionalLinks : ExchangeLink [*];
		part ownedExchanges : FunctionalExchangeSpecification [*];
		part ownedExchangeSpecificationRealizations : ExchangeSpecificationRealization [*];
		part ownedCategories : ExchangeCategory [*];
		part ownedFunctionSpecifications : FunctionSpecification [*];
	}
	part def FunctionSpecification :> Namespace, AbstractActivity{
		ref part inExchangeLinks : ExchangeLink [*];
		ref part outExchangeLinks : ExchangeLink [*];
		part ownedFunctionPorts : FunctionPort [*];
		ref part subFunctionSpecifications : FunctionSpecification [*];
	}
	part def ExchangeCategory :> NamedElement{
		ref part exchanges : FunctionalExchange [*];
	}
	part def ExchangeLink :> NamedRelationship{
		ref part exchanges : ExchangeSpecification [*];
		ref part exchangeContainmentLinks : ExchangeContainment [*];
		part ownedExchangeContainments : ExchangeContainment [*];
		ref part sources : FunctionSpecification [*];
		ref part destinations : FunctionSpecification [*];
	}
	part def ExchangeContainment :> Relationship{
		ref part exchange : ExchangeSpecification [1];
		ref part link : ExchangeLink [1];
	}
	abstract part def ExchangeSpecification :> NamedElement, ActivityExchange{
		ref part containingLink : ExchangeLink [1];
		ref part link : ExchangeContainment [1];
		ref part outgoingExchangeSpecificationRealizations : ExchangeSpecificationRealization [*];
		ref part incomingExchangeSpecificationRealizations : ExchangeSpecificationRealization [*];
	}
	part def FunctionalExchangeSpecification :> ExchangeSpecification{
		ref part functionalExchanges : FunctionalExchange [*];
	}
	part def FunctionalChain :> NamedElement, InvolverElement, InvolvedElement{
		attribute kind : FunctionalChainKind [1];
		part ownedFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		part ownedFunctionalChainRealizations : FunctionalChainRealization [*];
		ref part involvedFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		ref part involvedFunctions : AbstractFunction [*];
		ref part involvedFunctionalExchanges : FunctionalExchange [*];
		ref part involvedElements : InvolvedElement [*];
		ref part enactedFunctions : AbstractFunction [*];
		ref part enactedFunctionalBlocks : AbstractFunctionalBlock [*];
		ref part availableInStates : State [*];
		ref part firstFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		ref part involvingCapabilities : Capability [*];
		ref part involvingCapabilityRealizations : CapabilityRealization [*];
		ref part realizedFunctionalChains : FunctionalChain [*];
		ref part realizingFunctionalChains : FunctionalChain [*];
		ref part preCondition : Constraint [1];
		ref part postCondition : Constraint [1];
		part ownedSequenceNodes : ControlNode [*];
		part ownedSequenceLinks : SequenceLink [*];
	}
	enum def FunctionalChainKind {
		enum SIMPLE;
		enum COMPOSITE;
		enum FRAGMENT;
	}
	abstract part def AbstractFunctionalChainContainer :> CapellaElement{
		part ownedFunctionalChains : FunctionalChain [*];
	}
	abstract part def FunctionalChainInvolvement :> Involvement{
		ref part nextFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		ref part previousFunctionalChainInvolvements : FunctionalChainInvolvement [*];
		ref part involvedElement : InvolvedElement [1];
	}
	part def FunctionalChainReference :> FunctionalChainInvolvement{
		ref part referencedFunctionalChain : FunctionalChain [1];
	}
	part def FunctionInputPort :> FunctionPort, InputPin{
		ref part incomingExchangeItems : ExchangeItem [*];
		ref part incomingFunctionalExchanges : FunctionalExchange [*];
	}
	part def FunctionOutputPort :> FunctionPort, OutputPin{
		ref part outgoingExchangeItems : ExchangeItem [*];
		ref part outgoingFunctionalExchanges : FunctionalExchange [*];
	}
	abstract part def AbstractFunctionAllocation :> Allocation;
	part def ComponentFunctionalAllocation :> AbstractFunctionAllocation{
		ref part function : AbstractFunction [1];
		ref part 'block' : AbstractFunctionalBlock [1];
	}
	part def FunctionalChainRealization :> Allocation;
	abstract part def ExchangeSpecificationRealization :> Allocation{
		ref part realizedExchangeSpecification : ExchangeSpecification [1];
		ref part realizingExchangeSpecification : ExchangeSpecification [1];
	}
	part def FunctionalExchangeRealization :> Allocation{
		ref part realizedFunctionalExchange : FunctionalExchange [1];
		ref part realizingFunctionalExchange : FunctionalExchange [1];
	}
	part def FunctionRealization :> AbstractFunctionAllocation{
		ref part allocatedFunction : AbstractFunction [1];
		ref part allocatingFunction : AbstractFunction [1];
	}
	part def FunctionalExchange :> NamedElement, Relationship, InvolvedElement, ObjectFlow, AbstractEvent, AbstractEventOperation{
		ref part exchangeSpecifications : FunctionalExchangeSpecification [*];
		ref part involvingFunctionalChains : FunctionalChain [*];
		ref part exchangedItems : ExchangeItem [*];
		ref part allocatingComponentExchanges : ComponentExchange [*];
		ref part incomingComponentExchangeFunctionalExchangeRealizations : ComponentExchangeFunctionalExchangeAllocation [*];
		ref part incomingFunctionalExchangeRealizations : FunctionalExchangeRealization [*];
		ref part outgoingFunctionalExchangeRealizations : FunctionalExchangeRealization [*];
		ref part categories : ExchangeCategory [*];
		part ownedFunctionalExchangeRealizations : FunctionalExchangeRealization [*];
		ref part sourceFunctionOutputPort : FunctionOutputPort [1];
		ref part targetFunctionInputPort : FunctionInputPort [1];
		ref part realizedFunctionalExchanges : FunctionalExchange [*];
		ref part realizingFunctionalExchanges : FunctionalExchange [*];
	}
	abstract part def AbstractFunction :> Namespace, InvolvedElement, AbstractInstance, AbstractFunctionalChainContainer, CallBehaviorAction, AbstractEvent{
		attribute kind : FunctionKind [1];
		attribute condition : EString [1];
		part ownedFunctions : AbstractFunction [*];
		part ownedFunctionRealizations : FunctionRealization [*];
		part ownedFunctionalExchanges : FunctionalExchange [*];
		ref part subFunctions : AbstractFunction [*];
		ref part outFunctionRealizations : FunctionRealization [*];
		ref part inFunctionRealizations : FunctionRealization [*];
		ref part componentFunctionalAllocations : ComponentFunctionalAllocation [*];
		ref part allocationBlocks : AbstractFunctionalBlock [*];
		ref part availableInStates : State [*];
		ref part involvingCapabilities : Capability [*];
		ref part involvingCapabilityRealizations : CapabilityRealization [*];
		ref part involvingFunctionalChains : FunctionalChain [*];
		ref part linkedStateMachine : StateMachine [1];
		ref part linkedFunctionSpecification : FunctionSpecification [1];
	}
	enum def FunctionKind {
		enum FUNCTION;
		enum DUPLICATE;
		enum GATHER;
		enum SELECT;
		enum SPLIT;
		enum ROUTE;
	}
	abstract part def FunctionPort :> Port, TypedElement, AbstractEvent{
		ref part representedComponentPort : ComponentPort [1];
		ref part allocatorComponentPorts : ComponentPort [*];
		ref part realizedFunctionPorts : FunctionPort [*];
		ref part realizingFunctionPorts : FunctionPort [*];
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
	part def ComponentExchange :> AbstractEvent, AbstractEventOperation, NamedElement, ExchangeSpecification{
		attribute kind : ComponentExchangeKind [1];
		attribute oriented : EBoolean [1];
		ref part allocatedFunctionalExchanges : FunctionalExchange [*];
		ref part incomingComponentExchangeRealizations : ComponentExchangeRealization [*];
		ref part outgoingComponentExchangeRealizations : ComponentExchangeRealization [*];
		ref part outgoingComponentExchangeFunctionalExchangeAllocations : ComponentExchangeFunctionalExchangeAllocation [*];
		part ownedComponentExchangeFunctionalExchangeAllocations : ComponentExchangeFunctionalExchangeAllocation [*];
		part ownedComponentExchangeRealizations : ComponentExchangeRealization [*];
		part ownedComponentExchangeEnds : ComponentExchangeEnd [*];
		ref part sourcePort : Port [1];
		ref part sourcePart : Part [1];
		ref part targetPort : Port [1];
		ref part targetPart : Part [1];
		ref part categories : ComponentExchangeCategory [*];
		ref part allocatorPhysicalLinks : PhysicalLink [*];
		ref part realizedComponentExchanges : ComponentExchange [*];
		ref part realizingComponentExchanges : ComponentExchange [*];
	}
	part def ComponentExchangeAllocation :> Allocation{
		ref part componentExchangeAllocated : ComponentExchange [1];
		ref part componentExchangeAllocator : ComponentExchangeAllocator [1];
	}
	abstract part def ComponentExchangeAllocator :> NamedElement{
		part ownedComponentExchangeAllocations : ComponentExchangeAllocation [*];
		ref part allocatedComponentExchanges : ComponentExchange [*];
	}
	part def ComponentExchangeCategory :> NamedElement{
		ref part exchanges : ComponentExchange [*];
	}
	part def ComponentExchangeEnd :> InformationsExchanger, CapellaElement{
		ref part 'port' : Port [1];
		ref part 'part' : Part [1];
	}
	part def ComponentExchangeFunctionalExchangeAllocation :> AbstractFunctionAllocation{
		ref part allocatedFunctionalExchange : FunctionalExchange [1];
		ref part allocatingComponentExchange : ComponentExchange [1];
	}
	part def ComponentExchangeRealization :> ExchangeSpecificationRealization{
		ref part allocatedComponentExchange : ComponentExchange [1];
		ref part allocatingComponentExchange : ComponentExchange [1];
	}
	part def ComponentPort :> Port, InformationsExchanger, Property{
		attribute orientation : OrientationPortKind [1];
		attribute kind : ComponentPortKind [1];
		ref part componentExchanges : ComponentExchange [*];
		ref part allocatedFunctionPorts : FunctionPort [*];
		ref part delegatedComponentPorts : ComponentPort [*];
		ref part delegatingComponentPorts : ComponentPort [*];
		ref part allocatingPhysicalPorts : PhysicalPort [*];
		ref part realizedComponentPorts : ComponentPort [*];
		ref part realizingComponentPorts : ComponentPort [*];
	}
	part def ComponentPortAllocation :> Allocation{
		part ownedComponentPortAllocationEnds : ComponentPortAllocationEnd [*];
		ref part allocatedPort : Port [1];
		ref part allocatingPort : Port [1];
	}
	part def ComponentPortAllocationEnd :> CapellaElement{
		ref part 'port' : Port [1];
		ref part 'part' : Part [1];
		ref part owningComponentPortAllocation : ComponentPortAllocation [1];
	}
	part def FunctionalChainInvolvementLink :> FunctionalChainInvolvement, ReferenceHierarchyContext{
		ref part exchangeContext : Constraint [1];
		ref part exchangedItems : ExchangeItem [*];
		ref part source : FunctionalChainInvolvementFunction [1];
		ref part target : FunctionalChainInvolvementFunction [1];
	}
	part def SequenceLink :> CapellaElement, ReferenceHierarchyContext{
		ref part condition : Constraint [1];
		ref part links : FunctionalChainInvolvementLink [*];
		ref part source : SequenceLinkEnd [1];
		ref part target : SequenceLinkEnd [1];
	}
	abstract part def SequenceLinkEnd :> CapellaElement;
	part def FunctionalChainInvolvementFunction :> FunctionalChainInvolvement, SequenceLinkEnd{
		ref part outgoingInvolvementLinks : FunctionalChainInvolvementLink [*];
		ref part incomingInvolvementLinks : FunctionalChainInvolvementLink [*];
	}
	part def ControlNode :> SequenceLinkEnd{
		attribute kind : ControlNodeKind [1];
	}
	enum def ControlNodeKind {
		enum OR;
		enum AND;
		enum ITERATE;
	}
	abstract part def ReferenceHierarchyContext {
		ref part sourceReferenceHierarchy : FunctionalChainReference [*];
		ref part targetReferenceHierarchy : FunctionalChainReference [*];
	}
}

