package cs {
	private import ecore::*;
	public import capellacommon::*;
	public import information::*;
	public import fa::*;
	public import modellingcore::*;
	public import epbs::*;
	public import capellacore::*;
	public import emde::*;
	public import ctx::*;
	public import la::*;
	public import interaction::*;
	public import behavior::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import pa::*;
	public import activity::*;
	public import oa::*;
	public import deployment::*;
	abstract part def BlockArchitecturePkg :> ModellingArchitecturePkg;
	abstract part def BlockArchitecture :> AbstractFunctionalArchitecture{
		part ownedAbstractCapabilityPkg : AbstractCapabilityPkg [1];
		part ownedInterfacePkg : InterfacePkg [1];
		part ownedDataPkg : DataPkg [1];
		ref part provisionedArchitectureAllocations : ArchitectureAllocation [*];
		ref part provisioningArchitectureAllocations : ArchitectureAllocation [*];
		ref part allocatedArchitectures : BlockArchitecture [*];
		ref part allocatingArchitectures : BlockArchitecture [*];
		ref part system : Component [1];
	}
	abstract part def Block :> ModellingBlock, AbstractFunctionalBlock{
		part ownedAbstractCapabilityPkg : AbstractCapabilityPkg [1];
		part ownedInterfacePkg : InterfacePkg [1];
		part ownedDataPkg : DataPkg [1];
		part ownedStateMachines : StateMachine [*];
	}
	abstract part def ComponentArchitecture :> BlockArchitecture;
	abstract part def Component :> Block, Classifier, InterfaceAllocator, CommunicationLinkExchanger{
		attribute 'actor' : EBoolean [1];
		attribute human : EBoolean [1];
		part ownedInterfaceUses : InterfaceUse [*];
		ref part usedInterfaceLinks : InterfaceUse [*];
		ref part usedInterfaces : Interface [*];
		part ownedInterfaceImplementations : InterfaceImplementation [*];
		ref part implementedInterfaceLinks : InterfaceImplementation [*];
		ref part implementedInterfaces : Interface [*];
		part ownedComponentRealizations : ComponentRealization [*];
		ref part realizedComponents : Component [*];
		ref part realizingComponents : Component [*];
		ref part providedInterfaces : Interface [*];
		ref part requiredInterfaces : Interface [*];
		ref part containedComponentPorts : ComponentPort [*];
		ref part containedParts : Part [*];
		ref part containedPhysicalPorts : PhysicalPort [*];
		part ownedPhysicalPath : PhysicalPath [*];
		part ownedPhysicalLinks : PhysicalLink [*];
		part ownedPhysicalLinkCategories : PhysicalLinkCategory [*];
		ref part representingParts : Part [*];
	}
	part def Part :> AbstractInstance, InformationsExchanger, DeployableElement, DeploymentTarget, AbstractPathInvolvedElement{
		ref part providedInterfaces : Interface [*];
		ref part requiredInterfaces : Interface [*];
		part ownedDeploymentLinks : AbstractDeploymentLink [*];
		ref part deployedParts : Part [*];
		ref part deployingParts : Part [*];
		part ownedAbstractType : AbstractType [1];
	}
	abstract part def ArchitectureAllocation :> Allocation{
		ref part allocatedArchitecture : BlockArchitecture [1];
		ref part allocatingArchitecture : BlockArchitecture [1];
	}
	part def ComponentRealization :> Allocation{
		ref part realizedComponent : Component [1];
		ref part realizingComponent : Component [1];
	}
	part def InterfacePkg :> MessageReferencePkg, AbstractDependenciesPkg, AbstractExchangeItemPkg{
		part ownedInterfaces : Interface [*];
		part ownedInterfacePkgs : InterfacePkg [*];
	}
	part def Interface :> GeneralClass, InterfaceAllocator{
		attribute mechanism : EString [1];
		attribute structural : EBoolean [1];
		ref part implementorComponents : Component [*];
		ref part userComponents : Component [*];
		ref part interfaceImplementations : InterfaceImplementation [*];
		ref part interfaceUses : InterfaceUse [*];
		ref part provisioningInterfaceAllocations : InterfaceAllocation [*];
		ref part allocatingInterfaces : Interface [*];
		ref part allocatingComponents : Component [*];
		ref part exchangeItems : ExchangeItem [*];
		part ownedExchangeItemAllocations : ExchangeItemAllocation [*];
		ref part requiringComponents : Component [*];
		ref part requiringComponentPorts : ComponentPort [*];
		ref part providingComponents : Component [*];
		ref part providingComponentPorts : ComponentPort [*];
		ref part realizingLogicalInterfaces : Interface [*];
		ref part realizedContextInterfaces : Interface [*];
		ref part realizingPhysicalInterfaces : Interface [*];
		ref part realizedLogicalInterfaces : Interface [*];
	}
	part def InterfaceImplementation :> Relationship{
		ref part interfaceImplementor : Component [1];
		ref part implementedInterface : Interface [1];
	}
	part def InterfaceUse :> Relationship{
		ref part interfaceUser : Component [1];
		ref part usedInterface : Interface [1];
	}
	abstract part def ProvidedInterfaceLink :> Relationship{
		ref part 'interface' : Interface [1];
	}
	abstract part def RequiredInterfaceLink :> Relationship{
		ref part 'interface' : Interface [1];
	}
	abstract part def InterfaceAllocation :> Allocation{
		ref part allocatedInterface : Interface [1];
		ref part allocatingInterfaceAllocator : InterfaceAllocator [1];
	}
	abstract part def InterfaceAllocator :> CapellaElement{
		part ownedInterfaceAllocations : InterfaceAllocation [*];
		ref part provisionedInterfaceAllocations : InterfaceAllocation [*];
		ref part allocatedInterfaces : Interface [*];
	}
	part def ExchangeItemAllocation :> Relationship, AbstractEventOperation, FinalizableElement{
		attribute sendProtocol : CommunicationLinkProtocol [1];
		attribute receiveProtocol : CommunicationLinkProtocol [1];
		ref part allocatedItem : ExchangeItem [1];
		ref part allocatingInterface : Interface [1];
	}
	abstract part def DeployableElement :> NamedElement{
		ref part deployingLinks : AbstractDeploymentLink [*];
	}
	abstract part def DeploymentTarget :> NamedElement{
		ref part deploymentLinks : AbstractDeploymentLink [*];
	}
	abstract part def AbstractDeploymentLink :> Relationship{
		ref part deployedElement : DeployableElement [1];
		ref part location : DeploymentTarget [1];
	}
	abstract part def AbstractPathInvolvedElement :> InvolvedElement;
	abstract part def AbstractPhysicalArtifact :> CapellaElement{
		ref part allocatorConfigurationItems : ConfigurationItem [*];
	}
	abstract part def AbstractPhysicalLinkEnd :> CapellaElement{
		ref part involvedLinks : PhysicalLink [*];
	}
	abstract part def AbstractPhysicalPathLink :> ComponentExchangeAllocator;
	part def PhysicalLink :> AbstractPhysicalPathLink, AbstractPhysicalArtifact, AbstractPathInvolvedElement{
		ref part linkEnds : AbstractPhysicalLinkEnd [2];
		part ownedComponentExchangeFunctionalExchangeAllocations : ComponentExchangeFunctionalExchangeAllocation [*];
		part ownedPhysicalLinkEnds : PhysicalLinkEnd [*];
		part ownedPhysicalLinkRealizations : PhysicalLinkRealization [*];
		ref part categories : PhysicalLinkCategory [*];
		ref part sourcePhysicalPort : PhysicalPort [1];
		ref part targetPhysicalPort : PhysicalPort [1];
		ref part realizedPhysicalLinks : PhysicalLink [*];
		ref part realizingPhysicalLinks : PhysicalLink [*];
	}
	part def PhysicalLinkCategory :> NamedElement{
		ref part links : PhysicalLink [*];
	}
	part def PhysicalLinkEnd :> AbstractPhysicalLinkEnd{
		ref part 'port' : PhysicalPort [1];
		ref part 'part' : Part [1];
	}
	part def PhysicalLinkRealization :> Allocation;
	part def PhysicalPath :> NamedElement, ComponentExchangeAllocator, AbstractPathInvolvedElement, InvolverElement{
		ref part involvedLinks : AbstractPhysicalPathLink [*];
		part ownedPhysicalPathInvolvements : PhysicalPathInvolvement [*];
		ref part firstPhysicalPathInvolvements : PhysicalPathInvolvement [*];
		part ownedPhysicalPathRealizations : PhysicalPathRealization [*];
		ref part realizedPhysicalPaths : PhysicalPath [*];
		ref part realizingPhysicalPaths : PhysicalPath [*];
	}
	part def PhysicalPathInvolvement :> Involvement{
		ref part nextInvolvements : PhysicalPathInvolvement [*];
		ref part previousInvolvements : PhysicalPathInvolvement [*];
		ref part involvedElement : AbstractPathInvolvedElement [1];
		ref part involvedComponent : Component [1];
	}
	part def PhysicalPathReference :> PhysicalPathInvolvement{
		ref part referencedPhysicalPath : PhysicalPath [1];
	}
	part def PhysicalPathRealization :> Allocation;
	part def PhysicalPort :> Port, AbstractPhysicalArtifact, InformationsExchanger, AbstractPhysicalLinkEnd, Property{
		part ownedComponentPortAllocations : ComponentPortAllocation [*];
		part ownedPhysicalPortRealizations : PhysicalPortRealization [*];
		ref part allocatedComponentPorts : ComponentPort [*];
		ref part realizedPhysicalPorts : PhysicalPort [*];
		ref part realizingPhysicalPorts : PhysicalPort [*];
	}
	part def PhysicalPortRealization :> Allocation;
	abstract part def ComponentPkg :> Structure{
		part ownedParts : Part [*];
		part ownedComponentExchanges : ComponentExchange [*];
		part ownedComponentExchangeCategories : ComponentExchangeCategory [*];
		part ownedFunctionalLinks : ExchangeLink [*];
		part ownedFunctionalAllocations : ComponentFunctionalAllocation [*];
		part ownedComponentExchangeRealizations : ComponentExchangeRealization [*];
		part ownedPhysicalLinks : PhysicalLink [*];
		part ownedPhysicalLinkCategories : PhysicalLinkCategory [*];
		part ownedStateMachines : StateMachine [*];
	}
}

