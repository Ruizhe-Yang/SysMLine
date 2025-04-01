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
	public import modellingcore::*;
	public import emde::*;
	public import cs::*;
	public import deployment::*;
	public import fa::*;
	public import activity::*;
	public import interaction::*;
	public import behavior::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	part def Project :> Structure{
		part keyValuePairs : KeyValue [*];
		part ownedFolders : Folder [*];
		part ownedModelRoots : ModelRoot [*];
	}
	part def Folder :> Structure{
		part ownedFolders : Folder [*];
		part ownedModelRoots : ModelRoot [*];
	}
	abstract part def ModelRoot :> CapellaElement;
	part def SystemEngineering :> AbstractModellingStructure, ModelRoot{
		ref part containedOperationalAnalysis : OperationalAnalysis [*];
		ref part containedSystemAnalysis : SystemAnalysis [*];
		ref part containedLogicalArchitectures : LogicalArchitecture [*];
		ref part containedPhysicalArchitectures : PhysicalArchitecture [*];
		ref part containedEPBSArchitectures : EPBSArchitecture [*];
		ref part containedSharedPkgs : SharedPkg [*];
	}
	part def SystemEngineeringPkg :> Structure, ModelRoot{
		part ownedSystemEngineerings : SystemEngineering [*];
	}
	part def Library :> Project;
}

