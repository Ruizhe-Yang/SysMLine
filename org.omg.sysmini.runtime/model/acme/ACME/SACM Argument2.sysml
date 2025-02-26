package 'SACM Argumentation new' {
	
	private import ScalarValues::*;
	private import 'SACM Base new'::*;
	
	enum def AssertionDeclaration {
        enum asserted;
        enum needsSupport;
        enum assumed;
        enum axiomatic;
        enum defeated;
        enum asCited;
    }
    

    abstract part def ArgumentationElement :> ArtifactElement {
        attribute uninstantiated: Boolean = false;
    }

    part def ArgumentGroup :> ArgumentationElement {
        ref argumentationElement: ArgumentationElement[*];
    }

    part def ArgumentPackage :> ArgumentationElement {
        part argumentationElement: ArgumentationElement[*];
    }

    part def ArgumentPackageInterface :> ArgumentPackage {
        ref implements: ArgumentPackage[1];
    }

    part def ArgumentPackageBinding :> ArgumentPackage {
        ref participantPackage: ArgumentPackage[2..*];
    }

    abstract part def ArgumentAsset :> ArgumentationElement {
        part content: MultiLangString;
    }

    abstract part def Assertion :> ArgumentAsset {
        attribute assertionDeclaration = AssertionDeclaration::asserted;
        ref metaClaim: Claim[*];
    }

    part def ArgumentReasoning :> ArgumentAsset {
        ref structure: ArgumentPackage;
    }

    part def Claim :> Assertion {
    }

    abstract part def AssertedRelationship :> Assertion {
        attribute isCounter: Boolean = false;
        ref source: ArgumentAsset[1..*];
        ref target: ArgumentAsset[1..*];
        ref reasoning: ArgumentReasoning;
        attribute requires: Integer = 0;
    }

    part def ArtifactReference :> ArgumentAsset {
        ref referencedArtifactElement: ArtifactElement[*];
    }

    part def AssertedArtifactSupport :> AssertedRelationship {
    }

    part def AssertedInference :> AssertedRelationship {
    }

    part def AssertedEvidence :> AssertedRelationship {
    }

    part def AssertedContext :> AssertedRelationship {
    }

    part def AssertedArtifactContext :> AssertedRelationship {
    }
}