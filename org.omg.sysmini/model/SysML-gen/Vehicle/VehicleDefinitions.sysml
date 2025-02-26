package VehicleDefinitions {
	doc /* Example vehicle definitions model.*/
	private import ScalarValues::*;
	private import Quantities::*;
	private import MeasurementReferences::*;
	private import ISQ::*;
	private import SI::*;
	/* PART DEFINITIONS */
	part def Vehicle {
		attribute mass :> mass;
	}
	part def Transmission;
	part def AxleAssembly;
	part def Axle {
		port leftMountingPoint : AxleMountIF;
		port rightMountingPoint : AxleMountIF;
	}
	part def Wheel {
		port hub : WheelHubIF;
	}
	part def Lugbolt {
		attribute tighteningTorque :> torque;
	}
	/* PORT DEFINITIONS */
	port def DriveIF {
		driveTorque :> torque;
	}
	port def AxleMountIF {
		out transferredTorque :> torque;
	}
	port def WheelHubIF {
		appliedTorque :> torque;
	}
	/* INTERFACE DEFINITIONS */
	interface def Mounting {
		doc /* The definition of the interface for mounting a Wheel to an Axle. */
		end port axleMount : AxleMountIF;
		end port hub : WheelHubIF;
		flow from axleMount.transferredTorque to hub.appliedTorque;
	}
}

