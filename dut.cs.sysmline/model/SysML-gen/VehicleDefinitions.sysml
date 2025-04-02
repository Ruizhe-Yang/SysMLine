package VehicleDefinitions {
	doc /* Example vehicle definitions model.*/
	private import ScalarValues::*;
	private import Quantities::*;
	private import MeasurementReferences::*;
	private import ISQ::*;
	private import SI::*;
	/* PART DEFINITIONS */
	part def Vehicle :> VehicleComponent{
		attribute mass :> mass;
	}
	part def Transmission :> VehicleComponent;
	part def AxleAssembly :> VehicleComponent;
	part def Axle :> VehicleComponent{
		port leftMountingPoint : AxleMountIF;
		port rightMountingPoint : AxleMountIF;
	}
	part def Wheel :> VehicleComponent{
		port hub : WheelHubIF;
	}
	part def Lugbolt :> VehicleComponent{
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
	part def VehicleComponent;
}

