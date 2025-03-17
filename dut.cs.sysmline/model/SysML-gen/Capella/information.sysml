package information {
	private import ecore::*;
	public import interaction::*;
	public import capellacommon::*;
	public import datavalue::*;
	public import capellacore::*;
	public import datatype::*;
	public import communication::*;
	public import cs::*;
	public import modellingcore::*;
	public import emde::*;
	public import fa::*;
	public import la::*;
	public import behavior::*;
	public import epbs::*;
	public import activity::*;
	public import ctx::*;
	public import pa::*;
	abstract item def AbstractInstance :> Property{
		ref item representingInstanceRoles : InstanceRole [*];
	}
	enum def AggregationKind {
		enum UNSET;
		enum ASSOCIATION;
		enum AGGREGATION;
		enum COMPOSITION;
	}
	abstract item def AssociationPkg :> Structure{
		attribute visibility : VisibilityKind [1];
		item ownedAssociations : Association [*];
	}
	item def Association :> NamedRelationship{
		item ownedMembers : Property [0..2];
		ref item navigableMembers : Property [0..2];
	}
	item def Class :> GeneralClass{
		attribute isPrimitive : EBoolean [1];
		ref item keyParts : KeyPart [*];
		item ownedStateMachines : StateMachine [*];
		item ownedDataValues : DataValue [*];
		item ownedInformationRealizations : InformationRealization [*];
		ref item realizedClasses : Class [*];
		ref item realizingClasses : Class [*];
	}
	item def Collection :> Classifier, MultiplicityElement, DataValueContainer, FinalizableElement{
		attribute isPrimitive : EBoolean [1];
		attribute visibility : VisibilityKind [1];
		attribute kind : CollectionKind [1];
		attribute aggregationKind : AggregationKind [1];
		ref item type : Type [1];
		ref item index : DataType [*];
		ref item containedOperations : Operation [*];
	}
	abstract item def AbstractCollectionValue :> DataValue;
	item def CollectionValue :> AbstractCollectionValue{
		item ownedElements : DataValue [*];
		item ownedDefaultElement : DataValue [1];
	}
	item def CollectionValueReference :> AbstractCollectionValue{
		ref item referencedValue : AbstractCollectionValue [1];
		ref item referencedProperty : Property [1];
	}
	item def DataPkg :> AbstractDependenciesPkg, AbstractExchangeItemPkg, AssociationPkg, DataValueContainer, MessageReferencePkg{
		item ownedDataPkgs : DataPkg [*];
		item ownedClasses : Class [*];
		item ownedKeyParts : KeyPart [*];
		item ownedCollections : Collection [*];
		item ownedUnits : Unit [*];
		item ownedDataTypes : DataType [*];
		item ownedSignals : Signal [*];
		item ownedMessages : Message [*];
		item ownedExceptions : Exception [*];
		item ownedStateEvents : StateEvent [*];
	}
	item def DomainElement :> Class;
	item def KeyPart :> Relationship{
		ref item property : Property [1];
	}
	abstract item def MultiplicityElement :> CapellaElement{
		attribute 'ordered' : EBoolean [1];
		attribute unique : EBoolean [1];
		attribute minInclusive : EBoolean [1];
		attribute maxInclusive : EBoolean [1];
		item ownedDefaultValue : DataValue [1];
		item ownedMinValue : DataValue [1];
		item ownedMaxValue : DataValue [1];
		item ownedNullValue : DataValue [1];
		item ownedMinCard : NumericValue [1];
		item ownedMinLength : NumericValue [1];
		item ownedMaxCard : NumericValue [1];
		item ownedMaxLength : NumericValue [1];
	}
	abstract item def Operation :> Feature, AbstractEvent, AbstractEventOperation{
		item ownedParameters : Parameter [*];
		ref item allocatingOperations : Operation [*];
		ref item allocatedOperations : Operation [*];
		item ownedOperationAllocation : OperationAllocation [*];
		item ownedExchangeItemRealizations : ExchangeItemRealization [*];
		ref item realizedExchangeItems : ExchangeItem [*];
	}
	item def OperationAllocation :> Allocation{
		ref item allocatedOperation : Operation [1];
		ref item allocatingOperation : Operation [1];
	}
	item def Parameter :> TypedElement, MultiplicityElement, AbstractParameter{
		attribute direction : ParameterDirection [1];
		attribute passingMode : PassingMode [1];
	}
	enum def ParameterDirection {
		enum IN;
		enum OUT;
		enum INOUT;
		enum RETURN;
		enum EXCEPTION;
		enum UNSET;
	}
	enum def PassingMode {
		enum UNSET;
		enum BY_REF;
		enum BY_VALUE;
	}
	item def Property :> Feature, TypedElement, MultiplicityElement, FinalizableElement{
		attribute aggregationKind : AggregationKind [1];
		attribute isDerived : EBoolean [1];
		attribute isReadOnly : EBoolean [1];
		attribute isPartOfKey : EBoolean [1];
		ref item association : Association [1];
	}
	enum def SynchronismKind {
		enum UNSET;
		enum SYNCHRONOUS;
		enum ASYNCHRONOUS;
	}
	item def Service :> Operation{
		attribute synchronismKind : SynchronismKind [1];
		ref item thrownExceptions : Exception [*];
		ref item messages : Message [*];
		ref item messageReferences : MessageReference [*];
	}
	item def Union :> Class{
		attribute kind : UnionKind [1];
		ref item discriminant : UnionProperty [1];
		ref item defaultProperty : UnionProperty [1];
		ref item containedUnionProperties : UnionProperty [*];
	}
	enum def UnionKind {
		enum UNION;
		enum VARIANT;
	}
	item def UnionProperty :> Property{
		ref item qualifier : DataValue [*];
	}
	item def Unit :> NamedElement;
	abstract item def Port :> NamedElement{
		ref item incomingPortRealizations : PortRealization [*];
		ref item outgoingPortRealizations : PortRealization [*];
		item ownedProtocols : StateMachine [*];
		ref item incomingPortAllocations : PortAllocation [*];
		ref item outgoingPortAllocations : PortAllocation [*];
		ref item providedInterfaces : Interface [*];
		ref item requiredInterfaces : Interface [*];
		item ownedPortRealizations : PortRealization [*];
		item ownedPortAllocations : PortAllocation [*];
	}
	item def PortRealization :> Allocation{
		ref item realizedPort : Port [1];
		ref item realizingPort : Port [1];
	}
	item def PortAllocation :> Allocation{
		ref item allocatedPort : Port [1];
		ref item allocatingPort : Port [1];
	}
	item def ExchangeItem :> AbstractExchangeItem, AbstractEvent, AbstractSignal, FinalizableElement, GeneralizableElement{
		attribute exchangeMechanism : ExchangeMechanism [1];
		item ownedElements : ExchangeItemElement [*];
		item ownedInformationRealizations : InformationRealization [*];
		item ownedExchangeItemInstances : ExchangeItemInstance [*];
		ref item allocatorInterfaces : Interface [*];
		ref item realizedExchangeItems : ExchangeItem [*];
		ref item realizingExchangeItems : ExchangeItem [*];
		ref item realizingOperations : Operation [*];
	}
	item def ExchangeItemElement :> NamedElement, MultiplicityElement, TypedElement{
		attribute kind : ElementKind [1];
		attribute direction : ParameterDirection [1];
		attribute composite : EBoolean [1];
		ref item referencedProperties : Property [*];
	}
	item def ExchangeItemInstance :> AbstractInstance;
	item def InformationRealization :> Allocation;
	enum def ExchangeMechanism {
		enum UNSET;
		enum FLOW;
		enum OPERATION;
		enum EVENT;
		enum SHARED_DATA;
	}
	enum def ElementKind {
		enum TYPE;
		enum MEMBER;
	}
	enum def CollectionKind {
		enum ARRAY;
		enum SEQUENCE;
	}
	item def ExchangeItemRealization :> Allocation{
		ref item realizedItem : AbstractExchangeItem [1];
		ref item realizingOperation : Operation [1];
	}
	abstract item def AbstractEventOperation :> NamedElement{
		ref item invokingSequenceMessages : SequenceMessage [*];
	}
	package communication {
		abstract item def CommunicationItem :> Classifier, DataValueContainer{
			attribute visibility : VisibilityKind [1];
			item ownedStateMachines : StateMachine [*];
			ref item properties : Property [*];
		}
		item def Exception :> CommunicationItem;
		item def Message :> CommunicationItem;
		item def MessageReference :> Relationship{
			ref item 'message' : Message [1];
		}
		abstract item def MessageReferencePkg :> Structure{
			item ownedMessageReferences : MessageReference [*];
		}
		item def Signal :> CommunicationItem, AbstractSignal{
			item signalInstances : SignalInstance [*];
		}
		item def SignalInstance :> AbstractInstance;
		enum def CommunicationLinkKind {
			enum UNSET;
			enum PRODUCE;
			enum CONSUME;
			enum SEND;
			enum RECEIVE;
			enum CALL;
			enum EXECUTE;
			enum WRITE;
			enum ACCESS;
			enum ACQUIRE;
			enum TRANSMIT;
		}
		enum def CommunicationLinkProtocol {
			enum UNSET;
			enum UNICAST;
			enum MULTICAST;
			enum BROADCAST;
			enum SYNCHRONOUS;
			enum ASYNCHRONOUS;
			enum READ;
			enum ACCEPT;
		}
		item def CommunicationLink :> CapellaElement{
			attribute kind : CommunicationLinkKind [1];
			attribute protocol : CommunicationLinkProtocol [1];
			ref item exchangeItem : ExchangeItem [1];
		}
		abstract item def CommunicationLinkExchanger {
			item ownedCommunicationLinks : CommunicationLink [*];
			ref item produce : CommunicationLink [*];
			ref item consume : CommunicationLink [*];
			ref item 'send' : CommunicationLink [*];
			ref item receive : CommunicationLink [*];
			ref item call : CommunicationLink [*];
			ref item execute : CommunicationLink [*];
			ref item write : CommunicationLink [*];
			ref item access : CommunicationLink [*];
			ref item acquire : CommunicationLink [*];
			ref item transmit : CommunicationLink [*];
		}
	}
	package datatype {
		abstract item def DataType :> GeneralizableElement, DataValueContainer, FinalizableElement{
			attribute discrete : EBoolean [1];
			attribute minInclusive : EBoolean [1];
			attribute maxInclusive : EBoolean [1];
			attribute pattern : EString [1];
			attribute visibility : VisibilityKind [1];
			ref item defaultValue : DataValue [1];
			ref item nullValue : DataValue [1];
			item ownedInformationRealizations : InformationRealization [*];
			ref item realizedDataTypes : DataType [*];
			ref item realizingDataTypes : DataType [*];
		}
		item def BooleanType :> DataType{
			item ownedLiterals : LiteralBooleanValue [0..2];
			item ownedDefaultValue : AbstractBooleanValue [1];
		}
		item def Enumeration :> DataType{
			item ownedLiterals : EnumerationLiteral [*];
			item ownedDefaultValue : AbstractEnumerationValue [1];
			item ownedNullValue : AbstractEnumerationValue [1];
			item ownedMinValue : AbstractEnumerationValue [1];
			item ownedMaxValue : AbstractEnumerationValue [1];
			ref item domainType : DataType [1];
		}
		item def StringType :> DataType{
			item ownedDefaultValue : AbstractStringValue [1];
			item ownedNullValue : AbstractStringValue [1];
			item ownedMinLength : NumericValue [1];
			item ownedMaxLength : NumericValue [1];
		}
		item def NumericType :> DataType{
			attribute kind : NumericTypeKind [1];
			item ownedDefaultValue : NumericValue [1];
			item ownedNullValue : NumericValue [1];
			item ownedMinValue : NumericValue [1];
			item ownedMaxValue : NumericValue [1];
		}
		item def PhysicalQuantity :> NumericType{
			ref item unit : Unit [1];
		}
		enum def NumericTypeKind {
			enum INTEGER;
			enum FLOAT;
		}
	}
	package datavalue {
		abstract item def DataValue :> NamedElement, ValueSpecification{
			attribute 'abstract' : EBoolean [1];
			ref item type : Type [1];
		}
		abstract item def DataValueContainer :> Structure{
			item ownedDataValues : DataValue [*];
		}
		abstract item def AbstractBooleanValue :> DataValue{
			ref item booleanType : BooleanType [1];
		}
		item def LiteralBooleanValue :> AbstractBooleanValue{
			attribute 'value' : EBoolean [1];
		}
		item def BooleanReference :> AbstractBooleanValue{
			ref item referencedValue : AbstractBooleanValue [1];
			ref item referencedProperty : Property [1];
		}
		abstract item def AbstractEnumerationValue :> DataValue{
			ref item enumerationType : Enumeration [1];
		}
		item def EnumerationLiteral :> AbstractEnumerationValue{
			item domainValue : DataValue [1];
		}
		item def EnumerationReference :> AbstractEnumerationValue{
			ref item referencedValue : AbstractEnumerationValue [1];
			ref item referencedProperty : Property [1];
		}
		abstract item def AbstractStringValue :> DataValue{
			ref item stringType : StringType [1];
		}
		item def LiteralStringValue :> AbstractStringValue{
			attribute 'value' : EString [1];
		}
		item def StringReference :> AbstractStringValue{
			ref item referencedValue : AbstractStringValue [1];
			ref item referencedProperty : Property [1];
		}
		abstract item def NumericValue :> DataValue{
			ref item unit : Unit [1];
			ref item numericType : NumericType [1];
		}
		item def LiteralNumericValue :> NumericValue{
			attribute 'value' : EString [1];
		}
		item def NumericReference :> NumericValue{
			ref item referencedValue : NumericValue [1];
			ref item referencedProperty : Property [1];
		}
		abstract item def AbstractComplexValue :> DataValue{
			ref item complexType : Classifier [1];
		}
		item def ComplexValue :> AbstractComplexValue{
			item ownedParts : ValuePart [*];
		}
		item def ComplexValueReference :> AbstractComplexValue{
			ref item referencedValue : AbstractComplexValue [1];
			ref item referencedProperty : Property [1];
		}
		item def ValuePart :> CapellaElement{
			ref item referencedProperty : Property [1];
			item ownedValue : DataValue [1];
		}
		abstract item def AbstractExpressionValue :> AbstractBooleanValue, AbstractComplexValue, AbstractEnumerationValue, NumericValue, AbstractStringValue{
			attribute expression : EString [1];
			attribute unparsedExpression : EString [1];
			ref item expressionType : DataType [1];
		}
		item def BinaryExpression :> AbstractExpressionValue{
			attribute operator : BinaryOperator [1];
			item ownedLeftOperand : DataValue [1];
			item ownedRightOperand : DataValue [1];
		}
		item def UnaryExpression :> AbstractExpressionValue{
			attribute operator : UnaryOperator [1];
			item ownedOperand : DataValue [1];
		}
		enum def BinaryOperator {
			enum UNSET;
			enum ADD;
			enum MUL;
			enum SUB;
			enum DIV;
			enum POW;
			enum MIN;
			enum MAX;
			enum EQU;
			enum IOR;
			enum XOR;
			enum AND;
		}
		enum def UnaryOperator {
			enum UNSET;
			enum NOT;
			enum POS;
			enum VAL;
			enum SUC;
			enum PRE;
		}
		item def OpaqueExpression :> CapellaElement, ValueSpecification{
			attribute bodies : EString [*];
			attribute languages : EString [*];
		}
	}
}

