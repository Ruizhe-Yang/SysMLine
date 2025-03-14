package emde {
	private import ecore::*;
	abstract item def Element;
	abstract item def ExtensibleElement :> Element{
		item ownedExtensions : ElementExtension [*];
	}
	abstract item def ElementExtension :> ExtensibleElement;
}

