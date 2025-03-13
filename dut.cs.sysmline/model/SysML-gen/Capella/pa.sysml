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
	public import ctx::*;
	public import interaction::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import behavior::*;
	public import activity::*;
	public import oa::*;
	item def PhysicalArchitecturePkg :> BlockArchitecturePkg{
		item ownedPhysicalArchitecturePkgs : PhysicalArchitecturePkg [*];
		item ownedPhysicalArchitectures : PhysicalArchitecture [*];
	}
	item def PhysicalArchitecture :> ComponentArchitecture{
		item ownedPhysicalComponentPkg : PhysicalComponentPkg [1];
		ref item containedCapabilityRealizationPkg : CapabilityRealizationPkg [1];
		ref item containedPhysicalFunctionPkg : PhysicalFunctionPkg [1];
		item ownedDeployments : AbstractDeploymentLink [*];
		item ownedLogicalArchitectureRealizations : LogicalArchitectureRealization [*];
		ref item allocatedLogicalArchitectureRealizations : LogicalArchitectureRealization [*];
		ref item allocatedLogicalArchitectures : LogicalArchitecture [*];
		ref item allocatingEpbsArchitectures : EPBSArchitecture [*];
	}
	item def PhysicalFunction :> AbstractFunction{
		item ownedPhysicalFunctionPkgs : PhysicalFunctionPkg [*];
		ref item allocatingPhysicalComponents : PhysicalComponent [*];
		ref item realizedLogicalFunctions : LogicalFunction [*];
		ref item containedPhysicalFunctions : PhysicalFunction [*];
		ref item childrenPhysicalFunctions : PhysicalFunction [*];
	}
	item def PhysicalFunctionPkg :> FunctionPkg{
		item ownedPhysicalFunctions : PhysicalFunction [*];
		item ownedPhysicalFunctionPkgs : PhysicalFunctionPkg [*];
	}
	item def PhysicalComponent :> AbstractPhysicalArtifact, Component, CapabilityRealizationInvolvedElement, DeployableElement, DeploymentTarget{
		attribute kind : PhysicalComponentKind [1];
		attribute nature : PhysicalComponentNature [1];
		item ownedDeploymentLinks : AbstractDeploymentLink [*];
		item ownedPhysicalComponents : PhysicalComponent [*];
		item ownedPhysicalComponentPkgs : PhysicalComponentPkg [*];
		ref item logicalInterfaceRealizations : LogicalInterfaceRealization [*];
		ref item subPhysicalComponents : PhysicalComponent [*];
		ref item realizedLogicalComponents : LogicalComponent [*];
		ref item allocatedPhysicalFunctions : PhysicalFunction [*];
		ref item deployedPhysicalComponents : PhysicalComponent [*];
		ref item deployingPhysicalComponents : PhysicalComponent [*];
	}
	item def PhysicalComponentPkg :> ComponentPkg, AssociationPkg{
		item ownedPhysicalComponents : PhysicalComponent [*];
		item ownedPhysicalComponentPkgs : PhysicalComponentPkg [*];
		item ownedKeyParts : KeyPart [*];
		item ownedDeployments : AbstractDeploymentLink [*];
	}
	item def PhysicalNode :> PhysicalComponent{
		ref item subPhysicalNodes : PhysicalNode [*];
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
	item def LogicalArchitectureRealization :> ArchitectureAllocation;
	item def LogicalInterfaceRealization :> InterfaceAllocation;
	enum def PhysicalComponentNature {
		enum UNSET;
		enum BEHAVIOR;
		enum NODE;
	}
	package deployment {
		item def ComponentInstance :> AbstractPhysicalInstance, DeployableElement, DeploymentTarget{
			ref item portInstances : PortInstance [*];
			item ownedAbstractPhysicalInstances : AbstractPhysicalInstance [*];
			item ownedInstanceDeploymentLinks : InstanceDeploymentLink [*];
			ref item type : PhysicalComponent [1];
		}
		item def ConnectionInstance :> AbstractPhysicalInstance{
			ref item connectionEnds : PortInstance [*];
			ref item type : ComponentExchange [1];
		}
		item def DeploymentAspect :> Structure{
			item ownedConfigurations : DeploymentConfiguration [*];
			item ownedDeploymentAspects : DeploymentAspect [*];
		}
		item def DeploymentConfiguration :> NamedElement{
			item ownedDeploymentLinks : AbstractDeploymentLink [*];
			item ownedPhysicalInstances : AbstractPhysicalInstance [*];
		}
		item def InstanceDeploymentLink :> AbstractDeploymentLink;
		item def PartDeploymentLink :> AbstractDeploymentLink;
		abstract item def AbstractPhysicalInstance :> CapellaElement;
		item def PortInstance :> AbstractPhysicalInstance{
			ref item connections : ConnectionInstance [*];
			ref item component : ComponentInstance [1];
			ref item type : ComponentPort [1];
		}
		item def TypeDeploymentLink :> AbstractDeploymentLink;
	}
}

