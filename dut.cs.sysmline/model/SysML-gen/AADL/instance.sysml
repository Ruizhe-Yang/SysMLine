package instance {
	private import ecore::*;
	public import aadl2::*;
	item def FeatureInstance :> ConnectionInstanceEnd, InstanceObject{
		ref item srcFlowSpec : FlowSpecificationInstance [*];
		ref item dstFlowSpec : FlowSpecificationInstance [*];
		item featureInstance : FeatureInstance [*];
		attribute category : FeatureCategory [1];
		attribute direction : DirectionType [1];
		ref item feature : Feature [1];
		attribute index : Integer [*];
	}
	abstract item def InstanceObject :> NamedElement;
	abstract item def ConnectionInstanceEnd :> InstanceObject{
		ref item srcConnectionInstance : ConnectionInstance [*];
		ref item dstConnectionInstance : ConnectionInstance [*];
	}
	item def ConnectionInstance :> FlowElementInstance{
		ref item inSystemOperationMode : SystemOperationMode [*];
		ref item inModeTransitions : ModeTransitionInstance [*];
		attribute complete : Boolean [1];
		attribute kind : ConnectionKind [1];
		ref item destination : ConnectionInstanceEnd [1];
		item connectionReference : ConnectionReference [1..*];
		ref item source : ConnectionInstanceEnd [1];
	}
	abstract item def FlowElementInstance :> InstanceObject;
	item def SystemOperationMode :> Mode{
		ref item currentMode : ModeInstance [*];
	}
	item def ModeInstance :> InstanceObject{
		ref item srcModeTransition : ModeTransitionInstance [*];
		ref item dstModeTransition : ModeTransitionInstance [*];
		attribute initial : Boolean [1];
		ref item mode : Mode [1];
	}
	item def ModeTransitionInstance :> ConnectionInstanceEnd, InstanceObject{
		ref item destination : ModeInstance [1];
		ref item modeTransition : ModeTransition [1];
		ref item source : ModeInstance [1];
	}
	enum def ConnectionKind {
		enum featureConnection;
		enum accessConnection;
		enum parameterConnection;
		enum portConnection;
		enum modeTransitionConnection;
		enum featureGroupConnection;
	}
	item def ConnectionReference :> InstanceObject{
		ref item context : ComponentInstance [1];
		ref item 'connection' : Connection [1];
	}
	item def ComponentInstance :> ConnectionInstanceEnd, FlowElementInstance{
		item featureInstance : FeatureInstance [*];
		item componentInstance : ComponentInstance [*];
		item modeInstance : ModeInstance [*];
		item modeTransitionInstance : ModeTransitionInstance [*];
		attribute category : ComponentCategory [1];
		ref item inModes : ModeInstance [*];
		item flowSpecification : FlowSpecificationInstance [*];
		item endToEndFlow : EndToEndFlowInstance [*];
		item connectionInstance : ConnectionInstance [*];
		ref item subcomponent : Subcomponent [1];
		attribute index : Integer [*];
	}
	item def FlowSpecificationInstance :> FlowElementInstance{
		ref item source : FeatureInstance [1];
		ref item destination : FeatureInstance [1];
		ref item flowSpecification : FlowSpecification [1];
	}
	item def EndToEndFlowInstance :> InstanceObject{
		ref item flowElement : FlowElementInstance [*];
		ref item inModes : ModeInstance [*];
		ref item inSystemOperationMode : SystemOperationMode [*];
		ref item endToEndFlow : EndToEndFlow [1];
	}
	enum def FeatureCategory {
		enum dataPort;
		enum eventPort;
		enum eventDataPort;
		enum parameter;
		enum busAccess;
		enum dataAccess;
		enum subprogramAccess;
		enum subprogramGroupAccess;
		enum featureGroup;
		enum abstractFeature;
	}
	item def SystemInstance :> ComponentInstance{
		item systemOperationMode : SystemOperationMode [*];
		ref item systemImplementation : SystemImplementation [1];
	}
	item def InstanceReferenceValue :> PropertyValue{
		ref item referencedInstanceObject : InstanceObject [1];
	}
}

