package graal {
	private import ecore::*;
	public import environment::*;
	public import metadatadef::*;
	public import technicalid::*;
	item def Task :> Activity, AbstractTask, UserStoryElement{
		ref item uses : Task [*];
		attribute preconditions : EString [1];
		attribute postconditions : EString [1];
		ref item actors : Actor [*];
	}
	item def System :> NamedElement, DomainModelRegistry, TasksContainer, NamespacesContainer{
		item subSystems : System [*];
		item actors : Actor [*];
		item useCases : UseCase [*];
		item userStories : UserStory [*];
	}
	abstract item def Activity :> GraalObject{
		item nodes : Node [*];
		item transitions : Transition [*];
		item subActivities : Loop [*];
	}
	item def Operator :> Node{
		attribute kind : OperatorKind [1];
	}
	abstract item def Node :> GraalObject, UserStoryElement{
		ref item outgoingTransitions : Transition [*];
		ref item incomingTransitions : Transition [*];
	}
	item def Transition :> GraalObject, UserStoryElement{
		attribute guard : EString [1];
		ref item source : Node [1];
		ref item target : Node [1];
		attribute kind : TransitionKind [1];
	}
	item def TaskReference :> Node{
		ref item task : Task [1];
	}
	item def UserView :> NamedNode;
	item def UserAction :> NamedNode;
	item def AppliEvent :> NamedNode;
	item def AppliAction :> NamedNode;
	item def InitialNode :> Node;
	item def FinalNode :> Node;
	item def AbortNode :> Node;
	enum def TransitionKind {
		enum normal;
		enum interrupt;
		enum abort;
	}
	item def Loop :> Activity{
		attribute lowerBound : EInt [1];
		attribute upperBound : EInt [1];
	}
	enum def OperatorKind {
		enum 'and';
		enum 'or';
		enum 'xor';
	}
	item def Actor :> NamedElement{
		ref item subActors : Actor [*];
		ref item superActor : Actor [1];
	}
	abstract item def AbstractTask :> NamedElement{
		attribute id : EString [1];
	}
	item def TasksGroup :> AbstractTask, TasksContainer;
	item def UseCase :> NamedElement, DomainModelRegistry{
		ref item actors : Actor [*];
		ref item tasks : AbstractTask [*];
		ref item includes : UseCase [*];
		ref item extends : UseCase [*];
		ref item domainClasses : DomainClass [*];
	}
	abstract item def NamedElement :> GraalObject{
		attribute name : EString [1];
	}
	abstract item def NamedNode :> Node, NamedElement;
	abstract item def DomainModelRegistry {
		ref item namespaces : Namespace [*];
		ref item types : StructuredType [*];
	}
	abstract item def TasksContainer {
		item tasks : AbstractTask [*];
		ref item ownedTasks : Task [*];
		ref item ownedGroups : TasksGroup [*];
	}
	item def UserStory :> NamedElement{
		ref item elements : UserStoryElement [*];
	}
	abstract item def UserStoryElement;
	abstract item def GraalObject :> ObeoDSMObject;
	item def DomainClass :> StructuredType{
		attribute estimatedVolumetry : EInt [1];
		attribute historized : EBoolean [1];
	}
}

