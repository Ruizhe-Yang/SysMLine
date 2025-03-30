package fmeda {
	private import ecore::*;
	public import base::*;
	abstract item def ComponentElement :>;
	item def ComponentPackage :> ComponentElement{
		item components : ComponentElement [*];
		ref item 'interface' : ComponentPackageInterface [*];
	}
	item def ComponentPackageInterface :> ComponentElement{
		ref item implements : ComponentPackage [1];
	}
	item def ComponentPackageBinding :> ComponentElement{
		ref item participantPackage : ComponentPackage [2..*];
	}
	item def Component :> ComponentElement{
		attribute component_name : EString [1];
		attribute reuse : EBooleanObject [1];
		attribute fit : EFloat [1];
		attribute safety_related : EBoolean [1];
		attribute safety_goal_violationi : EBoolean [1];
		attribute spf_rf : EFloat [1];
		ref item function : Function [1];
		item inputs : Input [*];
		item outputs : Output [*];
		item lports : LPort [*];
		item rports : RPort [*];
		item sub_components : ComponentElement [*];
		item failure_modes : FailureMode [*];
		item safety_mechanisms : SafetyMechanism [*];
	}
	abstract item def ComponentRelationship :> ComponentElement{
		attribute label : EString [1];
	}
	item def DirectedRelationship :> ComponentRelationship{
		ref item source : ComponentElement [1];
		ref item target : ComponentElement [1];
	}
	item def UndirectedRelationship :> ComponentRelationship{
		ref item source : ComponentElement [1];
		ref item target : ComponentElement [1];
	}
	abstract item def ComponentAsset :> ComponentElement;
	abstract item def UtilityNodes :> ComponentAsset{
		item reading : Reading [1];
	}
	abstract item def TransitionNode :> UtilityNodes;
	item def Fork :> TransitionNode{
		ref item source : ComponentElement [1];
		ref item target : ComponentElement [*];
	}
	item def Switch :> TransitionNode{
		ref item ports : ComponentElement [*];
	}
	abstract item def IONode :> UtilityNodes{
		attribute upper : EFloat [1];
		attribute lower : EFloat [1];
	}
	item def Input :> IONode;
	item def Output :> IONode;
	item def LPort :> IONode;
	item def RPort :> IONode;
	item def Function :> ComponentAsset{
		attribute func : EString [1];
	}
	item def Reading :> ComponentAsset{
		attribute 'value' : EDouble [1];
		attribute unit : EString [1];
	}
	abstract item def ComponentSafetyElement :> ComponentAsset{
		attribute identity : EInt [1];
	}
	item def FailureMode :> ComponentSafetyElement{
		attribute mode : EString [1];
		attribute cause : EString [1];
		attribute probability : EFloat [1];
		attribute safety_related : EBoolean [1];
	}
	item def SafetyMechanism :> ComponentSafetyElement{
		attribute mechanism : EString [1];
		attribute coverage : EFloat [1];
	}
}

