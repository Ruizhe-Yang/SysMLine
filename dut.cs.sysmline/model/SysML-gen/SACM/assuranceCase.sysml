package assuranceCase {
	private import ecore::*;
	public import artifact::*;
	public import argumentation::*;
	public import terminology::*;
	public import base::*;
	part def AssuranceCasePackage :> ArtifactElement{
		part assuranceCasePackage : AssuranceCasePackage [*];
		ref part 'interface' : AssuranceCasePackageInterface [*];
		part artifactPackage : ArtifactPackage [*];
		part argumentPackage : ArgumentPackage [*];
		part terminologyPackage : TerminologyPackage [*];
	}
	part def AssuranceCasePackageBinding :> AssuranceCasePackage{
		ref part participantPackage : AssuranceCasePackage [2..*];
	}
	part def AssuranceCasePackageInterface :> AssuranceCasePackage{
		ref part implements : AssuranceCasePackage [1];
	}
}

