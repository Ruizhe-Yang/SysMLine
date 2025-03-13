package dut.cs.sysmline.transform.test;

import java.io.IOException;

import dut.cs.sysmline.transform.SysMLine2SysML;
import dut.cs.sysmline.transform.XMIni2SysMLine;

public class SysmlSelfTransformation {
	
	public static void main(String[] args) throws IOException {
		selftest("model\\examples\\VehicleDifinitions\\VehicleDefinitions");
		selftest("model\\examples\\VehicleIndividuals\\VehicleIndividuals");
		selftest("model\\examples\\VehicleUsages\\VehicleUsages");
		
    }
	
	public static void selftest(String modelName) {
		XMIni2SysMLine.run(modelName);
		SysMLine2SysML.run(modelName);
	}
}
