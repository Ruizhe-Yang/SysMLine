package gsn {
	private import ecore::*;
	public import argumentation::*;
	public import base::*;
	item def Module :> ArgumentPackage;
	item def ContractModule :> ArgumentPackageBinding;
	item def ChoiceNode :> ArgumentAsset{
		attribute choice : EString [1];
	}
	item def Context :> ArgumentAsset{
		attribute isPublic : EBoolean [1];
		attribute refersToExternalMaterial : EBoolean [1];
	}
	item def Strategy :> ArgumentReasoning{
		attribute undeveloped : EBoolean [1];
	}
	item def Goal :> Claim{
		attribute isPublic : EBoolean [1];
		attribute undeveloped : EBoolean [1];
		attribute toBeSupportedByContract : EBoolean [1];
	}
	item def Justification :> Claim;
	item def Assumption :> Claim;
	item def AwayGoal :> Claim;
	item def AwaySolution :> ArtifactReference;
	item def AwayContext :> ArgumentAsset;
	item def ModuleReference :> ArtifactReference{
		ref item module : Module [1];
	}
	item def ContractModuleReference :> ArtifactReference{
		ref item module : ContractModule [1];
	}
	item def Solution :> ArtifactReference{
		attribute isPublic : EBoolean [1];
	}
	item def SupportedBy :> AssertedInference{
		attribute isMany : EBoolean [1];
		attribute isOptional : EBoolean [1];
		attribute isChoice : EBoolean [1];
	}
	item def InContextOf :> AssertedContext{
		attribute isMany : EBoolean [1];
		attribute isOptional : EBoolean [1];
		attribute isChoice : EBoolean [1];
	}
}

