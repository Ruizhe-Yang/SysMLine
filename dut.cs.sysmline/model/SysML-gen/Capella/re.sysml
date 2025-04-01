package re {
	private import ecore::*;
	public import emde::*;
	abstract part def ReAbstractElement :> ExtensibleElement{
		attribute id : EString [1];
	}
	abstract part def ReNamedElement :> ReAbstractElement{
		attribute name : EString [1];
	}
	abstract part def ReDescriptionElement :> ReNamedElement{
		attribute description : EString [1];
	}
	abstract part def ReElementContainer {
		part ownedElements : CatalogElement [*];
	}
	part def CatalogElementPkg :> ReNamedElement, ReElementContainer{
		part ownedElementPkgs : CatalogElementPkg [*];
	}
	part def RecCatalog :> CatalogElementPkg, ElementExtension{
		part ownedCompliancyDefinitionPkg : CompliancyDefinitionPkg [1];
	}
	part def GroupingElementPkg :> CatalogElementPkg, ElementExtension;
	part def CatalogElementLink :> ReAbstractElement{
		ref part source : CatalogElement [1];
		ref part target : EObject [1];
		ref part origin : CatalogElementLink [1];
		attribute unsynchronizedFeatures : EString [*];
		attribute suffixed : EBoolean [1];
	}
	part def CatalogElement :> ReDescriptionElement, ReElementContainer{
		attribute kind : CatalogElementKind [1];
		attribute author : EString [1];
		attribute environment : EString [1];
		attribute suffix : EString [1];
		attribute purpose : EString [1];
		attribute readOnly : EBoolean [1];
		attribute version : EString [1];
		attribute tags : EString [*];
		ref part origin : CatalogElement [1];
		ref part currentCompliancy : CompliancyDefinition [1];
		ref part defaultReplicaCompliancy : CompliancyDefinition [1];
		part ownedLinks : CatalogElementLink [*];
		ref part referencedElements : EObject [*];
		ref part replicatedElements : CatalogElement [*];
	}
	enum def CatalogElementKind {
		enum REC;
		enum RPL;
		enum REC_RPL;
		enum GROUPING;
	}
	part def CompliancyDefinitionPkg :> ReNamedElement{
		part ownedDefinitions : CompliancyDefinition [*];
	}
	part def CompliancyDefinition :> ReDescriptionElement;
}

