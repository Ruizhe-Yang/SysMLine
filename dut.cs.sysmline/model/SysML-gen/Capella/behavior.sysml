package behavior {
	private import ecore::*;
	public import modellingcore::*;
	public import emde::*;
	abstract part def AbstractBehavior :> AbstractNamedElement{
		attribute isControlOperator : EBoolean [1];
		ref part ownedParameterSet : AbstractParameterSet [*];
		ref part ownedParameter : AbstractParameter [*];
	}
	abstract part def AbstractSignal :> AbstractType;
	abstract part def AbstractEvent :> AbstractType;
	abstract part def AbstractTimeEvent :> AbstractEvent{
		attribute isRelative : EBoolean [1];
		ref part 'when' : TimeExpression [1];
	}
	abstract part def AbstractMessageEvent :> AbstractEvent;
	abstract part def AbstractSignalEvent :> AbstractMessageEvent{
		ref part signal : AbstractSignal [1];
	}
	abstract part def TimeExpression :> ValueSpecification{
		ref part observations : AbstractNamedElement [1];
		ref part expression : ValueSpecification [1];
	}
}

