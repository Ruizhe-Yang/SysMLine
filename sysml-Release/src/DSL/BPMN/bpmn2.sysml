package bpmn2 {
	private import ecore::*;
	public import bpmdi::*;
	public import dc::*;
	public import di::*;
	part def Interface :> RootElement{
		attribute name [1] : EString;
		part operations [1..*] : Operation;
		ref part implementationRef [1] : EObject;
	}
	abstract part def RootElement :> BaseElement;
	abstract part def BaseElement {
		attribute id [1] : EString;
		ref part extensionDefinitions [*] : ExtensionDefinition;
		part extensionValues [*] : ExtensionAttributeValue;
		part documentation [*] : Documentation;
		attribute description [1] : EString;
	}
	part def ExtensionDefinition {
		attribute name [1] : EString;
		part extensionAttributeDefinitions [*] : ExtensionAttributeDefinition;
		attribute id [1] : EString;
	}
	part def ExtensionAttributeDefinition {
		attribute name [1] : EString;
		attribute type [1] : EString;
		attribute isReference [1] : EBoolean;
		ref part extensionDefinition [1] : ExtensionDefinition;
		attribute id [1] : EString;
	}
	part def ExtensionAttributeValue {
		ref part valueRef [1] : EObject;
		part 'value' [1] : EObject;
		ref part extensionAttributeDefinition [1] : ExtensionAttributeDefinition;
		attribute id [1] : EString;
	}
	part def Documentation :> BaseElement{
		attribute text [1] : EString;
		attribute textFormat [1] : EString;
	}
	part def Operation :> BaseElement{
		attribute name [1] : EString;
		ref part inMessageRef [1] : Message;
		ref part outMessageRef [1] : Message;
		ref part errorRefs [*] : Error;
		ref part implementationRef [1] : EObject;
	}
	part def Message :> RootElement{
		attribute name [1] : EString;
		ref part itemRef [1] : ItemDefinition;
	}
	part def ItemDefinition :> RootElement{
		attribute itemKind [1] : ItemKind;
		ref part structureRef [1] : EObject;
		attribute isCollection [1] : EBoolean;
		ref part 'import' [1] : Import;
	}
	enum def ItemKind {
		enum Physical;
		enum Information;
	}
	part def Import {
		attribute importType [1] : EString;
		attribute location [1] : EString;
		attribute namespace [1] : EString;
		attribute id [1] : EString;
	}
	part def Error :> RootElement{
		ref part structureRef [1] : ItemDefinition;
		attribute name [1] : EString;
		attribute errorCode [1] : EString;
	}
	part def EndPoint :> RootElement;
	part def Auditing :> BaseElement;
	part def GlobalTask :> CallableElement{
		part resources [*] : ResourceRole;
	}
	abstract part def CallableElement :> RootElement{
		attribute name [1] : EString;
		part ioSpecification [1] : InputOutputSpecification;
		ref part supportedInterfaceRefs [*] : Interface;
		part ioBinding [*] : InputOutputBinding;
	}
	part def InputOutputSpecification :> BaseElement{
		part inputSets [*] : InputSet;
		part outputSets [*] : OutputSet;
		part dataInputs [*] : DataInput;
		part dataOutputs [*] : DataOutput;
	}
	part def InputSet :> BaseElement{
		attribute name [1] : EString;
		ref part dataInputRefs [*] : DataInput;
		ref part optionalInputRefs [*] : DataInput;
		ref part whileExecutingInputRefs [*] : DataInput;
		ref part outputSetRefs [*] : OutputSet;
	}
	part def DataInput :> ItemAwareElement{
		attribute name [1] : EString;
		attribute isCollection [1] : EBoolean;
		ref part inputSetWithOptional [*] : InputSet;
		ref part inputSetWithWhileExecuting [*] : InputSet;
		ref part inputSetRefs [*] : InputSet;
	}
	part def ItemAwareElement :> BaseElement{
		ref part itemSubjectRef [1] : ItemDefinition;
		part dataState [1] : DataState;
	}
	part def DataState :> BaseElement{
		attribute name [1] : EString;
	}
	part def OutputSet :> BaseElement{
		ref part dataOutputRefs [*] : DataOutput;
		ref part optionalOutputRefs [*] : DataOutput;
		ref part whileExecutingOutputRefs [*] : DataOutput;
		attribute name [1] : EString;
		ref part inputSetRefs [*] : InputSet;
	}
	part def DataOutput :> ItemAwareElement{
		attribute name [1] : EString;
		attribute isCollection [1] : EBoolean;
		ref part outputSetWithOptional [*] : OutputSet;
		ref part outputSetWithWhileExecuting [*] : OutputSet;
		ref part outputSetRefs [*] : OutputSet;
	}
	part def InputOutputBinding {
		ref part inputDataRef [1] : InputSet;
		ref part outputDataRef [1] : OutputSet;
		ref part operationRef [1] : Operation;
		attribute id [1] : EString;
	}
	part def ResourceRole :> BaseElement{
		ref part resourceRef [1] : Resource;
		part resourceParameterBindings [*] : ResourceParameterBinding;
		part resourceAssignmentExpression [1] : ResourceAssignmentExpression;
		attribute name [1] : EString;
	}
	part def Resource :> RootElement{
		attribute name [1] : EString;
		part resourceParameters [*] : ResourceParameter;
	}
	part def ResourceParameter :> BaseElement{
		attribute name [1] : EString;
		attribute isRequired [1] : EBoolean;
		ref part type [1] : ItemDefinition;
	}
	part def ResourceParameterBinding {
		part expression [1] : Expression;
		ref part parameterRef [1] : ResourceParameter;
		attribute id [1] : EString;
	}
	part def Expression :> BaseElement;
	part def ResourceAssignmentExpression {
		part expression [1] : Expression;
		attribute id [1] : EString;
	}
	part def Monitoring :> BaseElement;
	part def Performer :> ResourceRole;
	part def Process :> CallableElement, FlowElementsContainer{
		attribute processType [1] : ProcessType;
		//attribute isClosed [1] : EBoolean;
		part auditing [1] : Auditing;
		part monitoring [1] : Monitoring;
		part properties [*] : Property;
		ref part supports [*] : Process;
		ref part definitionalCollaborationRef [1] : Collaboration;
		attribute isExecutable [1] : EBoolean;
		part resources [*] : ResourceRole;
		part artifacts [*] : Artifact;
		part correlationSubscriptions [*] : CorrelationSubscription;
		part decomposedBy [*] : Process;
		ref part decomposes [1] : Process;
	}
	abstract part def FlowElementsContainer :> BaseElement{
		part flowElements [*] : FlowElement;
		part laneSets [*] : LaneSet;
	}
	abstract part def FlowElement :> BaseElement{
		attribute name [1] : EString;
		part auditing [1] : Auditing;
		part monitoring [1] : Monitoring;
		ref part categoryValueRef [*] : CategoryValue;
	}
	part def CategoryValue :> BaseElement{
		attribute 'value' [1] : EString;
		ref part categorizedFlowElements [*] : FlowElement;
	}
	part def LaneSet :> BaseElement{
		part lanes [*] : Lane;
		attribute name [1] : EString;
	}
	part def Lane :> BaseElement{
		attribute name [1] : EString;
		part childLaneSet [1] : LaneSet;
		ref part partitionElementRef [1] : BaseElement;
		ref part flowNodeRefs [*] : FlowNode;
		part partitionElement [1] : BaseElement;
	}
	abstract part def FlowNode :> FlowElement{
		ref part outgoing [*] : SequenceFlow;
		ref part incoming [*] : SequenceFlow;
		ref part lanes [*] : Lane;
	}
	part def SequenceFlow :> FlowElement{
		attribute isImmediate [1] : EBoolean;
		part conditionExpression [1] : Expression;
		ref part targetRef [1] : FlowNode;
		ref part sourceRef [1] : FlowNode;
	}
	enum def ProcessType {
		enum None;
		enum Public;
		enum Private;
	}
	part def Property :> ItemAwareElement{
		attribute name [1] : EString;
	}
	part def Collaboration :> RootElement{
		attribute name [1] : EString;
		//attribute isClosed [1] : EBoolean;
		ref part choreographyRef [*] : Choreography;
		part artifacts [*] : Artifact;
		part participantAssociations [*] : ParticipantAssociation;
		part messageFlowAssociations [*] : MessageFlowAssociation;
		part conversationAssociations [1] : ConversationAssociation;
		part participants [*] : Participant;
		part messageFlows [*] : MessageFlow;
		part correlationKeys [*] : CorrelationKey;
		part conversations [*] : ConversationNode;
		part conversationLinks [*] : ConversationLink;
	}
	part def Choreography :> Collaboration, FlowElementsContainer;
	abstract part def Artifact :> BaseElement;
	part def ParticipantAssociation :> BaseElement{
		ref part innerParticipantRef [1] : Participant;
		ref part outerParticipantRef [1] : Participant;
	}
	part def Participant :> BaseElement, InteractionNode{
		attribute name [1] : EString;
		ref part interfaceRefs [*] : Interface;
		part participantMultiplicity [1] : ParticipantMultiplicity;
		ref part endPointRefs [*] : EndPoint;
		ref part processRef [1] : Process;
	}
	abstract part def InteractionNode {
		ref part incomingConversationLinks [*] : ConversationLink;
		ref part outgoingConversationLinks [*] : ConversationLink;
	}
	part def ConversationLink :> BaseElement{
		ref part sourceRef [1] : InteractionNode;
		attribute name [1] : EString;
		ref part targetRef [1] : InteractionNode;
	}
	part def ParticipantMultiplicity {
		attribute minimum [1] : EInt;
		attribute maximum [1] : EInt;
		attribute id [1] : EString;
	}
	part def MessageFlowAssociation :> BaseElement{
		ref part innerMessageFlowRef [1] : MessageFlow;
		ref part outerMessageFlowRef [1] : MessageFlow;
	}
	part def MessageFlow :> BaseElement{
		attribute name [1] : EString;
		ref part sourceRef [1] : InteractionNode;
		ref part targetRef [1] : InteractionNode;
		ref part messageRef [1] : Message;
	}
	part def ConversationAssociation :> BaseElement{
		ref part innerConversationNodeRef [1] : ConversationNode;
		ref part outerConversationNodeRef [1] : ConversationNode;
	}
	abstract part def ConversationNode :> BaseElement, InteractionNode{
		attribute name [1] : EString;
		ref part participantRefs [2..*] : Participant;
		ref part messageFlowRefs [*] : MessageFlow;
		part correlationKeys [*] : CorrelationKey;
	}
	part def CorrelationKey :> BaseElement{
		ref part correlationPropertyRef [*] : CorrelationProperty;
		attribute name [1] : EString;
	}
	part def CorrelationProperty :> RootElement{
		part correlationPropertyRetrievalExpression [1..*] : CorrelationPropertyRetrievalExpression;
		attribute name [1] : EString;
		ref part type [1] : ItemDefinition;
	}
	part def CorrelationPropertyRetrievalExpression :> BaseElement{
		part messagePath [1] : FormalExpression;
		ref part messageRef [1] : Message;
	}
	part def FormalExpression :> Expression{
		attribute 'language' [1] : EString;
		ref part body [1] : EObject;
		ref part evaluatesToTypeRef [1] : ItemDefinition;
	}
	part def CorrelationSubscription :> BaseElement{
		ref part correlationKeyRef [1] : CorrelationKey;
		part correlationPropertyBinding [*] : CorrelationPropertyBinding;
	}
	part def CorrelationPropertyBinding :> BaseElement{
		part dataPath [1] : FormalExpression;
		ref part correlationPropertyRef [1] : CorrelationProperty;
	}
	part def GlobalManualTask :> GlobalTask;
	part def ManualTask :> Task;
	part def Task :> Activity;
	abstract part def Activity :> FlowNode, InteractionNode{
		attribute isForCompensation [1] : EBoolean;
		part loopCharacteristics [1] : LoopCharacteristics;
		part resources [*] : ResourceRole;
		ref part 'default' [1] : SequenceFlow;
		part properties [*] : Property;
		part ioSpecification [1] : InputOutputSpecification;
		ref part boundaryEventRefs [*] : BoundaryEvent;
		part dataInputAssociations [*] : DataInputAssociation;
		part dataOutputAssociations [*] : DataOutputAssociation;
		attribute startQuantity [1] : EInt;
		attribute completionQuantity [1] : EInt;
	}
	abstract part def LoopCharacteristics :> BaseElement;
	part def BoundaryEvent :> CatchEvent{
		attribute cancelActivity [1] : EBoolean;
		ref part attachedToRef [1] : Activity;
	}
	abstract part def CatchEvent :> Event{
		attribute parallelMultiple [1] : EBoolean;
		part outputSet [1] : OutputSet;
		ref part eventDefinitionRefs [*] : EventDefinition;
		part dataOutputAssociation [*] : DataOutputAssociation;
		part dataOutputs [*] : DataOutput;
		part eventDefinitions [*] : EventDefinition;
	}
	abstract part def Event :> FlowNode, InteractionNode{
		part properties [*] : Property;
	}
	abstract part def EventDefinition :> RootElement;
	part def DataOutputAssociation :> DataAssociation;
	part def DataAssociation :> BaseElement{
		part transformation [1] : FormalExpression;
		part assignment [*] : Assignment;
		ref part targetRef [1] : ItemAwareElement;
		ref part sourceRef [*] : ItemAwareElement;
	}
	part def Assignment :> BaseElement{
		part 'from' [1] : Expression;
		part 'to' [1] : Expression;
	}
	part def DataInputAssociation :> DataAssociation;
	part def UserTask :> Task{
		part renderings [*] : Rendering;
		attribute implementation [1] : EString;
	}
	part def Rendering :> BaseElement;
	part def HumanPerformer :> Performer;
	part def PotentialOwner :> HumanPerformer;
	part def GlobalUserTask :> GlobalTask{
		attribute implementation [1] : EString;
		part renderings [*] : Rendering;
	}
	abstract part def Gateway :> FlowNode{
		attribute gatewayDirection [1] : GatewayDirection;
	}
	enum def GatewayDirection {
		enum Unspecified;
		enum Converging;
		enum Diverging;
		enum Mixed;
	}
	part def EventBasedGateway :> Gateway{
		attribute instantiate [1] : EBoolean;
		attribute eventGatewayType [1] : EventBasedGatewayType;
	}
	enum def EventBasedGatewayType {
		enum Parallel;
		enum Exclusive;
	}
	part def ComplexGateway :> Gateway{
		part activationCondition [1] : Expression;
		ref part 'default' [1] : SequenceFlow;
	}
	part def ExclusiveGateway :> Gateway{
		ref part 'default' [1] : SequenceFlow;
	}
	part def InclusiveGateway :> Gateway{
		ref part 'default' [1] : SequenceFlow;
	}
	part def ParallelGateway :> Gateway;
	part def Relationship :> BaseElement{
		attribute type [1] : EString;
		attribute direction [1] : RelationshipDirection;
		ref part sources [1..*] : EObject;
		ref part targets [1..*] : EObject;
	}
	enum def RelationshipDirection {
		enum None;
		enum Forward;
		enum Backward;
		enum Both;
	}
	part def Extension {
		attribute mustUnderstand [1] : EBoolean;
		part definition [1] : ExtensionDefinition;
		attribute id [1] : EString;
	}
	part def IntermediateCatchEvent :> CatchEvent;
	part def IntermediateThrowEvent :> ThrowEvent;
	abstract part def ThrowEvent :> Event{
		part inputSet [1] : InputSet;
		ref part eventDefinitionRefs [*] : EventDefinition;
		part dataInputAssociation [*] : DataInputAssociation;
		part dataInputs [*] : DataInput;
		part eventDefinitions [*] : EventDefinition;
	}
	part def EndEvent :> ThrowEvent;
	part def StartEvent :> CatchEvent{
		attribute isInterrupting [1] : EBoolean;
	}
	part def CancelEventDefinition :> EventDefinition;
	part def ErrorEventDefinition :> EventDefinition{
		ref part errorRef [1] : Error;
	}
	part def TerminateEventDefinition :> EventDefinition;
	part def EscalationEventDefinition :> EventDefinition{
		ref part escalationRef [1] : Escalation;
	}
	part def Escalation {
		ref part structureRef [1] : ItemDefinition;
		attribute name [1] : EString;
		attribute escalationCode [1] : EString;
		attribute id [1] : EString;
	}
	part def CompensateEventDefinition :> EventDefinition{
		attribute waitForCompletion [1] : EBoolean;
		ref part activityRef [1] : Activity;
	}
	part def TimerEventDefinition :> EventDefinition{
		part timeDate [1] : Expression;
		part timeCycle [1] : Expression;
		part timeDuration [1] : Expression;
	}
	part def LinkEventDefinition :> EventDefinition{
		attribute name [1] : EString;
		ref part target [1] : LinkEventDefinition;
		ref part source [*] : LinkEventDefinition;
	}
	part def MessageEventDefinition :> EventDefinition{
		ref part messageRef [1] : Message;
		ref part operationRef [1] : Operation;
	}
	part def ConditionalEventDefinition :> EventDefinition{
		part condition [1] : Expression;
	}
	part def SignalEventDefinition :> EventDefinition{
		ref part signalRef [1] : Signal;
	}
	part def Signal :> RootElement{
		ref part structureRef [1] : ItemDefinition;
		attribute name [1] : EString;
	}
	part def ImplicitThrowEvent :> ThrowEvent;
	part def DataObject :> FlowElement, ItemAwareElement{
		attribute isCollection [1] : EBoolean;
	}
	part def DataStore :> ItemAwareElement, RootElement{
		attribute name [1] : EString;
		attribute capacity [1] : EInt;
		attribute isUnlimited [1] : EBoolean;
	}
	part def DataStoreReference :> FlowElement, ItemAwareElement{
		ref part dataStoreRef [1] : DataStore;
	}
	part def DataObjectReference :> FlowElement, ItemAwareElement{
		ref part dataObjectRef [1] : DataObject;
	}
	part def CallConversation :> ConversationNode{
		ref part calledCollaborationRef [1] : Collaboration;
		part participantAssociations [*] : ParticipantAssociation;
	}
	part def Conversation :> ConversationNode;
	part def SubConversation :> ConversationNode{
		part conversationNodes [*] : ConversationNode;
	}
	part def GlobalConversation :> Collaboration;
	part def PartnerEntity :> RootElement{
		attribute name [1] : EString;
		ref part participantRef [*] : Participant;
	}
	part def PartnerRole :> RootElement{
		attribute name [1] : EString;
		ref part participantRef [*] : Participant;
	}
	abstract part def ChoreographyActivity :> FlowNode{
		ref part participantRefs [*] : Participant;
		ref part initiatingParticipantRef [1] : Participant;
		part correlationKeys [*] : CorrelationKey;
		attribute loopType [1] : ChoreographyLoopType;
	}
	enum def ChoreographyLoopType {
		enum None;
		enum Standard;
		enum MultiInstanceSequential;
		enum MultiInstanceParallel;
	}
	part def CallChoreography :> ChoreographyActivity{
		ref part calledChoreographyRef [1] : Choreography;
		part participantAssociations [*] : ParticipantAssociation;
	}
	part def SubChoreography :> ChoreographyActivity, FlowElementsContainer{
		part artifacts [*] : Artifact;
	}
	part def ChoreographyTask :> ChoreographyActivity{
		ref part messageFlowRef [0..2] : MessageFlow;
	}
	part def GlobalChoreographyTask :> Choreography{
		ref part initiatingParticipantRef [1] : Participant;
	}
	part def TextAnnotation :> Artifact{
		attribute text [1] : EString;
		attribute textFormat [1] : EString;
	}
	part def Group :> Artifact{
		ref part categoryValueRef [1] : CategoryValue;
	}
	part def Association :> Artifact{
		attribute associationDirection [1] : AssociationDirection;
		ref part sourceRef [1] : BaseElement;
		ref part targetRef [1] : BaseElement;
	}
	enum def AssociationDirection {
		enum None;
		enum One;
		enum Both;
	}
	part def Category :> RootElement{
		part categoryValue [*] : CategoryValue;
		attribute name [1] : EString;
	}
	part def ServiceTask :> Task{
		attribute implementation [1] : EString;
		ref part operationRef [1] : Operation;
	}
	part def SubProcess :> Activity, FlowElementsContainer{
		attribute triggeredByEvent [1] : EBoolean;
		part artifacts [*] : Artifact;
	}
	enum def MultiInstanceBehavior {
		enum None;
		enum One;
		enum All;
		enum Complex;
	}
	part def MultiInstanceLoopCharacteristics :> LoopCharacteristics{
		attribute isSequential [1] : EBoolean;
		attribute behavior [1] : MultiInstanceBehavior;
		part loopCardinality [1] : Expression;
		ref part loopDataInputRef [1] : ItemAwareElement;
		ref part loopDataOutputRef [1] : ItemAwareElement;
		part inputDataItem [1] : DataInput;
		part outputDataItem [1] : DataOutput;
		part completionCondition [1] : Expression;
		part complexBehaviorDefinition [*] : ComplexBehaviorDefinition;
		ref part oneBehaviorEventRef [1] : EventDefinition;
		ref part noneBehaviorEventRef [1] : EventDefinition;
	}
	part def ComplexBehaviorDefinition :> BaseElement{
		part condition [1] : FormalExpression;
		part 'event' [1] : ImplicitThrowEvent;
	}
	part def StandardLoopCharacteristics :> LoopCharacteristics{
		attribute testBefore [1] : EBoolean;
		part loopCondition [1] : Expression;
		part loopMaximum [1] : Expression;
	}
	part def CallActivity :> Activity{
		ref part calledElementRef [1] : CallableElement;
	}
	part def SendTask :> Task{
		attribute implementation [1] : EString;
		ref part operationRef [1] : Operation;
		ref part messageRef [1] : Message;
	}
	part def ReceiveTask :> Task{
		attribute implementation [1] : EString;
		attribute instantiate [1] : EBoolean;
		ref part operationRef [1] : Operation;
		ref part messageRef [1] : Message;
	}
	part def ScriptTask :> Task{
		attribute scriptFormat [1] : EString;
		attribute script [1] : EString;
	}
	part def BusinessRuleTask :> Task{
		attribute implementation [1] : EString;
	}
	part def AdHocSubProcess :> SubProcess{
		part completionCondition [1] : Expression;
		attribute ordering [1] : AdHocOrdering;
		attribute cancelRemainingInstances [1] : EBoolean;
	}
	enum def AdHocOrdering {
		enum Parallel;
		enum Sequential;
	}
	part def Transaction :> SubProcess{
		attribute protocol [1] : EString;
		attribute method [1] : EString;
	}
	part def GlobalScriptTask :> GlobalTask{
		attribute scriptLanguage [1] : EString;
		attribute script [1] : EString;
	}
	part def GlobalBusinessRuleTask :> GlobalTask{
		attribute implementation [1] : EString;
	}
	part def Definitions :> BaseElement{
		attribute name [1] : EString;
		attribute targetNamespace [1] : EString;
		attribute expressionLanguage [1] : EString;
		attribute typeLanguage [1] : EString;
		part imports [*] : Import;
		part extensions [*] : Extension;
		part relationships [*] : Relationship;
		part rootElements [*] : RootElement;
		part diagrams [*] : BPMNDiagram;
		attribute exporter [1] : EString;
		attribute exporterVersion [1] : EString;
	}
}

