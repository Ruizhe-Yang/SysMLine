package assuranceCase {
	private import ecore::*;
	public import artifact::*;
	public import argumentation::*;
	public import terminology::*;
	public import base::*;
	part def AssuranceCasePackage :> ArtifactElement{
		part assuranceCasePackage [*] : AssuranceCasePackage;
		ref 'interface' [*] : AssuranceCasePackageInterface;
		part artifactPackage [*] : ArtifactPackage;
		part argumentPackage [*] : ArgumentPackage;
		part terminologyPackage [*] : TerminologyPackage;
	}
	part def AssuranceCasePackageBinding :> AssuranceCasePackage{
		ref participantPackage [2..*] : AssuranceCasePackage;
	}
	part def AssuranceCasePackageInterface :> AssuranceCasePackage{
		ref implements [1] : AssuranceCasePackage;
	}
}

