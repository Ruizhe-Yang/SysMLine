package artifact {
	private import ecore::*;
	public import base::*;
	part def ArtifactGroup :> ArtifactElement{
		ref artifactElement [*] : ArtifactElement;
	}
	part def ArtifactPackage :> ArtifactElement{
		part artifactElement [*] : ArtifactElement;
	}
	part def ArtifactPackageBinding :> ArtifactPackage{
		ref participantPackage [2..*] : ArtifactPackage;
	}
	part def ArtifactPackageInterface :> ArtifactPackage{
		ref implements [1] : ArtifactPackage;
	}
	abstract part def ArtifactAsset :> ArtifactElement{
		part artifactProperty [*] : Property;
	}
	part def Property :> ArtifactAsset;
	part def Technique :> ArtifactAsset;
	part def Participant :> ArtifactAsset;
	part def Activity :> ArtifactAsset{
		attribute startTime [1] : EDate;
		attribute endTime [1] : EDate;
	}
	part def Event :> ArtifactAsset{
		attribute occurence [1] : EDate;
	}
	part def Resource :> ArtifactAsset;
	part def Artifact :> ArtifactAsset{
		attribute version [1] : EString;
		attribute date [1] : EDate;
	}
	part def ArtifactAssetRelationship :> ArtifactAsset{
		ref source [1..*] : ArtifactAsset;
		ref target [1..*] : ArtifactAsset;
	}
}

