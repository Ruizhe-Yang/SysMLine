package bpmdi {
	private import ecore::*;
	private import bpmn2::*;
	private import dc::*;
	private import di::*;
	part def BPMNPlane :> Plane{
		ref bpmnElement [1] : BaseElement;
	}
	part def BPMNShape :> LabeledShape{
		ref bpmnElement [1] : BaseElement;
		attribute isHorizontal [1] : EBoolean;
		attribute isExpanded [1] : EBoolean;
		attribute isMarkerVisible [1] : EBoolean;
		part label [1] : BPMNLabel;
		attribute isMessageVisible [1] : EBoolean;
		attribute participantBandKind [1] : ParticipantBandKind;
		ref choreographyActivityShape [1] : BPMNShape;
	}
	part def BPMNLabel :> Label{
		ref labelStyle [1] : BPMNLabelStyle;
	}
	part def BPMNLabelStyle :> Style{
		part font [1] : Font;
	}
	enum def ParticipantBandKind {
		enum top_initiating;
		enum middle_initiating;
		enum bottom_initiating;
		enum top_non_initiating;
		enum middle_non_initiating;
		enum bottom_non_initiating;
	}
	part def BPMNEdge :> LabeledEdge{
		part label [1] : BPMNLabel;
		ref bpmnElement [1] : BaseElement;
		ref sourceElement [1] : DiagramElement;
		ref targetElement [1] : DiagramElement;
		attribute messageVisibleKind [1] : MessageVisibleKind;
	}
	enum def MessageVisibleKind {
		enum initiating;
		enum non_initiating;
	}
	part def BPMNDiagram :> Diagram{
		part plane [1] : BPMNPlane;
		part labelStyle [*] : BPMNLabelStyle;
	}
}

