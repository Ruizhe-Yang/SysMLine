package mO {
	private import ecore::*;
	part def StoredDefinition {
		attribute within : EString [1];
		part classes : ClassDefinition [*];
	}
	part def ClassDefinition :> ClassSpecifier, Element{
		attribute final : EBoolean [1];
		attribute encapsulated : EBoolean [1];
		part constraining : ConstrainingClause [1];
	}
	part def ClassSpecifier {
		attribute name : EString [1];
		attribute str_comment : EString [1];
		part composition : Composition [1];
		attribute name_end : EString [1];
		attribute prefix : EString [1];
		attribute name2 : EString [1];
		part subs : ArraySubscripts [1];
		part mod : ClassModification [1];
		part 'comment' : Comment [1];
		part list : EnumList [1];
		ref part type : ClassDefinition [1];
		attribute baseType : EString [1];
	}
	part def EnumList {
		part enums : EnumerationLiteral [*];
	}
	part def EnumerationLiteral {
		attribute id : EString [1];
		part 'comment' : Comment [1];
	}
	part def Composition {
		part priv_elist : ElementList [1];
		part pub_elist : ElementList [*];
		part protected_elist : ElementList [*];
		part eq_secs : EquationSection [*];
		part alg_secs : AlgorithmSection [*];
		attribute ext_lang_spec : EString [1];
		part ext_func_call : ExternalFunctionCall [1];
		part ext_anno : Annotation [1];
		part anno : Annotation [1];
	}
	part def ExternalFunctionCall {
		part lhs : ComponentReference [1];
		attribute name : EString [1];
		part args : ExpressionList [1];
	}
	part def ElementList {
		part elem : Element [*];
	}
	part def Element;
	part def ImportClause :> Element{
		attribute id : EString [1];
		attribute name : EString [1];
		part list : ImportList [1];
		part 'comment' : Comment [1];
	}
	part def ImportList {
		attribute id : EString [1];
		part list : ImportList [1];
	}
	part def ExtendsClause :> Element{
		attribute name : EString [1];
		part mod : ClassModification [1];
		part anno : Annotation [1];
	}
	part def typeClause :> Element{
		attribute name : EString [1];
		attribute baseType : EString [1];
		part mod : ClassModification [1];
		part anno : Annotation [1];
	}
	part def ConstrainingClause {
		attribute name : EString [1];
		part mod : ClassModification [1];
	}
	part def ComponentClause :> Element{
		part constraining : ConstrainingClause [1];
		part 'comment' : Comment [1];
		attribute prefix : EString [1];
		part type : TypeSpecifier [1];
		part subs : ArraySubscripts [1];
		part comps : ComponentList [1];
	}
	part def TypeSpecifier {
		attribute name : EString [1];
		ref part name1 : ClassDefinition [1];
	}
	part def ComponentList {
		part comps : ComponentDeclaration [*];
	}
	part def ComponentDeclaration {
		part decl : Declaration [1];
		part cond : ConditionAttribute [1];
		part 'comment' : Comment [1];
	}
	part def ConditionAttribute;
	part def Declaration :> ComponentDeclaration1{
		attribute name : EString [1];
		part type : TypeSpecifier [1];
		part subscripts : ArraySubscripts [1];
		part mod : Modification [1];
		part 'comment' : Comment [1];
	}
	part def Modification {
		part mod : ClassModification [1];
		part expr : Expression [1];
	}
	part def ClassModification :> Annotation{
		part args : ArgumentList [*];
	}
	part def ArgumentList {
		part args : Argument [*];
	}
	part def Argument;
	part def ElementModicationOrReplaceable :> Argument;
	part def ElementModification :> ElementModicationOrReplaceable{
		attribute name : EString [1];
		part mod : Modification [1];
		attribute 'comment' : EString [1];
	}
	part def ElementRedeclaration :> Argument;
	part def ElementReplaceable :> ElementModicationOrReplaceable, ElementRedeclaration{
		part const : ConstrainingClause [1];
	}
	part def ComponentClause1 :> ElementRedeclaration, ElementReplaceable{
		attribute prefix : EString [1];
		part type : TypeSpecifier [1];
		part subs : ArraySubscripts [1];
		part comp : ComponentDeclaration1 [1];
	}
	part def ComponentDeclaration1;
	part def ShortClassDefinition :> ElementRedeclaration, ElementReplaceable{
		part mode : ClassModification [1];
		part 'comment' : Comment [1];
		part list : EnumList [1];
	}
	part def EquationSection {
		attribute initial : EBoolean [1];
		part equations : Equation [*];
	}
	part def AlgorithmSection {
		attribute initial : EBoolean [1];
		part statements : Statement [*];
	}
	part def Equation {
		part left : SimpleExpression [1];
		part right : Expression [1];
		part commment : Comment [1];
	}
	part def Statement {
		part left : Primary [1];
		part right : EObject [1];
		part 'ref' : ComponentReference [1];
		part ref_call : FunctionCallArgs [1];
		part 'comment' : Comment [1];
	}
	part def IfEquation :> Equation{
		part if_expr : Expression [1];
		part if_eqs : Equation [*];
		part elsif_exprs : Expression [*];
		part elseif_eqs : Equation [*];
		part else_eqs : Equation [*];
	}
	part def IfStatement :> Statement{
		part if_expr : Expression [1];
		part if_stmts : Statement [*];
		part elseif_exprs : Expression [*];
		part elseif_stmts : Statement [*];
		part else_stmts : Statement [*];
	}
	part def ForEquation :> Equation{
		part indices : ForIndices [1];
		part eqs : Equation [*];
	}
	part def ForStatement :> Statement{
		part indices : ForIndices [1];
		part stmts : Statement [*];
	}
	part def ForIndices {
		part indices : ForIndex [*];
	}
	part def ForIndex {
		attribute id : EString [1];
		part expr : Expression [1];
	}
	part def WhileStatement :> Statement{
		part cond : Expression [1];
		part stmts : Statement [*];
	}
	part def WhenEquation :> Equation{
		part 'when' : Expression [1];
		part when_eqs : Equation [*];
		part elsehwhen : Expression [*];
		part elsewhen_eqs : Equation [*];
	}
	part def WhenStatement :> Statement{
		part 'when' : Expression [1];
		part when_stmts : Statement [*];
		part elsehwhen : Expression [*];
		part elsewhen_stmts : Statement [*];
	}
	part def ConnectClause :> Equation;
	part def Expression :> ConditionAttribute, FunctionArgument, Subscript{
		part 'if' : Expression [1];
		part 'then' : Expression [1];
		part elseif : Expression [*];
		part elseifthen : Expression [*];
		part 'else' : Expression [*];
	}
	part def SimpleExpression :> Expression{
		part exprs : Expression [*];
	}
	part def LogicalExpression :> SimpleExpression{
		part terms : LogicalExpression [*];
	}
	part def LogicalTerm :> LogicalExpression;
	part def LogicalFactor :> LogicalTerm{
		part factors : LogicalFactor [*];
		attribute 'not' : EBoolean [1];
		part rel : Relation [1];
	}
	part def Relation :> LogicalFactor{
		part left : ArithmeticExpression [1];
		attribute rel_op : EString [1];
		part right : ArithmeticExpression [1];
	}
	part def ArithmeticExpression :> Relation{
		attribute add_op : EString [*];
	}
	part def Negation :> ArithmeticExpression{
		attribute neg_op : EString [1];
		part term : Term [1];
	}
	part def Term :> Negation{
		attribute mul_op : EString [*];
	}
	part def Factor :> Term{
		part base : Primary [1];
		part exp : Primary [1];
	}
	part def FloatPrimary :> Primary{
		attribute val : EFloat [1];
	}
	part def StringPrimary :> Primary{
		attribute val : EString [1];
	}
	part def LogicalPrimary :> Primary{
		attribute val : EBoolean [1];
	}
	part def End :> Primary{
		attribute val : EString [1];
	}
	part def Primary :> Factor{
		part res : ExpressionList [*];
	}
	part def FunctionCall :> Primary{
		ref part comp_ref : ClassDefinition [1];
		part args : FunctionCallArgs [1];
	}
	part def ComponentReference :> Primary{
		attribute idents : EString [*];
		part subscripts : ArraySubscripts [*];
	}
	part def FunctionCallArgs :> Equation{
		part res : FunctionArguments [1];
	}
	part def FunctionArguments :> Primary{
		part args : FunctionArgument [*];
		part indices : ForIndices [1];
	}
	part def NamedArguments {
		part args : EObject [*];
	}
	part def NamedArgument :> FunctionArguments{
		attribute id : EString [1];
		part func : FunctionArgument [1];
	}
	part def FunctionArgument;
	part def FunctionDefinition :> FunctionArgument{
		attribute name : EString [1];
		part args : NamedArguments [1];
	}
	part def OutputExpressionList :> Primary;
	part def ExpressionList {
		part exprs : Expression [*];
	}
	part def ArraySubscripts :> ShortClassDefinition{
		part subscripts : Subscript [*];
	}
	part def Subscript {
		attribute 'all' : EBoolean [1];
	}
	part def Comment {
		attribute 'comment' : EString [1];
		part annotation : Annotation [1];
	}
	part def Annotation;
	part def OuputExpressionList :> OutputExpressionList;
}

