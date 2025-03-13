package epbs {
	private import ecore::*;
	public import la::*;
	public import pa::*;
	public import cs::*;
	public import capellacommon::*;
	public import information::*;
	public import fa::*;
	public import file:/e:/gityang/sysmline/dut.cs.sysmline/org.polarsys.capella.common.data.def/model/modellingcore::*;
	public import capellacore::*;
	public import ctx::*;
	public import deployment::*;
	public import interaction::*;
	public import file:/e:/gityang/sysmline/dut.cs.sysmline/org.polarsys.capella.common.data.def/model/behavior::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import file:/e:/gityang/sysmline/dut.cs.sysmline/org.polarsys.capella.common.data.def/model/activity::*;
	public import oa::*;
	item def EPBSArchitecturePkg :> BlockArchitecturePkg{
		item ownedEPBSArchitectures : EPBSArchitecture [*];
	}
	item def EPBSArchitecture :> ComponentArchitecture{
		item ownedConfigurationItemPkg : ConfigurationItemPkg [1];
		ref item containedCapabilityRealizationPkg : CapabilityRealizationPkg [1];
		item ownedPhysicalArchitectureRealizations : PhysicalArchitectureRealization [*];
		ref item allocatedPhysicalArchitectureRealizations : PhysicalArchitectureRealization [*];
		ref item allocatedPhysicalArchitectures : PhysicalArchitecture [*];
	}
	item def ConfigurationItemPkg :> ComponentPkg{
		item ownedConfigurationItems : ConfigurationItem [*];
		item ownedConfigurationItemPkgs : ConfigurationItemPkg [*];
	}
	item def ConfigurationItem :> CapabilityRealizationInvolvedElement, Component{
		attribute itemIdentifier : EString [1];
		attribute kind : ConfigurationItemKind [1];
		item ownedConfigurationItems : ConfigurationItem [*];
		item ownedConfigurationItemPkgs : ConfigurationItemPkg [*];
		item ownedPhysicalArtifactRealizations : PhysicalArtifactRealization [*];
		ref item allocatedPhysicalArtifacts : AbstractPhysicalArtifact [*];
	}
	enum def ConfigurationItemKind {
		enum Unset;
		enum COTSCI;
		enum CSCI;
		enum HWCI;
		enum InterfaceCI;
		enum NDICI;
		enum PrimeItemCI;
		enum SystemCI;
	}
	item def PhysicalArchitectureRealization :> ArchitectureAllocation;
	item def PhysicalArtifactRealization :> Allocation{
		ref item realizedPhysicalArtifact : AbstractPhysicalArtifact [1];
		ref item realizingConfigurationItem : ConfigurationItem [1];
	}
}

