package pa {
	private import ecore::*;
	public import la::*;
	public import cs::*;
	public import epbs::*;
	public import information::*;
	public import deployment::*;
	public import fa::*;
	public import capellacommon::*;
	public import modellingcore::*;
	public import capellacore::*;
	public import emde::*;
	public import ctx::*;
	public import interaction::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import activity::*;
	public import behavior::*;
	public import oa::*;
	part def PhysicalArchitecturePkg :> BlockArchitecturePkg{
		part ownedPhysicalArchitecturePkgs : PhysicalArchitecturePkg [*];
		part ownedPhysicalArchitectures : PhysicalArchitecture [*];
	}
	part def PhysicalArchitecture :> ComponentArchitecture{
		part ownedPhysicalComponentPkg : PhysicalComponentPkg [1];
		ref part containedCapabilityRealizationPkg : CapabilityRealizationPkg [1];
		ref part containedPhysicalFunctionPkg : PhysicalFunctionPkg [1];
		part ownedDeployments : AbstractDeploymentLink [*];
		part ownedLogicalArchitectureRealizations : LogicalArchitectureRealization [*];
		ref part allocatedLogicalArchitectureRealizations : LogicalArchitectureRealization [*];
		ref part allocatedLogicalArchitectures : LogicalArchitecture [*];
		ref part allocatingEpbsArchitectures : EPBSArchitecture [*];
	}
	part def PhysicalFunction :> AbstractFunction{
		part ownedPhysicalFunctionPkgs : PhysicalFunctionPkg [*];
		ref part allocatingPhysicalComponents : PhysicalComponent [*];
		ref part realizedLogicalFunctions : LogicalFunction [*];
		ref part containedPhysicalFunctions : PhysicalFunction [*];
		ref part childrenPhysicalFunctions : PhysicalFunction [*];
	}
	part def PhysicalFunctionPkg :> FunctionPkg{
		part ownedPhysicalFunctions : PhysicalFunction [*];
		part ownedPhysicalFunctionPkgs : PhysicalFunctionPkg [*];
	}
	part def PhysicalComponent :> AbstractPhysicalArtifact, Component, CapabilityRealizationInvolvedElement, DeployableElement, DeploymentTarget{
		attribute kind : PhysicalComponentKind [1];
		attribute nature : PhysicalComponentNature [1];
		part ownedDeploymentLinks : AbstractDeploymentLink [*];
		part ownedPhysicalComponents : PhysicalComponent [*];
		part ownedPhysicalComponentPkgs : PhysicalComponentPkg [*];
		ref part logicalInterfaceRealizations : LogicalInterfaceRealization [*];
		ref part subPhysicalComponents : PhysicalComponent [*];
		ref part realizedLogicalComponents : LogicalComponent [*];
		ref part allocatedPhysicalFunctions : PhysicalFunction [*];
		ref part deployedPhysicalComponents : PhysicalComponent [*];
		ref part deployingPhysicalComponents : PhysicalComponent [*];
	}
	part def PhysicalComponentPkg :> ComponentPkg, AssociationPkg{
		part ownedPhysicalComponents : PhysicalComponent [*];
		part ownedPhysicalComponentPkgs : PhysicalComponentPkg [*];
		part ownedKeyParts : KeyPart [*];
		part ownedDeployments : AbstractDeploymentLink [*];
	}
	part def PhysicalNode :> PhysicalComponent{
		ref part subPhysicalNodes : PhysicalNode [*];
	}
	enum def PhysicalComponentKind {
		enum UNSET;
		enum HARDWARE;
		enum HARDWARE_COMPUTER;
		enum SOFTWARE;
		enum SOFTWARE_DEPLOYMENT_UNIT;
		enum SOFTWARE_EXECUTION_UNIT;
		enum SOFTWARE_APPLICATION;
		enum FIRMWARE;
		enum PERSON;
		enum FACILITIES;
		enum DATA;
		enum MATERIALS;
		enum SERVICES;
		enum PROCESSES;
	}
	part def LogicalArchitectureRealization :> ArchitectureAllocation;
	part def LogicalInterfaceRealization :> InterfaceAllocation;
	enum def PhysicalComponentNature {
		enum UNSET;
		enum BEHAVIOR;
		enum NODE;
	}
	package deployment {
		part def ComponentInstance :> AbstractPhysicalInstance, DeployableElement, DeploymentTarget{
			ref part portInstances : PortInstance [*];
			part ownedAbstractPhysicalInstances : AbstractPhysicalInstance [*];
			part ownedInstanceDeploymentLinks : InstanceDeploymentLink [*];
			ref part type : PhysicalComponent [1];
		}
		part def ConnectionInstance :> AbstractPhysicalInstance{
			ref part connectionEnds : PortInstance [*];
			ref part type : ComponentExchange [1];
		}
		part def DeploymentAspect :> Structure{
			part ownedConfigurations : DeploymentConfiguration [*];
			part ownedDeploymentAspects : DeploymentAspect [*];
		}
		part def DeploymentConfiguration :> NamedElement{
			part ownedDeploymentLinks : AbstractDeploymentLink [*];
			part ownedPhysicalInstances : AbstractPhysicalInstance [*];
		}
		part def InstanceDeploymentLink :> AbstractDeploymentLink;
		part def PartDeploymentLink :> AbstractDeploymentLink;
		abstract part def AbstractPhysicalInstance :> CapellaElement;
		part def PortInstance :> AbstractPhysicalInstance{
			ref part connections : ConnectionInstance [*];
			ref part component : ComponentInstance [1];
			ref part type : ComponentPort [1];
		}
		part def TypeDeploymentLink :> AbstractDeploymentLink;
	}
}

