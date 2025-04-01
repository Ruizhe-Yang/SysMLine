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
		attribute uninstantiated : EBoolean [1];
	}
	part def ArgumentGroup :> ArgumentationElement{
		ref part argumentationElement : ArgumentationElement [*];
	}
	part def ArgumentPackage :> ArgumentationElement{
		part argumentationElement : ArgumentationElement [*];
	}
	part def ArgumentPackageInterface :> ArgumentPackage{
		ref part implements : ArgumentPackage [1];
	}
	part def ArgumentPackageBinding :> ArgumentPackage{
		ref part participantPackage : ArgumentPackage [2..*];
	}
	abstract part def ArgumentAsset :> ArgumentationElement{
		part content : MultiLangString [1];
	}
	abstract part def Assertion :> ArgumentAsset{
		attribute assertionDeclaration : AssertionDeclaration [1];
		ref part metaClaim : Claim [*];
	}
	part def ArgumentReasoning :> ArgumentAsset{
		ref part structure : ArgumentPackage [1];
	}
	part def Claim :> Assertion;
	abstract part def AssertedRelationship :> Assertion{
		attribute isCounter : EBoolean [1];
		ref part source : ArgumentAsset [1..*];
		ref part target : ArgumentAsset [1..*];
		ref part reasoning : ArgumentReasoning [1];
		attribute requies : EInt [1];
	}
	part def ArtifactReference :> ArgumentAsset{
		ref part referencedArtifactElement : ArtifactElement [*];
	}
	part def AssertedArtifactSupport :> AssertedRelationship;
	part def AssertedInference :> AssertedRelationship;
	part def AssertedEvidence :> AssertedRelationship;
	part def AssertedContext :> AssertedRelationship;
	part def AssertedArtifactContext :> AssertedRelationship;
}

