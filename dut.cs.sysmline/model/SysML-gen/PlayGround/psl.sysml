package psl {
	private import ecore::*;
	part def Project {
		attribute title : EString [1];
		attribute description : EString [1];
		part tasks : Task [*];
		part people : Person [*];
	}
	part def Task {
		attribute title : EString [1];
		attribute start : EInt [1];
		attribute duration : EInt [1];
		part effort : Effort [*];
	}
	part def Person {
		attribute name : EString [1];
	}
	part def Effort {
		ref part person : Person [1];
		attribute percentage : EInt [1];
	}
}

