package 'requirement' {
	private import ecore::*;
	public import requirement::*;
	public import technicalid::*;
	item def Repository :> CategoriesContainer{
		item mainCategories : Category [*];
		ref item referencedObject : EObject [*];
	}
	item def Category :> CategoriesContainer{
		item requirements : Requirement [*];
		item subCategories : Category [*];
		attribute id : EString [1];
		ref item repository : Repository [1];
		ref item parentCategory : Category [1];
		ref item referencedObject : EObject [*];
	}
	item def Requirement :> NamedElement{
		attribute id : EString [1];
		attribute version : EInt [1];
		ref item referencedObject : EObject [*];
		attribute statement : EString [1];
		attribute rationale : EString [1];
		attribute acceptanceCriteria : EString [1];
		attribute type : RequirementType [1];
		ref item category : Category [1];
		attribute subtype : EString [1];
		attribute status : EString [1];
		attribute createdOn : EDate [1];
		attribute modifiedOn : EDate [1];
	}
	abstract item def NamedElement :> Identifiable{
		attribute name : EString [1];
	}
	enum def RequirementType {
		enum functional;
		enum technical;
	}
	abstract item def CategoriesContainer :> NamedElement{
		ref item ownedCategories : Category [*];
		ref item ownedRequirements : Requirement [*];
	}
}

