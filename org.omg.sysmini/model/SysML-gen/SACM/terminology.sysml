package terminology {
	private import ecore::*;
	public import base::*;
	abstract part def TerminologyElement :> ArtifactElement;
	part def TerminologyGroup :> TerminologyElement{
		ref terminologyElement [*] : TerminologyElement;
	}
	part def TerminologyPackage :> TerminologyElement{
		part terminologyElement [*] : TerminologyElement;
	}
	part def TerminologyPackageBinding :> TerminologyPackage{
		ref participantPackage [2..*] : TerminologyPackage;
	}
	part def TerminologyPackageInterface :> TerminologyPackage{
		ref implements [1] : TerminologyPackage;
	}
	abstract part def TerminologyAsset :> TerminologyElement;
	part def Category :> TerminologyAsset{
		ref category [*] : Category;
	}
	abstract part def ExpressionElement :> TerminologyAsset{
		attribute 'value' [1] : EString;
		ref category [*] : Category;
	}
	part def Expression :> ExpressionElement{
		ref element [*] : ExpressionElement;
	}
	part def Term :> ExpressionElement{
		attribute externalReference [1] : EString;
		ref origin [1] : ModelElement;
	}
}

