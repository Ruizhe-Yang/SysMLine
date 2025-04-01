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
	abstract part def CapellaElement :> TraceableElement, PublishableElement{
		attribute summary : EString [1];
		attribute description : EString [1];
		attribute review : EString [1];
		part ownedPropertyValues : AbstractPropertyValue [*];
		part ownedEnumerationPropertyTypes : EnumerationPropertyType [*];
		ref part appliedPropertyValues : AbstractPropertyValue [*];
		part ownedPropertyValueGroups : PropertyValueGroup [*];
		ref part appliedPropertyValueGroups : PropertyValueGroup [*];
		ref part status : EnumerationPropertyLiteral [1];
		ref part features : EnumerationPropertyLiteral [*];
	}
	abstract part def NamedElement :> AbstractNamedElement, CapellaElement;
	abstract part def Relationship :> AbstractRelationship, CapellaElement;
	abstract part def Namespace :> NamedElement{
		part ownedTraces : Trace [*];
		ref part containedGenericTraces : GenericTrace [*];
		part namingRules : NamingRule [*];
	}
	abstract part def NamedRelationship :> Relationship, NamedElement{
		part namingRules : NamingRule [*];
	}
	abstract part def Structure :> Namespace{
		part ownedPropertyValuePkgs : PropertyValuePkg [*];
	}
	abstract part def AbstractModellingStructure :> ReuserStructure{
		part ownedArchitectures : ModellingArchitecture [*];
		part ownedArchitecturePkgs : ModellingArchitecturePkg [*];
	}
	abstract part def ModellingBlock :> Type;
	abstract part def ModellingArchitecture :> Structure;
	abstract part def ModellingArchitecturePkg :> Structure;
	abstract part def Type :> AbstractType, Namespace{
		ref part typedElements : TypedElement [*];
	}
	abstract part def TypedElement :> AbstractTypedElement, NamedElement{
		ref part type : Type [1];
	}
	abstract part def Trace :> Relationship, AbstractTrace;
	abstract part def AbstractAnnotation :> CapellaElement{
		attribute content : EString [1];
	}
	part def NamingRule :> AbstractAnnotation{
		attribute targetType : EString [1];
	}
	part def Constraint :> NamedElement, AbstractConstraint;
	part def KeyValue :> CapellaElement{
		attribute key : EString [1];
		attribute 'value' : EString [1];
	}
	part def ReuseLink :> Relationship{
		ref part reused : ReuseableStructure [1];
		ref part reuser : ReuserStructure [1];
	}
	abstract part def ReuseableStructure :> Structure{
		ref part reuseLinks : ReuseLink [*];
	}
	abstract part def ReuserStructure :> Structure{
		ref part reuseLinks : ReuseLink [*];
		part ownedReuseLinks : ReuseLink [*];
	}
	abstract part def GeneralizableElement :> Type{
		attribute 'abstract' : EBoolean [1];
		part ownedGeneralizations : Generalization [*];
		ref part superGeneralizations : Generalization [*];
		ref part subGeneralizations : Generalization [*];
		ref part super : GeneralizableElement [*];
		ref part sub : GeneralizableElement [*];
	}
	abstract part def Classifier :> GeneralizableElement{
		part ownedFeatures : Feature [*];
		ref part containedProperties : Property [*];
	}
	abstract part def GeneralClass :> Classifier, FinalizableElement{
		attribute visibility : VisibilityKind [1];
		ref part containedOperations : Operation [*];
		part nestedGeneralClasses : GeneralClass [*];
	}
	part def Generalization :> Relationship{
		ref part super : GeneralizableElement [1];
		ref part sub : GeneralizableElement [1];
	}
	abstract part def Feature :> NamedElement{
		attribute isAbstract : EBoolean [1];
		attribute isStatic : EBoolean [1];
		attribute visibility : VisibilityKind [1];
	}
	abstract part def AbstractExchangeItemPkg :> Structure{
		part ownedExchangeItems : ExchangeItem [*];
	}
	abstract part def Allocation :> Relationship, AbstractTrace;
	abstract part def Involvement :> Relationship{
		ref part involver : InvolverElement [1];
		ref part involved : InvolvedElement [1];
	}
	abstract part def InvolverElement :> CapellaElement{
		ref part involvedInvolvements : Involvement [*];
	}
	abstract part def InvolvedElement :> CapellaElement{
		ref part involvingInvolvements : Involvement [*];
	}
	abstract part def AbstractPropertyValue :> NamedElement{
		ref part involvedElements : CapellaElement [*];
		ref part valuedElements : CapellaElement [*];
	}
	part def StringPropertyValue :> AbstractPropertyValue{
		attribute 'value' : EString [1];
	}
	part def IntegerPropertyValue :> AbstractPropertyValue{
		attribute 'value' : EInt [1];
	}
	part def BooleanPropertyValue :> AbstractPropertyValue{
		attribute 'value' : EBoolean [1];
	}
	part def FloatPropertyValue :> AbstractPropertyValue{
		attribute 'value' : EFloat [1];
	}
	part def EnumerationPropertyValue :> AbstractPropertyValue{
		ref part type : EnumerationPropertyType [1];
		ref part 'value' : EnumerationPropertyLiteral [1];
	}
	part def EnumerationPropertyType :> NamedElement{
		part ownedLiterals : EnumerationPropertyLiteral [*];
	}
	part def EnumerationPropertyLiteral :> NamedElement;
	part def PropertyValueGroup :> Namespace{
		ref part valuedElements : CapellaElement [*];
	}
	part def PropertyValuePkg :> Structure;
	abstract part def AbstractDependenciesPkg :> Structure;
	enum def VisibilityKind {
		enum UNSET;
		enum PUBLIC;
		enum PROTECTED;
		enum PRIVATE;
		enum PACKAGE;
	}
}

