package gsn {
	private import ecore::*;
	public import argumentation::*;
	part def Module :> ArgumentPackage;
	part def ContractModule :> ArgumentPackageBinding;
	part def ChoiceNode :> ArgumentAsset{
		attribute choice [1] : EString;
	}
	part def Context :> ArgumentAsset{
		attribute isPublic [1] : EBoolean;
		attribute refersToExternalMaterial [1] : EBoolean;
	}
	part def Strategy :> ArgumentReasoning{
		attribute undeveloped [1] : EBoolean;
	}
	part def Goal :> Claim{
		attribute isPublic [1] : EBoolean;
		attribute undeveloped [1] : EBoolean;
		attribute toBeSupportedByContract [1] : EBoolean;
	}
	part def Justification :> Claim;
	part def Assumption :> Claim;
	part def AwayGoal :> Claim;
	part def AwaySolution :> ArtifactReference;
	part def AwayContext :> ArgumentAsset;
	part def ModuleReference :> ArtifactReference{
		ref module [1] : Module;
	}
	part def ContractModuleReference :> ArtifactReference{
		ref module [1] : ContractModule;
	}
	part def Solution :> ArtifactReference{
		attribute isPublic [1] : EBoolean;
	}
	part def SupportedBy :> AssertedInference{
		attribute isMany [1] : EBoolean;
		attribute isOptional [1] : EBoolean;
		attribute isChoice [1] : EBoolean;
	}
	part def InContextOf :> AssertedContext{
		attribute isMany [1] : EBoolean;
		attribute isOptional [1] : EBoolean;
		attribute isChoice [1] : EBoolean;
	}
}

