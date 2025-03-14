package modellingcore {
	private import ecore::*;
	public import emde::*;
	abstract item def ModelElement :> {
		attribute id : EString [1];
		attribute sid : EString [1];
		ref item constraints : AbstractConstraint [*];
		item ownedConstraints : AbstractConstraint [*];
		item ownedMigratedElements : ModelElement [*];
	}
	abstract item def AbstractRelationship :> ModelElement{
		ref item realizedFlow : AbstractInformationFlow [1];
	}
	abstract item def AbstractNamedElement :> ModelElement{
		attribute name : EString [1];
	}
	abstract item def InformationsExchanger :> ModelElement{
		ref item incomingInformationFlows : AbstractInformationFlow [*];
		ref item outgoingInformationFlows : AbstractInformationFlow [*];
		ref item informationFlows : AbstractInformationFlow [*];
	}
	abstract item def TraceableElement :> ModelElement{
		ref item incomingTraces : AbstractTrace [*];
		ref item outgoingTraces : AbstractTrace [*];
	}
	abstract item def FinalizableElement :> ModelElement{
		attribute final : EBoolean [1];
	}
	abstract item def PublishableElement :> ModelElement{
		attribute visibleInDoc : EBoolean [1];
		attribute visibleInLM : EBoolean [1];
	}
	abstract item def AbstractType :> AbstractNamedElement{
		ref item abstractTypedElements : AbstractTypedElement [*];
	}
	abstract item def AbstractTypedElement :> AbstractNamedElement{
		ref item abstractType : AbstractType [1];
	}
	abstract item def AbstractTrace :> TraceableElement{
		ref item targetElement : TraceableElement [1];
		ref item sourceElement : TraceableElement [1];
	}
	abstract item def AbstractConstraint :> ModelElement{
		ref item constrainedElements : ModelElement [*];
		item ownedSpecification : ValueSpecification [1];
		ref item context : ModelElement [1];
	}
	abstract item def ValueSpecification :> AbstractTypedElement;
	abstract item def AbstractParameter :> AbstractTypedElement{
		attribute isException : EBoolean [1];
		attribute isStream : EBoolean [1];
		attribute isOptional : EBoolean [1];
		attribute kindOfRate : RateKind [1];
		attribute effect : ParameterEffectKind [1];
		item rate : ValueSpecification [1];
		item probability : ValueSpecification [1];
		ref item parameterSet : AbstractParameterSet [*];
	}
	enum def ParameterEffectKind {
		enum create;
		enum read;
		enum update;
		enum delete;
	}
	abstract item def AbstractParameterSet :> AbstractNamedElement{
		item ownedConditions : AbstractConstraint [*];
		item probability : ValueSpecification [1];
		ref item parameters : AbstractParameter [1..*];
	}
	enum def RateKind {
		enum Unspecified;
		enum Continuous;
		enum Discrete;
	}
	abstract item def AbstractInformationFlow :> AbstractNamedElement, AbstractRelationship{
		ref item realizations : AbstractRelationship [*];
		ref item convoyedInformations : AbstractExchangeItem [*];
		ref item source : InformationsExchanger [1];
		ref item target : InformationsExchanger [1];
	}
	abstract item def AbstractExchangeItem :> AbstractType;
	abstract item def IState :> AbstractNamedElement{
		ref item referencedStates : IState [*];
		ref item exploitedStates : IState [*];
	}
}

