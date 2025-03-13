package bpmdi {
	private import ecore::*;
	public import bpmn20::*;
	public import bpmn20::*;
	public import dc::*;
	public import bpmn20::*;
	public import di::*;
	public import di::*;
	public import bpmn20::*;
	public import di::*;
	public import bpmn20::*;
	public import di::*;
	public import di::*;
	public import dc::*;
	public import di::*;
	public import bpmn20::*;
	public import di::*;
	public import di::*;
	public import di::*;
	public import di::*;
	item def BPMNPlane :> {
		ref item bpmnElement : [1];
	}
	item def BPMNShape :> {
		ref item bpmnElement : [1];
		attribute isHorizontal : EBoolean [1];
		attribute isExpanded : EBoolean [1];
		attribute isMarkerVisible : EBoolean [1];
		item label : BPMNLabel [1];
		attribute isMessageVisible : EBoolean [1];
		attribute participantBandKind : ParticipantBandKind [1];
		ref item choreographyActivityShape : BPMNShape [1];
	}
	item def BPMNLabel :> {
		ref item labelStyle : BPMNLabelStyle [1];
	}
	item def BPMNLabelStyle :> {
		item font : [1];
	}
	enum def ParticipantBandKind {
		enum top_initiating;
		enum middle_initiating;
		enum bottom_initiating;
		enum top_non_initiating;
		enum middle_non_initiating;
		enum bottom_non_initiating;
	}
	item def BPMNEdge :> {
		item label : BPMNLabel [1];
		ref item bpmnElement : [1];
		ref item sourceElement : [1];
		ref item targetElement : [1];
		attribute messageVisibleKind : MessageVisibleKind [1];
	}
	enum def MessageVisibleKind {
		enum initiating;
		enum non_initiating;
	}
	item def BPMNDiagram :> {
		item plane : BPMNPlane [1];
		item labelStyle : BPMNLabelStyle [*];
	}
}

