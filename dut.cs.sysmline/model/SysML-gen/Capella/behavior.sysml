package behavior {
	private import ecore::*;
	public import modellingcore::*;
	public import emde::*;
	abstract item def AbstractBehavior :> AbstractNamedElement{
		attribute isControlOperator : EBoolean [1];
		ref item ownedParameterSet : AbstractParameterSet [*];
		ref item ownedParameter : AbstractParameter [*];
	}
	abstract item def AbstractSignal :> AbstractType;
	abstract item def AbstractEvent :> AbstractType;
	abstract item def AbstractTimeEvent :> AbstractEvent{
		attribute isRelative : EBoolean [1];
		ref item when : TimeExpression [1];
	}
	abstract item def AbstractMessageEvent :> AbstractEvent;
	abstract item def AbstractSignalEvent :> AbstractMessageEvent{
		ref item signal : AbstractSignal [1];
	}
	abstract item def TimeExpression :> ValueSpecification{
		ref item observations : AbstractNamedElement [1];
		ref item expression : ValueSpecification [1];
	}
}

