package SimpleVehicleModel {
	public import Definitions::*;
	public import ISQ::*;
	package Definitions {
		public import PartDefinitions::*;
		public import PortDefinitions::*;
		public import ItemDefinitions::*;
		public import SignalDefinitions::*;
		public import InterfaceDefinitions::*;
		public import AllocationDefinitions::*;
		public import ActionDefinitions::*;
		public import StateDefinitions::*;
		public import RequirementDefinitions::*;
		public import AttributeDefinitions::*;
		public import IndividualDefinitions::*;
		public import MetadataDefinitions::**;
		public import KeyWord_MetadataDefinitions::*;
		package PartDefinitions {
			part def Vehicle {
				attribute mass :> mass;
				attribute dryMass :> mass;
				attribute cargoMass :> mass;
				attribute position :> length;
				attribute velocity :> speed;
				attribute acceleration :> acceleration;
				attribute electricalPower :> power;
				attribute Tmax :> thermodynamicTemperature;
				attribute maintenanceTime : Time::DateTime;
				attribute brakePedalDepressed : ScalarValues::Boolean;
				port ignitionCmdPort : IgnitionCmdPort;
				port pwrCmdPort : PwrCmdPort;
				port vehicleToRoadPort : VehicleToRoadPort;
				port statusPort : StatusPort;
				perform action providePower;
				perform action provideBraking;
				perform action controlDirection;
				perform action performSelfTest;
				perform action applyParkingBrake;
				perform action senseTemperature;
				exhibit state vehicleStates parallel;
			}
			part def Engine {
				attribute mass :> mass;
				attribute peakHorsePower :> power;
				attribute fuelEfficiency : ScalarValues::Real;
				attribute cost : ScalarValues::Real;
				attribute displacement :> volume;
				port engineControlPort = ~ControlPort;
				port fuelInPort = ~FuelPort;
				port fuelCmdPort : FuelCmdPort;
				port drivePwrPort : DrivePwrPort;
				port ignitionCmdPort : IgnitionCmdPort;
				port flyWheelPort;
				perform action generateTorque;
				exhibit state engineStates;
			}
			part def StarterMotor {
				port gearPort : GearPort;
			}
			part def Cylinder;
			part def Transmission {
				attribute gearRatio : ScalarValues::Real;
				port clutchPort = ~DrivePwrPort;
				exhibit state transmissionStates;
			}
			part def Driveshaft;
			part def AxleAssembly;
			part def Axle {
				attribute mass :> mass;
			}
			part def FrontAxle :> Axle{
				attribute steeringAngle :> angularMeasure;
			}
			part def HalfAxle {
				port shankCompositePort : ShankCompositePort;
			}
			part def Differential;
			part def Wheel {
				attribute diameter : LengthValue;
				port lugNutCompositePort : LugNutCompositePort;
			}
			part def Hub {
				port shankCompositePort : ShankCompositePort;
			}
			abstract part def Software;
			part def VehicleSoftware :> Software;
			part def VehicleController :> Software{
				port controlPort : ControlPort;
				exhibit state controllerStates parallel;
			}
			part def CruiseController :> Software{
				port setSpeedPort = ~SetSpeedPort;
				port speedSensorPort = ~SpeedSensorPort;
				port cruiseControlPort : CruiseControlPort;
				exhibit state cruiseControllerStates;
			}
			part def SpeedSensor {
				port speedSensorPort : SpeedSensorPort;
			}
			part def FuelTank {
				attribute mass :> mass;
				item fuel : Fuel {
					attribute :>> fuelMass;
				}
				attribute fuelKind : FuelKind;
				attribute fuelMassMax :> mass;
				assert constraint fuelConstraint {
					fuel.fuelMass <= fuelMassMax;
				}
				port fuelOutPort : FuelPort;
				port fuelInPort = ~FuelPort;
			}
			part def BodyAssy;
			part def Body {
				attribute color : Colors;
			}
			part def Thermostat;
			part def WaterHose;
			part def Road {
				attribute incline : ScalarValues::Real;
				attribute friction : ScalarValues::Real;
			}
			part def Engine4Cyl;
			part def Engine6Cyl;
			part def TransmissionChoices;
			part def TransmissionAutomatic;
			part def TransmissionManual;
			part def Sunroof;
			part def ElectricalGenerator;
			part def TorqueGenerator;
			part def SteeringSubsystem;
			part def BrakingSubsystem;
		}
		package PortDefinitions {
			port def IgnitionCmdPort {
				item ignitionCmd : IgnitionCmd;
			}
			port def StatusPort;
			port def GearPort;
			port def PwrCmdPort {
				item pwrCmd : PwrCmd;
			}
			port def FuelCmdPort :> PwrCmdPort{
				item fuelCmd : FuelCmd;
			}
			port def FuelPort {
				out item fuel : Fuel;
			}
			port def DrivePwrPort {
				out torque : TorqueValue;
			}
			port def ShaftPort_a;
			port def ShaftPort_b;
			port def ShaftPort_c;
			port def ShaftPort_d;
			port def DiffPort;
			port def AxlePort;
			port def AxleToWheelPort;
			port def WheelToAxlePort;
			port def WheelToRoadPort;
			port def LugNutCompositePort {
				port lugNutPort : LugNutPort [*];
			}
			port def ShankCompositePort {
				port shankPort : ShankPort [*];
			}
			port def LugNutPort {
				attribute threadDia :> Base::dataValues;
				attribute threadPitch :> Base::dataValues;
			}
			port def ShankPort {
				attribute threadDia :> Base::dataValues;
				attribute threadPitch :> Base::dataValues;
				attribute shaftLength :> Base::dataValues;
			}
			port def VehicleToRoadPort;
			port def ControlPort;
			port def CruiseControlPort :> ControlPort;
			port def SpeedSensorPort;
			port def SetSpeedPort;
			port def DriverCmdPort {
				out item driverCmd : DriverCmd [*];
			}
			port def HandPort :> DriverCmdPort{
				out item ignitionCmd : IgnitionCmd;
				out item pwrCmd : PwrCmd;
			}
		}
		package ItemDefinitions {
			item def PwrCmd {
				attribute throttleLevel : ScalarValues::Real;
			}
			item def FuelCmd :> PwrCmd;
			item def Fuel {
				attribute fuelMass :> mass;
			}
			item def SensedSpeed {
				attribute speed :> speed;
			}
		}
		package SignalDefinitions {
			item def Cmd;
			item def DriverCmd;
			item def IgnitionCmd :> DriverCmd{
				attribute ignitionOnOff : IgnitionOnOff;
			}
			item def EngineStatus;
			attribute def VehicleStartSignal;
			attribute def VehicleOnSignal;
			attribute def VehicleOffSignal;
			attribute def StartSignal;
			attribute def OffSignal;
			attribute def OverTemp;
			attribute def ReturnToNormal;
			attribute def SetSpeed;
		}
		package InterfaceDefinitions {
			interface def EngineToTransmissionInterface {
				end port p1 : DrivePwrPort;
				end port p2 : target = ~DrivePwrPort;
				flow from p1.torque to p2.torque;
			}
			interface def FuelInterface {
				end port fuelOutPort : FuelPort;
				end port fuelInPort : target = ~FuelPort;
				flow of Fuelfrom fuelOutPort.fuel to fuelInPort.fuel;
			}
			interface def WheelFastenerInterface {
				end port lugNutPort : LugNutPort;
				end port shankPort : ShankPort;
				attribute maxTorque : TorqueValue;
				{
					lugNutPort.threadDia == shankPort.threadDia;
				}
			}
			interface def WheelHubInterface {
				end port lugNutCompositePort : LugNutCompositePort;
				end port shankCompositePort : ShankCompositePort;
				interface wheelFastenerInterface : WheelFastenerInterface [5] connect lugNutCompositePort.lugNutPort to shankCompositePort.shankPort;
			}
		}
		package AllocationDefinitions {
			allocation def LogicalToPhysical {
				end #logical logicalEnd :>> source;
				end #physical physicalEnd :>> target;
			}
		}
		package ActionDefinitions {
			action def ProvidePower {
				item pwrCmd : PwrCmd;
				out wheelToRoadTorque : TorqueValue [2];
			}
			action def GenerateTorque {
				item fuelCmd : FuelCmd;
				out engineTorque : TorqueValue;
			}
			action def AmplifyTorque {
				engineTorque : TorqueValue;
				out transmissionTorque : TorqueValue;
			}
			action def TransferTorque {
				transmissionTorque : TorqueValue;
				out driveshaftTorque : TorqueValue;
			}
			action def DistributeTorque {
				driveshaftTorque : TorqueValue;
				out wheelToRoadTorque : TorqueValue [2];
			}
			action def PerformSelfTest;
			action def ApplyParkingBrake;
			action def SenseTemperature {
				out temp : ThermodynamicTemperatureValue;
			}
		}
		package StateDefinitions {
			state def VehicleStates;
			state def ControllerStates;
			state def CruiseControllerStates;
		}
		package RequirementDefinitions {
			requirement def MassRequirement {
				subject :>> subj;
				doc /* The actual mass shall be less than the required mass*/
				attribute massRequired :> mass;
				attribute massActual :> mass;
				requirement {
					massActual <= massRequired;
				}
			}
			requirement def ReliabilityRequirement {
				subject :>> subj;
				doc /* The actual reliability shall be greater than the required reliability*/
				attribute reliabilityRequired : ScalarValues::Real;
				attribute reliabilityActual : ScalarValues::Real;
				requirement {
					reliabilityActual >= reliabilityRequired;
				}
			}
			requirement def TorqueGenerationRequirement {
				doc /* The engine shall generate torque as a function of RPM as shown in Table 1. */
				subject generateTorque : GenerateTorque;
			}
			requirement def DrivePowerOutputRequirement {
				subject :>> subj;
				doc /* The engine shall provide a connection point to transfer torque to the transmission.*/
			}
			requirement def FuelEconomyRequirement {
				subject :>> subj;
				doc /* The vehicle shall maintain an average fuel economomy of at least x miles per gallon for the nominal 
driving scenario */
				attribute actualFuelEconomy :> distancePerVolume;
				attribute requiredFuelEconomy :> distancePerVolume;
				requirement {
					actualFuelEconomy >= requiredFuelEconomy;
				}
			}
		}
		package AttributeDefinitions {
			public import ScalarValues::*;
			public import Quantities::*;
			public import MeasurementReferences::*;
			public import SIPrefixes::*;
			public import NumericalFunctions::*;
			public import SI::*;
			public import USCustomaryUnits::*;
			public alias Torque for TorqueValue;
			enum def {
				enum black :> Base::dataValues;
				enum grey :> Base::dataValues;
				enum red :> Base::dataValues;
			}
			enum def {
				enum :> Base::dataValues = 60[millimetre];
				enum :> Base::dataValues = 80[millimetre];
				enum :> Base::dataValues = 100[millimetre];
			}
			attribute cylinderDiameter : DiameterChoices = 80[millimetre];
			enum def {
				enum on :> Base::dataValues;
				enum off :> Base::dataValues;
			}
			enum def {
				enum gas :> Base::dataValues;
				enum diesel :> Base::dataValues;
			}
			distancePerVolume :> scalarQuantities = distance/volume;
			timePerDistance :> scalarQuantities = duration/distance;
			volumePerDistance :> scalarQuantities = volume/distance;
			volumePerTime :> scalarQuantities = volume/duration;
			kpl : MeasurementReferences::DerivedUnit = kilometre/litre;
			rpm : MeasurementReferences::DerivedUnit = 1/minute;
			kW : MeasurementReferences::DerivedUnit = kilo*watt;
		}
		package IndividualDefinitions {
			individual occurrence def VehicleRoadContext_1 :> Context;
			individual occurrence def Vehicle_1 :> Vehicle;
			individual occurrence def FrontAxleAssembly_1 :> AxleAssembly;
			individual occurrence def FrontAxle_1 :> FrontAxle;
			individual occurrence def Wheel_1 :> Wheel;
			individual occurrence def Wheel_2 :> Wheel;
			individual occurrence def RearAxleAssembly_1 :> AxleAssembly;
			individual occurrence def Road_1 :> Road;
		}
		package MetadataDefinitions {
			public import AnalysisTooling::*;
			metadata def Safety {
				attribute isMandatory : ScalarValues::Boolean;
			}
			metadata def Security;
		}
		package KeyWord_MetadataDefinitions {
			public import Metaobjects::*;
			state failureModes :> stateActions [*];
			metadata def <fm> failureMode {
				ref :>> Metaobjects::baseType = failureModes meta StateUsage;
			}
			occurrence logicalOccurrences;
			metadata def <l> logical {
				ref :>> Metaobjects::baseType = logicalOccurrences meta Usage;
			}
			occurrence physicalOccurrences;
			metadata def <p> physical {
				ref :>> Metaobjects::baseType = physicalOccurrences meta Usage;
			}
		}
		package GenericContext {
			part def Context {
				attribute time : DurationValue;
				attribute spatialCF : CartesianSpatial3dCoordinateFrame [1] {
					ref :>> null = (SI::metre,SI::metre,SI::metre);
				}
				attribute velocityCF : CartesianVelocity3dCoordinateFrame [1] = spatialCF/SI::second;
				attribute accelarationCF : CartesianAcceleration3dCoordinateFrame [1] = velocityCF/SI::second;
			}
		}
	}
	package VehicleLogicalConfiguration {
		package PartsTree {
			#logical part vehicleLogical : Vehicle {
				part torqueGenerator : TorqueGenerator {
					action generateTorque;
				}
				part electricalGenerator : ElectricalGenerator {
					action generateElectricity;
				}
				part steeringSystem : SteeringSubsystem;
				part brakingSubsystem : BrakingSubsystem;
			}
		}
	}
	package VehicleLogicalToPhysicalAllocation {
		public import PartsTree::**;
		public import PartsTree::*;
		allocation vehicleLogicalToPhysicalAllocation : LogicalToPhysical allocate vehicleLogical to vehicle_b {
			allocate vehicleLogical.torqueGenerator to vehicle_b.engine {
				allocate vehicleLogical.torqueGenerator.generateTorque to vehicle_b.engine.providePower.generateTorque;
			}
			allocate vehicleLogical.electricalGenerator to vehicle_b.engine {
				allocate vehicleLogical.electricalGenerator.generateElectricity to vehicle_b.engine.alternator.generateElectricity;
			}
		}
	}
	package VehicleConfigurations {
		package VehicleConfiguration_a {
			package PartsTree {
				part vehicle_a : Vehicle {
					attribute mass :>> mass = dryMass + cargoMass + fuelTank;
					attribute dryMass :>> dryMass = NumericalFunctions::sum(NumericalFunctions::collection=partMasses);
					attribute :>> cargoMass = 0[SI::kilogram];
					attribute partMasses :> mass [*];
					part fuelTank : FuelTank {
						attribute :>> mass = 75[SI::kilogram];
						item :>> fuel {
							attribute :>> fuelMass = 50[SI::kilogram];
						}
					}
					part frontAxleAssembly : AxleAssembly {
						attribute mass :> mass = 800[SI::kilogram];
						part frontAxle : Axle;
						part frontWheels : Wheel [2];
					}
					part rearAxleAssembly : AxleAssembly {
						attribute mass :> mass = 875[SI::kilogram];
						attribute driveTrainEfficiency : ScalarValues::Real = 0.6;
						part rearAxle : Axle;
						part rearWheels : Wheel [2] {
							attribute :>> diameter;
						}
					}
				}
			}
			package ActionTree {}
			package Requirements {}
		}
		package VehicleConfiguration_b {
			public import ShapeItems::*;
			public import ParametersOfInterestMetadata::*;
			public import ModelingMetadata::*;
			package PartsTree {
				part vehicle_b : Vehicle {
					#ParametersOfInterestMetadata::MeasureOfPerformance attribute mass :>> mass = dryMass + cargoMass + fuelTank;
					attribute dryMass :>> dryMass = NumericalFunctions::sum(NumericalFunctions::collection=partMasses);
					attribute :>> cargoMass default 0[SI::kilogram];
					attribute partMasses :> Base::dataValues = (fuelTank.mass,frontAxleAssembly.mass,rearAxleAssembly.mass,engine.mass,transmission.mass,driveshaft.mass);
					attribute avgFuelEconomy :> distancePerVolume;
					port fuelCmdPort : FuelCmdPort {
						item fuelCmd :>> pwrCmd;
					}
					port setSpeedPort = ~SetSpeedPort;
					port vehicleToRoadPort :>> vehicleToRoadPort {
						port wheelToRoadPort1 : WheelToRoadPort;
						port wheelToRoadPort2 : WheelToRoadPort;
					}
					perform performSelfTest performSelfTest;
					perform applyParkingBrake applyParkingBrake;
					perform senseTemperature senseTemperature;
					exhibit state vehicleStates :>> vehicleStates;
					item :> envelopingShapes [1] {
						length1 :>> ShapeItems::null = 4800[SI::millimetre];
						width1 :>> ShapeItems::null = 1840[SI::millimetre];
						height1 :>> ShapeItems::null = 1350[SI::millimetre];
					}
					part fuelTank : FuelTank {
						attribute :>> mass = 75[SI::kilogram];
						item :>> fuel {
							attribute :>> fuelMass = 60[SI::kilogram];
						}
						attribute :>> fuelMassMax = 60[SI::kilogram];
					}
					part frontAxleAssembly : AxleAssembly {
						attribute mass :> mass = 800[SI::kilogram];
						port shaftPort_d : ShaftPort_d;
						part frontAxle : FrontAxle;
						part frontWheels : Wheel [2];
					}
					part rearAxleAssembly : AxleAssembly {
						attribute mass :> mass = 875[SI::kilogram];
						attribute driveTrainEfficiency : ScalarValues::Real = 0.6;
						port shaftPort_d : ShaftPort_d;
						perform providePower.distributeTorque;
						part rearWheel1 : Wheel {
							attribute :>> diameter;
							port wheelToRoadPort : WheelToRoadPort;
							port lugNutCompositePort :>> lugNutCompositePort {
								port lugNutPort :>> lugNutPort [5];
							}
						}
						part rearWheel2 : Wheel {
							attribute :>> diameter;
							port wheelToRoadPort : WheelToRoadPort;
							port lugNutCompositePort :>> lugNutCompositePort {
								port lugNutPort :>> lugNutPort [5];
							}
						}
						part differential : Differential {
							port shaftPort_d : ShaftPort_d;
							port leftDiffPort : DiffPort;
							port rightDiffPort : DiffPort;
						}
						part rearAxle {
							part leftHalfAxle : HalfAxle {
								port leftAxleToDiffPort : AxlePort;
								port shankCompositePort :>> shankCompositePort {
									port shankPort :>> shankPort [5];
								}
							}
							part rightHalfAxle : HalfAxle {
								port rightAxleToDiffPort : AxlePort;
								port shankCompositePort :>> shankCompositePort {
									port shankPort :>> shankPort [5];
								}
							}
						}
						bind shaftPort_d = differential.shaftPort_d;
						connect differential.leftDiffPort to rearAxle.leftHalfAxle.leftAxleToDiffPort;
						connect differential.rightDiffPort to rearAxle.rightHalfAxle.rightAxleToDiffPort;
						interface wheelToleftHalAxleInterface : WheelHubInterface connect rearWheel1.lugNutCompositePort[1] to rearAxle.leftHalfAxle.shankCompositePort[1];
						interface wheelTorightHalAxleInterface : WheelHubInterface connect rearWheel2.lugNutCompositePort[1] to rearAxle.rightHalfAxle.shankCompositePort[1];
					}
					part starterMotor : StarterMotor;
					part engine : Engine {
						part cylinders : Cylinder [4..6];
						part alternator {
							action generateElectricity;
						}
						satisfy by vehicle_b.engine {
							requirement torqueGenerationRequirement :>> torqueGenerationRequirement {
								subject generateTorque :>> generateTorque = vehicle_b;
							}
							requirement drivePowerOuputRequirement :>> drivePowerOutputRequirement {
								subject :>> subj;
								port torqueOutPort :>> torqueOutPort = vehicle_b;
							}
						}
					}
					part transmission : Transmission {
						attribute mass :> mass = 100[SI::kilogram];
						port shaftPort_a : ShaftPort_a;
						perform providePower.amplifyTorque;
					}
					part driveshaft : Driveshaft {
						attribute mass :> mass = 100[SI::kilogram];
						port shaftPort_b : ShaftPort_b;
						port shaftPort_c : ShaftPort_c;
						perform providePower.transferTorque;
					}
					part vehicleSoftware : VehicleSoftware {
						part vehicleController : VehicleController {
							exhibit state controllerStates :>> controllerStates;
							part cruiseController : CruiseController;
						}
					}
					part speedSensor : SpeedSensor;
					part bodyAssy : BodyAssy {
						part body : Body {
							attribute :>> color = red;
						}
						#Safety part bumper;
						#Security part keylessEntry;
					}
					part interior {
						#Security part alarm;
						#Safety part seatBelt;
						part frontSeat;
						#Safety part driverAirBag;
					}
					bind engine.fuelCmdPort = fuelCmdPort;
					interface engineToTransmissionInterface : EngineToTransmissionInterface connect engine.drivePwrPort to transmission.clutchPort;
					interface fuelInterface : FuelInterface connect fuelTank.fuelOutPort to engine.fuelInPort;
					allocate providePower.generateToAmplify to engineToTransmissionInterface;
					bind engine.ignitionCmdPort = ignitionCmdPort;
					connect starterMotor.gearPort to engine.flyWheelPort;
					connect vehicleSoftware.vehicleController.controlPort to engine.engineControlPort;
					bind vehicle_b.setSpeedPort = vehicleSoftware.vehicleController.cruiseController.setSpeedPort;
					connect speedSensor.speedSensorPort to vehicleSoftware.vehicleController.cruiseController.speedSensorPort;
					bind vehicleSoftware.vehicleController.cruiseController.cruiseControlPort = vehicleSoftware.vehicleController.controlPort;
					connect transmission.shaftPort_a to driveshaft.shaftPort_b;
					connect driveshaft.shaftPort_c to rearAxleAssembly.shaftPort_d;
					bind rearAxleAssembly.rearWheel1.wheelToRoadPort = vehicleToRoadPort.wheelToRoadPort1;
					bind rearAxleAssembly.rearWheel2.wheelToRoadPort = vehicleToRoadPort.wheelToRoadPort2;
					satisfy by vehicle_b {
						requirement vehicleMassRequirement :>> vehicleMassRequirement {
							subject :>> subj;
							attribute :>> massActual = vehicle_b.mass;
							attribute :>> fuelMassActual = vehicle_b;
						}
					}
				}
			}
			package ActionTree {
				action providePower : ProvidePower {
					item fuelCmd : FuelCmd;
					out wheelToRoadTorque :>> wheelToRoadTorque [2] = distributeTorque.wheelToRoadTorque;
					action generateTorque : GenerateTorque {
						item :>> fuelCmd = providePower.fuelCmd;
					}
					action amplifyTorque : AmplifyTorque;
					action transferTorque : TransferTorque;
					action distributeTorque : DistributeTorque;
					flow generateToAmplify from generateTorque.engineTorque to amplifyTorque.engineTorque;
					flow from amplifyTorque.transmissionTorque to transferTorque.transmissionTorque;
					flow from transferTorque.driveshaftTorque to distributeTorque.driveshaftTorque;
				}
				action performSelfTest : PerformSelfTest;
				action applyParkingBrake : ApplyParkingBrake;
				action senseTemperature : SenseTemperature;
			}
			package DiscreteInteractions {
				package Sequence {
					part def Driver {
						port p1;
						port p2;
					}
					part part0 :> parts {
						perform action startVehicle {
							action turnVehicleOn send ignitionCmd via driver.p1 {
								ignitionCmd : IgnitionCmd;
							}
							{
								ignitionCmd : IgnitionCmd;
								ref :>> Transfers::receiver = vehicle.ignitionCmdPort;
							}
							flow of IgnitionCmdfrom trigger1.ignitionCmd to startEngine.ignitionCmd;
							action startEngine {
								item ignitionCmd : IgnitionCmd;
								out item es : EngineStatus;
							}
							flow of EngineStatusfrom startEngine.es to sendStatus.es;
							action sendStatus send es via vehicle.statusPort {
								es : EngineStatus;
							}
							{
								es : EngineStatus;
								ref :>> Transfers::receiver = driver.p2;
							}
						}
						part driver : Driver {
							perform startVehicle.turnVehicleOn;
							perform startVehicle.trigger2;
							event occurrence;
						}
						part vehicle : Vehicle {
							perform startVehicle.trigger1;
							perform startVehicle.sendStatus;
							event occurrence;
						}
						first vehicle.doorClosed then driver.driverReady;
						message :> messageConnections of IgnitionCmdfrom driver.startVehicle.turnVehicleOn to vehicle.startVehicle.trigger1;
						message :> messageConnections of EngineStatusfrom vehicle.startVehicle.sendStatus to driver.startVehicle.trigger2;
					}
				}
				occurrence CruiseControl1 {
					part vehicle_b :> vehicle_b {
						port :>> setSpeedPort {
							event occurrence;
						}
						part :>> speedSensor {
							port :>> speedSensorPort {
								event occurrence;
							}
						}
						part :>> vehicleSoftware {
							part :>> vehicleController {
								part :>> cruiseController {
									port :>> setSpeedPort {
										event occurrence = vehicle_b;
									}
									port :>> speedSensorPort {
										event occurrence;
									}
									port :>> cruiseControlPort {
										event occurrence;
									}
								}
							}
						}
						part :>> engine {
							port :>> fuelCmdPort {
								event occurrence;
							}
						}
						message sendSensedSpeed :> messageConnections of SensedSpeedfrom speedSensor.speedSensorPort.sensedSpeedSent to vehicleSoftware.vehicleController.cruiseController.speedSensorPort.sensedSpeedReceived;
						message sendFuelCmd :> messageConnections of FuelCmdfrom vehicleSoftware.vehicleController.cruiseController.cruiseControlPort.fuelCmdSent to engine.fuelCmdPort.fuelCmdReceived;
					}
				}
				occurrence CruiseControl2 {
					part vehicle_b :> vehicle_b {
						port :>> setSpeedPort {
							event occurrence;
						}
						part :>> speedSensor {
							port :>> speedSensorPort {
								event sendSensedSpeed.source;
							}
						}
						part :>> vehicleSoftware {
							part :>> vehicleController {
								part :>> cruiseController {
									port :>> setSpeedPort {
										event occurrence = vehicle_b;
									}
									port :>> speedSensorPort {
										event occurrence = setSpeedPort.setSpeedReceived;
										first setSpeedReceived then done {
											end ref :>> Occurrences::laterOccurrence;
										}
										event sendSensedSpeed.target;
									}
									port :>> cruiseControlPort {
										event sendFuelCmd.source;
									}
								}
							}
						}
						part :>> engine {
							port :>> fuelCmdPort {
								event sendFuelCmd.target;
							}
						}
						message sendSensedSpeed :> messageConnections of SensedSpeedfrom to;
						message sendFuelCmd :> messageConnections of FuelCmdfrom to;
					}
				}
			}
			package Requirements {
				public import RequirementDerivation::*;
				public import ModelingMetadata::*;
				item marketSurvey :> items;
				dependency vehicleSpecification to marketSurvey;
				requirement vehicleSpecification :> requirementChecks {
					subject vehicle : Vehicle;
					requirement vehicleMassRequirement : MassRequirement {
						subject :>> subj;
						doc /* The total mass of the vehicle shall be less than or equal to the required mass.
Assume total mass includes a full tank of gas of 60 kg*/
						attribute :>> massRequired = 2000[SI::kilogram];
						attribute :>> massActual default vehicle.dryMass + fuelMassActual;
						attribute fuelMassActual :> mass;
						attribute fuelMassMax :> mass = 60[SI::kilogram];
						assumption {
							fuelMassActual == fuelMassMax;
						}
					}
					allocate vehicleMassRequirement to vehicle_b.mass;
					requirement vehicleFuelEconomyRequirements :> subrequirements {
						subject :>> null;
						doc /* fuel economy requirements group */
						attribute assumedCargoMass :> mass;
						requirement cityFuelEconomyRequirement : FuelEconomyRequirement {
							subject :>> subj;
							ref :>> requiredFuelEconomy = 10[SI::kilometre/SI::litre];
							assumption {
								assumedCargoMass <= 500[SI::kilogram];
							}
						}
						#ModelingMetadata::StatusInfo requirement highwayFuelEconomyRequirement : FuelEconomyRequirement {
							subject :>> subj;
							ref :>> requiredFuelEconomy = 12.75[SI::kilometre/SI::litre];
							assumption {
								assumedCargoMass <= 500[SI::kilogram];
							}
						}
					}
				}
				requirement engineSpecification :> requirementChecks {
					subject engine1 : Engine;
					requirement engineMassRequirement : MassRequirement {
						subject :>> subj;
						doc /* The total mass of the engine shall be less than or equal to the required mass.*/
						attribute :>> massRequired = 200[SI::kilogram];
						attribute :>> massActual = engine1.mass;
					}
					requirement torqueGenerationRequirement : TorqueGenerationRequirement {
						subject generateTorque :>> generateTorque default engine1.generateTorque;
					}
					requirement drivePowerOutputRequirement : DrivePowerOutputRequirement {
						subject :>> subj;
						port torqueOutPort {
							out torque : TorqueValue;
						}
					}
				}
				#RequirementDerivation::DerivationMetadata {
					end #RequirementDerivation::OriginalRequirementMetadata :>> Links::source;
					end #RequirementDerivation::DerivedRequirementMetadata :>> Links::target;
				}
			}
		}
		package Engine4Cyl_Variant {
			public import ModelingMetadata::*;
			part engine : Engine {
				part cylinders : Cylinder [4..8];
			}
			part engine4Cyl :> engine {
				part :>> cylinders [4];
				part cylinder1 :> cylinders [1];
				part cylinder2 :> cylinders [1];
				part cylinder3 :> cylinders [1];
				part cylinder4 :> cylinders [1];
			}
			#ModelingMetadata::Refinement dependency engine4Cyl to engine;
		}
		package WheelHubAssemblies {
			part wheelHubAssy1 :> parts {
				part wheel1 : Wheel {
					port :>> lugNutCompositePort {
						port lugNutPort :>> lugNutPort [5];
					}
				}
				part hub1 : Hub {
					port :>> shankCompositePort {
						port shankPort :>> shankPort [5];
					}
				}
				interface wheelHubInterface : WheelHubInterface connect wheel1.lugNutCompositePort[1] to hub1.shankCompositePort[1];
			}
			part wheelHubAssy2 :> parts {
				part wheel1 : Wheel {
					port :>> lugNutCompositePort {
						port lugNutPort :>> lugNutPort [5];
					}
				}
				part hub1 : Hub {
					port :>> shankCompositePort {
						port shankPort :>> shankPort [5];
					}
				}
				interface wheelHubInterface : WheelHubInterface connect lugNutCompositePort ::> wheel1.lugNutCompositePort[1] to shankCompositePort ::> hub1.shankCompositePort[1] {
					interface wheelFastenerInterface1 :> wheelFastenerInterface connect lugNutPort ::> lugNutCompositePort.lugNutPort[5] to shankPort ::> shankCompositePort.shankPort[5];
				}
			}
			part wheelHubAssy3 :> parts {
				part wheel1 : Wheel {
					port lugNutCompositePort :>> lugNutCompositePort {
						port lugNutPort :>> lugNutPort [5] {
							attribute :>> threadDia = 14[SI::millimetre];
							attribute :>> threadPitch = 1.5[SI::millimetre];
						}
						port lugNutPort1 :> lugNutPort [1];
						port lugNutPort2 :> lugNutPort [1];
						port lugNutPort3 :> lugNutPort [1];
					}
				}
				part hub1 : Hub {
					port shankCompositePort :>> shankCompositePort {
						port shankPort :>> shankPort [5] {
							attribute :>> threadDia = 14[SI::millimetre];
							attribute :>> threadPitch = 1.5[SI::millimetre];
							attribute :>> shaftLength = 70[SI::millimetre];
						}
						port shankPort1 :> shankPort [1];
						port shankPort2 :> shankPort [1];
						port shankPort3 :> shankPort [1];
					}
				}
				interface wheelHubInterface : WheelHubInterface connect lugNutCompositePort ::> wheel1.lugNutCompositePort[1] to shankCompositePort ::> hub1.shankCompositePort[1] {
					interface wheelFastenerInterface1 :> wheelFastenerInterface connect lugNutPort ::> lugNutCompositePort.lugNutPort1 to shankPort ::> shankCompositePort.shankPort1 {
						attribute :>> maxTorque = 90*1.356[SI::newton*SI::metre];
					}
					interface wheelFastenerInterface2 :> wheelFastenerInterface connect lugNutPort ::> lugNutCompositePort.lugNutPort2 to shankPort ::> shankCompositePort.shankPort2 {
						attribute :>> maxTorque = 90*1.356[SI::newton*SI::metre];
					}
					interface wheelFastenerInterface3 :> wheelFastenerInterface connect lugNutPort ::> lugNutCompositePort.lugNutPort3 to shankPort ::> shankCompositePort.shankPort3 {
						attribute :>> maxTorque = 90*1.356[SI::newton*SI::metre];
					}
				}
			}
		}
	}
	package VehicleAnalysis {
		public import RiskMetadata::*;
		public import RiskLevelEnum::*;
		public import VehicleConfiguration_b::**;
		package FuelEconomyAnalysisModel {
			public import SampledFunctions::*;
			/* This analysis model was provided by Hisashi Miyashita on January 27, 2021
We use the simplest fuel consumption analysis model introduced in:
Akcelik, R. "Fuel efficiency and other objectives in traffic system management." Traffic Engineering and Control 22.2 (1981): 54-65. 

Fuel consumption rate f can be decomposed to:
f = f_a + f_b * tpd_avg,
where tpd_avg is average interrupted travel time per unit distance, actually the inverse of the average velocity [t/km];
f_a is the best fuel consumption per distance; and
f_b is the additional fuel consumption per distance and average travel time, which can be regarded as the idling fuel consumption.
Approximately, it is proportional to engine displacement and it ranges from 0.5 to 0.6 [l/hour/litre of engine displacement]
according to:
Review of the Incidence, Energy Use and Costs of Passenger Vehicle Idling; Gordon W. Taylor, P.Eng. Prepared for the Office of Energy Efficiency, Natural Resources Canada, 2003

We assume f_a can be approximated to
fuel_consumption / distance = BSFC * SGG * required_power_avg * tpd_avg,
where required_power_avg is the required power, and it can be approximately derived from:
total_energy == P_req * tpd_avg * distance == 1/2 * mass / tpd_avg^2
This part is computed with BestFuelConsumptionPerDistance calc def.

BSFC means Brake-Specific Fuel Consumption, defined as gram/power.  SGG is the specific gravity of gasoline.
The high octane gasoline is about 0.76[l/kg].*/
			attribute def Scenario {
				attribute wayPoint :> Base::dataValues [1..*] {
					attribute elapseTime :> duration [1];
					attribute position :> distance [1];
				}
			}
			calc def FuelConsumption {
				bestFuelConsumption : ScalarValues::Real;
				idlingFuelConsumption : ScalarValues::Real;
				tpd_avg :> timePerDistance;
				attribute f = bestFuelConsumption + idlingFuelConsumption*tpd_avg;
				return out dpv :> distancePerVolume = 1/f;
			}
			calc def AverageTravelTimePerDistance {
				scenario : Scenario;
				return out tpd_avg :> timePerDistance;
			}
			calc def TraveledDistance {
				scenario : Scenario;
				return out distance :> length;
			}
			calc def IdlingFuelConsumptionPerTime {
				engine : Engine;
				attribute idlingFuelConsumptionPerDisplacement : ScalarValues::Real = 0.5;
				return out f_a : ScalarValues::Real = engine.displacement*idlingFuelConsumptionPerDisplacement;
			}
			attribute specificGravityOfGasoline : ScalarValues::Real = 0.76;
			calc def BestFuelConsumptionPerDistance {
				mass : MassValue;
				bsfc : ScalarValues::Real;
				tpd_avg :> timePerDistance;
				distance :> length;
				attribute required_power_avg :> power;
				{
					required_power_avg == 1/2*mass*tpd_avg**(-3)/distance;
				}
				return out f_b : ScalarValues::Real = bsfc*specificGravityOfGasoline*required_power_avg*tpd_avg;
			}
			calc def ComputeBSFC {
				engine : Engine;
			}
			analysis fuelEconomyAnalysis :> analysisCases {
				subject :>> null = vehicle_b;
				requirement fuelEconomyAnalysisObjective :>> null {
					subject :>> null;
					doc /* estimate the vehicle fuel economy*/
					requirement;
				}
				attribute scenario : Scenario;
				attribute distance = TraveledDistance(scenario);
				attribute tpd_avg = AverageTravelTimePerDistance(scenario);
				attribute bsfc = ComputeBSFC(engine=vehicle_b.engine);
				attribute f_a = BestFuelConsumptionPerDistance(mass=vehicle_b.mass, bsfc, tpd_avg, distance);
				attribute f_b = IdlingFuelConsumptionPerTime(engine=vehicle_b.engine);
				return out attribute calculatedFuelEconomy :> distancePerVolume = FuelConsumption(bestFuelConsumption=f_a, idlingFuelConsumption=f_b, tpd_avg);
			}
		}
		package ElectricalPowerAnalysis {}
		package ReliabilityAnalyis {}
		#RiskMetadata::Risk package VehicleTradeOffAnalysis {
			/* The following example provides the rationale for selecting the engine4cyl. 
The rationale and risk are contained in a metadata library. */
			public import TradeStudies::*;
			calc def EngineEvaluation {
				engineMass :> mass;
				enginePower :> power;
				engineFuelEfficiency : ScalarValues::Real;
				engineCost : ScalarValues::Real;
				return out eval : ScalarValues::Real;
			}
			calc def EngineEvaluation_4cyl {
				engineMass :> mass;
				enginePower :> power;
				engineFuelEfficiency : ScalarValues::Real;
				engineCost : ScalarValues::Real;
				return out eval : ScalarValues::Real;
			}
			calc def EngineEvaluation_6cyl {
				engineMass :> mass;
				enginePower :> power;
				engineFuelEfficiency : ScalarValues::Real;
				engineCost : ScalarValues::Real;
				return out eval : ScalarValues::Real;
			}
			analysis engineTradeOffAnalysis : TradeStudy {
				subject vehicleAlternatives :> vehicle_b [2];
				part vehicle_b_engine4cyl :> vehicleAlternatives {
					part engine :>> engine {
						part cylinders :>> cylinders [4];
						attribute mass :>> mass = 180[SI::kilogram];
						attribute peakHorsePower :>> peakHorsePower = 180[SI::watt];
						attribute fuelEfficiency :>> fuelEfficiency = 0.6;
						attribute cost :>> cost = 1000;
					}
				}
				part vehicle_b_engine6cyl :> vehicleAlternatives {
					part engine :>> engine {
						part cylinders :>> cylinders [6];
						attribute mass :>> mass = 220[SI::kilogram];
						attribute peakHorsePower :>> peakHorsePower = 220[SI::watt];
						attribute fuelEfficiency :>> fuelEfficiency = 0.5;
						attribute cost :>> cost = 1500;
					}
				}
				/* Select vehicle alternative with the engine whose evaluation function returns the max value*/
				calc :> evaluationFunction {
					part vehicle :> vehicle_b_engine4cyl;
					return out attribute eval : ScalarValues::Real = EngineEvaluation_4cyl(engineMass=vehicle, enginePower=vehicle, engineFuelEfficiency=vehicle, engineCost=vehicle);
				}
				calc :> evaluationFunction {
					part vehicle :> vehicle_b_engine6cyl;
					return out attribute eval : ScalarValues::Real = EngineEvaluation_6cyl(engineMass=vehicle, enginePower=vehicle, engineFuelEfficiency=vehicle, engineCost=vehicle);
				}
				return out part selectedVehicle :> vehicle_b;
			}
		}
	}
	package VehicleVerification {
		public import VehicleConfiguration_b::**;
		public import VerificationCaseDefinitions::*;
		public import VerificationCases1::*;
		public import VerificationCases::*;
		public import VerificationSystem::*;
		package VerificationCaseDefinitions {
			verification def MassTest {
				subject :>> subj;
			}
			verification def AccelerationTest {
				subject :>> subj;
			}
			verification def ReliabilityTest {
				subject :>> subj;
			}
		}
		package VerificationCases1 {
			#VerificationCases::VerificationMethod verification massTests : MassTest {
				subject vehicle_uut :> vehicle_b;
				part vehicleVerificationSubSystem_1 :> actors = verificationContext.massVerificationSystem;
				action weighVehicle {
					out massMeasured :> mass;
				}
				first weighVehicle then evaluatePassFail;
				action evaluatePassFail {
					massMeasured :> mass;
					out verdict :> Base::things = PassIf(isPassing=(vehicle_uut));
				}
				flow from weighVehicle.massMeasured to evaluatePassFail.massMeasured;
			}
		}
		package VerificationSystem {
			part verificationContext :> parts {
				perform massTests;
				part vehicle_UnitUnderTest :> vehicle_b;
				part massVerificationSystem {
					part scale {
						perform massTests.weighVehicle;
					}
					part operator {
						perform massTests.evaluatePassFail;
					}
				}
			}
		}
	}
	package VehicleIndividuals {
		individual occurrence a : VehicleRoadContext_1 {
			occurrence t0_t2_a :> a {
				snapshot occurrence t0_a :> t0_t2_a {
					attribute t0 :>> time = 0[SI::second];
					snapshot occurrence t0_r : Road_1 {
						ref :>> incline = 0;
						ref :>> friction = 0.1;
					}
					snapshot occurrence t0_v : Vehicle_1 {
						ref :>> position = 0[SI::metre];
						ref :>> velocity = 0[SI::metre];
						ref :>> acceleration = 1.96[SI::metre/SI::second**2];
						snapshot occurrence t0_fa : FrontAxleAssembly_1 {
							snapshot occurrence t0_leftFront : Wheel_1;
							snapshot occurrence t0_rightFront : Wheel_2;
						}
					}
				}
				snapshot occurrence t1_a :> t0_t2_a {
					attribute t1 :>> time = 1[SI::second];
					snapshot occurrence t1_r : Road_1 {
						ref :>> incline = 0;
						ref :>> friction = 0.1;
					}
					snapshot occurrence t1_v : Vehicle_1 {
						ref :>> position = 0.98[SI::metre];
						ref :>> velocity = 1.96[SI::metre/SI::second];
						ref :>> acceleration = 1.96[SI::metre/SI::second**2];
						snapshot occurrence t1_fa : FrontAxleAssembly_1 {
							snapshot occurrence t1_leftFront : Wheel_1;
							snapshot occurrence t1_rightFront : Wheel_2;
						}
					}
				}
				snapshot occurrence t2_a :> t0_t2_a {
					attribute t2 :>> time = 2[SI::second];
					snapshot occurrence t2_r : Road_1 {
						ref :>> incline = 0;
						ref :>> friction = 0.1;
					}
					snapshot occurrence t2_v : Vehicle_1 {
						ref :>> position = 3.92[SI::metre];
						ref :>> velocity = 3.92[SI::metre/SI::second];
						ref :>> acceleration = 1.96[SI::metre/SI::second**2];
						snapshot occurrence t2_fa : FrontAxleAssembly_1 {
							snapshot occurrence t2_leftFront : Wheel_1;
							snapshot occurrence t2_rightFront : Wheel_2;
						}
					}
				}
			}
		}
	}
	package MissionContext {
		/* Define mission context with mission use cases for vehicle_b */
		public import VehicleConfiguration_b::**;
		public import ParametersOfInterestMetadata::*;
		public import TransportPassengerScenario::*;
		package ContextDefinitions {
			part def MissionContext :> Context;
			part def Road;
			part def Driver {
				port handPort : HandPort;
				exhibit state driverStates;
			}
			part def Passenger;
			requirement transportRequirements :> requirementChecks {
				subject :>> null;
			}
			use case def TransportPassenger {
				requirement TransportObjective :>> obj {
					subject :>> null;
					doc /* deliver passenger to destination safely, comfortably, and within acceptable time*/
					requirement;
				}
				subject vehicle : Vehicle;
				part environment :> actors;
				part road :> actors;
				part driver :> actors;
				part passenger :> actors [0..4];
				include use case getInVehicle_a :> getInVehicle [1..5] {
					subject :>> vehicle;
				}
				include use case getOutOfVehicle_a :> getOutOfVehicle [1..5] {
					subject :>> vehicle;
				}
			}
			use case getInVehicle : GetInVehicle {
				subject :>> vehicle;
				action unlockDoor_in;
				first unlockDoor_in then openDoor_in;
				action openDoor_in;
				first openDoor_in then enterVehicle;
				action enterVehicle;
				first enterVehicle then closeDoor_in;
				action closeDoor_in;
			}
			use case def GetInVehicle {
				subject vehicle : Vehicle;
				part driver :> actors [0..1];
				part passenger :> actors [0..1];
				assert constraint {
					driver != null xor passenger != null;
				}
			}
			use case getOutOfVehicle : GetOutOfVehicle {
				subject :>> vehicle;
				action openDoor_out;
				first openDoor_out then exitVehicle;
				action exitVehicle;
				first exitVehicle then closeDoor_out;
				action closeDoor_out;
				first closeDoor_out then lockDoor_out;
				action lockDoor_out;
			}
			use case def GetOutOfVehicle {
				subject vehicle : Vehicle;
				part driver :> actors [0..1];
				part passenger :> actors [0..1];
				assert constraint {
					driver != null xor passenger != null;
				}
			}
		}
		package TransportPassengerScenario {
			public import TransportPassenger::*;
			use case transportPassenger : TransportPassenger {
				subject :>> vehicle;
				public first start;
				first start then a {
					end ref :>> Occurrences::earlierOccurrence;
				}
				action a {
					action driverGetInVehicle :> getInVehicle_a [1];
					action passenger1GetInVehicle :> getInVehicle_a [1];
				}
				first a then trigger;
				{
					ignitionCmd : IgnitionCmd;
					ref :>> Transfers::receiver;
				}
				first trigger then b;
				action b {
					action driveVehicleToDestination;
					action providePower;
				}
				first b then c;
				action c {
					action driverGetOutOfVehicle :> getOutOfVehicle_a [1];
					action passenger1GetOutOfVehicle :> getOutOfVehicle_a [1];
				}
				first c then done {
					end ref :>> Occurrences::laterOccurrence;
				}
			}
			use case transportPassenger_1 : TransportPassenger {
				subject :>> vehicle;
				action driverGetInVehicle :> getInVehicle_a [1];
				action passenger1GetInVehicle :> getInVehicle_a [1];
				action driverGetOutOfVehicle :> getOutOfVehicle_a [1];
				action passenger1GetOutOfVehicle :> getOutOfVehicle_a [1];
				action driveVehicleToDestination;
				action providePower;
				item def VehicleOnSignal;
				join join1 :> joins;
				join join2 :> joins;
				join join3 :> joins;
				{
					ignitionCmd : IgnitionCmd;
					ref :>> Transfers::receiver;
				}
				public first start;
				first start then fork1 {
					end ref :>> Occurrences::earlierOccurrence;
				}
				fork fork1 :> forks;
				first fork1 then driverGetInVehicle;
				first fork1 then passenger1GetInVehicle;
				first driverGetInVehicle then join1;
				first passenger1GetInVehicle then join1;
				first join1 then trigger;
				first trigger then fork2;
				fork fork2 :> forks;
				first fork2 then driveVehicleToDestination;
				first fork2 then providePower;
				first driveVehicleToDestination then join2;
				first providePower then join2;
				first join2 then fork3;
				fork fork3 :> forks;
				first fork3 then driverGetOutOfVehicle;
				first fork3 then passenger1GetOutOfVehicle;
				first driverGetOutOfVehicle then join3;
				first passenger1GetOutOfVehicle then join3;
				first join3 then done {
					end ref :>> Occurrences::laterOccurrence;
				}
			}
		}
		part missionContext : MissionContext {
			#ParametersOfInterestMetadata::MeasureOfEffectiveness attribute transportTime :> duration;
			perform transportPassenger;
			part road : Road = transportPassenger.road;
			part driver : Driver = transportPassenger.driver {
				perform transportPassenger.a.driverGetInVehicle.unlockDoor_in;
				perform transportPassenger.a.driverGetInVehicle.openDoor_in;
				perform transportPassenger.a.driverGetInVehicle.enterVehicle;
				perform transportPassenger.a.driverGetInVehicle.closeDoor_in;
				perform transportPassenger.c.driverGetOutOfVehicle.openDoor_out;
				perform transportPassenger.c.driverGetOutOfVehicle.exitVehicle;
				perform transportPassenger.c.driverGetOutOfVehicle.closeDoor_out;
				perform transportPassenger.c.driverGetOutOfVehicle.lockDoor_out;
				perform transportPassenger.b.driveVehicleToDestination;
			}
			part passenger1 : Passenger = transportPassenger.passenger {
				perform transportPassenger.a.passenger1GetInVehicle.unlockDoor_in;
				perform transportPassenger.a.passenger1GetInVehicle.openDoor_in;
				perform transportPassenger.a.passenger1GetInVehicle.enterVehicle;
				perform transportPassenger.a.passenger1GetInVehicle.closeDoor_in;
				perform transportPassenger.c.passenger1GetOutOfVehicle.openDoor_out;
				perform transportPassenger.c.passenger1GetOutOfVehicle.exitVehicle;
				perform transportPassenger.c.passenger1GetOutOfVehicle.closeDoor_out;
				perform transportPassenger.c.passenger1GetOutOfVehicle.lockDoor_out;
			}
			part vehicle_b_1 :> vehicle_b = transportPassenger.vehicle {
				attribute :>> position3dVector = (0,0,0)[spatialCF];
				perform transportPassenger.b.providePower providePower;
				perform transportPassenger.trigger;
			}
			connect driver.handPort to vehicle_b_1.ignitionCmdPort;
			connect road to vehicle_b_1.vehicleToRoadPort;
		}
	}
	package VehicleSuperSetModel {
		/* all of vehicleFamily is included in the superset model to enable subsetting a specific vehicle configuration*/
		package VariationPointDefinitions {
			variation part def TransmissionChoices :> Transmission{
				part transmissionAutomatic : TransmissionAutomatic;
				part transmissionManual : TransmissionManual;
			}
		}
		package VehiclePartsTree {
			public import VariationPointDefinitions::*;
			abstract part vehicleFamily :> parts {
				variation part engine : Engine {
					part engine4Cyl : Engine4Cyl;
					part engine6Cyl : Engine6Cyl {
						part cylinder : Cylinder [6] {
							variation attribute diameter : LengthValue {
								attribute smallDiameter : LengthValue;
								attribute largeDiagmeter : LengthValue;
							}
						}
					}
				}
				part transmissionChoices : TransmissionChoices;
				part sunroof : Sunroof [0..1];
				assert constraint selectionConstraint {
					engine == engine4Cyl and transmissionChoices == transmissionManual xor engine == engine6Cyl and transmissionChoices == transmissionAutomatic;
				}
				part driveshaft;
				part frontAxleAssembly;
				part rearAxleAssembly;
			}
		}
	}
	package SafetyandSecurityGroups {
		public import PartsTree::*;
		package SafetyGroup {
			/* Parts that contribute to safety. */
			public import vehicle_b::**;
			public filter @Safety;
		}
		package SecurityGroup {
			/* Parts that contribute to security. */
			public import vehicle_b::**;
			public filter @Security;
		}
		package SafetyandSecurityGroup {
			/* Parts that contribute to safety OR security. */
			public import vehicle_b::**;
			public filter @Safety or @Security;
		}
		package MandatorySafetyGroup {
			/* Parts that contribute to safety AND are mandatory. */
			public import vehicle_b::**;
			public filter @Safety and isMandatory;
		}
	}
	package Views_Viewpoints {
		package ViewpointDefinitions {
			viewpoint def BehaviorViewpoint {
				subject :>> subj;
			}
			viewpoint def SafetyViewpoint {
				subject :>> subj;
				concern vs : VehicleSafety {
					subject :>> null;
				}
			}
			part def SafetyEngineer;
			concern def VehicleSafety {
				subject :>> null;
				doc /* identify system safety features */
				part se : SafetyEngineer;
			}
		}
		package ViewDefinitions {
			public import Views::*;
			view def TreeView {
				;
			}
			view def NestedView;
			view def RelationshipView;
			view def TableView;
			view def PartsTreeView :> TreeView{
				public filter @PartUsage;
			}
			view def PartsInterconnection :> NestedView;
		}
		package VehicleViews {
			public import ViewpointDefinitions::*;
			public import ViewDefinitions::*;
			public import VehicleConfiguration_b::*;
			view vehiclePartsTree_Safety : PartsTreeView {
				satisfy requirement sv : SafetyViewpoint {
					subject :>> subj;
				}
				protected expose PartsTree::**;
				public filter @Safety;
			}
		}
	}
}

