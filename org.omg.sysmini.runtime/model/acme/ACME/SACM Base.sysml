package 'SACM Base' {
	
	private import ScalarValues::*;
	
	
	
	abstract part def Element;
	
	part def LangString :> Element{
		attribute lang: String;
		attribute content: String;
	}
	
	part def ExpressionLangString :> LangString{
		part expression: ArtifactElement;
	}
	
	part def MultiLangString :> Element{
		part value : LangString[*];
	}
	
	abstract part def SACMElement :> Element{
		attribute gid: String;
		attribute isCitation: Boolean = false;
		attribute isAbstract: Boolean = false;
		ref citedElement: SACMElement;
		ref abstractForm: SACMElement;
	}
	
	abstract part def UtilityElement :> SACMElement{
		part content: MultiLangString;
	}
	
	part def Description :> UtilityElement{
		
	}
	
	part def ImplementationConstraint  :> UtilityElement{
		
	}	
	
	part def Note   :> UtilityElement{
		
	}
	
	part def TaggedValue    :> UtilityElement{
		part key: MultiLangString[1];
	}
	
	abstract part def ModelElement :> SACMElement{
		part name: LangString;
		part description: Description;
		part implementationConstraint: ImplementationConstraint[*];
        part note: Note[*];
        part taggedValue: TaggedValue[*];
	}
	
	abstract part def ArtifactElement :> ModelElement{
		
	}

}