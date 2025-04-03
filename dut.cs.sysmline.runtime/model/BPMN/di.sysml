package di {
	private import ecore::*;
	public import dc::*;
	abstract part def DiagramElement {
		ref part owningDiagram : Diagram [1];
		ref part owningElement : DiagramElement [1];
		ref part ownedElement : DiagramElement [*];
		ref part modelElement : EObject [1];
		ref part style : Style [1];
	}
	abstract part def Diagram {
		attribute name : EString [1];
		attribute documentation : EString [1];
		attribute resolution : EFloat [1];
		ref part ownedStyle : Style [*];
		ref part rootElement : DiagramElement [1];
	}
	abstract part def Style;
	abstract part def Node :> DiagramElement;
	abstract part def Edge :> DiagramElement{
		ref part source : DiagramElement [1];
		ref part target : DiagramElement [1];
		part waypoint : Point [2..*];
	}
	abstract part def Shape :> Node{
		part bounds : Bounds [1];
	}
	abstract part def LabeledEdge :> Edge{
		ref part ownedLabel : Label [*];
	}
	abstract part def Label :> Node{
		part bounds : Bounds [1];
	}
	abstract part def LabeledShape :> Shape{
		ref part ownedLabel : Label [*];
	}
	abstract part def Plane :> Node{
		part planeElement : DiagramElement [*];
	}
}

