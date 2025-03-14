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
	public import oa::*;
	public import deployment::*;
	public import interaction::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import behavior::*;
	public import activity::*;
	item def LogicalArchitecturePkg :> BlockArchitecturePkg{
		item ownedLogicalArchitectures : LogicalArchitecture [*];
	}
	item def LogicalArchitecture :> ComponentArchitecture{
		item ownedLogicalComponentPkg : LogicalComponentPkg [1];
		ref item containedCapabilityRealizationPkg : CapabilityRealizationPkg [1];
		ref item containedLogicalFunctionPkg : LogicalFunctionPkg [1];
		item ownedSystemAnalysisRealizations : SystemAnalysisRealization [*];
		ref item allocatedSystemAnalysisRealizations : SystemAnalysisRealization [*];
		ref item allocatedSystemAnalyses : SystemAnalysis [*];
		ref item allocatingPhysicalArchitectures : PhysicalArchitecture [*];
	}
	item def LogicalFunction :> AbstractFunction{
		item ownedLogicalFunctionPkgs : LogicalFunctionPkg [*];
		ref item allocatingLogicalComponents : LogicalComponent [*];
		ref item realizedSystemFunctions : SystemFunction [*];
		ref item realizingPhysicalFunctions : PhysicalFunction [*];
		ref item containedLogicalFunctions : LogicalFunction [*];
		ref item childrenLogicalFunctions : LogicalFunction [*];
	}
	item def LogicalFunctionPkg :> FunctionPkg{
		item ownedLogicalFunctions : LogicalFunction [*];
		item ownedLogicalFunctionPkgs : LogicalFunctionPkg [*];
	}
	item def LogicalComponent :> Component, CapabilityRealizationInvolvedElement{
		item ownedLogicalComponents : LogicalComponent [*];
		item ownedLogicalArchitectures : LogicalArchitecture [*];
		item ownedLogicalComponentPkgs : LogicalComponentPkg [*];
		ref item subLogicalComponents : LogicalComponent [*];
		ref item allocatedLogicalFunctions : LogicalFunction [*];
		ref item realizedSystemComponents : SystemComponent [*];
		ref item realizingPhysicalComponents : PhysicalComponent [*];
	}
	item def LogicalComponentPkg :> ComponentPkg{
		item ownedLogicalComponents : LogicalComponent [*];
		item ownedLogicalComponentPkgs : LogicalComponentPkg [*];
	}
	item def CapabilityRealization :> AbstractCapability{
		item ownedCapabilityRealizationInvolvements : CapabilityRealizationInvolvement [*];
		ref item involvedComponents : CapabilityRealizationInvolvedElement [*];
		ref item realizedCapabilities : Capability [*];
		ref item realizedCapabilityRealizations : CapabilityRealization [*];
		ref item realizingCapabilityRealizations : CapabilityRealization [*];
	}
	item def CapabilityRealizationPkg :> AbstractCapabilityPkg{
		item ownedCapabilityRealizations : CapabilityRealization [*];
		item ownedCapabilityRealizationPkgs : CapabilityRealizationPkg [*];
	}
	item def SystemAnalysisRealization :> ArchitectureAllocation;
	item def ContextInterfaceRealization :> InterfaceAllocation;
}

