package psl_model {
	private import psl::*;
	part Project_1 : Project {
		attribute :>> title = "ACME";
		ref part :> tasks = (Task_1, Task_2, Task_3);
		ref part :> people = (Person_1, Person_2);
		part Task_1 : Task :> tasks {
			attribute :>> title = "Analysis";
			attribute :>> start = 1;
			attribute :>> duration = 3;
			ref part :> effort = Task_1.Effort_1;
			part Effort_1 : Effort :> effort {
				attribute :>> percentage = 100;
				ref part :> person = Person_1;
			}
		}
		part Task_2 : Task :> tasks {
			attribute :>> title = "Design";
			attribute :>> start = 4;
			attribute :>> duration = 6;
			ref part :> effort = Task_2.Effort_2;
			part Effort_2 : Effort :> effort {
				attribute :>> percentage = 100;
				ref part :> person = Person_2;
			}
		}
		part Task_3 : Task :> tasks {
			attribute :>> title = "Implementation";
			attribute :>> start = 7;
			attribute :>> duration = 3;
			ref part :> effort = (Task_3.Effort_3, Task_3.Effort_4);
			part Effort_3 : Effort :> effort {
				attribute :>> percentage = 50;
				ref part :> person = Person_2;
			}
			part Effort_4 : Effort :> effort {
				attribute :>> percentage = 50;
				ref part :> person = Person_1;
			}
		}
		part Person_1 : Person :> people {
			attribute :>> name = "Alice";
		}
		part Person_2 : Person :> people {
			attribute :>> name = "Bob";
		}
	}
}

