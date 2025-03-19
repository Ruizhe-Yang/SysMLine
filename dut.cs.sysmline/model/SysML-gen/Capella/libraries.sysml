package libraries {
	private import ecore::*;
	public import emde::*;
	item def ModelInformation :> LibraryAbstractElement, ElementExtension{
		item ownedReferences : LibraryReference [*];
		ref item version : ModelVersion [1];
	}
	item def LibraryReference :> LibraryAbstractElement{
		ref item 'library' : ModelInformation [1];
		attribute accessPolicy : AccessPolicy [1];
		ref item version : ModelVersion [1];
	}
	item def ModelVersion :> LibraryAbstractElement{
		attribute majorVersionNumber : EInt [1];
		attribute minorVersionNumber : EInt [1];
		attribute lastModifiedFileStamp : ELong [1];
	}
	enum def AccessPolicy {
		enum readOnly;
		enum readAndWrite;
	}
	abstract item def LibraryAbstractElement :> ExtensibleElement{
		attribute id : EString [1];
	}
}

