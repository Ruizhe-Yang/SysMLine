package argumentation {
	private import ecore::*;
	public import base::*;
	enum def AssertionDeclaration {
		enum asserted;
		enum needsSupport;
		enum assumed;
		enum axiomatic;
		enum defeated;
		enum asCited;
	}
	abstract part def ArgumentationElement :> ArtifactElement{
		attribute uninstantiated [1] : EBoolean;
	}
	part def ArgumentGroup :> ArgumentationElement{
		ref argumentationElement [*] : ArgumentationElement;
	}
	part def ArgumentPackage :> ArgumentationElement{
		part argumentationElement [*] : ArgumentationElement;
	}
	part def ArgumentPackageInterface :> ArgumentPackage{
		ref implements [1] : ArgumentPackage;
	}
	part def ArgumentPackageBinding :> ArgumentPackage{
		ref participantPackage [2..*] : ArgumentPackage;
	}
	abstract part def ArgumentAsset :> ArgumentationElement{
		part content [1] : MultiLangString;
	}
	abstract part def Assertion :> ArgumentAsset{
		attribute assertionDeclaration [1] : AssertionDeclaration;
		ref metaClaim [*] : Claim;
	}
	part def ArgumentReasoning :> ArgumentAsset{
		ref structure [1] : ArgumentPackage;
	}
	part def Claim :> Assertion;
	abstract part def AssertedRelationship :> Assertion{
		attribute isCounter [1] : EBoolean;
		ref source [1..*] : ArgumentAsset;
		ref target [1..*] : ArgumentAsset;
		ref reasoning [1] : ArgumentReasoning;
		attribute requies [1] : EInt;
	}
	part def ArtifactReference :> ArgumentAsset{
		ref referencedArtifactElement [*] : ArtifactElement;
	}
	part def AssertedArtifactSupport :> AssertedRelationship;
	part def AssertedInference :> AssertedRelationship;
	part def AssertedEvidence :> AssertedRelationship;
	part def AssertedContext :> AssertedRelationship;
	part def AssertedArtifactContext :> AssertedRelationship;
}

