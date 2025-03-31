package bpmn2 {
	private import ecore::*;
	public import bpmndi::*;
	part def Interface :> RootElement{
		attribute name : EString [1];
		part operations : Operation [1..*];
		ref part implementationRef : EObject [1];
	}
	abstract part def RootElement :> BaseElement;
	abstract part def BaseElement {
		attribute id : EString [1];
		ref part extensionDefinitions : ExtensionDefinition [*];
		part extensionValues : ExtensionAttributeValue [*];
		part documentation : Documentation [*];
		attribute description : EString [1];
	}
	part def ExtensionDefinition {
		attribute name : EString [1];
		part extensionAttributeDefinitions : ExtensionAttributeDefinition [*];
		attribute id : EString [1];
	}
	part def ExtensionAttributeDefinition {
		attribute name : EString [1];
		attribute type : EString [1];
		attribute isReference : EBoolean [1];
		ref part extensionDefinition : ExtensionDefinition [1];
		attribute id : EString [1];
	}
	part def ExtensionAttributeValue {
		ref part valueRef : EObject [1];
		part 'value' : EObject [1];
		ref part extensionAttributeDefinition : ExtensionAttributeDefinition [1];
		attribute id : EString [1];
	}
	part def Documentation :> BaseElement{
		attribute text : EString [1];
		attribute textFormat : EString [1];
	}
	part def Operation :> BaseElement{
		attribute name : EString [1];
		ref part inMessageRef : Message [1];
		ref part outMessageRef : Message [1];
		ref part errorRefs : Error [*];
		ref part implementationRef : EObject [1];
	}
	part def Message :> RootElement{
		attribute name : EString [1];
		ref part itemRef : ItemDefinition [1];
	}
	part def ItemDefinition :> RootElement{
		attribute itemKind : ItemKind [1];
		ref part structureRef : EObject [1];
		attribute isCollection : EBoolean [1];
		ref part 'import' : Import [1];
	}
	enum def ItemKind {
		enum Physical;
		enum Information;
	}
	part def Import {
		attribute importType : EString [1];
		attribute location : EString [1];
		attribute namespace : EString [1];
		attribute id : EString [1];
	}
	part def Error :> RootElement{
		ref part structureRef : ItemDefinition [1];
		attribute name : EString [1];
		attribute errorCode : EString [1];
	}
	part def EndPoint :> RootElement;
	part def Auditing :> BaseElement;
	part def GlobalTask :> CallableElement{
		part resources : ResourceRole [*];
	}
	abstract part def CallableElement :> RootElement{
		attribute name : EString [1];
		part ioSpecification : InputOutputSpecification [1];
		ref part supportedInterfaceRefs : Interface [*];
		part ioBinding : InputOutputBinding [*];
	}
	part def InputOutputSpecification :> BaseElement{
		part inputSets : InputSet [*];
		part outputSets : OutputSet [*];
		part dataInputs : DataInput [*];
		part dataOutputs : DataOutput [*];
	}
	part def InputSet :> BaseElement{
		attribute name : EString [1];
		ref part dataInputRefs : DataInput [*];
		ref part optionalInputRefs : DataInput [*];
		ref part whileExecutingInputRefs : DataInput [*];
		ref part outputSetRefs : OutputSet [*];
	}
	part def DataInput :> ItemAwareElement{
		attribute name : EString [1];
		attribute isCollection : EBoolean [1];
		ref part inputSetWithOptional : InputSet [*];
		ref part inputSetWithWhileExecuting : InputSet [*];
		ref part inputSetRefs : InputSet [*];
	}
	part def ItemAwareElement :> BaseElement{
		ref part itemSubjectRef : ItemDefinition [1];
		part dataState : DataState [1];
	}
	part def DataState :> BaseElement{
		attribute name : EString [1];
	}
	part def OutputSet :> BaseElement{
		ref part dataOutputRefs : DataOutput [*];
		ref part optionalOutputRefs : DataOutput [*];
		ref part whileExecutingOutputRefs : DataOutput [*];
		attribute name : EString [1];
		ref part inputSetRefs : InputSet [*];
	}
	part def DataOutput :> ItemAwareElement{
		attribute name : EString [1];
		attribute isCollection : EBoolean [1];
		ref part outputSetWithOptional : OutputSet [*];
		ref part outputSetWithWhileExecuting : OutputSet [*];
		ref part outputSetRefs : OutputSet [*];
	}
	part def InputOutputBinding {
		ref part inputDataRef : InputSet [1];
		ref part outputDataRef : OutputSet [1];
		ref part operationRef : Operation [1];
		attribute id : EString [1];
	}
	part def ResourceRole :> BaseElement{
		ref part resourceRef : Resource [1];
		part resourceParameterBindings : ResourceParameterBinding [*];
		part resourceAssignmentExpression : ResourceAssignmentExpression [1];
		attribute name : EString [1];
	}
	part def Resource :> RootElement{
		attribute name : EString [1];
		part resourceParameters : ResourceParameter [*];
	}
	part def ResourceParameter :> BaseElement{
		attribute name : EString [1];
		attribute isRequired : EBoolean [1];
		ref part type : ItemDefinition [1];
	}
	part def ResourceParameterBinding {
		part expression : Expression [1];
		ref part parameterRef : ResourceParameter [1];
		attribute id : EString [1];
	}
	part def Expression :> BaseElement;
	part def ResourceAssignmentExpression {
		part expression : Expression [1];
		attribute id : EString [1];
	}
	part def Monitoring :> BaseElement;
	part def Performer :> ResourceRole;
	part def Process :> CallableElement, FlowElementsContainer{
		attribute processType : ProcessType [1];
		attribute isClosed : EBoolean [1];
		part auditing : Auditing [1];
		part monitoring : Monitoring [1];
		part properties : Property [*];
		ref part supports : Process [*];
		ref part definitionalCollaborationRef : Collaboration [1];
		attribute isExecutable : EBoolean [1];
		part resources : ResourceRole [*];
		part artifacts : Artifact [*];
		part correlationSubscriptions : CorrelationSubscription [*];
		part decomposedBy : Process [*];
		ref part decomposes : Process [1];
	}
	abstract part def FlowElementsContainer :> BaseElement{
		part flowElements : FlowElement [*];
		part laneSets : LaneSet [*];
	}
	abstract part def FlowElement :> BaseElement{
		attribute name : EString [1];
		part auditing : Auditing [1];
		part monitoring : Monitoring [1];
		ref part categoryValueRef : CategoryValue [*];
	}
	part def CategoryValue :> BaseElement{
		attribute 'value' : EString [1];
		ref part categorizedFlowElements : FlowElement [*];
	}
	part def LaneSet :> BaseElement{
		part lanes : Lane [*];
		attribute name : EString [1];
	}
	part def Lane :> BaseElement{
		attribute name : EString [1];
		part childLaneSet : LaneSet [1];
		ref part partitionElementRef : BaseElement [1];
		ref part flowNodeRefs : FlowNode [*];
		part partitionElement : BaseElement [1];
	}
	abstract part def FlowNode :> FlowElement{
		ref part outgoing : SequenceFlow [*];
		ref part incoming : SequenceFlow [*];
		ref part lanes : Lane [*];
	}
	part def SequenceFlow :> FlowElement{
		attribute isImmediate : EBoolean [1];
		part conditionExpression : Expression [1];
		ref part targetRef : FlowNode [1];
		ref part sourceRef : FlowNode [1];
	}
	enum def ProcessType {
		enum None;
		enum Public;
		enum Private;
	}
	part def Property :> ItemAwareElement{
		attribute name : EString [1];
	}
	part def Collaboration :> RootElement{
		attribute name : EString [1];
		attribute isClosed : EBoolean [1];
		ref part choreographyRef : Choreography [*];
		part artifacts : Artifact [*];
		part participantAssociations : ParticipantAssociation [*];
		part messageFlowAssociations : MessageFlowAssociation [*];
		part conversationAssociations : ConversationAssociation [1];
		part participants : Participant [*];
		part messageFlows : MessageFlow [*];
		part correlationKeys : CorrelationKey [*];
		part conversations : ConversationNode [*];
		part conversationLinks : ConversationLink [*];
	}
	part def Choreography :> Collaboration, FlowElementsContainer;
	abstract part def Artifact :> BaseElement;
	part def ParticipantAssociation :> BaseElement{
		ref part innerParticipantRef : Participant [1];
		ref part outerParticipantRef : Participant [1];
	}
	part def Participant :> BaseElement, InteractionNode{
		attribute name : EString [1];
		ref part interfaceRefs : Interface [*];
		part participantMultiplicity : ParticipantMultiplicity [1];
		ref part endPointRefs : EndPoint [*];
		ref part processRef : Process [1];
	}
	abstract part def InteractionNode {
		ref part incomingConversationLinks : ConversationLink [*];
		ref part outgoingConversationLinks : ConversationLink [*];
	}
	part def ConversationLink :> BaseElement{
		ref part sourceRef : InteractionNode [1];
		attribute name : EString [1];
		ref part targetRef : InteractionNode [1];
	}
	part def ParticipantMultiplicity {
		attribute minimum : EInt [1];
		attribute maximum : EInt [1];
		attribute id : EString [1];
	}
	part def MessageFlowAssociation :> BaseElement{
		ref part innerMessageFlowRef : MessageFlow [1];
		ref part outerMessageFlowRef : MessageFlow [1];
	}
	part def MessageFlow :> BaseElement{
		attribute name : EString [1];
		ref part sourceRef : InteractionNode [1];
		ref part targetRef : InteractionNode [1];
		ref part messageRef : Message [1];
	}
	part def ConversationAssociation :> BaseElement{
		ref part innerConversationNodeRef : ConversationNode [1];
		ref part outerConversationNodeRef : ConversationNode [1];
	}
	abstract part def ConversationNode :> BaseElement, InteractionNode{
		attribute name : EString [1];
		ref part participantRefs : Participant [2..*];
		ref part messageFlowRefs : MessageFlow [*];
		part correlationKeys : CorrelationKey [*];
	}
	part def CorrelationKey :> BaseElement{
		ref part correlationPropertyRef : CorrelationProperty [*];
		attribute name : EString [1];
	}
	part def CorrelationProperty :> RootElement{
		part correlationPropertyRetrievalExpression : CorrelationPropertyRetrievalExpression [1..*];
		attribute name : EString [1];
		ref part type : ItemDefinition [1];
	}
	part def CorrelationPropertyRetrievalExpression :> BaseElement{
		part messagePath : FormalExpression [1];
		ref part messageRef : Message [1];
	}
	part def FormalExpression :> Expression{
		attribute 'language' : EString [1];
		ref part body : EObject [1];
		ref part evaluatesToTypeRef : ItemDefinition [1];
	}
	part def CorrelationSubscription :> BaseElement{
		ref part correlationKeyRef : CorrelationKey [1];
		part correlationPropertyBinding : CorrelationPropertyBinding [*];
	}
	part def CorrelationPropertyBinding :> BaseElement{
		part dataPath : FormalExpression [1];
		ref part correlationPropertyRef : CorrelationProperty [1];
	}
	part def GlobalManualTask :> GlobalTask;
	part def ManualTask :> Task;
	part def Task :> Activity;
	abstract part def Activity :> FlowNode, InteractionNode{
		attribute isForCompensation : EBoolean [1];
		part loopCharacteristics : LoopCharacteristics [1];
		part resources : ResourceRole [*];
		ref part 'default' : SequenceFlow [1];
		part properties : Property [*];
		part ioSpecification : InputOutputSpecification [1];
		ref part boundaryEventRefs : BoundaryEvent [*];
		part dataInputAssociations : DataInputAssociation [*];
		part dataOutputAssociations : DataOutputAssociation [*];
		attribute startQuantity : EInt [1];
		attribute completionQuantity : EInt [1];
	}
	abstract part def LoopCharacteristics :> BaseElement;
	part def BoundaryEvent :> CatchEvent{
		attribute cancelActivity : EBoolean [1];
		ref part attachedToRef : Activity [1];
	}
	abstract part def CatchEvent :> Event{
		attribute parallelMultiple : EBoolean [1];
		part outputSet : OutputSet [1];
		ref part eventDefinitionRefs : EventDefinition [*];
		part dataOutputAssociation : DataOutputAssociation [*];
		part dataOutputs : DataOutput [*];
		part eventDefinitions : EventDefinition [*];
	}
	abstract part def Event :> FlowNode, InteractionNode{
		part properties : Property [*];
	}
	abstract part def EventDefinition :> RootElement;
	part def DataOutputAssociation :> DataAssociation;
	part def DataAssociation :> BaseElement{
		part transformation : FormalExpression [1];
		part assignment : Assignment [*];
		ref part targetRef : ItemAwareElement [1];
		ref part sourceRef : ItemAwareElement [*];
	}
	part def Assignment :> BaseElement{
		part 'from' : Expression [1];
		part 'to' : Expression [1];
	}
	part def DataInputAssociation :> DataAssociation;
	part def UserTask :> Task{
		part renderings : Rendering [*];
		attribute implementation : EString [1];
	}
	part def Rendering :> BaseElement;
	part def HumanPerformer :> Performer;
	part def PotentialOwner :> HumanPerformer;
	part def GlobalUserTask :> GlobalTask{
		attribute implementation : EString [1];
		part renderings : Rendering [*];
	}
	abstract part def Gateway :> FlowNode{
		attribute gatewayDirection : GatewayDirection [1];
	}
	enum def GatewayDirection {
		enum Unspecified;
		enum Converging;
		enum Diverging;
		enum Mixed;
	}
	part def EventBasedGateway :> Gateway{
		attribute instantiate : EBoolean [1];
		attribute eventGatewayType : EventBasedGatewayType [1];
	}
	enum def EventBasedGatewayType {
		enum Parallel;
		enum Exclusive;
	}
	part def ComplexGateway :> Gateway{
		part activationCondition : Expression [1];
		ref part 'default' : SequenceFlow [1];
	}
	part def ExclusiveGateway :> Gateway{
		ref part 'default' : SequenceFlow [1];
	}
	part def InclusiveGateway :> Gateway{
		ref part 'default' : SequenceFlow [1];
	}
	part def ParallelGateway :> Gateway;
	part def Relationship :> BaseElement{
		attribute type : EString [1];
		attribute direction : RelationshipDirection [1];
		ref part sources : EObject [1..*];
		ref part targets : EObject [1..*];
	}
	enum def RelationshipDirection {
		enum None;
		enum Forward;
		enum Backward;
		enum Both;
	}
	part def Extension {
		attribute mustUnderstand : EBoolean [1];
		part definition : ExtensionDefinition [1];
		attribute id : EString [1];
	}
	part def IntermediateCatchEvent :> CatchEvent;
	part def IntermediateThrowEvent :> ThrowEvent;
	abstract part def ThrowEvent :> Event{
		part inputSet : InputSet [1];
		ref part eventDefinitionRefs : EventDefinition [*];
		part dataInputAssociation : DataInputAssociation [*];
		part dataInputs : DataInput [*];
		part eventDefinitions : EventDefinition [*];
	}
	part def EndEvent :> ThrowEvent;
	part def StartEvent :> CatchEvent{
		attribute isInterrupting : EBoolean [1];
	}
	part def CancelEventDefinition :> EventDefinition;
	part def ErrorEventDefinition :> EventDefinition{
		ref part errorRef : Error [1];
	}
	part def TerminateEventDefinition :> EventDefinition;
	part def EscalationEventDefinition :> EventDefinition{
		ref part escalationRef : Escalation [1];
	}
	part def Escalation {
		ref part structureRef : ItemDefinition [1];
		attribute name : EString [1];
		attribute escalationCode : EString [1];
		attribute id : EString [1];
	}
	part def CompensateEventDefinition :> EventDefinition{
		attribute waitForCompletion : EBoolean [1];
		ref part activityRef : Activity [1];
	}
	part def TimerEventDefinition :> EventDefinition{
		part timeDate : Expression [1];
		part timeCycle : Expression [1];
		part timeDuration : Expression [1];
	}
	part def LinkEventDefinition :> EventDefinition{
		attribute name : EString [1];
		ref part target : LinkEventDefinition [1];
		ref part source : LinkEventDefinition [*];
	}
	part def MessageEventDefinition :> EventDefinition{
		ref part messageRef : Message [1];
		ref part operationRef : Operation [1];
	}
	part def ConditionalEventDefinition :> EventDefinition{
		part condition : Expression [1];
	}
	part def SignalEventDefinition :> EventDefinition{
		ref part signalRef : Signal [1];
	}
	part def Signal :> RootElement{
		ref part structureRef : ItemDefinition [1];
		attribute name : EString [1];
	}
	part def ImplicitThrowEvent :> ThrowEvent;
	part def DataObject :> FlowElement, ItemAwareElement{
		attribute isCollection : EBoolean [1];
	}
	part def DataStore :> ItemAwareElement, RootElement{
		attribute name : EString [1];
		attribute capacity : EInt [1];
		attribute isUnlimited : EBoolean [1];
	}
	part def DataStoreReference :> FlowElement, ItemAwareElement{
		ref part dataStoreRef : DataStore [1];
	}
	part def DataObjectReference :> FlowElement, ItemAwareElement{
		ref part dataObjectRef : DataObject [1];
	}
	part def CallConversation :> ConversationNode{
		ref part calledCollaborationRef : Collaboration [1];
		part participantAssociations : ParticipantAssociation [*];
	}
	part def Conversation :> ConversationNode;
	part def SubConversation :> ConversationNode{
		part conversationNodes : ConversationNode [*];
	}
	part def GlobalConversation :> Collaboration;
	part def PartnerEntity :> RootElement{
		attribute name : EString [1];
		ref part participantRef : Participant [*];
	}
	part def PartnerRole :> RootElement{
		attribute name : EString [1];
		ref part participantRef : Participant [*];
	}
	abstract part def ChoreographyActivity :> FlowNode{
		ref part participantRefs : Participant [*];
		ref part initiatingParticipantRef : Participant [1];
		part correlationKeys : CorrelationKey [*];
		attribute loopType : ChoreographyLoopType [1];
	}
	enum def ChoreographyLoopType {
		enum None;
		enum Standard;
		enum MultiInstanceSequential;
		enum MultiInstanceParallel;
	}
	part def CallChoreography :> ChoreographyActivity{
		ref part calledChoreographyRef : Choreography [1];
		part participantAssociations : ParticipantAssociation [*];
	}
	part def SubChoreography :> ChoreographyActivity, FlowElementsContainer{
		part artifacts : Artifact [*];
	}
	part def ChoreographyTask :> ChoreographyActivity{
		ref part messageFlowRef : MessageFlow [0..2];
	}
	part def GlobalChoreographyTask :> Choreography{
		ref part initiatingParticipantRef : Participant [1];
	}
	part def TextAnnotation :> Artifact{
		attribute text : EString [1];
		attribute textFormat : EString [1];
	}
	part def Group :> Artifact{
		ref part categoryValueRef : CategoryValue [1];
	}
	part def Association :> Artifact{
		attribute associationDirection : AssociationDirection [1];
		ref part sourceRef : BaseElement [1];
		ref part targetRef : BaseElement [1];
	}
	enum def AssociationDirection {
		enum None;
		enum One;
		enum Both;
	}
	part def Category :> RootElement{
		part categoryValue : CategoryValue [*];
		attribute name : EString [1];
	}
	part def ServiceTask :> Task{
		attribute implementation : EString [1];
		ref part operationRef : Operation [1];
	}
	part def SubProcess :> Activity, FlowElementsContainer{
		attribute triggeredByEvent : EBoolean [1];
		part artifacts : Artifact [*];
	}
	enum def MultiInstanceBehavior {
		enum None;
		enum One;
		enum All;
		enum Complex;
	}
	part def MultiInstanceLoopCharacteristics :> LoopCharacteristics{
		attribute isSequential : EBoolean [1];
		attribute behavior : MultiInstanceBehavior [1];
		part loopCardinality : Expression [1];
		ref part loopDataInputRef : ItemAwareElement [1];
		ref part loopDataOutputRef : ItemAwareElement [1];
		part inputDataItem : DataInput [1];
		part outputDataItem : DataOutput [1];
		part completionCondition : Expression [1];
		part complexBehaviorDefinition : ComplexBehaviorDefinition [*];
		ref part oneBehaviorEventRef : EventDefinition [1];
		ref part noneBehaviorEventRef : EventDefinition [1];
	}
	part def ComplexBehaviorDefinition :> BaseElement{
		part condition : FormalExpression [1];
		part 'event' : ImplicitThrowEvent [1];
	}
	part def StandardLoopCharacteristics :> LoopCharacteristics{
		attribute testBefore : EBoolean [1];
		part loopCondition : Expression [1];
		part loopMaximum : Expression [1];
	}
	part def CallActivity :> Activity{
		ref part calledElementRef : CallableElement [1];
	}
	part def SendTask :> Task{
		attribute implementation : EString [1];
		ref part operationRef : Operation [1];
		ref part messageRef : Message [1];
	}
	part def ReceiveTask :> Task{
		attribute implementation : EString [1];
		attribute instantiate : EBoolean [1];
		ref part operationRef : Operation [1];
		ref part messageRef : Message [1];
	}
	part def ScriptTask :> Task{
		attribute scriptFormat : EString [1];
		attribute script : EString [1];
	}
	part def BusinessRuleTask :> Task{
		attribute implementation : EString [1];
	}
	part def AdHocSubProcess :> SubProcess{
		part completionCondition : Expression [1];
		attribute ordering : AdHocOrdering [1];
		attribute cancelRemainingInstances : EBoolean [1];
	}
	enum def AdHocOrdering {
		enum Parallel;
		enum Sequential;
	}
	part def Transaction :> SubProcess{
		attribute protocol : EString [1];
		attribute method : EString [1];
	}
	part def GlobalScriptTask :> GlobalTask{
		attribute scriptLanguage : EString [1];
		attribute script : EString [1];
	}
	part def GlobalBusinessRuleTask :> GlobalTask{
		attribute implementation : EString [1];
	}
	part def Definitions :> BaseElement{
		attribute name : EString [1];
		attribute targetNamespace : EString [1];
		attribute expressionLanguage : EString [1];
		attribute typeLanguage : EString [1];
		part imports : Import [*];
		part extensions : Extension [*];
		part relationships : Relationship [*];
		part rootElements : RootElement [*];
		part diagrams : BPMNDiagram [*];
		attribute exporter : EString [1];
		attribute exporterVersion : EString [1];
	}
}

