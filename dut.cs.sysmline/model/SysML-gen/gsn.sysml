package gsn {
	private import ecore::*;
	public import argumentation::*;
	item def Module :>;
	item def ContractModule :>;
	item def ChoiceNode :> {
		attribute choice : EString [1];
	}
	item def Context :> {
		attribute isPublic : EBoolean [1];
		attribute refersToExternalMaterial : EBoolean [1];
	}
	item def Strategy :> {
		attribute undeveloped : EBoolean [1];
	}
	item def Goal :> {
		attribute isPublic : EBoolean [1];
		attribute undeveloped : EBoolean [1];
		attribute toBeSupportedByContract : EBoolean [1];
	}
	item def Justification :>;
	item def Assumption :>;
	item def AwayGoal :>;
	item def AwaySolution :>;
	item def AwayContext :>;
	item def ModuleReference :> {
		ref item module : Module [1];
	}
	item def ContractModuleReference :> {
		ref item module : ContractModule [1];
	}
	item def Solution :> {
		attribute isPublic : EBoolean [1];
	}
	item def SupportedBy :> {
		attribute isMany : EBoolean [1];
		attribute isOptional : EBoolean [1];
		attribute isChoice : EBoolean [1];
	}
	item def InContextOf :> {
		attribute isMany : EBoolean [1];
		attribute isOptional : EBoolean [1];
		attribute isChoice : EBoolean [1];
	}
}

