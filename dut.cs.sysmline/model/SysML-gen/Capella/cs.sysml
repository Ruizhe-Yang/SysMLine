package cs {
	private import ecore::*;
	public import capellacommon::*;
	public import information::*;
	public import fa::*;
	public import file:/e:/gityang/sysmline/dut.cs.sysmline/org.polarsys.capella.common.data.def/model/modellingcore::*;
	public import epbs::*;
	public import capellacore::*;
	public import ctx::*;
	public import la::*;
	public import interaction::*;
	public import file:/e:/gityang/sysmline/dut.cs.sysmline/org.polarsys.capella.common.data.def/model/behavior::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import pa::*;
	public import file:/e:/gityang/sysmline/dut.cs.sysmline/org.polarsys.capella.common.data.def/model/activity::*;
	public import oa::*;
	public import deployment::*;
	abstract item def BlockArchitecturePkg :> ModellingArchitecturePkg;
	abstract item def BlockArchitecture :> AbstractFunctionalArchitecture{
		item ownedAbstractCapabilityPkg : AbstractCapabilityPkg [1];
		item ownedInterfacePkg : InterfacePkg [1];
		item ownedDataPkg : DataPkg [1];
		ref item provisionedArchitectureAllocations : ArchitectureAllocation [*];
		ref item provisioningArchitectureAllocations : ArchitectureAllocation [*];
		ref item allocatedArchitectures : BlockArchitecture [*];
		ref item allocatingArchitectures : BlockArchitecture [*];
		ref item system : Component [1];
	}
	abstract item def Block :> ModellingBlock, AbstractFunctionalBlock{
		item ownedAbstractCapabilityPkg : AbstractCapabilityPkg [1];
		item ownedInterfacePkg : InterfacePkg [1];
		item ownedDataPkg : DataPkg [1];
		item ownedStateMachines : StateMachine [*];
	}
	abstract item def ComponentArchitecture :> BlockArchitecture;
	abstract item def Component :> Block, Classifier, InterfaceAllocator, CommunicationLinkExchanger{
		attribute actor : EBoolean [1];
		attribute human : EBoolean [1];
		item ownedInterfaceUses : InterfaceUse [*];
		ref item usedInterfaceLinks : InterfaceUse [*];
		ref item usedInterfaces : Interface [*];
		item ownedInterfaceImplementations : InterfaceImplementation [*];
		ref item implementedInterfaceLinks : InterfaceImplementation [*];
		ref item implementedInterfaces : Interface [*];
		item ownedComponentRealizations : ComponentRealization [*];
		ref item realizedComponents : Component [*];
		ref item realizingComponents : Component [*];
		ref item providedInterfaces : Interface [*];
		ref item requiredInterfaces : Interface [*];
		ref item containedComponentPorts : ComponentPort [*];
		ref item containedParts : Part [*];
		ref item containedPhysicalPorts : PhysicalPort [*];
		item ownedPhysicalPath : PhysicalPath [*];
		item ownedPhysicalLinks : PhysicalLink [*];
		item ownedPhysicalLinkCategories : PhysicalLinkCategory [*];
		ref item representingParts : Part [*];
	}
	item def Part :> AbstractInstance, , DeployableElement, DeploymentTarget, AbstractPathInvolvedElement{
		ref item providedInterfaces : Interface [*];
		ref item requiredInterfaces : Interface [*];
		item ownedDeploymentLinks : AbstractDeploymentLink [*];
		ref item deployedParts : Part [*];
		ref item deployingParts : Part [*];
		item ownedAbstractType : AbstractType [1];
	}
	abstract item def ArchitectureAllocation :> Allocation{
		ref item allocatedArchitecture : BlockArchitecture [1];
		ref item allocatingArchitecture : BlockArchitecture [1];
	}
	item def ComponentRealization :> Allocation{
		ref item realizedComponent : Component [1];
		ref item realizingComponent : Component [1];
	}
	item def InterfacePkg :> MessageReferencePkg, AbstractDependenciesPkg, AbstractExchangeItemPkg{
		item ownedInterfaces : Interface [*];
		item ownedInterfacePkgs : InterfacePkg [*];
	}
	item def Interface :> GeneralClass, InterfaceAllocator{
		attribute mechanism : EString [1];
		attribute structural : EBoolean [1];
		ref item implementorComponents : Component [*];
		ref item userComponents : Component [*];
		ref item interfaceImplementations : InterfaceImplementation [*];
		ref item interfaceUses : InterfaceUse [*];
		ref item provisioningInterfaceAllocations : InterfaceAllocation [*];
		ref item allocatingInterfaces : Interface [*];
		ref item allocatingComponents : Component [*];
		ref item exchangeItems : ExchangeItem [*];
		item ownedExchangeItemAllocations : ExchangeItemAllocation [*];
		ref item requiringComponents : Component [*];
		ref item requiringComponentPorts : ComponentPort [*];
		ref item providingComponents : Component [*];
		ref item providingComponentPorts : ComponentPort [*];
		ref item realizingLogicalInterfaces : Interface [*];
		ref item realizedContextInterfaces : Interface [*];
		ref item realizingPhysicalInterfaces : Interface [*];
		ref item realizedLogicalInterfaces : Interface [*];
	}
	item def InterfaceImplementation :> Relationship{
		ref item interfaceImplementor : Component [1];
		ref item implementedInterface : Interface [1];
	}
	item def InterfaceUse :> Relationship{
		ref item interfaceUser : Component [1];
		ref item usedInterface : Interface [1];
	}
	abstract item def ProvidedInterfaceLink :> Relationship{
		ref item 'interface' : Interface [1];
	}
	abstract item def RequiredInterfaceLink :> Relationship{
		ref item 'interface' : Interface [1];
	}
	abstract item def InterfaceAllocation :> Allocation{
		ref item allocatedInterface : Interface [1];
		ref item allocatingInterfaceAllocator : InterfaceAllocator [1];
	}
	abstract item def InterfaceAllocator :> CapellaElement{
		item ownedInterfaceAllocations : InterfaceAllocation [*];
		ref item provisionedInterfaceAllocations : InterfaceAllocation [*];
		ref item allocatedInterfaces : Interface [*];
	}
	item def ExchangeItemAllocation :> Relationship, AbstractEventOperation, {
		attribute sendProtocol : CommunicationLinkProtocol [1];
		attribute receiveProtocol : CommunicationLinkProtocol [1];
		ref item allocatedItem : ExchangeItem [1];
		ref item allocatingInterface : Interface [1];
	}
	abstract item def DeployableElement :> NamedElement{
		ref item deployingLinks : AbstractDeploymentLink [*];
	}
	abstract item def DeploymentTarget :> NamedElement{
		ref item deploymentLinks : AbstractDeploymentLink [*];
	}
	abstract item def AbstractDeploymentLink :> Relationship{
		ref item deployedElement : DeployableElement [1];
		ref item location : DeploymentTarget [1];
	}
	abstract item def AbstractPathInvolvedElement :> InvolvedElement;
	abstract item def AbstractPhysicalArtifact :> CapellaElement{
		ref item allocatorConfigurationItems : ConfigurationItem [*];
	}
	abstract item def AbstractPhysicalLinkEnd :> CapellaElement{
		ref item involvedLinks : PhysicalLink [*];
	}
	abstract item def AbstractPhysicalPathLink :> ComponentExchangeAllocator;
	item def PhysicalLink :> AbstractPhysicalPathLink, AbstractPhysicalArtifact, AbstractPathInvolvedElement{
		ref item linkEnds : AbstractPhysicalLinkEnd [2];
		item ownedComponentExchangeFunctionalExchangeAllocations : ComponentExchangeFunctionalExchangeAllocation [*];
		item ownedPhysicalLinkEnds : PhysicalLinkEnd [*];
		item ownedPhysicalLinkRealizations : PhysicalLinkRealization [*];
		ref item categories : PhysicalLinkCategory [*];
		ref item sourcePhysicalPort : PhysicalPort [1];
		ref item targetPhysicalPort : PhysicalPort [1];
		ref item realizedPhysicalLinks : PhysicalLink [*];
		ref item realizingPhysicalLinks : PhysicalLink [*];
	}
	item def PhysicalLinkCategory :> NamedElement{
		ref item links : PhysicalLink [*];
	}
	item def PhysicalLinkEnd :> AbstractPhysicalLinkEnd{
		ref item port : PhysicalPort [1];
		ref item part : Part [1];
	}
	item def PhysicalLinkRealization :> Allocation;
	item def PhysicalPath :> NamedElement, ComponentExchangeAllocator, AbstractPathInvolvedElement, InvolverElement{
		ref item involvedLinks : AbstractPhysicalPathLink [*];
		item ownedPhysicalPathInvolvements : PhysicalPathInvolvement [*];
		ref item firstPhysicalPathInvolvements : PhysicalPathInvolvement [*];
		item ownedPhysicalPathRealizations : PhysicalPathRealization [*];
		ref item realizedPhysicalPaths : PhysicalPath [*];
		ref item realizingPhysicalPaths : PhysicalPath [*];
	}
	item def PhysicalPathInvolvement :> Involvement{
		ref item nextInvolvements : PhysicalPathInvolvement [*];
		ref item previousInvolvements : PhysicalPathInvolvement [*];
		ref item involvedElement : AbstractPathInvolvedElement [1];
		ref item involvedComponent : Component [1];
	}
	item def PhysicalPathReference :> PhysicalPathInvolvement{
		ref item referencedPhysicalPath : PhysicalPath [1];
	}
	item def PhysicalPathRealization :> Allocation;
	item def PhysicalPort :> Port, AbstractPhysicalArtifact, , AbstractPhysicalLinkEnd, Property{
		item ownedComponentPortAllocations : ComponentPortAllocation [*];
		item ownedPhysicalPortRealizations : PhysicalPortRealization [*];
		ref item allocatedComponentPorts : ComponentPort [*];
		ref item realizedPhysicalPorts : PhysicalPort [*];
		ref item realizingPhysicalPorts : PhysicalPort [*];
	}
	item def PhysicalPortRealization :> Allocation;
	abstract item def ComponentPkg :> Structure{
		item ownedParts : Part [*];
		item ownedComponentExchanges : ComponentExchange [*];
		item ownedComponentExchangeCategories : ComponentExchangeCategory [*];
		item ownedFunctionalLinks : ExchangeLink [*];
		item ownedFunctionalAllocations : ComponentFunctionalAllocation [*];
		item ownedComponentExchangeRealizations : ComponentExchangeRealization [*];
		item ownedPhysicalLinks : PhysicalLink [*];
		item ownedPhysicalLinkCategories : PhysicalLinkCategory [*];
		item ownedStateMachines : StateMachine [*];
	}
}

