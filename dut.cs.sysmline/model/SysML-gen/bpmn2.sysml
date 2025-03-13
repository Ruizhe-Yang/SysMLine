package bpmn2 {
	private import ecore::*;
	public import bpmndi::*;
	public import bpmndi::*;
	item def Interface :> RootElement{
		attribute name : EString [1];
		item operations : Operation [1..*];
		ref item implementationRef : EObject [1];
	}
	abstract item def RootElement :> BaseElement;
	abstract item def BaseElement {
		attribute id : EString [1];
		ref item extensionDefinitions : ExtensionDefinition [*];
		item extensionValues : ExtensionAttributeValue [*];
		item documentation : Documentation [*];
		attribute description : EString [1];
	}
	item def ExtensionDefinition {
		attribute name : EString [1];
		item extensionAttributeDefinitions : ExtensionAttributeDefinition [*];
		attribute id : EString [1];
	}
	item def ExtensionAttributeDefinition {
		attribute name : EString [1];
		attribute type : EString [1];
		attribute isReference : EBoolean [1];
		ref item extensionDefinition : ExtensionDefinition [1];
		attribute id : EString [1];
	}
	item def ExtensionAttributeValue {
		ref item valueRef : EObject [1];
		item 'value' : EObject [1];
		ref item extensionAttributeDefinition : ExtensionAttributeDefinition [1];
		attribute id : EString [1];
	}
	item def Documentation :> BaseElement{
		attribute text : EString [1];
		attribute textFormat : EString [1];
	}
	item def Operation :> BaseElement{
		attribute name : EString [1];
		ref item inMessageRef : Message [1];
		ref item outMessageRef : Message [1];
		ref item errorRefs : Error [*];
		ref item implementationRef : EObject [1];
	}
	item def Message :> RootElement{
		attribute name : EString [1];
		ref item itemRef : ItemDefinition [1];
	}
	item def ItemDefinition :> RootElement{
		attribute itemKind : ItemKind [1];
		ref item structureRef : EObject [1];
		attribute isCollection : EBoolean [1];
		ref item 'import' : Import [1];
	}
	enum def ItemKind {
		enum Physical;
		enum Information;
	}
	item def Import {
		attribute importType : EString [1];
		attribute location : EString [1];
		attribute namespace : EString [1];
		attribute id : EString [1];
	}
	item def Error :> RootElement{
		ref item structureRef : ItemDefinition [1];
		attribute name : EString [1];
		attribute errorCode : EString [1];
	}
	item def EndPoint :> RootElement;
	item def Auditing :> BaseElement;
	item def GlobalTask :> CallableElement{
		item resources : ResourceRole [*];
	}
	abstract item def CallableElement :> RootElement{
		attribute name : EString [1];
		item ioSpecification : InputOutputSpecification [1];
		ref item supportedInterfaceRefs : Interface [*];
		item ioBinding : InputOutputBinding [*];
	}
	item def InputOutputSpecification :> BaseElement{
		item inputSets : InputSet [*];
		item outputSets : OutputSet [*];
		item dataInputs : DataInput [*];
		item dataOutputs : DataOutput [*];
	}
	item def InputSet :> BaseElement{
		attribute name : EString [1];
		ref item dataInputRefs : DataInput [*];
		ref item optionalInputRefs : DataInput [*];
		ref item whileExecutingInputRefs : DataInput [*];
		ref item outputSetRefs : OutputSet [*];
	}
	item def DataInput :> ItemAwareElement{
		attribute name : EString [1];
		attribute isCollection : EBoolean [1];
		ref item inputSetWithOptional : InputSet [*];
		ref item inputSetWithWhileExecuting : InputSet [*];
		ref item inputSetRefs : InputSet [*];
	}
	item def ItemAwareElement :> BaseElement{
		ref item itemSubjectRef : ItemDefinition [1];
		item dataState : DataState [1];
	}
	item def DataState :> BaseElement{
		attribute name : EString [1];
	}
	item def OutputSet :> BaseElement{
		ref item dataOutputRefs : DataOutput [*];
		ref item optionalOutputRefs : DataOutput [*];
		ref item whileExecutingOutputRefs : DataOutput [*];
		attribute name : EString [1];
		ref item inputSetRefs : InputSet [*];
	}
	item def DataOutput :> ItemAwareElement{
		attribute name : EString [1];
		attribute isCollection : EBoolean [1];
		ref item outputSetWithOptional : OutputSet [*];
		ref item outputSetWithWhileExecuting : OutputSet [*];
		ref item outputSetRefs : OutputSet [*];
	}
	item def InputOutputBinding {
		ref item inputDataRef : InputSet [1];
		ref item outputDataRef : OutputSet [1];
		ref item operationRef : Operation [1];
		attribute id : EString [1];
	}
	item def ResourceRole :> BaseElement{
		ref item resourceRef : Resource [1];
		item resourceParameterBindings : ResourceParameterBinding [*];
		item resourceAssignmentExpression : ResourceAssignmentExpression [1];
		attribute name : EString [1];
	}
	item def Resource :> RootElement{
		attribute name : EString [1];
		item resourceParameters : ResourceParameter [*];
	}
	item def ResourceParameter :> BaseElement{
		attribute name : EString [1];
		attribute isRequired : EBoolean [1];
		ref item type : ItemDefinition [1];
	}
	item def ResourceParameterBinding {
		item expression : Expression [1];
		ref item parameterRef : ResourceParameter [1];
		attribute id : EString [1];
	}
	item def Expression :> BaseElement;
	item def ResourceAssignmentExpression {
		item expression : Expression [1];
		attribute id : EString [1];
	}
	item def Monitoring :> BaseElement;
	item def Performer :> ResourceRole;
	item def Process :> CallableElement, FlowElementsContainer{
		attribute processType : ProcessType [1];
		attribute isClosed : EBoolean [1];
		item auditing : Auditing [1];
		item monitoring : Monitoring [1];
		item properties : Property [*];
		ref item supports : Process [*];
		ref item definitionalCollaborationRef : Collaboration [1];
		attribute isExecutable : EBoolean [1];
		item resources : ResourceRole [*];
		item artifacts : Artifact [*];
		item correlationSubscriptions : CorrelationSubscription [*];
		item decomposedBy : Process [*];
		ref item decomposes : Process [1];
	}
	abstract item def FlowElementsContainer :> BaseElement{
		item flowElements : FlowElement [*];
		item laneSets : LaneSet [*];
	}
	abstract item def FlowElement :> BaseElement{
		attribute name : EString [1];
		item auditing : Auditing [1];
		item monitoring : Monitoring [1];
		ref item categoryValueRef : CategoryValue [*];
	}
	item def CategoryValue :> BaseElement{
		attribute 'value' : EString [1];
		ref item categorizedFlowElements : FlowElement [*];
	}
	item def LaneSet :> BaseElement{
		item lanes : Lane [*];
		attribute name : EString [1];
	}
	item def Lane :> BaseElement{
		attribute name : EString [1];
		item childLaneSet : LaneSet [1];
		ref item partitionElementRef : BaseElement [1];
		ref item flowNodeRefs : FlowNode [*];
		item partitionElement : BaseElement [1];
	}
	abstract item def FlowNode :> FlowElement{
		ref item outgoing : SequenceFlow [*];
		ref item incoming : SequenceFlow [*];
		ref item lanes : Lane [*];
	}
	item def SequenceFlow :> FlowElement{
		attribute isImmediate : EBoolean [1];
		item conditionExpression : Expression [1];
		ref item targetRef : FlowNode [1];
		ref item sourceRef : FlowNode [1];
	}
	enum def ProcessType {
		enum None;
		enum Public;
		enum Private;
	}
	item def Property :> ItemAwareElement{
		attribute name : EString [1];
	}
	item def Collaboration :> RootElement{
		attribute name : EString [1];
		attribute isClosed : EBoolean [1];
		ref item choreographyRef : Choreography [*];
		item artifacts : Artifact [*];
		item participantAssociations : ParticipantAssociation [*];
		item messageFlowAssociations : MessageFlowAssociation [*];
		item conversationAssociations : ConversationAssociation [1];
		item participants : Participant [*];
		item messageFlows : MessageFlow [*];
		item correlationKeys : CorrelationKey [*];
		item conversations : ConversationNode [*];
		item conversationLinks : ConversationLink [*];
	}
	item def Choreography :> Collaboration, FlowElementsContainer;
	abstract item def Artifact :> BaseElement;
	item def ParticipantAssociation :> BaseElement{
		ref item innerParticipantRef : Participant [1];
		ref item outerParticipantRef : Participant [1];
	}
	item def Participant :> BaseElement, InteractionNode{
		attribute name : EString [1];
		ref item interfaceRefs : Interface [*];
		item participantMultiplicity : ParticipantMultiplicity [1];
		ref item endPointRefs : EndPoint [*];
		ref item processRef : Process [1];
	}
	abstract item def InteractionNode {
		ref item incomingConversationLinks : ConversationLink [*];
		ref item outgoingConversationLinks : ConversationLink [*];
	}
	item def ConversationLink :> BaseElement{
		ref item sourceRef : InteractionNode [1];
		attribute name : EString [1];
		ref item targetRef : InteractionNode [1];
	}
	item def ParticipantMultiplicity {
		attribute minimum : EInt [1];
		attribute maximum : EInt [1];
		attribute id : EString [1];
	}
	item def MessageFlowAssociation :> BaseElement{
		ref item innerMessageFlowRef : MessageFlow [1];
		ref item outerMessageFlowRef : MessageFlow [1];
	}
	item def MessageFlow :> BaseElement{
		attribute name : EString [1];
		ref item sourceRef : InteractionNode [1];
		ref item targetRef : InteractionNode [1];
		ref item messageRef : Message [1];
	}
	item def ConversationAssociation :> BaseElement{
		ref item innerConversationNodeRef : ConversationNode [1];
		ref item outerConversationNodeRef : ConversationNode [1];
	}
	abstract item def ConversationNode :> BaseElement, InteractionNode{
		attribute name : EString [1];
		ref item participantRefs : Participant [2..*];
		ref item messageFlowRefs : MessageFlow [*];
		item correlationKeys : CorrelationKey [*];
	}
	item def CorrelationKey :> BaseElement{
		ref item correlationPropertyRef : CorrelationProperty [*];
		attribute name : EString [1];
	}
	item def CorrelationProperty :> RootElement{
		item correlationPropertyRetrievalExpression : CorrelationPropertyRetrievalExpression [1..*];
		attribute name : EString [1];
		ref item type : ItemDefinition [1];
	}
	item def CorrelationPropertyRetrievalExpression :> BaseElement{
		item messagePath : FormalExpression [1];
		ref item messageRef : Message [1];
	}
	item def FormalExpression :> Expression{
		attribute 'language' : EString [1];
		ref item body : EObject [1];
		ref item evaluatesToTypeRef : ItemDefinition [1];
	}
	item def CorrelationSubscription :> BaseElement{
		ref item correlationKeyRef : CorrelationKey [1];
		item correlationPropertyBinding : CorrelationPropertyBinding [*];
	}
	item def CorrelationPropertyBinding :> BaseElement{
		item dataPath : FormalExpression [1];
		ref item correlationPropertyRef : CorrelationProperty [1];
	}
	item def GlobalManualTask :> GlobalTask;
	item def ManualTask :> Task;
	item def Task :> Activity;
	abstract item def Activity :> FlowNode, InteractionNode{
		attribute isForCompensation : EBoolean [1];
		item loopCharacteristics : LoopCharacteristics [1];
		item resources : ResourceRole [*];
		ref item 'default' : SequenceFlow [1];
		item properties : Property [*];
		item ioSpecification : InputOutputSpecification [1];
		ref item boundaryEventRefs : BoundaryEvent [*];
		item dataInputAssociations : DataInputAssociation [*];
		item dataOutputAssociations : DataOutputAssociation [*];
		attribute startQuantity : EInt [1];
		attribute completionQuantity : EInt [1];
	}
	abstract item def LoopCharacteristics :> BaseElement;
	item def BoundaryEvent :> CatchEvent{
		attribute cancelActivity : EBoolean [1];
		ref item attachedToRef : Activity [1];
	}
	abstract item def CatchEvent :> Event{
		attribute parallelMultiple : EBoolean [1];
		item outputSet : OutputSet [1];
		ref item eventDefinitionRefs : EventDefinition [*];
		item dataOutputAssociation : DataOutputAssociation [*];
		item dataOutputs : DataOutput [*];
		item eventDefinitions : EventDefinition [*];
	}
	abstract item def Event :> FlowNode, InteractionNode{
		item properties : Property [*];
	}
	abstract item def EventDefinition :> RootElement;
	item def DataOutputAssociation :> DataAssociation;
	item def DataAssociation :> BaseElement{
		item transformation : FormalExpression [1];
		item assignment : Assignment [*];
		ref item targetRef : ItemAwareElement [1];
		ref item sourceRef : ItemAwareElement [*];
	}
	item def Assignment :> BaseElement{
		item 'from' : Expression [1];
		item 'to' : Expression [1];
	}
	item def DataInputAssociation :> DataAssociation;
	item def UserTask :> Task{
		item renderings : Rendering [*];
		attribute implementation : EString [1];
	}
	item def Rendering :> BaseElement;
	item def HumanPerformer :> Performer;
	item def PotentialOwner :> HumanPerformer;
	item def GlobalUserTask :> GlobalTask{
		attribute implementation : EString [1];
		item renderings : Rendering [*];
	}
	abstract item def Gateway :> FlowNode{
		attribute gatewayDirection : GatewayDirection [1];
	}
	enum def GatewayDirection {
		enum Unspecified;
		enum Converging;
		enum Diverging;
		enum Mixed;
	}
	item def EventBasedGateway :> Gateway{
		attribute instantiate : EBoolean [1];
		attribute eventGatewayType : EventBasedGatewayType [1];
	}
	enum def EventBasedGatewayType {
		enum Parallel;
		enum Exclusive;
	}
	item def ComplexGateway :> Gateway{
		item activationCondition : Expression [1];
		ref item 'default' : SequenceFlow [1];
	}
	item def ExclusiveGateway :> Gateway{
		ref item 'default' : SequenceFlow [1];
	}
	item def InclusiveGateway :> Gateway{
		ref item 'default' : SequenceFlow [1];
	}
	item def ParallelGateway :> Gateway;
	item def Relationship :> BaseElement{
		attribute type : EString [1];
		attribute direction : RelationshipDirection [1];
		ref item sources : EObject [1..*];
		ref item targets : EObject [1..*];
	}
	enum def RelationshipDirection {
		enum None;
		enum Forward;
		enum Backward;
		enum Both;
	}
	item def Extension {
		attribute mustUnderstand : EBoolean [1];
		item definition : ExtensionDefinition [1];
		attribute id : EString [1];
	}
	item def IntermediateCatchEvent :> CatchEvent;
	item def IntermediateThrowEvent :> ThrowEvent;
	abstract item def ThrowEvent :> Event{
		item inputSet : InputSet [1];
		ref item eventDefinitionRefs : EventDefinition [*];
		item dataInputAssociation : DataInputAssociation [*];
		item dataInputs : DataInput [*];
		item eventDefinitions : EventDefinition [*];
	}
	item def EndEvent :> ThrowEvent;
	item def StartEvent :> CatchEvent{
		attribute isInterrupting : EBoolean [1];
	}
	item def CancelEventDefinition :> EventDefinition;
	item def ErrorEventDefinition :> EventDefinition{
		ref item errorRef : Error [1];
	}
	item def TerminateEventDefinition :> EventDefinition;
	item def EscalationEventDefinition :> EventDefinition{
		ref item escalationRef : Escalation [1];
	}
	item def Escalation {
		ref item structureRef : ItemDefinition [1];
		attribute name : EString [1];
		attribute escalationCode : EString [1];
		attribute id : EString [1];
	}
	item def CompensateEventDefinition :> EventDefinition{
		attribute waitForCompletion : EBoolean [1];
		ref item activityRef : Activity [1];
	}
	item def TimerEventDefinition :> EventDefinition{
		item timeDate : Expression [1];
		item timeCycle : Expression [1];
		item timeDuration : Expression [1];
	}
	item def LinkEventDefinition :> EventDefinition{
		attribute name : EString [1];
		ref item target : LinkEventDefinition [1];
		ref item source : LinkEventDefinition [*];
	}
	item def MessageEventDefinition :> EventDefinition{
		ref item messageRef : Message [1];
		ref item operationRef : Operation [1];
	}
	item def ConditionalEventDefinition :> EventDefinition{
		item condition : Expression [1];
	}
	item def SignalEventDefinition :> EventDefinition{
		ref item signalRef : Signal [1];
	}
	item def Signal :> RootElement{
		ref item structureRef : ItemDefinition [1];
		attribute name : EString [1];
	}
	item def ImplicitThrowEvent :> ThrowEvent;
	item def DataObject :> FlowElement, ItemAwareElement{
		attribute isCollection : EBoolean [1];
	}
	item def DataStore :> ItemAwareElement, RootElement{
		attribute name : EString [1];
		attribute capacity : EInt [1];
		attribute isUnlimited : EBoolean [1];
	}
	item def DataStoreReference :> FlowElement, ItemAwareElement{
		ref item dataStoreRef : DataStore [1];
	}
	item def DataObjectReference :> FlowElement, ItemAwareElement{
		ref item dataObjectRef : DataObject [1];
	}
	item def CallConversation :> ConversationNode{
		ref item calledCollaborationRef : Collaboration [1];
		item participantAssociations : ParticipantAssociation [*];
	}
	item def Conversation :> ConversationNode;
	item def SubConversation :> ConversationNode{
		item conversationNodes : ConversationNode [*];
	}
	item def GlobalConversation :> Collaboration;
	item def PartnerEntity :> RootElement{
		attribute name : EString [1];
		ref item participantRef : Participant [*];
	}
	item def PartnerRole :> RootElement{
		attribute name : EString [1];
		ref item participantRef : Participant [*];
	}
	abstract item def ChoreographyActivity :> FlowNode{
		ref item participantRefs : Participant [*];
		ref item initiatingParticipantRef : Participant [1];
		item correlationKeys : CorrelationKey [*];
		attribute loopType : ChoreographyLoopType [1];
	}
	enum def ChoreographyLoopType {
		enum None;
		enum Standard;
		enum MultiInstanceSequential;
		enum MultiInstanceParallel;
	}
	item def CallChoreography :> ChoreographyActivity{
		ref item calledChoreographyRef : Choreography [1];
		item participantAssociations : ParticipantAssociation [*];
	}
	item def SubChoreography :> ChoreographyActivity, FlowElementsContainer{
		item artifacts : Artifact [*];
	}
	item def ChoreographyTask :> ChoreographyActivity{
		ref item messageFlowRef : MessageFlow [0..2];
	}
	item def GlobalChoreographyTask :> Choreography{
		ref item initiatingParticipantRef : Participant [1];
	}
	item def TextAnnotation :> Artifact{
		attribute text : EString [1];
		attribute textFormat : EString [1];
	}
	item def Group :> Artifact{
		ref item categoryValueRef : CategoryValue [1];
	}
	item def Association :> Artifact{
		attribute associationDirection : AssociationDirection [1];
		ref item sourceRef : BaseElement [1];
		ref item targetRef : BaseElement [1];
	}
	enum def AssociationDirection {
		enum None;
		enum One;
		enum Both;
	}
	item def Category :> RootElement{
		item categoryValue : CategoryValue [*];
		attribute name : EString [1];
	}
	item def ServiceTask :> Task{
		attribute implementation : EString [1];
		ref item operationRef : Operation [1];
	}
	item def SubProcess :> Activity, FlowElementsContainer{
		attribute triggeredByEvent : EBoolean [1];
		item artifacts : Artifact [*];
	}
	enum def MultiInstanceBehavior {
		enum None;
		enum One;
		enum All;
		enum Complex;
	}
	item def MultiInstanceLoopCharacteristics :> LoopCharacteristics{
		attribute isSequential : EBoolean [1];
		attribute behavior : MultiInstanceBehavior [1];
		item loopCardinality : Expression [1];
		ref item loopDataInputRef : ItemAwareElement [1];
		ref item loopDataOutputRef : ItemAwareElement [1];
		item inputDataItem : DataInput [1];
		item outputDataItem : DataOutput [1];
		item completionCondition : Expression [1];
		item complexBehaviorDefinition : ComplexBehaviorDefinition [*];
		ref item oneBehaviorEventRef : EventDefinition [1];
		ref item noneBehaviorEventRef : EventDefinition [1];
	}
	item def ComplexBehaviorDefinition :> BaseElement{
		item condition : FormalExpression [1];
		item 'event' : ImplicitThrowEvent [1];
	}
	item def StandardLoopCharacteristics :> LoopCharacteristics{
		attribute testBefore : EBoolean [1];
		item loopCondition : Expression [1];
		item loopMaximum : Expression [1];
	}
	item def CallActivity :> Activity{
		ref item calledElementRef : CallableElement [1];
	}
	item def SendTask :> Task{
		attribute implementation : EString [1];
		ref item operationRef : Operation [1];
		ref item messageRef : Message [1];
	}
	item def ReceiveTask :> Task{
		attribute implementation : EString [1];
		attribute instantiate : EBoolean [1];
		ref item operationRef : Operation [1];
		ref item messageRef : Message [1];
	}
	item def ScriptTask :> Task{
		attribute scriptFormat : EString [1];
		attribute script : EString [1];
	}
	item def BusinessRuleTask :> Task{
		attribute implementation : EString [1];
	}
	item def AdHocSubProcess :> SubProcess{
		item completionCondition : Expression [1];
		attribute ordering : AdHocOrdering [1];
		attribute cancelRemainingInstances : EBoolean [1];
	}
	enum def AdHocOrdering {
		enum Parallel;
		enum Sequential;
	}
	item def Transaction :> SubProcess{
		attribute protocol : EString [1];
		attribute method : EString [1];
	}
	item def GlobalScriptTask :> GlobalTask{
		attribute scriptLanguage : EString [1];
		attribute script : EString [1];
	}
	item def GlobalBusinessRuleTask :> GlobalTask{
		attribute implementation : EString [1];
	}
	item def Definitions :> BaseElement{
		attribute name : EString [1];
		attribute targetNamespace : EString [1];
		attribute expressionLanguage : EString [1];
		attribute typeLanguage : EString [1];
		item imports : Import [*];
		item extensions : Extension [*];
		item relationships : Relationship [*];
		item rootElements : RootElement [*];
		item diagrams : [*];
		attribute exporter : EString [1];
		attribute exporterVersion : EString [1];
	}
}

