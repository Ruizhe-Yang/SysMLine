package 'SACM Artifact new' {
	
	private import ScalarValues::*;
	private import 'SACM Base new'::*;
	attribute def EDate;
	
    part def ArtifactGroup :> ArtifactElement {
        ref artifactElement: ArtifactElement[*];
    }

    part def ArtifactPackage :> ArtifactElement {
        part artifactElement: ArtifactElement[*];
    }

    part def ArtifactPackageBinding :> ArtifactPackage {
        ref participantPackage: ArtifactPackage[2..*];
    }

    part def ArtifactPackageInterface :> ArtifactPackage {
        ref implements: ArtifactPackage[1];
    }

    abstract part def ArtifactAsset :> ArtifactElement {
    }

    part def Property :> ArtifactAsset {
    }

    part def Technique :> ArtifactAsset {
    }

    part def Participant :> ArtifactAsset {
    }

    part def Activity :> ArtifactAsset {
        attribute startTime: EDate;
        attribute endTime: EDate;
    }

    part def Event :> ArtifactAsset {
        attribute eventoccurrence: EDate;
    }

    part def Resource :> ArtifactAsset {
    }

    part def Artifact :> ArtifactAsset {
        attribute version: String;
        attribute date: EDate;
    }

    part def ArtifactAssetRelationship :> ArtifactAsset {
        ref source: ArtifactAsset[1..*];
        ref target: ArtifactAsset[1..*];
    }

}