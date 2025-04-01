package base {
	private import ecore::*;
	abstract part def Element;
	part def LangString :> Element{
		attribute lang : EString [1];
		attribute content : EString [1];
	}
	part def ExpressionLangString :> LangString{
		part expression : ArtifactElement [1];
	}
	part def MultiLangString :> Element{
		part 'value' : LangString [1..*];
	}
	abstract part def SACMElement :> Element{
		attribute gid : EString [1];
		attribute isCitation : EBoolean [1];
		attribute isAbstract : EBoolean [1];
		ref part citedElement : SACMElement [1];
		ref part abstractForm : SACMElement [1];
	}
	abstract part def UtilityElement :> SACMElement{
		part content : MultiLangString [1];
	}
	part def Description :> UtilityElement;
	part def ImplementationConstraint :> UtilityElement;
	part def Note :> UtilityElement;
	part def TaggedValue :> UtilityElement{
		part key : MultiLangString [1];
	}
	abstract part def ModelElement :> SACMElement{
		part name : LangString [1];
		part description : Description [1];
		part implementationConstraint : ImplementationConstraint [*];
		part note : Note [*];
		part taggedValue : TaggedValue [*];
	}
	abstract part def ArtifactElement :> ModelElement;
}

