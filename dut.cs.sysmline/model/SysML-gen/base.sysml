package base {
	private import ecore::*;
	abstract item def Element;
	item def LangString :> Element{
		attribute lang : EString [1];
		attribute content : EString [1];
	}
	item def ExpressionLangString :> LangString{
		item expression : ArtifactElement [1];
	}
	item def MultiLangString :> Element{
		item 'value' : LangString [1..*];
	}
	abstract item def SACMElement :> Element{
		attribute gid : EString [1];
		attribute isCitation : EBoolean [1];
		attribute isAbstract : EBoolean [1];
		ref item citedElement : SACMElement [1];
		ref item abstractForm : SACMElement [1];
	}
	abstract item def UtilityElement :> SACMElement{
		item content : MultiLangString [1];
	}
	item def Description :> UtilityElement;
	item def ImplementationConstraint :> UtilityElement;
	item def Note :> UtilityElement;
	item def TaggedValue :> UtilityElement{
		item key : MultiLangString [1];
	}
	abstract item def ModelElement :> SACMElement{
		item name : LangString [1];
		item description : Description [1];
		item implementationConstraint : ImplementationConstraint [*];
		item note : Note [*];
		item taggedValue : TaggedValue [*];
	}
	abstract item def ArtifactElement :> ModelElement;
}

