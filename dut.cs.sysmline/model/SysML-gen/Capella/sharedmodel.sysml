package sharedmodel {
	private import ecore::*;
	public import information::*;
	public import capellacore::*;
	public import capellacommon::*;
	public import capellamodeller::*;
	public import oa::*;
	public import ctx::*;
	public import la::*;
	public import pa::*;
	public import epbs::*;
	public import modellingcore::*;
	public import emde::*;
	public import interaction::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import cs::*;
	public import behavior::*;
	public import fa::*;
	public import activity::*;
	public import deployment::*;
	part def SharedPkg :> ReuseableStructure, ModelRoot{
		part ownedDataPkg : DataPkg [1];
		part ownedGenericPkg : GenericPkg [1];
	}
	part def GenericPkg :> Structure{
		part subGenericPkgs : GenericPkg [*];
		part capellaElements : CapellaElement [*];
	}
}

