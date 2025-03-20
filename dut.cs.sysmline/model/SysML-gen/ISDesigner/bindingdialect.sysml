package bindingdialect {
	private import ecore::*;
	public import description::*;
	public import viewpoint::*;
	public import org.eclipse.emf::*;
	public import style::*;
	public import tool::*;
	public import validation::*;
	public import audit::*;
	item def DBindingEditor :> DRepresentation, DSemanticDecorator{
		ref item description : DBindingEditorDescription [1];
		item boundElements : DBoundElement [*];
		item bindingEdges : DBindingEdge [*];
	}
	item def DBindingEdge :> DRepresentationElement{
		ref item left : DBoundElement [1];
		ref item right : DBoundElement [1];
	}
	item def DBoundElement :> DRepresentationElement{
		ref item parent : DBoundElement [1];
		ref item children : DBoundElement [*];
		ref item edgesAsLeft : DBindingEdge [*];
		ref item edgesAsRight : DBindingEdge [*];
		ref item edges : DBindingEdge [*];
	}
	package description {
		item def DBindingEditorDescription :> RepresentationDescription;
		item def DBindingEditorCreationDescription :> RepresentationCreationDescription{
			ref item description : DBindingEditorDescription [1];
		}
	}
}

