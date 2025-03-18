package artifact {
	private import ecore::*;
	public import base::*;
	item def ArtifactGroup :> {
		ref item artifactElement : ArtifactElement [*];
	}
	item def ArtifactPackage :> {
		item artifactElement : ArtifactElement [*];
	}
	item def ArtifactPackageBinding :> ArtifactPackage{
		ref item participantPackage : ArtifactPackage [2..*];
	}
	item def ArtifactPackageInterface :> ArtifactPackage{
		ref item implements : ArtifactPackage [1];
	}
	abstract item def ArtifactAsset :> {
		item artifactProperty : Property [*];
	}
	item def Property :> ArtifactAsset;
	item def Technique :> ArtifactAsset;
	item def Participant :> ArtifactAsset;
	item def Activity :> ArtifactAsset{
		attribute startTime : EDate [1];
		attribute endTime : EDate [1];
	}
	item def Event :> ArtifactAsset{
		attribute occurence : EDate [1];
	}
	item def Resource :> ArtifactAsset;
	item def Artifact :> ArtifactAsset{
		attribute version : EString [1];
		attribute date : EDate [1];
	}
	item def ArtifactAssetRelationship :> ArtifactAsset{
		ref item source : ArtifactAsset [1..*];
		ref item target : ArtifactAsset [1..*];
	}
}

