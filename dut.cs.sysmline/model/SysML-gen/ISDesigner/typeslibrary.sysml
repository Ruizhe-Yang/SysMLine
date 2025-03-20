package typeslibrary {
	private import ecore::*;
	public import technicalid::*;
	item def NativeTypesLibrary :> TypesLibrary, Identifiable{
		attribute name : EString [1];
		item nativeTypes : NativeType [*];
	}
	enum def NativeTypeKind {
		enum Simple;
		enum Length;
		enum LengthAndPrecision;
		enum Enum;
	}
	item def TypeInstance :> Type, Identifiable{
		ref item nativeType : NativeType [1];
		attribute length : EIntegerObject [1];
		attribute precision : EIntegerObject [1];
		attribute literals : EString [*];
	}
	item def NativeType :> Identifiable{
		attribute name : EString [1];
		attribute spec : NativeTypeKind [1];
		ref item mapsTo : NativeType [1];
	}
	item def ComplexNamedType :> UserDefinedType, Identifiable{
		item types : UserDefinedType [*];
	}
	item def SimpleNamedType :> UserDefinedType, Identifiable{
		ref item type : TypeInstance [1];
	}
	abstract item def Type;
	abstract item def UserDefinedType {
		attribute name : EString [1];
	}
	item def UserDefinedTypeRef :> Type, Identifiable{
		ref item type : UserDefinedType [1];
	}
	item def UserDefinedTypesLibrary :> TypesLibrary, Identifiable{
		attribute name : EString [1];
		item userDefinedTypes : UserDefinedType [*];
	}
	abstract item def TypesLibraryUser {
		ref item usedLibraries : TypesLibrary [*];
	}
	abstract item def TypesLibrary {
		attribute kind : TypesLibraryKind [1];
	}
	enum def TypesLibraryKind {
		enum logicalTypes;
		enum physicalTypes;
	}
}

