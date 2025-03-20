package overview {
	private import ecore::*;
	public import environment::*;
	public import metadatadef::*;
	public import technicalid::*;
	item def Root :> ObeoDSMObject{
		item ownedElements : EObject [*];
	}
}

