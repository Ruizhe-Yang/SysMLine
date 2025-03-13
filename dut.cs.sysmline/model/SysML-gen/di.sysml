package di {
	private import ecore::*;
	public import dc::*;
	abstract item def DiagramElement {
		ref item owningDiagram : Diagram [1];
		ref item owningElement : DiagramElement [1];
		ref item ownedElement : DiagramElement [*];
		ref item modelElement : EObject [1];
		ref item style : Style [1];
	}
	abstract item def Diagram {
		attribute name : EString [1];
		attribute documentation : EString [1];
		attribute resolution : EFloat [1];
		ref item ownedStyle : Style [*];
		ref item rootElement : DiagramElement [1];
	}
	abstract item def Style;
	abstract item def Node :> DiagramElement;
	abstract item def Edge :> DiagramElement{
		ref item source : DiagramElement [1];
		ref item target : DiagramElement [1];
		item waypoint : [2..*];
	}
	abstract item def Shape :> Node{
		item bounds : [1];
	}
	abstract item def LabeledEdge :> Edge{
		ref item ownedLabel : Label [*];
	}
	abstract item def Label :> Node{
		item bounds : [1];
	}
	abstract item def LabeledShape :> Shape{
		ref item ownedLabel : Label [*];
	}
	abstract item def Plane :> Node{
		item planeElement : DiagramElement [*];
	}
}

