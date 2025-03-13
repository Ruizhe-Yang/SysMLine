package di {
	private import ecore::*;
	private import dc::*;
	abstract part def DiagramElement {
		ref owningDiagram [1] : Diagram;
		ref owningElement [1] : DiagramElement;
		ref ownedElement [*] : DiagramElement;
		ref modelElement [1] : EObject;
		ref style [1] : Style;
	}
	abstract part def Diagram {
		attribute name [1] : EString;
		attribute documentation [1] : EString;
		attribute resolution [1] : EFloat;
		ref ownedStyle [*] : Style;
		ref rootElement [1] : DiagramElement;
	}
	abstract part def Style;
	abstract part def Node :> DiagramElement;
	abstract part def Edge :> DiagramElement{
		ref source [1] : DiagramElement;
		ref target [1] : DiagramElement;
		part waypoint [2..*] : Point;
	}
	abstract part def Shape :> Node{
		part bounds [1] : Bounds;
	}
	abstract part def LabeledEdge :> Edge{
		ref ownedLabel [*] : Label;
	}
	abstract part def Label :> Node{
		part bounds [1] : Bounds;
	}
	abstract part def LabeledShape :> Shape{
		ref ownedLabel [*] : Label;
	}
	abstract part def Plane :> Node{
		part planeElement [*] : DiagramElement;
	}
}

