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
	abstract item def ArgumentationElement :> {
		attribute uninstantiated : EBoolean [1];
	}
	item def ArgumentGroup :> ArgumentationElement{
		ref item argumentationElement : ArgumentationElement [*];
	}
	item def ArgumentPackage :> ArgumentationElement{
		item argumentationElement : ArgumentationElement [*];
	}
	item def ArgumentPackageInterface :> ArgumentPackage{
		ref item implements : ArgumentPackage [1];
	}
	item def ArgumentPackageBinding :> ArgumentPackage{
		ref item participantPackage : ArgumentPackage [2..*];
	}
	abstract item def ArgumentAsset :> ArgumentationElement{
		item content : MultiLangString [1];
	}
	abstract item def Assertion :> ArgumentAsset{
		attribute assertionDeclaration : AssertionDeclaration [1];
		ref item metaClaim : Claim [*];
	}
	item def ArgumentReasoning :> ArgumentAsset{
		ref item structure : ArgumentPackage [1];
	}
	item def Claim :> Assertion;
	abstract item def AssertedRelationship :> Assertion{
		attribute isCounter : EBoolean [1];
		ref item source : ArgumentAsset [1..*];
		ref item target : ArgumentAsset [1..*];
		ref item reasoning : ArgumentReasoning [1];
		attribute requies : EInt [1];
	}
	item def ArtifactReference :> ArgumentAsset{
		ref item referencedArtifactElement : ArtifactElement [*];
	}
	item def AssertedArtifactSupport :> AssertedRelationship;
	item def AssertedInference :> AssertedRelationship;
	item def AssertedEvidence :> AssertedRelationship;
	item def AssertedContext :> AssertedRelationship;
	item def AssertedArtifactContext :> AssertedRelationship;
}

