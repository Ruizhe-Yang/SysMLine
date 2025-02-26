package base {
	private import ecore::*;
	abstract part def Element;
	part def LangString :> Element{
		attribute lang [1] : EString;
		attribute content [1] : EString;
	}
	part def ExpressionLangString :> LangString{
		part expression [1] : ArtifactElement;
	}
	part def MultiLangString :> Element{
		part 'value' [1..*] : LangString;
	}
	abstract part def SACMElement :> Element{
		attribute gid [1] : EString;
		attribute isCitation [1] : EBoolean;
		attribute isAbstract [1] : EBoolean;
		ref citedElement [1] : SACMElement;
		ref abstractForm [1] : SACMElement;
	}
	abstract part def UtilityElement :> SACMElement{
		part content [1] : MultiLangString;
	}
	part def Description :> UtilityElement;
	part def ImplementationConstraint :> UtilityElement;
	part def Note :> UtilityElement;
	part def TaggedValue :> UtilityElement{
		part key [1] : MultiLangString;
	}
	abstract part def ModelElement :> SACMElement{
		part name [1] : LangString;
		part description [1] : Description;
		part implementationConstraint [*] : ImplementationConstraint;
		part note [*] : Note;
		part taggedValue [*] : TaggedValue;
	}
	abstract part def ArtifactElement :> ModelElement;
}

