package gsn {
	private import ecore::*;
	public import argumentation::*;
	public import base::*;
	part def Module :> ArgumentPackage;
	part def ContractModule :> ArgumentPackageBinding;
	part def ChoiceNode :> ArgumentAsset{
		attribute choice : EString [1];
	}
	part def Context :> ArgumentAsset{
		attribute isPublic : EBoolean [1];
		attribute refersToExternalMaterial : EBoolean [1];
	}
	part def Strategy :> ArgumentReasoning{
		attribute undeveloped : EBoolean [1];
	}
	part def Goal :> Claim{
		attribute isPublic : EBoolean [1];
		attribute undeveloped : EBoolean [1];
		attribute toBeSupportedByContract : EBoolean [1];
	}
	part def Justification :> Claim;
	part def Assumption :> Claim;
	part def AwayGoal :> Claim;
	part def AwaySolution :> ArtifactReference;
	part def AwayContext :> ArgumentAsset;
	part def ModuleReference :> ArtifactReference{
		ref part module : Module [1];
	}
	part def ContractModuleReference :> ArtifactReference{
		ref part module : ContractModule [1];
	}
	part def Solution :> ArtifactReference{
		attribute isPublic : EBoolean [1];
	}
	part def SupportedBy :> AssertedInference{
		attribute isMany : EBoolean [1];
		attribute isOptional : EBoolean [1];
		attribute isChoice : EBoolean [1];
	}
	part def InContextOf :> AssertedContext{
		attribute isMany : EBoolean [1];
		attribute isOptional : EBoolean [1];
		attribute isChoice : EBoolean [1];
	}
}

