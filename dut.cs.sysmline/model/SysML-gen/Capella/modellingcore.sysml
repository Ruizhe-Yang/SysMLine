package modellingcore {
	private import ecore::*;
	public import emde::*;
	abstract part def ModelElement :> ExtensibleElement{
		attribute id : EString [1];
		attribute sid : EString [1];
		ref part constraints : AbstractConstraint [*];
		part ownedConstraints : AbstractConstraint [*];
		part ownedMigratedElements : ModelElement [*];
	}
	abstract part def AbstractRelationship :> ModelElement{
		ref part realizedFlow : AbstractInformationFlow [1];
	}
	abstract part def AbstractNamedElement :> ModelElement{
		attribute name : EString [1];
	}
	abstract part def InformationsExchanger :> ModelElement{
		ref part incomingInformationFlows : AbstractInformationFlow [*];
		ref part outgoingInformationFlows : AbstractInformationFlow [*];
		ref part informationFlows : AbstractInformationFlow [*];
	}
	abstract part def TraceableElement :> ModelElement{
		ref part incomingTraces : AbstractTrace [*];
		ref part outgoingTraces : AbstractTrace [*];
	}
	abstract part def FinalizableElement :> ModelElement{
		attribute final : EBoolean [1];
	}
	abstract part def PublishableElement :> ModelElement{
		attribute visibleInDoc : EBoolean [1];
		attribute visibleInLM : EBoolean [1];
	}
	abstract part def AbstractType :> AbstractNamedElement{
		ref part abstractTypedElements : AbstractTypedElement [*];
	}
	abstract part def AbstractTypedElement :> AbstractNamedElement{
		ref part abstractType : AbstractType [1];
	}
	abstract part def AbstractTrace :> TraceableElement{
		ref part targetElement : TraceableElement [1];
		ref part sourceElement : TraceableElement [1];
	}
	abstract part def AbstractConstraint :> ModelElement{
		ref part constrainedElements : ModelElement [*];
		part ownedSpecification : ValueSpecification [1];
		ref part context : ModelElement [1];
	}
	abstract part def ValueSpecification :> AbstractTypedElement;
	abstract part def AbstractParameter :> AbstractTypedElement{
		attribute isException : EBoolean [1];
		attribute isStream : EBoolean [1];
		attribute isOptional : EBoolean [1];
		attribute kindOfRate : RateKind [1];
		attribute effect : ParameterEffectKind [1];
		part rate : ValueSpecification [1];
		part probability : ValueSpecification [1];
		ref part parameterSet : AbstractParameterSet [*];
	}
	enum def ParameterEffectKind {
		enum create;
		enum read;
		enum update;
		enum delete;
	}
	abstract part def AbstractParameterSet :> AbstractNamedElement{
		part ownedConditions : AbstractConstraint [*];
		part probability : ValueSpecification [1];
		ref part parameters : AbstractParameter [1..*];
	}
	enum def RateKind {
		enum Unspecified;
		enum Continuous;
		enum Discrete;
	}
	abstract part def AbstractInformationFlow :> AbstractNamedElement, AbstractRelationship{
		ref part realizations : AbstractRelationship [*];
		ref part convoyedInformations : AbstractExchangeItem [*];
		ref part source : InformationsExchanger [1];
		ref part target : InformationsExchanger [1];
	}
	abstract part def AbstractExchangeItem :> AbstractType;
	abstract part def IState :> AbstractNamedElement{
		ref part referencedStates : IState [*];
		ref part exploitedStates : IState [*];
	}
}

