package base {
	private import ecore::*;
	abstract part def Element {
		attribute gid : EString [1];
		attribute isCitation : EBoolean [1];
		attribute isAbstract : EBoolean [1];
		ref part citedElement : Element [1];
	}
	abstract part def ModelElement :> Element{
		part name : LangString [1];
		part description : Description [1];
		part 'constraint' : ImplementationConstraint [*];
		part note : Note [*];
		part taggedValue : TaggedValue [*];
		part externalReference : ExternalReference [*];
	}
	part def LangString :> Element{
		attribute lang : EString [1];
		attribute content : EString [1];
	}
	part def MultiLangString :> Element{
		part 'value' : LangString [1..*];
	}
	abstract part def UtilityElement :> ModelElement{
		part content : MultiLangString [1];
	}
	part def ExternalReference :> UtilityElement{
		part location : LangString [1];
		part type : LangString [1];
		part 'metadata' : LangString [1];
		part version : LangString [1];
		part implementationConstraint : ImplementationConstraint [*];
	}
	part def Description :> UtilityElement;
	part def ImplementationConstraint :> UtilityElement;
	part def Note :> UtilityElement;
	part def TaggedValue :> UtilityElement{
		part key : MultiLangString [1];
	}
	abstract part def ArtifactElement :> ModelElement;
}

