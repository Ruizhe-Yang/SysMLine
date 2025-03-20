package environment {
	private import ecore::*;
	public import metadatadef::*;
	public import technicalid::*;
	item def Environment :> ObeoDSMObject, NamespacesContainer{
		attribute name : EString [1];
		item actions : Action [*];
		item links : InterDSMLink [*];
		item priorityDefinitions : PriorityDefinition [1];
		item typesDefinition : TypesDefinition [1];
	}
	abstract item def Type :> ObeoDSMObject, BoundableElement{
		attribute name : EString [1];
		ref item typeDefinition : TypesDefinition [1];
	}
	item def PrimitiveType :> DataType{
		attribute kind : PrimitiveTypeKind [1];
	}
	enum def PrimitiveTypeKind {
		enum OTHER;
		enum NUMBER;
		enum TEXT;
	}
	item def Enumeration :> DataType{
		item literals : Literal [1..*];
	}
	item def Literal :> ObeoDSMObject{
		attribute name : EString [1];
	}
	abstract item def Action :> ObeoDSMObject{
		attribute name : EString [1];
	}
	item def InterDSMLink :> ObeoDSMObject{
		attribute name : EString [1];
		ref item target : EObject [1];
	}
	abstract item def ObeoDSMObject :> Identifiable{
		item metadatas : MetaDataContainer [1];
		attribute description : EString [1];
		attribute keywords : EString [*];
		item behaviours : Behaviour [*];
		item bindingRegistries : BindingRegistry [*];
		attribute version : EInt [1];
		attribute createdOn : EDate [1];
		attribute modifiedOn : EDate [1];
	}
	item def MetaDataContainer :> Identifiable{
		item metadatas : MetaData [*];
	}
	item def Annotation :> MetaData{
		attribute title : EString [1];
		attribute body : EString [1];
	}
	item def PriorityDefinition :> ObeoDSMObject{
		item priorities : Priority [1..*];
	}
	item def Priority :> ObeoDSMObject{
		attribute name : EString [1];
	}
	abstract item def MetaData :> Identifiable;
	item def TypesDefinition :> ObeoDSMObject{
		item types : Type [*];
	}
	abstract item def Behaviour :> ObeoDSMObject;
	abstract item def StructuredType :> Type{
		ref item supertype : StructuredType [1];
		ref item associatedTypes : StructuredType [*];
		item ownedAttributes : Attribute [*];
		ref item attributes : Attribute [*];
		item ownedReferences : Reference [*];
		ref item 'references' : Reference [*];
		ref item properties : Property [*];
	}
	item def DTO :> StructuredType{
		item ownedContainer : FilterContainer [1];
	}
	item def FilterContainer :> ObeoDSMObject{
		item ownedFilters : Filter [*];
	}
	abstract item def Filter :> ObeoDSMObject;
	enum def MultiplicityKind {
		enum ZERO_ONE;
		enum ONE;
		enum ZERO_STAR;
		enum ONE_STAR;
	}
	item def Namespace :> TypesDefinition, NamespacesContainer{
		ref item owner : NamespacesContainer [1];
		attribute name : EString [1];
	}
	item def Attribute :> Property, ConstrainableElement{
		ref item type : DataType [1];
		ref item containingType : StructuredType [1];
	}
	item def Reference :> Property{
		attribute isComposite : EBoolean [1];
		attribute navigable : EBoolean [1];
		ref item oppositeOf : Reference [1];
		ref item containingType : StructuredType [1];
		ref item referencedType : StructuredType [1];
	}
	abstract item def Property :> ObeoDSMObject, BoundableElement{
		attribute name : EString [1];
		attribute multiplicity : MultiplicityKind [1];
		attribute isIdentifier : EBoolean [1];
	}
	item def BindingInfo :> ObeoDSMObject{
		item 'references' : BindingReference [*];
		ref item left : BoundableElement [1];
		ref item right : BoundableElement [1];
		ref item subBindingInfos : BindingInfo [*];
		ref item targets : BoundableElement [*];
		item elements : BindingElement [*];
	}
	item def BindingReference :> ObeoDSMObject{
		ref item left : BindingElement [1];
		ref item right : BindingElement [1];
	}
	item def BindingElement :> ObeoDSMObject{
		ref item boundElement : BoundableElement [1];
		attribute bindingExpression : EString [1];
		ref item referencedByAsLeft : BindingReference [*];
		ref item referencedByAsRight : BindingReference [*];
		ref item referencedBy : BindingReference [*];
		ref item pathReferences : BoundableElement [*];
	}
	item def BindingRegistry :> ObeoDSMObject{
		item bindingInfos : BindingInfo [*];
	}
	abstract item def BoundableElement :> Identifiable;
	abstract item def DataType :> Type;
	abstract item def NamespacesContainer :> Identifiable{
		item ownedNamespaces : Namespace [*];
	}
	abstract item def ConstrainableElement {
		attribute maximum : EString [1];
		attribute minimum : EString [1];
		attribute pattern : EString [1];
	}
	package metadatadef {
		item def MetaDataDefinitions :> Identifiable{
			item metaDataDefinitions : MetaDataDefinition [*];
		}
		item def MetaDataDefinition :> Identifiable{
			attribute title : EString [1];
			attribute body : EString [1];
			attribute condition : EString [1];
		}
	}
}

