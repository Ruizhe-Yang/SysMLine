package capellacore {
	private import ecore::*;
	public import capellacommon::*;
	public import information::*;
	public import modellingcore::*;
	public import emde::*;
	public import la::*;
	public import fa::*;
	public import interaction::*;
	public import behavior::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import cs::*;
	public import ctx::*;
	public import pa::*;
	public import activity::*;
	public import epbs::*;
	abstract item def CapellaElement :> TraceableElement, PublishableElement{
		attribute summary : EString [1];
		attribute description : EString [1];
		attribute review : EString [1];
		item ownedPropertyValues : AbstractPropertyValue [*];
		item ownedEnumerationPropertyTypes : EnumerationPropertyType [*];
		ref item appliedPropertyValues : AbstractPropertyValue [*];
		item ownedPropertyValueGroups : PropertyValueGroup [*];
		ref item appliedPropertyValueGroups : PropertyValueGroup [*];
		ref item status : EnumerationPropertyLiteral [1];
		ref item features : EnumerationPropertyLiteral [*];
	}
	abstract item def NamedElement :> AbstractNamedElement, CapellaElement;
	abstract item def Relationship :> AbstractRelationship, CapellaElement;
	abstract item def Namespace :> NamedElement{
		item ownedTraces : Trace [*];
		ref item containedGenericTraces : GenericTrace [*];
		item namingRules : NamingRule [*];
	}
	abstract item def NamedRelationship :> Relationship, NamedElement{
		item namingRules : NamingRule [*];
	}
	abstract item def Structure :> Namespace{
		item ownedPropertyValuePkgs : PropertyValuePkg [*];
	}
	abstract item def AbstractModellingStructure :> ReuserStructure{
		item ownedArchitectures : ModellingArchitecture [*];
		item ownedArchitecturePkgs : ModellingArchitecturePkg [*];
	}
	abstract item def ModellingBlock :> Type;
	abstract item def ModellingArchitecture :> Structure;
	abstract item def ModellingArchitecturePkg :> Structure;
	abstract item def Type :> AbstractType, Namespace{
		ref item typedElements : TypedElement [*];
	}
	abstract item def TypedElement :> AbstractTypedElement, NamedElement{
		ref item type : Type [1];
	}
	abstract item def Trace :> Relationship, AbstractTrace;
	abstract item def AbstractAnnotation :> CapellaElement{
		attribute content : EString [1];
	}
	item def NamingRule :> AbstractAnnotation{
		attribute targetType : EString [1];
	}
	item def Constraint :> NamedElement, AbstractConstraint;
	item def KeyValue :> CapellaElement{
		attribute key : EString [1];
		attribute 'value' : EString [1];
	}
	item def ReuseLink :> Relationship{
		ref item reused : ReuseableStructure [1];
		ref item reuser : ReuserStructure [1];
	}
	abstract item def ReuseableStructure :> Structure{
		ref item reuseLinks : ReuseLink [*];
	}
	abstract item def ReuserStructure :> Structure{
		ref item reuseLinks : ReuseLink [*];
		item ownedReuseLinks : ReuseLink [*];
	}
	abstract item def GeneralizableElement :> Type{
		attribute 'abstract' : EBoolean [1];
		item ownedGeneralizations : Generalization [*];
		ref item superGeneralizations : Generalization [*];
		ref item subGeneralizations : Generalization [*];
		ref item super : GeneralizableElement [*];
		ref item sub : GeneralizableElement [*];
	}
	abstract item def Classifier :> GeneralizableElement{
		item ownedFeatures : Feature [*];
		ref item containedProperties : Property [*];
	}
	abstract item def GeneralClass :> Classifier, FinalizableElement{
		attribute visibility : VisibilityKind [1];
		ref item containedOperations : Operation [*];
		item nestedGeneralClasses : GeneralClass [*];
	}
	item def Generalization :> Relationship{
		ref item super : GeneralizableElement [1];
		ref item sub : GeneralizableElement [1];
	}
	abstract item def Feature :> NamedElement{
		attribute isAbstract : EBoolean [1];
		attribute isStatic : EBoolean [1];
		attribute visibility : VisibilityKind [1];
	}
	abstract item def AbstractExchangeItemPkg :> Structure{
		item ownedExchangeItems : ExchangeItem [*];
	}
	abstract item def Allocation :> Relationship, AbstractTrace;
	abstract item def Involvement :> Relationship{
		ref item involver : InvolverElement [1];
		ref item involved : InvolvedElement [1];
	}
	abstract item def InvolverElement :> CapellaElement{
		ref item involvedInvolvements : Involvement [*];
	}
	abstract item def InvolvedElement :> CapellaElement{
		ref item involvingInvolvements : Involvement [*];
	}
	abstract item def AbstractPropertyValue :> NamedElement{
		ref item involvedElements : CapellaElement [*];
		ref item valuedElements : CapellaElement [*];
	}
	item def StringPropertyValue :> AbstractPropertyValue{
		attribute 'value' : EString [1];
	}
	item def IntegerPropertyValue :> AbstractPropertyValue{
		attribute 'value' : EInt [1];
	}
	item def BooleanPropertyValue :> AbstractPropertyValue{
		attribute 'value' : EBoolean [1];
	}
	item def FloatPropertyValue :> AbstractPropertyValue{
		attribute 'value' : EFloat [1];
	}
	item def EnumerationPropertyValue :> AbstractPropertyValue{
		ref item type : EnumerationPropertyType [1];
		ref item 'value' : EnumerationPropertyLiteral [1];
	}
	item def EnumerationPropertyType :> NamedElement{
		item ownedLiterals : EnumerationPropertyLiteral [*];
	}
	item def EnumerationPropertyLiteral :> NamedElement;
	item def PropertyValueGroup :> Namespace{
		ref item valuedElements : CapellaElement [*];
	}
	item def PropertyValuePkg :> Structure;
	abstract item def AbstractDependenciesPkg :> Structure;
	enum def VisibilityKind {
		enum UNSET;
		enum PUBLIC;
		enum PROTECTED;
		enum PRIVATE;
		enum PACKAGE;
	}
}

