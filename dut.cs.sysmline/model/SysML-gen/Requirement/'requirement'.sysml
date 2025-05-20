package 'requirement' {
	private import ecore::*;
	public import requirement::*;
	public import base::*;
	abstract part def RequirementAsset :>;
	part def RequirementPackage :> RequirementAsset{
		part requirementAsset : RequirementAsset [*];
		ref part interfaces : RequirementPackageInterface [*];
	}
	part def RequirementPackageInterface :> RequirementPackage{
		ref part interfaceOf : RequirementPackage [1];
	}
	abstract part def RequirementUtilityAsset :> RequirementAsset;
	part def Category :> RequirementUtilityAsset{
		part sub_category : Category [*];
	}
	part def Stakeholder :> RequirementUtilityAsset;
	part def Glossary :> RequirementUtilityAsset{
		part entries : GlossaryEntry [*];
	}
	part def GlossaryEntry :> RequirementUtilityAsset{
		attribute term : EString [1];
		attribute pitch : EString [1];
	}
	abstract part def Requirement :> RequirementAsset{
		attribute satisfied : EBoolean [1];
		attribute priority : EInt [1];
		ref part category : Category [*];
		ref part stakeholders : Stakeholder [*];
		part sub_requirement : Requirement [*];
		ref part dependent_requirement : Requirement [*];
	}
	part def UserRequirement :> Requirement;
	abstract part def SystemRequirement :> Requirement;
	part def FunctionalRequirement :> SystemRequirement{
		attribute function : EString [1];
		attribute inputs : EString [1];
		attribute outputs : EString [1];
		attribute source : EString [1];
		attribute destination : EString [1];
		attribute 'action' : EString [1];
		attribute requires : EString [1];
		attribute pre_condition : EString [1];
		attribute post_condition : EString [1];
		attribute side_effects : EString [1];
	}
	part def NonFunctionalRequirement :> SystemRequirement{
		part type : SecondaryRequirementType [1];
	}
	part def SecondaryRequirementType :> RequirementAsset{
		attribute architecture : EBoolean [1];
		attribute usability : EBoolean [1];
		attribute performance : EBoolean [1];
		attribute space : EBoolean [1];
		attribute dependability : EBoolean [1];
		attribute security : EBoolean [1];
		attribute environmental : EBoolean [1];
		attribute operational : EBoolean [1];
		attribute development : EBoolean [1];
		attribute regulatory : EBoolean [1];
		attribute ethical : EBoolean [1];
		attribute safety : EBoolean [1];
		attribute accounting : EBoolean [1];
	}
}

