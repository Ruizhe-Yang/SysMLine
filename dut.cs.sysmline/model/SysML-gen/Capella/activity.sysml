package activity {
	private import ecore::*;
	public import modellingcore::*;
	public import behavior::*;
	public import emde::*;
	abstract item def AbstractActivity :> AbstractBehavior, TraceableElement{
		attribute isReadOnly : EBoolean [1];
		attribute isSingleExecution : EBoolean [1];
		item ownedNodes : ActivityNode [*];
		item ownedEdges : ActivityEdge [*];
		item ownedGroups : ActivityGroup [*];
		ref item ownedStructuredNodes : StructuredActivityNode [*];
	}
	abstract item def ExceptionHandler :> ModelElement{
		ref item protectedNode : ExecutableNode [1];
		ref item handlerBody : ExecutableNode [1];
		ref item exceptionInput : ObjectNode [1];
		ref item exceptionTypes : AbstractType [1..*];
	}
	abstract item def ActivityGroup :> ModelElement{
		ref item superGroup : ActivityGroup [1];
		item subGroups : ActivityGroup [*];
		item ownedNodes : ActivityNode [*];
		item ownedEdges : ActivityEdge [*];
	}
	abstract item def InterruptibleActivityRegion :> ActivityGroup{
		ref item interruptingEdges : ActivityEdge [*];
	}
	enum def ObjectNodeOrderingKind {
		enum FIFO;
		enum LIFO;
		enum 'ordered';
		enum unordered;
	}
	enum def ObjectNodeKind {
		enum Unspecified;
		enum NoBuffer;
		enum Overwrite;
	}
	abstract item def ActivityEdge :> AbstractRelationship{
		attribute kindOfRate : RateKind [1];
		ref item inActivityPartition : ActivityPartition [1];
		ref item inInterruptibleRegion : InterruptibleActivityRegion [1];
		ref item inStructuredNode : StructuredActivityNode [1];
		item rate : ValueSpecification [1];
		item probability : ValueSpecification [1];
		ref item target : ActivityNode [1];
		ref item source : ActivityNode [1];
		item guard : ValueSpecification [1];
		item weight : ValueSpecification [1];
		ref item interrupts : InterruptibleActivityRegion [1];
	}
	abstract item def ControlFlow :> ActivityEdge;
	abstract item def ObjectFlow :> ActivityEdge{
		attribute isMulticast : EBoolean [1];
		attribute isMultireceive : EBoolean [1];
		ref item transformation : AbstractBehavior [1];
		ref item selection : AbstractBehavior [1];
	}
	abstract item def ActivityPartition :> ActivityGroup, AbstractNamedElement{
		attribute isDimension : EBoolean [1];
		attribute isExternal : EBoolean [1];
		ref item representedElement : AbstractType [1];
		ref item superPartition : ActivityPartition [1];
		ref item subPartitions : ActivityPartition [*];
	}
	abstract item def ActivityExchange :> AbstractInformationFlow{
		ref item realizingActivityFlows : ActivityEdge [*];
	}
	abstract item def ActivityNode :> AbstractNamedElement{
		ref item inActivityPartition : ActivityPartition [1];
		ref item inInterruptibleRegion : InterruptibleActivityRegion [1];
		ref item inStructuredNode : InterruptibleActivityRegion [1];
		ref item outgoing : ActivityEdge [*];
		ref item incoming : ActivityEdge [*];
	}
	abstract item def ExecutableNode :> ActivityNode{
		item ownedHandlers : ExceptionHandler [*];
	}
	abstract item def StructuredActivityNode :> ActivityGroup, AbstractAction;
	abstract item def AbstractAction :> ExecutableNode, AbstractNamedElement{
		item localPrecondition : AbstractConstraint [1];
		item localPostcondition : AbstractConstraint [1];
		ref item context : AbstractType [1];
		item inputs : InputPin [*];
		item outputs : OutputPin [*];
	}
	abstract item def AcceptEventAction :> AbstractAction{
		attribute isUnmarshall : EBoolean [1];
		item result : OutputPin [*];
	}
	abstract item def InvocationAction :> AbstractAction{
		item arguments : InputPin [*];
	}
	abstract item def SendSignalAction :> InvocationAction{
		item target : InputPin [1];
		ref item signal : AbstractSignal [1];
	}
	abstract item def CallAction :> InvocationAction{
		item results : OutputPin [*];
	}
	abstract item def CallBehaviorAction :> CallAction{
		ref item behavior : AbstractBehavior [1];
	}
	abstract item def ObjectNode :> ActivityNode, AbstractTypedElement{
		attribute isControlType : EBoolean [1];
		attribute kindOfNode : ObjectNodeKind [1];
		attribute ordering : ObjectNodeOrderingKind [1];
		item upperBound : ValueSpecification [1];
		ref item inState : IState [*];
		ref item selection : AbstractBehavior [1];
	}
	abstract item def Pin :> ObjectNode{
		attribute isControl : EBoolean [1];
	}
	abstract item def InputPin :> Pin{
		ref item inputEvaluationAction : AbstractAction [1];
	}
	abstract item def ValuePin :> InputPin{
		item 'value' : ValueSpecification [1];
	}
	abstract item def OutputPin :> Pin;
}

