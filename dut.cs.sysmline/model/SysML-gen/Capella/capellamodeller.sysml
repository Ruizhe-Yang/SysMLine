package capellamodeller {
	private import ecore::*;
	public import capellacore::*;
	public import oa::*;
	public import ctx::*;
	public import la::*;
	public import pa::*;
	public import epbs::*;
	public import sharedmodel::*;
	public import capellacommon::*;
	public import information::*;
	public import cs::*;
	public import deployment::*;
	public import fa::*;
	public import modellingcore::*;
	public import activity::*;
	public import interaction::*;
	public import behavior::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	item def Project :> Structure{
		item keyValuePairs : KeyValue [*];
		item ownedFolders : Folder [*];
		item ownedModelRoots : ModelRoot [*];
	}
	item def Folder :> Structure{
		item ownedFolders : Folder [*];
		item ownedModelRoots : ModelRoot [*];
	}
	abstract item def ModelRoot :> CapellaElement;
	item def SystemEngineering :> AbstractModellingStructure, ModelRoot{
		ref item containedOperationalAnalysis : OperationalAnalysis [*];
		ref item containedSystemAnalysis : SystemAnalysis [*];
		ref item containedLogicalArchitectures : LogicalArchitecture [*];
		ref item containedPhysicalArchitectures : PhysicalArchitecture [*];
		ref item containedEPBSArchitectures : EPBSArchitecture [*];
		ref item containedSharedPkgs : SharedPkg [*];
	}
	item def SystemEngineeringPkg :> Structure, ModelRoot{
		item ownedSystemEngineerings : SystemEngineering [*];
	}
	item def Library :> Project;
}

