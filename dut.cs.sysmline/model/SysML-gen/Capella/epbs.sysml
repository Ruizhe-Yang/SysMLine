package epbs {
	private import ecore::*;
	public import la::*;
	public import pa::*;
	public import cs::*;
	public import capellacommon::*;
	public import information::*;
	public import fa::*;
	public import modellingcore::*;
	public import capellacore::*;
	public import emde::*;
	public import ctx::*;
	public import deployment::*;
	public import interaction::*;
	public import behavior::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import activity::*;
	public import oa::*;
	part def EPBSArchitecturePkg :> BlockArchitecturePkg{
		part ownedEPBSArchitectures : EPBSArchitecture [*];
	}
	part def EPBSArchitecture :> ComponentArchitecture{
		part ownedConfigurationItemPkg : ConfigurationItemPkg [1];
		ref part containedCapabilityRealizationPkg : CapabilityRealizationPkg [1];
		part ownedPhysicalArchitectureRealizations : PhysicalArchitectureRealization [*];
		ref part allocatedPhysicalArchitectureRealizations : PhysicalArchitectureRealization [*];
		ref part allocatedPhysicalArchitectures : PhysicalArchitecture [*];
	}
	part def ConfigurationItemPkg :> ComponentPkg{
		part ownedConfigurationItems : ConfigurationItem [*];
		part ownedConfigurationItemPkgs : ConfigurationItemPkg [*];
	}
	part def ConfigurationItem :> CapabilityRealizationInvolvedElement, Component{
		attribute itemIdentifier : EString [1];
		attribute kind : ConfigurationItemKind [1];
		part ownedConfigurationItems : ConfigurationItem [*];
		part ownedConfigurationItemPkgs : ConfigurationItemPkg [*];
		part ownedPhysicalArtifactRealizations : PhysicalArtifactRealization [*];
		ref part allocatedPhysicalArtifacts : AbstractPhysicalArtifact [*];
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
	part def PhysicalArchitectureRealization :> ArchitectureAllocation;
	part def PhysicalArtifactRealization :> Allocation{
		ref part realizedPhysicalArtifact : AbstractPhysicalArtifact [1];
		ref part realizingConfigurationItem : ConfigurationItem [1];
	}
}

