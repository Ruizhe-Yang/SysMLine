package ecore {
	private import ecore::*;
	item def EAttribute :> EStructuralFeature{
		attribute iD : EBoolean [1];
		ref item eAttributeType : EDataType [1];
	}
	item def EAnnotation :> EModelElement{
		attribute source : EString [1];
		ref item eModelElement : EModelElement [1];
		item contents : EObject [*];
		ref item 'references' : EObject [*];
		attribute details : EMap [1];
	}
	item def EClass :> EClassifier{
		attribute 'abstract' : EBoolean [1];
		attribute 'interface' : EBoolean [1];
		ref item eSuperTypes : EClass [*];
		item eOperations : EOperation [*];
		ref item eAllAttributes : EAttribute [*];
		ref item eAllReferences : EReference [*];
		ref item eReferences : EReference [*];
		ref item eAttributes : EAttribute [*];
		ref item eAllContainments : EReference [*];
		ref item eAllOperations : EOperation [*];
		ref item eAllStructuralFeatures : EStructuralFeature [*];
		ref item eAllSuperTypes : EClass [*];
		ref item eIDAttribute : EAttribute [1];
		item eStructuralFeatures : EStructuralFeature [*];
		item eGenericSuperTypes : EGenericType [*];
		ref item eAllGenericSuperTypes : EGenericType [*];
	}
	abstract item def EClassifier :> ENamedElement{
		attribute instanceClassName : EString [1];
		attribute instanceClass : EJavaClass [1];
		attribute defaultValue : EJavaObject [1];
		attribute instanceTypeName : EString [1];
		ref item ePackage : EPackage [1];
		item eTypeParameters : ETypeParameter [*];
	}
	item def EDataType :> EClassifier{
		attribute serializable : EBoolean [1];
	}
	item def EEnum :> EDataType{
		item eLiterals : EEnumLiteral [*];
	}
	item def EEnumLiteral :> ENamedElement{
		attribute 'value' : EInt [1];
		attribute instance : EEnumerator [1];
		attribute literal : EString [1];
		ref item eEnum : EEnum [1];
	}
	item def EFactory :> EModelElement{
		ref item ePackage : EPackage [1];
	}
	abstract item def EModelElement :> EObject{
		item eAnnotations : EAnnotation [*];
	}
	abstract item def ENamedElement :> EModelElement{
		attribute name : EString [1];
	}
	item def EObject {
		item eContentUnion : EObject [*];
		ref item eContainer : EObject [1];
		attribute metaElementID : EInt [1];
	}
	item def EOperation :> ETypedElement{
		attribute operationID : EInt [1];
		ref item eContainingClass : EClass [1];
		item eTypeParameters : ETypeParameter [*];
		item eParameters : EParameter [*];
		ref item eExceptions : EClassifier [*];
		item eGenericExceptions : EGenericType [*];
	}
	item def EPackage :> ENamedElement{
		attribute nsURI : EString [1];
		attribute nsPrefix : EString [1];
		ref item eFactoryInstance : EFactory [1];
		item eClassifiers : EClassifier [*];
		item eSubpackages : EPackage [*];
		ref item eSuperPackage : EPackage [1];
	}
	item def EParameter :> ETypedElement{
		ref item eOperation : EOperation [1];
	}
	item def EReference :> EStructuralFeature{
		attribute containment : EBoolean [1];
		attribute container : EBoolean [1];
		attribute resolveProxies : EBoolean [1];
		ref item eOpposite : EReference [1];
		ref item eReferenceType : EClass [1];
		ref item eKeys : EAttribute [*];
	}
	abstract item def EStructuralFeature :> ETypedElement{
		attribute changeable : EBoolean [1];
		attribute volatile : EBoolean [1];
		attribute transient : EBoolean [1];
		attribute defaultValueLiteral : EString [1];
		attribute defaultValue : EJavaObject [1];
		attribute unsettable : EBoolean [1];
		attribute 'derived' : EBoolean [1];
		attribute featureID : EInt [1];
		ref item eContainingClass : EClass [1];
	}
	abstract item def ETypedElement :> ENamedElement{
		attribute 'ordered' : EBoolean [1];
		attribute unique : EBoolean [1];
		attribute lowerBound : EInt [1];
		attribute upperBound : EInt [1];
		attribute many : EBoolean [1];
		attribute required : EBoolean [1];
		ref item eType : EClassifier [1];
		item eGenericType : EGenericType [1];
	}
	attribute def EBigDecimal;
	attribute def EBigInteger;
	attribute def EBoolean;
	attribute def EBooleanObject;
	attribute def EByte;
	attribute def EByteArray;
	attribute def EByteObject;
	attribute def EChar;
	attribute def ECharacterObject;
	attribute def EDate;
	attribute def EDiagnosticChain;
	attribute def EDouble;
	attribute def EDoubleObject;
	attribute def EEList;
	attribute def EEnumerator;
	attribute def EFeatureMap;
	attribute def EFeatureMapEntry;
	attribute def EFloat;
	attribute def EFloatObject;
	attribute def EInt;
	attribute def EIntegerObject;
	attribute def EJavaClass;
	attribute def EJavaObject;
	attribute def ELong;
	attribute def ELongObject;
	attribute def EMap;
	attribute def EResource;
	attribute def EResourceSet;
	attribute def EShort;
	attribute def EShortObject;
	attribute def EString;
	item def EStringToStringMapEntry {
		attribute key : EString [1];
		attribute 'value' : EString [1];
	}
	attribute def ETreeIterator;
	item def EGenericType {
		item eUpperBound : EGenericType [1];
		item eTypeArguments : EGenericType [*];
		ref item eRawType : EClassifier [1];
		item eLowerBound : EGenericType [1];
		ref item eTypeParameter : ETypeParameter [1];
		ref item eClassifier : EClassifier [1];
	}
	item def ETypeParameter :> ENamedElement{
		item eBounds : EGenericType [*];
	}
	attribute def EInvocationTargetException;
	item def EObjectContainer :> EObject{
		ref item container : EObject [*];
	}
	item def EObjectAny :> EObject{
		ref item 'any' : EJavaObject [1];
	}
	attribute def Any;
}

