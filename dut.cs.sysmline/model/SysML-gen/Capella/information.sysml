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
	abstract part def AbstractInstance :> Property{
		ref part representingInstanceRoles : InstanceRole [*];
	}
	enum def AggregationKind {
		enum UNSET;
		enum ASSOCIATION;
		enum AGGREGATION;
		enum COMPOSITION;
	}
	abstract part def AssociationPkg :> Structure{
		attribute visibility : VisibilityKind [1];
		part ownedAssociations : Association [*];
	}
	part def Association :> NamedRelationship{
		part ownedMembers : Property [0..2];
		ref part navigableMembers : Property [0..2];
	}
	part def Class :> GeneralClass{
		attribute isPrimitive : EBoolean [1];
		ref part keyParts : KeyPart [*];
		part ownedStateMachines : StateMachine [*];
		part ownedDataValues : DataValue [*];
		part ownedInformationRealizations : InformationRealization [*];
		ref part realizedClasses : Class [*];
		ref part realizingClasses : Class [*];
	}
	part def Collection :> Classifier, MultiplicityElement, DataValueContainer, FinalizableElement{
		attribute isPrimitive : EBoolean [1];
		attribute visibility : VisibilityKind [1];
		attribute kind : CollectionKind [1];
		attribute aggregationKind : AggregationKind [1];
		ref part type : Type [1];
		ref part index : DataType [*];
		ref part containedOperations : Operation [*];
	}
	abstract part def AbstractCollectionValue :> DataValue;
	part def CollectionValue :> AbstractCollectionValue{
		part ownedElements : DataValue [*];
		part ownedDefaultElement : DataValue [1];
	}
	part def CollectionValueReference :> AbstractCollectionValue{
		ref part referencedValue : AbstractCollectionValue [1];
		ref part referencedProperty : Property [1];
	}
	part def DataPkg :> AbstractDependenciesPkg, AbstractExchangeItemPkg, AssociationPkg, DataValueContainer, MessageReferencePkg{
		part ownedDataPkgs : DataPkg [*];
		part ownedClasses : Class [*];
		part ownedKeyParts : KeyPart [*];
		part ownedCollections : Collection [*];
		part ownedUnits : Unit [*];
		part ownedDataTypes : DataType [*];
		part ownedSignals : Signal [*];
		part ownedMessages : Message [*];
		part ownedExceptions : Exception [*];
		part ownedStateEvents : StateEvent [*];
	}
	part def DomainElement :> Class;
	part def KeyPart :> Relationship{
		ref part property : Property [1];
	}
	abstract part def MultiplicityElement :> CapellaElement{
		attribute 'ordered' : EBoolean [1];
		attribute unique : EBoolean [1];
		attribute minInclusive : EBoolean [1];
		attribute maxInclusive : EBoolean [1];
		part ownedDefaultValue : DataValue [1];
		part ownedMinValue : DataValue [1];
		part ownedMaxValue : DataValue [1];
		part ownedNullValue : DataValue [1];
		part ownedMinCard : NumericValue [1];
		part ownedMinLength : NumericValue [1];
		part ownedMaxCard : NumericValue [1];
		part ownedMaxLength : NumericValue [1];
	}
	abstract part def Operation :> Feature, AbstractEvent, AbstractEventOperation{
		part ownedParameters : Parameter [*];
		ref part allocatingOperations : Operation [*];
		ref part allocatedOperations : Operation [*];
		part ownedOperationAllocation : OperationAllocation [*];
		part ownedExchangeItemRealizations : ExchangeItemRealization [*];
		ref part realizedExchangeItems : ExchangeItem [*];
	}
	part def OperationAllocation :> Allocation{
		ref part allocatedOperation : Operation [1];
		ref part allocatingOperation : Operation [1];
	}
	part def Parameter :> TypedElement, MultiplicityElement, AbstractParameter{
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
	part def Property :> Feature, TypedElement, MultiplicityElement, FinalizableElement{
		attribute aggregationKind : AggregationKind [1];
		attribute isDerived : EBoolean [1];
		attribute isReadOnly : EBoolean [1];
		attribute isPartOfKey : EBoolean [1];
		ref part association : Association [1];
	}
	enum def SynchronismKind {
		enum UNSET;
		enum SYNCHRONOUS;
		enum ASYNCHRONOUS;
	}
	part def Service :> Operation{
		attribute synchronismKind : SynchronismKind [1];
		ref part thrownExceptions : Exception [*];
		ref part messages : Message [*];
		ref part messageReferences : MessageReference [*];
	}
	part def Union :> Class{
		attribute kind : UnionKind [1];
		ref part discriminant : UnionProperty [1];
		ref part defaultProperty : UnionProperty [1];
		ref part containedUnionProperties : UnionProperty [*];
	}
	enum def UnionKind {
		enum UNION;
		enum VARIANT;
	}
	part def UnionProperty :> Property{
		ref part qualifier : DataValue [*];
	}
	part def Unit :> NamedElement;
	abstract part def Port :> NamedElement{
		ref part incomingPortRealizations : PortRealization [*];
		ref part outgoingPortRealizations : PortRealization [*];
		part ownedProtocols : StateMachine [*];
		ref part incomingPortAllocations : PortAllocation [*];
		ref part outgoingPortAllocations : PortAllocation [*];
		ref part providedInterfaces : Interface [*];
		ref part requiredInterfaces : Interface [*];
		part ownedPortRealizations : PortRealization [*];
		part ownedPortAllocations : PortAllocation [*];
	}
	part def PortRealization :> Allocation{
		ref part realizedPort : Port [1];
		ref part realizingPort : Port [1];
	}
	part def PortAllocation :> Allocation{
		ref part allocatedPort : Port [1];
		ref part allocatingPort : Port [1];
	}
	part def ExchangeItem :> AbstractExchangeItem, AbstractEvent, AbstractSignal, FinalizableElement, GeneralizableElement{
		attribute exchangeMechanism : ExchangeMechanism [1];
		part ownedElements : ExchangeItemElement [*];
		part ownedInformationRealizations : InformationRealization [*];
		part ownedExchangeItemInstances : ExchangeItemInstance [*];
		ref part allocatorInterfaces : Interface [*];
		ref part realizedExchangeItems : ExchangeItem [*];
		ref part realizingExchangeItems : ExchangeItem [*];
		ref part realizingOperations : Operation [*];
	}
	part def ExchangeItemElement :> NamedElement, MultiplicityElement, TypedElement{
		attribute kind : ElementKind [1];
		attribute direction : ParameterDirection [1];
		attribute composite : EBoolean [1];
		ref part referencedProperties : Property [*];
	}
	part def ExchangeItemInstance :> AbstractInstance;
	part def InformationRealization :> Allocation;
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
	part def ExchangeItemRealization :> Allocation{
		ref part realizedItem : AbstractExchangeItem [1];
		ref part realizingOperation : Operation [1];
	}
	abstract part def AbstractEventOperation :> NamedElement{
		ref part invokingSequenceMessages : SequenceMessage [*];
	}
	package communication {
		abstract part def CommunicationItem :> Classifier, DataValueContainer{
			attribute visibility : VisibilityKind [1];
			part ownedStateMachines : StateMachine [*];
			ref part properties : Property [*];
		}
		part def Exception :> CommunicationItem;
		part def Message :> CommunicationItem;
		part def MessageReference :> Relationship{
			ref part 'message' : Message [1];
		}
		abstract part def MessageReferencePkg :> Structure{
			part ownedMessageReferences : MessageReference [*];
		}
		part def Signal :> CommunicationItem, AbstractSignal{
			part signalInstances : SignalInstance [*];
		}
		part def SignalInstance :> AbstractInstance;
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
		part def CommunicationLink :> CapellaElement{
			attribute kind : CommunicationLinkKind [1];
			attribute protocol : CommunicationLinkProtocol [1];
			ref part exchangeItem : ExchangeItem [1];
		}
		abstract part def CommunicationLinkExchanger {
			part ownedCommunicationLinks : CommunicationLink [*];
			ref part produce : CommunicationLink [*];
			ref part consume : CommunicationLink [*];
			ref part 'send' : CommunicationLink [*];
			ref part receive : CommunicationLink [*];
			ref part call : CommunicationLink [*];
			ref part execute : CommunicationLink [*];
			ref part write : CommunicationLink [*];
			ref part access : CommunicationLink [*];
			ref part acquire : CommunicationLink [*];
			ref part transmit : CommunicationLink [*];
		}
	}
	package datatype {
		abstract part def DataType :> GeneralizableElement, DataValueContainer, FinalizableElement{
			attribute discrete : EBoolean [1];
			attribute minInclusive : EBoolean [1];
			attribute maxInclusive : EBoolean [1];
			attribute pattern : EString [1];
			attribute visibility : VisibilityKind [1];
			ref part defaultValue : DataValue [1];
			ref part nullValue : DataValue [1];
			part ownedInformationRealizations : InformationRealization [*];
			ref part realizedDataTypes : DataType [*];
			ref part realizingDataTypes : DataType [*];
		}
		part def BooleanType :> DataType{
			part ownedLiterals : LiteralBooleanValue [0..2];
			part ownedDefaultValue : AbstractBooleanValue [1];
		}
		part def Enumeration :> DataType{
			part ownedLiterals : EnumerationLiteral [*];
			part ownedDefaultValue : AbstractEnumerationValue [1];
			part ownedNullValue : AbstractEnumerationValue [1];
			part ownedMinValue : AbstractEnumerationValue [1];
			part ownedMaxValue : AbstractEnumerationValue [1];
			ref part domainType : DataType [1];
		}
		part def StringType :> DataType{
			part ownedDefaultValue : AbstractStringValue [1];
			part ownedNullValue : AbstractStringValue [1];
			part ownedMinLength : NumericValue [1];
			part ownedMaxLength : NumericValue [1];
		}
		part def NumericType :> DataType{
			attribute kind : NumericTypeKind [1];
			part ownedDefaultValue : NumericValue [1];
			part ownedNullValue : NumericValue [1];
			part ownedMinValue : NumericValue [1];
			part ownedMaxValue : NumericValue [1];
		}
		part def PhysicalQuantity :> NumericType{
			ref part unit : Unit [1];
		}
		enum def NumericTypeKind {
			enum INTEGER;
			enum FLOAT;
		}
	}
	package datavalue {
		abstract part def DataValue :> NamedElement, ValueSpecification{
			attribute 'abstract' : EBoolean [1];
			ref part type : Type [1];
		}
		abstract part def DataValueContainer :> Structure{
			part ownedDataValues : DataValue [*];
		}
		abstract part def AbstractBooleanValue :> DataValue{
			ref part booleanType : BooleanType [1];
		}
		part def LiteralBooleanValue :> AbstractBooleanValue{
			attribute 'value' : EBoolean [1];
		}
		part def BooleanReference :> AbstractBooleanValue{
			ref part referencedValue : AbstractBooleanValue [1];
			ref part referencedProperty : Property [1];
		}
		abstract part def AbstractEnumerationValue :> DataValue{
			ref part enumerationType : Enumeration [1];
		}
		part def EnumerationLiteral :> AbstractEnumerationValue{
			part domainValue : DataValue [1];
		}
		part def EnumerationReference :> AbstractEnumerationValue{
			ref part referencedValue : AbstractEnumerationValue [1];
			ref part referencedProperty : Property [1];
		}
		abstract part def AbstractStringValue :> DataValue{
			ref part stringType : StringType [1];
		}
		part def LiteralStringValue :> AbstractStringValue{
			attribute 'value' : EString [1];
		}
		part def StringReference :> AbstractStringValue{
			ref part referencedValue : AbstractStringValue [1];
			ref part referencedProperty : Property [1];
		}
		abstract part def NumericValue :> DataValue{
			ref part unit : Unit [1];
			ref part numericType : NumericType [1];
		}
		part def LiteralNumericValue :> NumericValue{
			attribute 'value' : EString [1];
		}
		part def NumericReference :> NumericValue{
			ref part referencedValue : NumericValue [1];
			ref part referencedProperty : Property [1];
		}
		abstract part def AbstractComplexValue :> DataValue{
			ref part complexType : Classifier [1];
		}
		part def ComplexValue :> AbstractComplexValue{
			part ownedParts : ValuePart [*];
		}
		part def ComplexValueReference :> AbstractComplexValue{
			ref part referencedValue : AbstractComplexValue [1];
			ref part referencedProperty : Property [1];
		}
		part def ValuePart :> CapellaElement{
			ref part referencedProperty : Property [1];
			part ownedValue : DataValue [1];
		}
		abstract part def AbstractExpressionValue :> AbstractBooleanValue, AbstractComplexValue, AbstractEnumerationValue, NumericValue, AbstractStringValue{
			attribute expression : EString [1];
			attribute unparsedExpression : EString [1];
			ref part expressionType : DataType [1];
		}
		part def BinaryExpression :> AbstractExpressionValue{
			attribute operator : BinaryOperator [1];
			part ownedLeftOperand : DataValue [1];
			part ownedRightOperand : DataValue [1];
		}
		part def UnaryExpression :> AbstractExpressionValue{
			attribute operator : UnaryOperator [1];
			part ownedOperand : DataValue [1];
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
		part def OpaqueExpression :> CapellaElement, ValueSpecification{
			attribute bodies : EString [*];
			attribute languages : EString [*];
		}
	}
}

