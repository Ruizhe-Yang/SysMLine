package VehicleIndividuals {
	private import VehicleUsages::*;
	private import Time::*;
	private import SI::*;
	package IndividualDefinitions {
		individual part def Vehicle1 :> Vehicle{
			doc /* This is an individual Vehicle with a mass of 1800 kg.*/
			attribute :>> mass = 1800[SI::kilogram];
		}
		individual part def Vehicle2 :> Vehicle{
			doc /* This is an individual Vehicle with a mass of 1700 kg.*/
			attribute :>> mass = 1700[SI::kilogram];
		}
		individual part def AxleAssembly1 :> AxleAssembly;
		individual part def Wheel1 :> Wheel;
		individual part def Wheel2 :> Wheel;
	}
	package IndividualSnapshots {
		public import IndividualDefinitions::*;
		attribute t0 : Time::DateTime;
		attribute t1 : Time::DateTime;
		snapshot part vehicle1_t0 : Vehicle1 {
			doc /* This is a snapshot of Vehicle1 at time t0;*/
			attribute t = t0;
		}
		part vehicle1_t0_t1 : Vehicle1 {
			doc /* This is a time slice of Vehicle1 starting at snapshot vehicle1_t0 
(time t0) and ending at time t1.*/
			snapshot occurrence :>> start = vehicle1_t0;
			snapshot occurrence :>> done {
				attribute t = t1;
			}
		}
	}
	package IndividualConfigurations {
		public import IndividualSnapshots::*;
		individual part vehicle1_C2 : Vehicle1 {
			doc /* This asserts that for some portion of its lifetime, Vehicle1 conforms
to the configuration vehicle_C2;*/
		}
		snapshot part vehicle1_C2_t0 : Vehicle1 {
			doc /* This is a snapshot of Vehicle1 in configuration vehicle1_C2 at time t0.*/
			snapshot occurrence axleAssembly1_t0 : AxleAssembly1 {
				doc /* frontAxleAssembly is a feature of vehicle1_C2.*/
				snapshot occurrence leftFrontWheel_t0 : Wheel1 {
					doc /* This asserts that Wheel1 is the leftFrontWheel of vehicle_C2_t0
(leftFrontWheel is a feature of vehicle_C2::frontAxleAssembly).*/
				}
			}
		}
		snapshot part vehicle1_C2_t1 : Vehicle1 {
			doc /* This is a snapshot of Vehicle1 in configuration vehicle_C2 at time t1.*/
			snapshot occurrence axleAssembly1_t1 : AxleAssembly1 {
				snapshot occurrence rightFrontWheel_t1 : Wheel1 {
					doc /* This asserts that Wheel1 is the rightFrontWheel of vehicle_C2_t1.*/
				}
			}
		}
	}
}

