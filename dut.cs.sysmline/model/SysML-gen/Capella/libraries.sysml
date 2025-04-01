package libraries {
	private import ecore::*;
	public import emde::*;
	part def ModelInformation :> LibraryAbstractElement, ElementExtension{
		part ownedReferences : LibraryReference [*];
		ref part version : ModelVersion [1];
	}
	part def LibraryReference :> LibraryAbstractElement{
		ref part 'library' : ModelInformation [1];
		attribute accessPolicy : AccessPolicy [1];
		ref part version : ModelVersion [1];
	}
	part def ModelVersion :> LibraryAbstractElement{
		attribute majorVersionNumber : EInt [1];
		attribute minorVersionNumber : EInt [1];
		attribute lastModifiedFileStamp : ELong [1];
	}
	enum def AccessPolicy {
		enum readOnly;
		enum readAndWrite;
	}
	abstract part def LibraryAbstractElement :> ExtensibleElement{
		attribute id : EString [1];
	}
}

