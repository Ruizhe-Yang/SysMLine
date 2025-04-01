package terminology {
	private import ecore::*;
	public import base::*;
	abstract part def TerminologyElement :> ArtifactElement;
	part def TerminologyGroup :> TerminologyElement{
		ref part terminologyElement : TerminologyElement [*];
	}
	part def TerminologyPackage :> TerminologyElement{
		part terminologyElement : TerminologyElement [*];
	}
	part def TerminologyPackageBinding :> TerminologyPackage{
		ref part participantPackage : TerminologyPackage [2..*];
	}
	part def TerminologyPackageInterface :> TerminologyPackage{
		ref part implements : TerminologyPackage [1];
	}
	abstract part def TerminologyAsset :> TerminologyElement;
	part def Category :> TerminologyAsset{
		ref part category : Category [*];
	}
	abstract part def ExpressionElement :> TerminologyAsset{
		attribute 'value' : EString [1];
		ref part category : Category [*];
	}
	part def Expression :> ExpressionElement{
		ref part element : ExpressionElement [*];
	}
	part def Term :> ExpressionElement{
		attribute externalReference : EString [1];
		ref part origin : ModelElement [1];
	}
}

