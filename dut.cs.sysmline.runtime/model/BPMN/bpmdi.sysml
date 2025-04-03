package bpmdi {
	private import ecore::*;
	public import bpmn20::*;
	public import dc::*;
	public import di::*;
	part def BPMNPlane :> {
		ref part bpmnElement : BaseElement [1];
	}
	part def BPMNShape :> {
		ref part bpmnElement : BaseElement [1];
		attribute isHorizontal : EBoolean [1];
		attribute isExpanded : EBoolean [1];
		attribute isMarkerVisible : EBoolean [1];
		part label : BPMNLabel [1];
		attribute isMessageVisible : EBoolean [1];
		attribute participantBandKind : ParticipantBandKind [1];
		ref part choreographyActivityShape : BPMNShape [1];
	}
	part def BPMNLabel :> {
		ref part labelStyle : BPMNLabelStyle [1];
	}
	part def BPMNLabelStyle :> {
		part font : Font [1];
	}
	enum def ParticipantBandKind {
		enum top_initiating;
		enum middle_initiating;
		enum bottom_initiating;
		enum top_non_initiating;
		enum middle_non_initiating;
		enum bottom_non_initiating;
	}
	part def BPMNEdge :> {
		part label : BPMNLabel [1];
		ref part bpmnElement : BaseElement [1];
		ref part sourceElement : DiagramElement [1];
		ref part targetElement : DiagramElement [1];
		attribute messageVisibleKind : MessageVisibleKind [1];
	}
	enum def MessageVisibleKind {
		enum initiating;
		enum non_initiating;
	}
	part def BPMNDiagram :> {
		part plane : BPMNPlane [1];
		part labelStyle : BPMNLabelStyle [*];
	}
}

