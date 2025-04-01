package activity {
	private import ecore::*;
	public import modellingcore::*;
	public import behavior::*;
	public import emde::*;
	abstract part def AbstractActivity :> AbstractBehavior, TraceableElement{
		attribute isReadOnly : EBoolean [1];
		attribute isSingleExecution : EBoolean [1];
		part ownedNodes : ActivityNode [*];
		part ownedEdges : ActivityEdge [*];
		part ownedGroups : ActivityGroup [*];
		ref part ownedStructuredNodes : StructuredActivityNode [*];
	}
	abstract part def ExceptionHandler :> ModelElement{
		ref part protectedNode : ExecutableNode [1];
		ref part handlerBody : ExecutableNode [1];
		ref part exceptionInput : ObjectNode [1];
		ref part exceptionTypes : AbstractType [1..*];
	}
	abstract part def ActivityGroup :> ModelElement{
		ref part superGroup : ActivityGroup [1];
		part subGroups : ActivityGroup [*];
		part ownedNodes : ActivityNode [*];
		part ownedEdges : ActivityEdge [*];
	}
	abstract part def InterruptibleActivityRegion :> ActivityGroup{
		ref part interruptingEdges : ActivityEdge [*];
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
	abstract part def ActivityEdge :> AbstractRelationship{
		attribute kindOfRate : RateKind [1];
		ref part inActivityPartition : ActivityPartition [1];
		ref part inInterruptibleRegion : InterruptibleActivityRegion [1];
		ref part inStructuredNode : StructuredActivityNode [1];
		part rate : ValueSpecification [1];
		part probability : ValueSpecification [1];
		ref part target : ActivityNode [1];
		ref part source : ActivityNode [1];
		part guard : ValueSpecification [1];
		part weight : ValueSpecification [1];
		ref part interrupts : InterruptibleActivityRegion [1];
	}
	abstract part def ControlFlow :> ActivityEdge;
	abstract part def ObjectFlow :> ActivityEdge{
		attribute isMulticast : EBoolean [1];
		attribute isMultireceive : EBoolean [1];
		ref part transformation : AbstractBehavior [1];
		ref part selection : AbstractBehavior [1];
	}
	abstract part def ActivityPartition :> ActivityGroup, AbstractNamedElement{
		attribute isDimension : EBoolean [1];
		attribute isExternal : EBoolean [1];
		ref part representedElement : AbstractType [1];
		ref part superPartition : ActivityPartition [1];
		ref part subPartitions : ActivityPartition [*];
	}
	abstract part def ActivityExchange :> AbstractInformationFlow{
		ref part realizingActivityFlows : ActivityEdge [*];
	}
	abstract part def ActivityNode :> AbstractNamedElement{
		ref part inActivityPartition : ActivityPartition [1];
		ref part inInterruptibleRegion : InterruptibleActivityRegion [1];
		ref part inStructuredNode : InterruptibleActivityRegion [1];
		ref part outgoing : ActivityEdge [*];
		ref part incoming : ActivityEdge [*];
	}
	abstract part def ExecutableNode :> ActivityNode{
		part ownedHandlers : ExceptionHandler [*];
	}
	abstract part def StructuredActivityNode :> ActivityGroup, AbstractAction;
	abstract part def AbstractAction :> ExecutableNode, AbstractNamedElement{
		part localPrecondition : AbstractConstraint [1];
		part localPostcondition : AbstractConstraint [1];
		ref part context : AbstractType [1];
		part inputs : InputPin [*];
		part outputs : OutputPin [*];
	}
	abstract part def AcceptEventAction :> AbstractAction{
		attribute isUnmarshall : EBoolean [1];
		part result : OutputPin [*];
	}
	abstract part def InvocationAction :> AbstractAction{
		part arguments : InputPin [*];
	}
	abstract part def SendSignalAction :> InvocationAction{
		part target : InputPin [1];
		ref part signal : AbstractSignal [1];
	}
	abstract part def CallAction :> InvocationAction{
		part results : OutputPin [*];
	}
	abstract part def CallBehaviorAction :> CallAction{
		ref part behavior : AbstractBehavior [1];
	}
	abstract part def ObjectNode :> ActivityNode, AbstractTypedElement{
		attribute isControlType : EBoolean [1];
		attribute kindOfNode : ObjectNodeKind [1];
		attribute ordering : ObjectNodeOrderingKind [1];
		part upperBound : ValueSpecification [1];
		ref part inState : IState [*];
		ref part selection : AbstractBehavior [1];
	}
	abstract part def Pin :> ObjectNode{
		attribute isControl : EBoolean [1];
	}
	abstract part def InputPin :> Pin{
		ref part inputEvaluationAction : AbstractAction [1];
	}
	abstract part def ValuePin :> InputPin{
		part 'value' : ValueSpecification [1];
	}
	abstract part def OutputPin :> Pin;
}

