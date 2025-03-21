package errorModel {
	private import ecore::*;
	public import aadl2::*;
	item def ErrorModelSubclause :> AnnexSubclause{
		ref item useTypes : ErrorModelLibrary [*];
		ref item typeEquivalence : TypeMappingSet [1];
		ref item typeMappingSet : TypeMappingSet [1];
		ref item useBehavior : ErrorBehaviorStateMachine [1];
		item propagations : ErrorPropagation [*];
		item flows : ErrorFlow [*];
		ref item useTransformation : TypeTransformationSet [1];
		item events : ErrorBehaviorEvent [*];
		item transitions : ErrorBehaviorTransition [*];
		item outgoingPropagationConditions : OutgoingPropagationCondition [*];
		item errorDetections : ErrorDetection [*];
		item errorStateToModeMappings : ErrorStateToModeMapping [*];
		item states : CompositeState [*];
		ref item typeTransformationSet : TypeTransformationSet [1];
		item connectionErrorSources : ErrorSource [*];
		item points : PropagationPoint [*];
		item paths : PropagationPath [*];
		item properties : EMV2PropertyAssociation [*];
	}
	item def ErrorModelLibrary :> AnnexLibrary{
		ref item useTypes : ErrorModelLibrary [*];
		ref item extends : ErrorModelLibrary [*];
		item types : ErrorType [*];
		item typesets : TypeSet [*];
		item properties : EMV2PropertyAssociation [*];
		item behaviors : ErrorBehaviorStateMachine [*];
		item mappings : TypeMappingSet [*];
		item transformations : TypeTransformationSet [*];
	}
	item def EMV2PropertyAssociation :> Element{
		ref item property : Property [1];
		item ownedValues : ModalPropertyValue [*];
		item emv2Path : EMV2Path [*];
	}
	item def EMV2Path :> Element{
		item containmentPath : ContainmentPathElement [1];
		item emv2Target : EMV2PathElement [1];
	}
	item def EMV2PathElement :> Element{
		attribute emv2PropagationKind : EString [1];
		ref item errorType : ErrorTypes [1];
		ref item namedElement : NamedElement [1];
		item path : EMV2PathElement [1];
	}
	item def ErrorTypes :> NamedElement;
	item def ErrorType :> ErrorTypes{
		ref item superType : ErrorType [1];
		ref item aliasedType : ErrorType [1];
	}
	item def TypeSet :> ErrorTypes{
		item typeTokens : TypeToken [*];
		ref item aliasedType : TypeSet [1];
	}
	item def TypeToken :> Element{
		ref item type : ErrorTypes [*];
		attribute noError : EBoolean [1];
	}
	item def TypeTransformationSet :> NamedElement{
		ref item useTypes : ErrorModelLibrary [*];
		item transformation : TypeTransformation [*];
	}
	item def TypeTransformation :> Element{
		item source : TypeSet [1];
		attribute allSources : EBoolean [1];
		item contributor : TypeSet [1];
		item target : TypeSet [1];
	}
	item def TypeMappingSet :> NamedElement{
		ref item useTypes : ErrorModelLibrary [*];
		item mapping : TypeMapping [*];
	}
	item def TypeMapping :> Element{
		item source : TypeSet [1];
		item target : TypeSet [1];
	}
	item def ErrorPropagation :> NamedElement, EventOrPropagation{
		attribute kind : EString [1];
		item featureorPPRef : FeatureorPPReference [1];
		attribute 'not' : EBoolean [1];
		attribute direction : DirectionType [1];
		item typeSet : TypeSet [1];
	}
	item def FeatureorPPReference :> Element{
		ref item featureorPP : NamedElement [1];
		item next : FeatureorPPReference [1];
	}
	item def ErrorFlow :> NamedElement{
		item typeTokenConstraint : TypeSet [1];
	}
	item def ErrorSource :> ErrorFlow{
		ref item sourceModelElement : NamedElement [1];
		attribute 'all' : EBoolean [1];
		ref item failureModeReference : ErrorBehaviorState [1];
		item failureModeType : TypeSet [1];
		attribute failureModeDescription : EString [1];
		attribute condition : EString [1];
	}
	item def ErrorSink :> ErrorFlow{
		ref item incoming : ErrorPropagation [1];
		attribute allIncoming : EBoolean [1];
	}
	item def ErrorPath :> ErrorFlow{
		ref item incoming : ErrorPropagation [1];
		attribute allIncoming : EBoolean [1];
		ref item outgoing : ErrorPropagation [1];
		attribute allOutgoing : EBoolean [1];
		item targetToken : TypeSet [1];
		ref item typeMappingSet : TypeMappingSet [1];
	}
	item def PropagationPoint :> NamedElement;
	item def PropagationPath :> NamedElement{
		item source : QualifiedPropagationPoint [1];
		item target : QualifiedPropagationPoint [1];
	}
	item def QualifiedPropagationPoint :> Element{
		item subcomponent : SubcomponentElement [1];
		item next : QualifiedPropagationPoint [1];
		ref item propagationPoint : NamedElement [1];
	}
	item def ErrorBehaviorStateMachine :> NamedElement{
		ref item useTypes : ErrorModelLibrary [*];
		ref item useTransformation : TypeTransformationSet [*];
		item events : ErrorBehaviorEvent [*];
		item states : ErrorBehaviorState [*];
		item transitions : ErrorBehaviorTransition [*];
		item properties : EMV2PropertyAssociation [*];
	}
	item def ErrorBehaviorEvent :> NamedElement, EventOrPropagation;
	item def ErrorEvent :> ErrorBehaviorEvent{
		item typeSet : TypeSet [1];
		attribute condition : EString [1];
	}
	item def RepairEvent :> ErrorBehaviorEvent{
		ref item eventInitiator : NamedElement [*];
	}
	item def RecoverEvent :> ErrorBehaviorEvent{
		ref item eventInitiator : NamedElement [*];
		attribute condition : EString [1];
	}
	item def ErrorBehaviorState :> NamedElement{
		attribute intial : EBoolean [1];
		item typeSet : TypeSet [1];
	}
	item def ErrorBehaviorTransition :> NamedElement{
		ref item source : ErrorBehaviorState [1];
		item typeTokenConstraint : TypeSet [1];
		attribute allStates : EBoolean [1];
		item condition : ConditionExpression [1];
		ref item target : ErrorBehaviorState [1];
		item targetToken : TypeSet [1];
		attribute steadyState : EBoolean [1];
		item destinationBranches : TransitionBranch [*];
	}
	item def TransitionBranch :> Element{
		ref item target : ErrorBehaviorState [1];
		item targetToken : TypeSet [1];
		attribute steadyState : EBoolean [1];
		item 'value' : BranchValue [1];
	}
	item def BranchValue :> Element{
		attribute realvalue : EString [1];
		ref item symboliclabel : Property [1];
		attribute others : EBoolean [1];
	}
	item def ConditionExpression :> Element;
	item def OrmoreExpression :> Element, ConditionExpression{
		attribute count : Integer [1];
		item operands : ConditionExpression [*];
	}
	item def OrlessExpression :> Element, ConditionExpression{
		attribute count : Integer [1];
		item operands : ConditionExpression [*];
	}
	item def ConditionElement :> Element, ConditionExpression{
		item qualifiedErrorPropagationReference : EMV2Path [1];
		item 'constraint' : TypeSet [1];
	}
	item def EventOrPropagation :> NamedElement;
	item def OutgoingPropagationCondition :> NamedElement{
		ref item 'state' : ErrorBehaviorState [1];
		item typeTokenConstraint : TypeSet [1];
		attribute allStates : EBoolean [1];
		item condition : ConditionExpression [1];
		ref item outgoing : ErrorPropagation [1];
		attribute allPropagations : EBoolean [1];
		item typeToken : TypeSet [1];
	}
	item def ErrorDetection :> NamedElement{
		ref item 'state' : ErrorBehaviorState [1];
		item typeTokenConstraint : TypeSet [1];
		attribute allStates : EBoolean [1];
		item condition : ConditionExpression [1];
		ref item detectionReportingPort : TriggerPort [1];
		item errorCode : ErrorCodeValue [1];
	}
	item def ErrorCodeValue :> Element{
		attribute intValue : EString [1];
		ref item constant : PropertyConstant [1];
		attribute enumLiteral : EString [1];
	}
	item def ErrorStateToModeMapping :> Element{
		ref item errorState : ErrorBehaviorState [1];
		item typeToken : TypeSet [1];
		ref item mappedModes : Mode [*];
	}
	item def CompositeState :> NamedElement{
		item condition : ConditionExpression [1];
		attribute others : EBoolean [1];
		ref item 'state' : ErrorBehaviorState [1];
		item typedToken : TypeSet [1];
	}
	item def QualifiedErrorBehaviorState :> Element{
		item subcomponent : SubcomponentElement [1];
		item next : QualifiedErrorBehaviorState [1];
		ref item 'state' : ErrorBehaviorState [1];
	}
	item def SubcomponentElement :> Element{
		ref item subcomponent : Subcomponent [1];
	}
	item def EMV2Root :> NamedElement{
		item 'library' : ErrorModelLibrary [1];
		item subclauses : ErrorModelSubclause [*];
	}
	item def OrExpression :> ConditionExpression{
		item operands : ConditionExpression [*];
	}
	item def AndExpression :> ConditionExpression{
		item operands : ConditionExpression [*];
	}
	item def AllExpression :> ConditionExpression{
		attribute count : Integer [1];
		item operands : ConditionElement [*];
	}
	item def QualifiedErrorEventOrPropagation :> EMV2Path;
	item def QualifiedErrorPropagation :> EMV2Path;
	item def SConditionElement :> ConditionElement{
		item qualifiedState : QualifiedErrorBehaviorState [1];
	}
}

