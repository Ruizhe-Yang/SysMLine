package entity {
	private import ecore::*;
	public import environment::*;
	public import metadatadef::*;
	public import technicalid::*;
	item def Root :> TypesDefinition, NamespacesContainer{
		attribute name : EString [1];
	}
	item def Entity :> StructuredType{
		attribute estimatedVolumetry : EInt [1];
		attribute estimatedAccess : EInt [1];
		attribute historized : EBoolean [1];
		item ownedFinders : Finder [*];
		attribute inheritanceKind : InheritanceKind [1];
	}
	item def Finder :> ObeoDSMObject{
		attribute name : EString [1];
		ref item entity : Entity [1];
		attribute customizedName : EString [1];
		item criterions : Criterion [*];
		attribute multiplicity : MultiplicityKind [1];
	}
	item def InternalCriterion :> Criterion{
		ref item target : Attribute [1];
		attribute name : EString [1];
	}
	abstract item def Criterion :> ObeoDSMObject;
	item def ExternalCriterion :> Criterion{
		attribute name : EString [1];
		ref item type : Type [1];
	}
	enum def InheritanceKind {
		enum TABLE_PER_SUBCLASS;
		enum TABLE_PER_CLASS_HIERARCHY;
	}
	package extensionUtilities {
		item def EntityFilter :> Filter{
			ref item attributeReferences : Attribute [*];
			ref item referenceReferences : Reference [*];
			ref item ownedPropertyReferences : Property [*];
			ref item entity : Entity [1];
		}
	}
}

