package assuranceCase {
	private import ecore::*;
	public import artifact::*;
	public import argumentation::*;
	public import terminology::*;
	public import base::*;
	item def AssuranceCasePackage :> {
		item assuranceCasePackage : AssuranceCasePackage [*];
		ref item 'interface' : AssuranceCasePackageInterface [*];
		item artifactPackage : ArtifactPackage [*];
		item argumentPackage : ArgumentPackage [*];
		item terminologyPackage : TerminologyPackage [*];
	}
	item def AssuranceCasePackageBinding :> AssuranceCasePackage{
		ref item participantPackage : AssuranceCasePackage [2..*];
	}
	item def AssuranceCasePackageInterface :> AssuranceCasePackage{
		ref item implements : AssuranceCasePackage [1];
	}
}

