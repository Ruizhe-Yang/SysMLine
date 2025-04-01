package artifact {
	private import ecore::*;
	public import base::*;
	part def ArtifactGroup :> ArtifactElement{
		ref part artifactElement : ArtifactElement [*];
	}
	part def ArtifactPackage :> ArtifactElement{
		part artifactElement : ArtifactElement [*];
	}
	part def ArtifactPackageBinding :> ArtifactPackage{
		ref part participantPackage : ArtifactPackage [2..*];
	}
	part def ArtifactPackageInterface :> ArtifactPackage{
		ref part implements : ArtifactPackage [1];
	}
	abstract part def ArtifactAsset :> ArtifactElement{
		part artifactProperty : Property [*];
	}
	part def Property :> ArtifactAsset;
	part def Technique :> ArtifactAsset;
	part def Participant :> ArtifactAsset;
	part def Activity :> ArtifactAsset{
		attribute startTime : EDate [1];
		attribute endTime : EDate [1];
	}
	part def Event :> ArtifactAsset{
		attribute occurence : EDate [1];
	}
	part def Resource :> ArtifactAsset;
	part def Artifact :> ArtifactAsset{
		attribute version : EString [1];
		attribute date : EDate [1];
	}
	part def ArtifactAssetRelationship :> ArtifactAsset{
		ref part source : ArtifactAsset [1..*];
		ref part target : ArtifactAsset [1..*];
	}
}

