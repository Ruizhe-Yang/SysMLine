package ecorebinding {
	private import ecore::*;
	public import org.eclipse.emf::*;
	public import environment::*;
	public import metadatadef::*;
	public import technicalid::*;
	abstract item def BBase :> BoundableElement;
	item def BModel :> BBase{
		item bPackages : BPackage [*];
	}
	item def BPackage :> BBase{
		ref item ecorePackage : EPackage [1];
		ref item bModel : BModel [1];
		item bEnums : BEnum [*];
		item bDataTypes : BDataType [*];
		item bClasses : BClass [*];
		item nestedBPackages : BPackage [*];
		ref item bClassifiers : BClassifier [*];
	}
	item def BClass :> BClassifier{
		ref item ecoreClass : EClass [1];
		item bFeatures : BFeature [*];
		item bOperations : BOperation [*];
	}
	item def BFeature :> BTypedElement{
		ref item bClass : BClass [1];
		ref item ecoreFeature : EStructuralFeature [1];
	}
	item def BEnum :> BDataType{
		ref item ecoreEnum : EEnum [1];
		item bEnumLiterals : BEnumLiteral [*];
	}
	item def BEnumLiteral :> BBase{
		ref item bEnum : BEnum [1];
		ref item ecoreEnumLiteral : EEnumLiteral [1];
	}
	item def BClassifier :> BBase{
		item bTypeParameters : BTypeParameter [*];
		ref item bPackage : BPackage [1];
	}
	item def BDataType :> BClassifier{
		ref item ecoreDataType : EDataType [1];
	}
	item def BOperation :> BTypedElement{
		ref item bClass : BClass [1];
		ref item ecoreOperation : EOperation [1];
		item bParameters : BParameter [*];
		item bTypeParameters : BTypeParameter [*];
	}
	item def BParameter :> BTypedElement{
		ref item bOperation : BOperation [1];
		ref item ecoreParameter : EParameter [1];
	}
	item def BTypedElement :> BBase;
	item def BTypeParameter :> BBase{
		ref item ecoreTypeParameter : ETypeParameter [1];
	}
}

