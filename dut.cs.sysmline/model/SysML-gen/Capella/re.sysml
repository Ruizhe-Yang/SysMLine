package re {
	private import ecore::*;
	public import emde::*;
	abstract item def ReAbstractElement :> ExtensibleElement{
		attribute id : EString [1];
	}
	abstract item def ReNamedElement :> ReAbstractElement{
		attribute name : EString [1];
	}
	abstract item def ReDescriptionElement :> ReNamedElement{
		attribute description : EString [1];
	}
	abstract item def ReElementContainer {
		item ownedElements : CatalogElement [*];
	}
	item def CatalogElementPkg :> ReNamedElement, ReElementContainer{
		item ownedElementPkgs : CatalogElementPkg [*];
	}
	item def RecCatalog :> CatalogElementPkg, ElementExtension{
		item ownedCompliancyDefinitionPkg : CompliancyDefinitionPkg [1];
	}
	item def GroupingElementPkg :> CatalogElementPkg, ElementExtension;
	item def CatalogElementLink :> ReAbstractElement{
		ref item source : CatalogElement [1];
		ref item target : EObject [1];
		ref item origin : CatalogElementLink [1];
		attribute unsynchronizedFeatures : EString [*];
		attribute suffixed : EBoolean [1];
	}
	item def CatalogElement :> ReDescriptionElement, ReElementContainer{
		attribute kind : CatalogElementKind [1];
		attribute author : EString [1];
		attribute environment : EString [1];
		attribute suffix : EString [1];
		attribute purpose : EString [1];
		attribute readOnly : EBoolean [1];
		attribute version : EString [1];
		attribute tags : EString [*];
		ref item origin : CatalogElement [1];
		ref item currentCompliancy : CompliancyDefinition [1];
		ref item defaultReplicaCompliancy : CompliancyDefinition [1];
		item ownedLinks : CatalogElementLink [*];
		ref item referencedElements : EObject [*];
		ref item replicatedElements : CatalogElement [*];
	}
	enum def CatalogElementKind {
		enum REC;
		enum RPL;
		enum REC_RPL;
		enum GROUPING;
	}
	item def CompliancyDefinitionPkg :> ReNamedElement{
		item ownedDefinitions : CompliancyDefinition [*];
	}
	item def CompliancyDefinition :> ReDescriptionElement;
}

