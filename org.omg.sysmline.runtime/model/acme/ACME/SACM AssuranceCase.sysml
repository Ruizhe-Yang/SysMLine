package 'SACM Assurancecase' {
	
	private import ScalarValues::*;
	private import 'SACM Base'::*;
	private import 'SACM Artifact'::*;
	private import 'SACM Argumentation'::*;
	private import 'SACM Terminology'::*;
	
	
	
	part def AssuranceCasePackage :> ArtifactElement{
		part assuranceCasePackage: AssuranceCasePackage[0..*];
		part artifactPackage: ArtifactPackage[*];
		part argumentPackage: ArgumentPackage[*];
		part terminologyPackage: TerminologyPackage[*];
	}
	
	
    part def Module :> ArgumentPackage {
    }

    part def ContractModule :> ArgumentPackageBinding {
    }

    part def ChoiceNode :> ArgumentAsset {
        attribute choice: String;
    }

    part def Context :> ArgumentAsset {
        attribute isPublic: Boolean = false;
        attribute refersToExternalMaterial: Boolean = false;
    }

    part def Strategy :> ArgumentReasoning {
        attribute undeveloped: Boolean = false;
    }

    part def Goal :> Claim {
        attribute isPublic: Boolean = false;
        attribute undeveloped: Boolean = false;
        attribute toBeSupportedByContract: Boolean = false;
    }

    part def Justification :> Claim {
    }

    part def Assumption :> Claim {
    }

    part def AwayGoal :> Claim {
    }

    part def AwaySolution :> ArtifactReference {
    }

    part def AwayContext :> ArgumentAsset {
    }

    part def ModuleReference :> ArtifactReference {
        ref module: Module;
    }

    part def ContractModuleReference :> ArtifactReference {
        ref module: ContractModule;
    }

    part def Solution :> ArtifactReference {
        attribute isPublic: Boolean = false;
    }

    part def SupportedBy :> AssertedInference {
        attribute isMany: Boolean = false;
        attribute isOptional: Boolean = false;
        attribute isChoice: Boolean = false;
    }

    part def InContextOf :> AssertedContext {
        attribute isMany: Boolean = false;
        attribute isOptional: Boolean = false;
        attribute isChoice: Boolean = false;
    }

}