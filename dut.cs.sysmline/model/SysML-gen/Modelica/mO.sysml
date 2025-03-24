package mO {
	private import ecore::*;
	item def StoredDefinition {
		attribute within : EString [1];
		item classes : ClassDefinition [*];
	}
	item def ClassDefinition :> ClassSpecifier, Element{
		attribute final : EBoolean [1];
		attribute encapsulated : EBoolean [1];
		item constraining : ConstrainingClause [1];
	}
	item def ClassSpecifier {
		attribute name : EString [1];
		attribute str_comment : EString [1];
		item composition : Composition [1];
		attribute name_end : EString [1];
		attribute prefix : EString [1];
		attribute name2 : EString [1];
		item subs : ArraySubscripts [1];
		item mod : ClassModification [1];
		item 'comment' : Comment [1];
		item list : EnumList [1];
		ref item type : ClassDefinition [1];
		attribute baseType : EString [1];
	}
	item def EnumList {
		item enums : EnumerationLiteral [*];
	}
	item def EnumerationLiteral {
		attribute id : EString [1];
		item 'comment' : Comment [1];
	}
	item def Composition {
		item priv_elist : ElementList [1];
		item pub_elist : ElementList [*];
		item protected_elist : ElementList [*];
		item eq_secs : EquationSection [*];
		item alg_secs : AlgorithmSection [*];
		attribute ext_lang_spec : EString [1];
		item ext_func_call : ExternalFunctionCall [1];
		item ext_anno : Annotation [1];
		item anno : Annotation [1];
	}
	item def ExternalFunctionCall {
		item lhs : ComponentReference [1];
		attribute name : EString [1];
		item args : ExpressionList [1];
	}
	item def ElementList {
		item elem : Element [*];
	}
	item def Element;
	item def ImportClause :> Element{
		attribute id : EString [1];
		attribute name : EString [1];
		item list : ImportList [1];
		item 'comment' : Comment [1];
	}
	item def ImportList {
		attribute id : EString [1];
		item list : ImportList [1];
	}
	item def ExtendsClause :> Element{
		attribute name : EString [1];
		item mod : ClassModification [1];
		item anno : Annotation [1];
	}
	item def typeClause :> Element{
		attribute name : EString [1];
		attribute baseType : EString [1];
		item mod : ClassModification [1];
		item anno : Annotation [1];
	}
	item def ConstrainingClause {
		attribute name : EString [1];
		item mod : ClassModification [1];
	}
	item def ComponentClause :> Element{
		item constraining : ConstrainingClause [1];
		item 'comment' : Comment [1];
		attribute prefix : EString [1];
		item type : TypeSpecifier [1];
		item subs : ArraySubscripts [1];
		item comps : ComponentList [1];
	}
	item def TypeSpecifier {
		attribute name : EString [1];
		ref item name1 : ClassDefinition [1];
	}
	item def ComponentList {
		item comps : ComponentDeclaration [*];
	}
	item def ComponentDeclaration {
		item decl : Declaration [1];
		item cond : ConditionAttribute [1];
		item 'comment' : Comment [1];
	}
	item def ConditionAttribute;
	item def Declaration :> ComponentDeclaration1{
		attribute name : EString [1];
		item type : TypeSpecifier [1];
		item subscripts : ArraySubscripts [1];
		item mod : Modification [1];
		item 'comment' : Comment [1];
	}
	item def Modification {
		item mod : ClassModification [1];
		item expr : Expression [1];
	}
	item def ClassModification :> Annotation{
		item args : ArgumentList [*];
	}
	item def ArgumentList {
		item args : Argument [*];
	}
	item def Argument;
	item def ElementModicationOrReplaceable :> Argument;
	item def ElementModification :> ElementModicationOrReplaceable{
		attribute name : EString [1];
		item mod : Modification [1];
		attribute 'comment' : EString [1];
	}
	item def ElementRedeclaration :> Argument;
	item def ElementReplaceable :> ElementModicationOrReplaceable, ElementRedeclaration{
		item const : ConstrainingClause [1];
	}
	item def ComponentClause1 :> ElementRedeclaration, ElementReplaceable{
		attribute prefix : EString [1];
		item type : TypeSpecifier [1];
		item subs : ArraySubscripts [1];
		item comp : ComponentDeclaration1 [1];
	}
	item def ComponentDeclaration1;
	item def ShortClassDefinition :> ElementRedeclaration, ElementReplaceable{
		item mode : ClassModification [1];
		item 'comment' : Comment [1];
		item list : EnumList [1];
	}
	item def EquationSection {
		attribute initial : EBoolean [1];
		item equations : Equation [*];
	}
	item def AlgorithmSection {
		attribute initial : EBoolean [1];
		item statements : Statement [*];
	}
	item def Equation {
		item left : SimpleExpression [1];
		item right : Expression [1];
		item commment : Comment [1];
	}
	item def Statement {
		item left : Primary [1];
		item right : EObject [1];
		item 'ref' : ComponentReference [1];
		item ref_call : FunctionCallArgs [1];
		item 'comment' : Comment [1];
	}
	item def IfEquation :> Equation{
		item if_expr : Expression [1];
		item if_eqs : Equation [*];
		item elsif_exprs : Expression [*];
		item elseif_eqs : Equation [*];
		item else_eqs : Equation [*];
	}
	item def IfStatement :> Statement{
		item if_expr : Expression [1];
		item if_stmts : Statement [*];
		item elseif_exprs : Expression [*];
		item elseif_stmts : Statement [*];
		item else_stmts : Statement [*];
	}
	item def ForEquation :> Equation{
		item indices : ForIndices [1];
		item eqs : Equation [*];
	}
	item def ForStatement :> Statement{
		item indices : ForIndices [1];
		item stmts : Statement [*];
	}
	item def ForIndices {
		item indices : ForIndex [*];
	}
	item def ForIndex {
		attribute id : EString [1];
		item expr : Expression [1];
	}
	item def WhileStatement :> Statement{
		item cond : Expression [1];
		item stmts : Statement [*];
	}
	item def WhenEquation :> Equation{
		item 'when' : Expression [1];
		item when_eqs : Equation [*];
		item elsehwhen : Expression [*];
		item elsewhen_eqs : Equation [*];
	}
	item def WhenStatement :> Statement{
		item 'when' : Expression [1];
		item when_stmts : Statement [*];
		item elsehwhen : Expression [*];
		item elsewhen_stmts : Statement [*];
	}
	item def ConnectClause :> Equation;
	item def Expression :> ConditionAttribute, FunctionArgument, Subscript{
		item 'if' : Expression [1];
		item 'then' : Expression [1];
		item elseif : Expression [*];
		item elseifthen : Expression [*];
		item 'else' : Expression [*];
	}
	item def SimpleExpression :> Expression{
		item exprs : Expression [*];
	}
	item def LogicalExpression :> SimpleExpression{
		item terms : LogicalExpression [*];
	}
	item def LogicalTerm :> LogicalExpression;
	item def LogicalFactor :> LogicalTerm{
		item factors : LogicalFactor [*];
		attribute 'not' : EBoolean [1];
		item rel : Relation [1];
	}
	item def Relation :> LogicalFactor{
		item left : ArithmeticExpression [1];
		attribute rel_op : EString [1];
		item right : ArithmeticExpression [1];
	}
	item def ArithmeticExpression :> Relation{
		attribute add_op : EString [*];
	}
	item def Negation :> ArithmeticExpression{
		attribute neg_op : EString [1];
		item term : Term [1];
	}
	item def Term :> Negation{
		attribute mul_op : EString [*];
	}
	item def Factor :> Term{
		item base : Primary [1];
		item exp : Primary [1];
	}
	item def FloatPrimary :> Primary{
		attribute val : EFloat [1];
	}
	item def StringPrimary :> Primary{
		attribute val : EString [1];
	}
	item def LogicalPrimary :> Primary{
		attribute val : EBoolean [1];
	}
	item def End :> Primary{
		attribute val : EString [1];
	}
	item def Primary :> Factor{
		item res : ExpressionList [*];
	}
	item def FunctionCall :> Primary{
		ref item comp_ref : ClassDefinition [1];
		item args : FunctionCallArgs [1];
	}
	item def ComponentReference :> Primary{
		attribute idents : EString [*];
		item subscripts : ArraySubscripts [*];
	}
	item def FunctionCallArgs :> Equation{
		item res : FunctionArguments [1];
	}
	item def FunctionArguments :> Primary{
		item args : FunctionArgument [*];
		item indices : ForIndices [1];
	}
	item def NamedArguments {
		item args : EObject [*];
	}
	item def NamedArgument :> FunctionArguments{
		attribute id : EString [1];
		item func : FunctionArgument [1];
	}
	item def FunctionArgument;
	item def FunctionDefinition :> FunctionArgument{
		attribute name : EString [1];
		item args : NamedArguments [1];
	}
	item def OutputExpressionList :> Primary;
	item def ExpressionList {
		item exprs : Expression [*];
	}
	item def ArraySubscripts :> ShortClassDefinition{
		item subscripts : Subscript [*];
	}
	item def Subscript {
		attribute 'all' : EBoolean [1];
	}
	item def Comment {
		attribute 'comment' : EString [1];
		item annotation : Annotation [1];
	}
	item def Annotation;
	item def OuputExpressionList :> OutputExpressionList;
}

