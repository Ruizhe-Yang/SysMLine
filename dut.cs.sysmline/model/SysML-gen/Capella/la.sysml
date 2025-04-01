package la {
	private import ecore::*;
	public import ctx::*;
	public import pa::*;
	public import capellacommon::*;
	public import cs::*;
	public import information::*;
	public import fa::*;
	public import modellingcore::*;
	public import epbs::*;
	public import capellacore::*;
	public import emde::*;
	public import oa::*;
	public import deployment::*;
	public import interaction::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import activity::*;
	public import behavior::*;
	part def LogicalArchitecturePkg :> BlockArchitecturePkg{
		part ownedLogicalArchitectures : LogicalArchitecture [*];
	}
	part def LogicalArchitecture :> ComponentArchitecture{
		part ownedLogicalComponentPkg : LogicalComponentPkg [1];
		ref part containedCapabilityRealizationPkg : CapabilityRealizationPkg [1];
		ref part containedLogicalFunctionPkg : LogicalFunctionPkg [1];
		part ownedSystemAnalysisRealizations : SystemAnalysisRealization [*];
		ref part allocatedSystemAnalysisRealizations : SystemAnalysisRealization [*];
		ref part allocatedSystemAnalyses : SystemAnalysis [*];
		ref part allocatingPhysicalArchitectures : PhysicalArchitecture [*];
	}
	part def LogicalFunction :> AbstractFunction{
		part ownedLogicalFunctionPkgs : LogicalFunctionPkg [*];
		ref part allocatingLogicalComponents : LogicalComponent [*];
		ref part realizedSystemFunctions : SystemFunction [*];
		ref part realizingPhysicalFunctions : PhysicalFunction [*];
		ref part containedLogicalFunctions : LogicalFunction [*];
		ref part childrenLogicalFunctions : LogicalFunction [*];
	}
	part def LogicalFunctionPkg :> FunctionPkg{
		part ownedLogicalFunctions : LogicalFunction [*];
		part ownedLogicalFunctionPkgs : LogicalFunctionPkg [*];
	}
	part def LogicalComponent :> Component, CapabilityRealizationInvolvedElement{
		part ownedLogicalComponents : LogicalComponent [*];
		part ownedLogicalArchitectures : LogicalArchitecture [*];
		part ownedLogicalComponentPkgs : LogicalComponentPkg [*];
		ref part subLogicalComponents : LogicalComponent [*];
		ref part allocatedLogicalFunctions : LogicalFunction [*];
		ref part realizedSystemComponents : SystemComponent [*];
		ref part realizingPhysicalComponents : PhysicalComponent [*];
	}
	part def LogicalComponentPkg :> ComponentPkg{
		part ownedLogicalComponents : LogicalComponent [*];
		part ownedLogicalComponentPkgs : LogicalComponentPkg [*];
	}
	part def CapabilityRealization :> AbstractCapability{
		part ownedCapabilityRealizationInvolvements : CapabilityRealizationInvolvement [*];
		ref part involvedComponents : CapabilityRealizationInvolvedElement [*];
		ref part realizedCapabilities : Capability [*];
		ref part realizedCapabilityRealizations : CapabilityRealization [*];
		ref part realizingCapabilityRealizations : CapabilityRealization [*];
	}
	part def CapabilityRealizationPkg :> AbstractCapabilityPkg{
		part ownedCapabilityRealizations : CapabilityRealization [*];
		part ownedCapabilityRealizationPkgs : CapabilityRealizationPkg [*];
	}
	part def SystemAnalysisRealization :> ArchitectureAllocation;
	part def ContextInterfaceRealization :> InterfaceAllocation;
}

