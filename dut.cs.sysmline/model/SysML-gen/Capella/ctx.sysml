package ctx {
	private import ecore::*;
	public import oa::*;
	public import la::*;
	public import cs::*;
	public import capellacore::*;
	public import capellacommon::*;
	public import information::*;
	public import fa::*;
	public import file:/e:/gityang/sysmline/dut.cs.sysmline/org.polarsys.capella.common.data.def/model/modellingcore::*;
	public import epbs::*;
	public import pa::*;
	public import interaction::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import file:/e:/gityang/sysmline/dut.cs.sysmline/org.polarsys.capella.common.data.def/model/behavior::*;
	public import file:/e:/gityang/sysmline/dut.cs.sysmline/org.polarsys.capella.common.data.def/model/activity::*;
	public import deployment::*;
	item def SystemAnalysis :> ComponentArchitecture{
		item ownedSystemComponentPkg : SystemComponentPkg [1];
		item ownedMissionPkg : MissionPkg [1];
		ref item containedCapabilityPkg : CapabilityPkg [1];
		ref item containedSystemFunctionPkg : SystemFunctionPkg [1];
		item ownedOperationalAnalysisRealizations : OperationalAnalysisRealization [*];
		ref item allocatedOperationalAnalysisRealizations : OperationalAnalysisRealization [*];
		ref item allocatedOperationalAnalyses : OperationalAnalysis [*];
		ref item allocatingLogicalArchitectures : LogicalArchitecture [*];
	}
	item def SystemFunction :> AbstractFunction{
		item ownedSystemFunctionPkgs : SystemFunctionPkg [*];
		ref item allocatingSystemComponents : SystemComponent [*];
		ref item realizedOperationalActivities : OperationalActivity [*];
		ref item realizingLogicalFunctions : LogicalFunction [*];
		ref item containedSystemFunctions : SystemFunction [*];
		ref item childrenSystemFunctions : SystemFunction [*];
	}
	item def SystemFunctionPkg :> FunctionPkg{
		item ownedSystemFunctions : SystemFunction [*];
		item ownedSystemFunctionPkgs : SystemFunctionPkg [*];
	}
	item def SystemCommunicationHook :> NamedElement{
		ref item communication : SystemCommunication [1];
		ref item type : Component [1];
	}
	item def SystemCommunication :> Relationship{
		item ends : SystemCommunicationHook [2];
	}
	item def CapabilityInvolvement :> Involvement{
		ref item systemComponent : SystemComponent [1];
		ref item capability : Capability [1];
	}
	item def MissionInvolvement :> Involvement{
		ref item systemComponent : SystemComponent [1];
		ref item mission : Mission [1];
	}
	item def Mission :> NamedElement, InvolverElement{
		item ownedMissionInvolvements : MissionInvolvement [*];
		ref item involvedSystemComponents : SystemComponent [*];
		item ownedCapabilityExploitations : CapabilityExploitation [*];
		ref item exploitedCapabilities : Capability [*];
	}
	item def MissionPkg :> Structure{
		item ownedMissionPkgs : MissionPkg [*];
		item ownedMissions : Mission [*];
	}
	item def Capability :> AbstractCapability{
		item ownedCapabilityInvolvements : CapabilityInvolvement [*];
		ref item involvedSystemComponents : SystemComponent [*];
		ref item purposes : CapabilityExploitation [*];
		ref item purposeMissions : Mission [*];
		ref item realizedOperationalCapabilities : OperationalCapability [*];
		ref item realizingCapabilityRealizations : CapabilityRealization [*];
	}
	item def CapabilityExploitation :> Relationship{
		ref item mission : Mission [1];
		ref item capability : Capability [1];
	}
	item def CapabilityPkg :> AbstractCapabilityPkg{
		item ownedCapabilities : Capability [*];
		item ownedCapabilityPkgs : CapabilityPkg [*];
	}
	item def OperationalAnalysisRealization :> ArchitectureAllocation;
	item def SystemComponentPkg :> ComponentPkg{
		item ownedSystemComponents : SystemComponent [*];
		item ownedSystemComponentPkgs : SystemComponentPkg [*];
	}
	item def SystemComponent :> Component, InvolvedElement{
		item ownedSystemComponents : SystemComponent [*];
		item ownedSystemComponentPkgs : SystemComponentPkg [*];
		attribute dataComponent : EBoolean [1];
		ref item dataType : Classifier [*];
		ref item involvingCapabilities : Capability [*];
		ref item capabilityInvolvements : CapabilityInvolvement [*];
		ref item involvingMissions : Mission [*];
		ref item missionInvolvements : MissionInvolvement [*];
		ref item realizedEntities : Entity [*];
		ref item realizingLogicalComponents : LogicalComponent [*];
		ref item allocatedSystemFunctions : SystemFunction [*];
	}
}

