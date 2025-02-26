package 'SACM Base new' {
	
	private import ScalarValues::*;
	
	abstract part def Element;
	
	part def LangString :> Element{
		attribute lang: String;
		attribute content: String;
	}
	
	part def ExpressionLangString :> LangString{
	}
	
	part def MultiLangString :> Element{
	}
	
	abstract part def SACMElement :> Element{
		attribute gid: String;
		attribute isCitation: Boolean = false;
		attribute isAbstract: Boolean = false;
		ref citedElement: SACMElement;
		ref abstractForm: SACMElement;
	}
	
	abstract part def UtilityElement :> SACMElement{
	}
	
	part def Description :> UtilityElement{	
	}
	
	part def ImplementationConstraint  :> UtilityElement{
	}	
	
	part def Note   :> UtilityElement{
	}
	
	part def TaggedValue    :> UtilityElement{
	}
	
	abstract part def ModelElement :> SACMElement{
	}
	
	abstract part def ArtifactElement :> ModelElement{
	}

}