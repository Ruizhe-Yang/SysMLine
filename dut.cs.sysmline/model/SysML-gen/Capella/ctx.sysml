package ctx {
	private import ecore::*;
	public import oa::*;
	public import la::*;
	public import cs::*;
	public import capellacore::*;
	public import capellacommon::*;
	public import information::*;
	public import fa::*;
	public import modellingcore::*;
	public import epbs::*;
	public import emde::*;
	public import pa::*;
	public import interaction::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import activity::*;
	public import behavior::*;
	public import deployment::*;
	part def SystemAnalysis :> ComponentArchitecture{
		part ownedSystemComponentPkg : SystemComponentPkg [1];
		part ownedMissionPkg : MissionPkg [1];
		ref part containedCapabilityPkg : CapabilityPkg [1];
		ref part containedSystemFunctionPkg : SystemFunctionPkg [1];
		part ownedOperationalAnalysisRealizations : OperationalAnalysisRealization [*];
		ref part allocatedOperationalAnalysisRealizations : OperationalAnalysisRealization [*];
		ref part allocatedOperationalAnalyses : OperationalAnalysis [*];
		ref part allocatingLogicalArchitectures : LogicalArchitecture [*];
	}
	part def SystemFunction :> AbstractFunction{
		part ownedSystemFunctionPkgs : SystemFunctionPkg [*];
		ref part allocatingSystemComponents : SystemComponent [*];
		ref part realizedOperationalActivities : OperationalActivity [*];
		ref part realizingLogicalFunctions : LogicalFunction [*];
		ref part containedSystemFunctions : SystemFunction [*];
		ref part childrenSystemFunctions : SystemFunction [*];
	}
	part def SystemFunctionPkg :> FunctionPkg{
		part ownedSystemFunctions : SystemFunction [*];
		part ownedSystemFunctionPkgs : SystemFunctionPkg [*];
	}
	part def SystemCommunicationHook :> NamedElement{
		ref part communication : SystemCommunication [1];
		ref part type : Component [1];
	}
	part def SystemCommunication :> Relationship{
		part ends : SystemCommunicationHook [2];
	}
	part def CapabilityInvolvement :> Involvement{
		ref part systemComponent : SystemComponent [1];
		ref part capability : Capability [1];
	}
	part def MissionInvolvement :> Involvement{
		ref part systemComponent : SystemComponent [1];
		ref part mission : Mission [1];
	}
	part def Mission :> NamedElement, InvolverElement{
		part ownedMissionInvolvements : MissionInvolvement [*];
		ref part involvedSystemComponents : SystemComponent [*];
		part ownedCapabilityExploitations : CapabilityExploitation [*];
		ref part exploitedCapabilities : Capability [*];
	}
	part def MissionPkg :> Structure{
		part ownedMissionPkgs : MissionPkg [*];
		part ownedMissions : Mission [*];
	}
	part def Capability :> AbstractCapability{
		part ownedCapabilityInvolvements : CapabilityInvolvement [*];
		ref part involvedSystemComponents : SystemComponent [*];
		ref part purposes : CapabilityExploitation [*];
		ref part purposeMissions : Mission [*];
		ref part realizedOperationalCapabilities : OperationalCapability [*];
		ref part realizingCapabilityRealizations : CapabilityRealization [*];
	}
	part def CapabilityExploitation :> Relationship{
		ref part mission : Mission [1];
		ref part capability : Capability [1];
	}
	part def CapabilityPkg :> AbstractCapabilityPkg{
		part ownedCapabilities : Capability [*];
		part ownedCapabilityPkgs : CapabilityPkg [*];
	}
	part def OperationalAnalysisRealization :> ArchitectureAllocation;
	part def SystemComponentPkg :> ComponentPkg{
		part ownedSystemComponents : SystemComponent [*];
		part ownedSystemComponentPkgs : SystemComponentPkg [*];
	}
	part def SystemComponent :> Component, InvolvedElement{
		part ownedSystemComponents : SystemComponent [*];
		part ownedSystemComponentPkgs : SystemComponentPkg [*];
		attribute dataComponent : EBoolean [1];
		ref part dataType : Classifier [*];
		ref part involvingCapabilities : Capability [*];
		ref part capabilityInvolvements : CapabilityInvolvement [*];
		ref part involvingMissions : Mission [*];
		ref part missionInvolvements : MissionInvolvement [*];
		ref part realizedEntities : Entity [*];
		ref part realizingLogicalComponents : LogicalComponent [*];
		ref part allocatedSystemFunctions : SystemFunction [*];
	}
}

