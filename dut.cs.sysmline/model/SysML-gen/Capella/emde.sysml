package emde {
	private import ecore::*;
	abstract part def Element;
	abstract part def ExtensibleElement :> Element{
		part ownedExtensions : ElementExtension [*];
	}
	abstract part def ElementExtension :> ExtensibleElement;
}

