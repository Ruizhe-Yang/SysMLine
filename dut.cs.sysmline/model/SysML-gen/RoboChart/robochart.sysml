package robochart {
	private import ecore::*;
	item def BasicPackage {
		attribute name : EString [1];
		item imports : Import [*];
	}
	item def RCPackage :> BasicPackage{
		item interfaces : Interface [*];
		item robots : RoboticPlatformDef [*];
		item types : TypeDecl [*];
		item machines : StateMachineDef [*];
		item controllers : ControllerDef [*];
		item modules : RCModule [*];
		item operations : OperationDef [*];
		item functions : Function [*];
	}
	item def Import {
		attribute importedNamespace : EString [1];
	}
	abstract item def NamedElement {
		attribute name : EString [1];
	}
	abstract item def TypeDecl :> NamedElement;
	item def PrimitiveType :> TypeDecl;
	item def RecordType :> TypeDecl{
		item fields : Field [1..*];
	}
	item def Field :> Member, NamedExpression;
	abstract item def TypedNamedElement :> NamedElement{
		item type : Type [1];
	}
	abstract item def Member :> TypedNamedElement;
	item def Enumeration :> TypeDecl{
		item literals : Literal [*];
	}
	item def Literal :> TypeDecl, NamedExpression{
		item types : Type [*];
	}
	item def NameType :> TypeDecl{
		item type : Type [1];
	}
	abstract item def Type;
	item def ProductType :> Type{
		item types : Type [2..*];
	}
	item def RelationType :> Type{
		item domain : Type [1];
		item range : Type [1];
	}
	item def FunctionType :> RelationType;
	item def SetType :> Type{
		item domain : Type [1];
	}
	item def SeqType :> SetType;
	item def TypeRef :> Type{
		ref item 'ref' : TypeDecl [1];
	}
	item def AnyType :> Type{
		attribute identifier : EString [1];
	}
	item def VariableList {
		attribute modifier : VariableModifier [1];
		item vars : Variable [1..*];
	}
	enum def VariableModifier {
		enum VAR;
		enum CONST;
	}
	item def Variable :> TypedNamedElement, Member, Mutable{
		item initial : Expression [1];
		attribute modifier : VariableModifier [1];
	}
	item def Event :> NamedElement{
		item type : Type [1];
		attribute broadcast : EBoolean [1];
	}
	item def Function :> TypedNamedElement, NamedExpression{
		item parameters : Parameter [*];
		item preconditions : Expression [*];
		item postconditions : Expression [*];
	}
	item def Parameter :> Variable;
	item def OperationSig :> NamedElement{
		attribute terminates : EBoolean [1];
		item parameters : Parameter [*];
		item preconditions : Expression [*];
		item postconditions : Expression [*];
	}
	abstract item def Operation :> NamedElement, ConnectionNode;
	item def OperationDef :> Operation, OperationSig, StateMachineBody;
	abstract item def Reference;
	item def OperationRef :> Operation, Reference{
		ref item 'ref' : OperationDef [1];
	}
	item def Interface :> NamedElement, BasicContext;
	abstract item def BasicContext {
		item variableList : VariableList [*];
		item operations : OperationSig [*];
		item events : Event [*];
		item clocks : Clock [*];
	}
	abstract item def RoboticPlatform :> NamedElement, ConnectionNode;
	item def RoboticPlatformDef :> Context, RoboticPlatform;
	abstract item def Context :> BasicContext{
		ref item pInterfaces : Interface [*];
		ref item rInterfaces : Interface [*];
		ref item interfaces : Interface [*];
	}
	item def RoboticPlatformRef :> RoboticPlatform, Reference{
		ref item 'ref' : RoboticPlatformDef [1];
	}
	abstract item def StateMachine :> NamedElement, ConnectionNode;
	item def StateMachineDef :> StateMachineBody, StateMachine;
	item def StateMachineRef :> StateMachine, Reference{
		ref item 'ref' : StateMachineDef [1];
	}
	item def StateMachineBody :> Context, NodeContainer;
	item def Clock :> NamedElement;
	abstract item def NodeContainer {
		item nodes : Node [*];
		item transitions : Transition [*];
	}
	abstract item def Node :> NamedElement;
	item def Junction :> Node;
	item def Initial :> Junction;
	item def State :> Node, NodeContainer{
		item actions : Action [*];
	}
	item def Final :> State;
	item def ProbabilisticJunction :> Junction;
	item def Transition :> NamedElement{
		ref item source : Node [1];
		ref item target : Node [1];
		item trigger : Communication [1];
		item deadline : Expression [1];
		item condition : Expression [1];
		item 'action' : Statement [1];
		item probability : Expression [1];
		item reset : ClockReset [*];
	}
	item def Communication {
		ref item 'event' : Event [1];
		ref item _from : Variable [1];
		item _predicate : Expression [1];
		ref item parameter : Variable [1];
		item 'value' : Expression [1];
		attribute _type : CommunicationType [1];
	}
	enum def CommunicationType {
		enum SIMPLE;
		enum INPUT;
		enum OUTPUT;
		enum SYNC;
	}
	abstract item def Action {
		item 'action' : Statement [1];
	}
	item def EntryAction :> Action;
	item def DuringAction :> Action;
	item def ExitAction :> Action;
	abstract item def Controller :> NamedElement, ConnectionNode;
	item def ControllerDef :> Context, Controller{
		item machines : StateMachine [*];
		item lOperations : Operation [*];
		item connections : Connection [*];
	}
	item def Connection {
		ref item 'from' : ConnectionNode [1];
		ref item 'to' : ConnectionNode [1];
		ref item efrom : Event [1];
		ref item eto : Event [1];
		attribute async : EBoolean [1];
		attribute bidirec : EBoolean [1];
	}
	item def ControllerRef :> Controller{
		ref item 'ref' : ControllerDef [1];
	}
	item def RCModule :> NamedElement{
		item connections : Connection [*];
		item nodes : ConnectionNode [*];
	}
	abstract item def Statement;
	item def TimedStatement :> Statement{
		item stmt : Statement [1];
		item deadline : Expression [1];
	}
	item def Wait :> Statement{
		item duration : Expression [1];
	}
	item def Skip :> Statement;
	item def IfStmt :> Statement{
		item expression : Expression [1];
		item 'then' : Statement [1];
		item 'else' : Statement [1];
	}
	item def Assignment :> Statement{
		item left : Assignable [1];
		item right : Expression [1];
	}
	item def CommunicationStmt :> Statement{
		item communication : Communication [1];
	}
	item def SeqStatement :> Statement{
		item statements : Statement [2..*];
	}
	item def ParStmt :> Statement{
		item stmt : Statement [1];
	}
	item def Call :> Statement{
		ref item operation : OperationSig [1];
		item args : Expression [*];
	}
	item def ClockReset :> Statement{
		ref item clock : Clock [1];
	}
	abstract item def Expression;
	item def ResultExp :> Expression;
	item def ArrayExp :> Expression{
		item 'value' : Expression [1];
		item parameters : Expression [*];
	}
	item def ClockExp :> Expression{
		ref item clock : Clock [1];
	}
	item def StateClockExp :> Expression{
		ref item 'state' : State [1];
	}
	abstract item def BinaryExpression :> Expression{
		item left : Expression [1];
		item right : Expression [1];
	}
	item def Iff :> BinaryExpression;
	item def Implies :> BinaryExpression;
	item def Or :> BinaryExpression;
	abstract item def QuantifierExpression :> Expression{
		item variables : Variable [1..*];
		item suchthat : Expression [1];
		item predicate : Expression [1];
	}
	item def Forall :> QuantifierExpression;
	item def Exists :> QuantifierExpression{
		attribute unique : EBoolean [1];
	}
	item def LambdaExp :> Expression{
		item variables : Variable [1..*];
		item suchthat : Expression [1];
		item expression : Expression [1];
	}
	item def DefiniteDescription :> LambdaExp;
	item def IfExpression :> Expression{
		item condition : Expression [1];
		item ifexp : Expression [1];
		item elseexp : Expression [1];
	}
	item def Declaration :> NamedElement, NamedExpression{
		item 'value' : Expression [1];
	}
	item def LetExpression :> Expression{
		item declarations : Declaration [1..*];
		item expression : Expression [1];
	}
	item def And :> BinaryExpression;
	item def Not :> Expression{
		item exp : Expression [1];
	}
	item def InExp :> Expression{
		item member : Expression [1];
		item set : Expression [1];
	}
	item def TypeExp :> Expression{
		item type : Type [1];
	}
	item def Equals :> BinaryExpression;
	item def Different :> BinaryExpression;
	item def GreaterThan :> BinaryExpression;
	item def GreaterOrEqual :> BinaryExpression;
	item def LessThan :> BinaryExpression;
	item def LessOrEqual :> BinaryExpression;
	item def Plus :> BinaryExpression;
	item def Minus :> BinaryExpression;
	item def Modulus :> BinaryExpression;
	item def Mult :> BinaryExpression;
	item def Div :> BinaryExpression;
	item def Cat :> BinaryExpression;
	item def Neg :> Expression{
		item exp : Expression [1];
	}
	item def Selection :> Expression{
		item receiver : Expression [1];
		ref item member : Member [1];
	}
	item def IntegerExp :> Expression{
		attribute 'value' : EInt [1];
	}
	item def FloatExp :> Expression{
		attribute 'value' : EFloat [1];
	}
	item def StringExp :> Expression{
		attribute 'value' : EString [1];
	}
	item def BooleanExp :> Expression{
		attribute 'value' : EString [1];
	}
	item def VarExp :> Expression{
		ref item 'value' : Variable [1];
	}
	item def RefExp :> Expression{
		ref item 'ref' : NamedExpression [1];
	}
	item def ToExp :> Expression;
	item def FromExp :> Expression;
	item def IdExp :> Expression;
	item def AsExp :> Expression{
		item exp : Expression [1];
		item type : Type [1];
	}
	item def IsExp :> Expression{
		item exp : Expression [1];
		item type : Type [1];
	}
	item def EnumExp :> Expression{
		ref item type : Enumeration [1];
		ref item literal : Literal [1];
	}
	item def ParExp :> Expression{
		item exp : Expression [1];
	}
	item def SeqExp :> Expression{
		item values : Expression [*];
	}
	item def SetExp :> Expression{
		item values : Expression [*];
	}
	item def SetComp :> Expression{
		item variables : Variable [1..*];
		item predicate : Expression [1];
		item expression : Expression [1];
	}
	item def SetRange :> Expression{
		item start : Expression [1];
		item 'end' : Expression [1];
	}
	item def TupleExp :> Expression{
		item values : Expression [2..*];
	}
	item def RangeExp :> Expression{
		attribute linterval : EString [1];
		item lrange : Expression [1];
		item rrange : Expression [1];
		attribute rinterval : EString [1];
	}
	item def CallExp :> Expression{
		item function : Expression [1];
		item args : Expression [*];
	}
	item def ElseExp :> Expression;
	abstract item def Assignable;
	item def VarSelection :> Assignable{
		item receiver : Assignable [1];
		ref item member : Member [1];
	}
	item def ArrayAssignable :> Assignable{
		item 'value' : Assignable [1];
		item parameters : Expression [1..*];
	}
	item def VarRef :> Assignable{
		ref item name : Mutable [1];
	}
	abstract item def ConnectionNode;
	abstract item def NamedExpression;
	item def WaitingCondition :> NamedElement{
		ref item expression : Expression [1];
		ref item transitions : Transition [*];
	}
	item def WaitingConditionRef :> Expression{
		ref item 'ref' : WaitingCondition [1];
	}
	item def VectorType :> Type{
		item base : Type [1];
		item size : Expression [1];
	}
	item def MatrixType :> Type{
		item base : Type [1];
		item rows : Expression [1];
		item columns : Expression [1];
	}
	item def RecordExp :> Expression{
		item definitions : FieldDefinition [1..*];
		ref item record : RecordType [1];
	}
	item def FieldDefinition {
		ref item field : Field [1];
		item 'value' : Expression [1];
	}
	abstract item def Mutable :> NamedElement, NamedExpression;
	item def VectorExp :> Expression{
		item values : Expression [1..*];
	}
	item def MatrixExp :> Expression{
		item values : VectorExp [1..*];
	}
	item def InverseExp :> Expression{
		item 'value' : Expression [1];
	}
	item def TransposeExp :> Expression{
		item 'value' : Expression [1];
	}
}

