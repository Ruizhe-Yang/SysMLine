package 'SACM Terminology' {
	
	private import ScalarValues::*;
	private import 'SACM Base'::*;
	private import 'SACM Artifact'::*;		
	private import 'SACM Argumentation'::*;
	attribute def String;	
	
	abstract part def TerminologyElement :> ArtifactElement {
	}
	
	part def TerminologyGroup :> TerminologyElement {
		ref terminologyElement: TerminologyElement[*];
	}
	
	part def TerminologyPackage :> TerminologyElement {
		part terminologyElement: TerminologyElement[*];
	}
	
	part def TerminologyPackageBinding :> TerminologyPackage {
		ref participantPackage: TerminologyPackage[2..*];
	}
	
	part def TerminologyPackageInterface :> TerminologyPackage {
		ref implements : TerminologyPackage[1];
	}
	
	abstract part def TerminologyAsset :> TerminologyElement {
	}
	
	part def Category :> TerminologyAsset {
		ref category : Category[*];
	}
	
	abstract part def ExpressionElement :> TerminologyAsset {
		attribute value : String[1];
		ref category : Category[*];
	}
	
	part def Expression :> ExpressionElement {
		ref element : ExpressionElement[*];
	}	
	
	part def Term :> ExpressionElement{
		attribute externalReference : String;
		ref origin : ModelElement;
	}
	
}