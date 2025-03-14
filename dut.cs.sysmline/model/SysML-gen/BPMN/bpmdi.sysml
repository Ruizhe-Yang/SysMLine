package bpmndi {
	private import ecore::*;
	public import bpmn2::*;
	public import dc::*;
	public import di::*;
	item def BPMNPlane :> Plane{
		ref item bpmnElement : BaseElement [1];
	}
	item def BPMNShape :> LabeledShape{
		ref item bpmnElement : BaseElement [1];
		attribute isHorizontal : EBoolean [1];
		attribute isExpanded : EBoolean [1];
		attribute isMarkerVisible : EBoolean [1];
		item label : BPMNLabel [1];
		attribute isMessageVisible : EBoolean [1];
		attribute participantBandKind : ParticipantBandKind [1];
		ref item choreographyActivityShape : BPMNShape [1];
	}
	item def BPMNLabel :> Label{
		ref item labelStyle : BPMNLabelStyle [1];
	}
	item def BPMNLabelStyle :> Style{
		item font : Font [1];
	}
	enum def ParticipantBandKind {
		enum top_initiating;
		enum middle_initiating;
		enum bottom_initiating;
		enum top_non_initiating;
		enum middle_non_initiating;
		enum bottom_non_initiating;
	}
	item def BPMNEdge :> LabeledEdge{
		item label : BPMNLabel [1];
		ref item bpmnElement : BaseElement [1];
		ref item sourceElement : DiagramElement [1];
		ref item targetElement : DiagramElement [1];
		attribute messageVisibleKind : MessageVisibleKind [1];
	}
	enum def MessageVisibleKind {
		enum initiating;
		enum non_initiating;
	}
	item def BPMNDiagram :> Diagram{
		item plane : BPMNPlane [1];
		item labelStyle : BPMNLabelStyle [*];
	}
}

