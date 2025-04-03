package psl {
	private import ecore::*;
	item def Project {
		attribute title : EString [1];
		attribute description : EString [1];
		item tasks : Task [*];
		item people : Person [*];
	}
	item def Task {
		attribute title : EString [1];
		attribute start : EInt [1];
		attribute duration : EInt [1];
		item effort : Effort [*];
	}
	item def Person {
		attribute name : EString [1];
	}
	item def Effort {
		ref item person : Person [1];
		attribute percentage : EInt [1];
	}
}

