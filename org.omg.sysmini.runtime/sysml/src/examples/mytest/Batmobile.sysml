package 'User Model' {
	part def Vehicle {
		ref part engine;
		item driver;
	}
	part def Batmobile :> Vehicle {
		ref part frontLeftWheel :> wheels;
		ref part wheels : Wheel [4];
		ref part frontRightWheel :> wheels;
	}
	part def Wheel;
	part def BatmobileNG :> Batmobile {
		ref part bulletProofWheels :>> wheels [4];
	}

	port def PowerIP {
		out item power : Power;
	}
	item def Power;
	item Batman : Hero {
		attribute realName;
	}
	item def Hero;
	ref part bm1 : Batmobile;
}