package terminology {
	private import ecore::*;
	public import base::*;
	abstract item def TerminologyElement :>;
	item def TerminologyGroup :> TerminologyElement{
		ref item terminologyElement : TerminologyElement [*];
	}
	item def TerminologyPackage :> TerminologyElement{
		item terminologyElement : TerminologyElement [*];
	}
	item def TerminologyPackageBinding :> TerminologyPackage{
		ref item participantPackage : TerminologyPackage [2..*];
	}
	item def TerminologyPackageInterface :> TerminologyPackage{
		ref item implements : TerminologyPackage [1];
	}
	abstract item def TerminologyAsset :> TerminologyElement;
	item def Category :> TerminologyAsset{
		ref item category : Category [*];
	}
	abstract item def ExpressionElement :> TerminologyAsset{
		attribute 'value' : EString [1];
		ref item category : Category [*];
	}
	item def Expression :> ExpressionElement{
		ref item element : ExpressionElement [*];
	}
	item def Term :> ExpressionElement{
		attribute externalReference : EString [1];
		ref item origin : ModelElement [1];
	}
}

