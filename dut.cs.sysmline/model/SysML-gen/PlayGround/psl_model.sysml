package psl_model {
	public import psl::*;
	public import pslextended::*;
	item Project_1 : Project {
		attribute :>> title = "shujujiegou";
		ref item :> tasks = Task_1;
		ref item :> people = (Person_1, Person_2);
		item Task_1 : Task :> tasks {
			attribute :>> title = "homework";
			attribute :>> start = 2;
			attribute :>> duration = 8;
			ref item :> effort = (Task_1.Effort_1, Task_1.Effort_2);
			item Effort_1 : Effort :> effort {
				attribute :>> percentage = 80;
				ref item :> person = Person_2;
			}
			item Effort_2 : Effort :> effort {
				attribute :>> percentage = 20;
				ref item :> person = Person_1;
			}
		}
		item Person_1 : Person :> people {
			attribute :>> name = "zhanghaitong";
		}
		item Person_2 : Person :> people {
			attribute :>> name = "wangyingquan";
		}
	}
}

