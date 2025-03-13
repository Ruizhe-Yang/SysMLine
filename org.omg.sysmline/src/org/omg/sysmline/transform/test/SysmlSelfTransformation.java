package org.omg.sysmline.transform.test;

import java.io.IOException;

import org.omg.sysmline.transform.SysMLine2SysML;
import org.omg.sysmline.transform.XMIni2SysMLine;

public class SysmlSelfTransformation {
	
	public static void main(String[] args) throws IOException {
//		selftest("E:\\GitYang\\SysMLine\\org.omg.sysmline\\model\\examples\\VehicleDifinitions\\VehicleDefinitions_.sysmlx");
		selftest("model\\examples\\VehicleIndividuals\\VehicleIndividuals");
		selftest("model\\examples\\VehicleUsages\\VehicleUsages");
		
    }
	
	public static void selftest(String modelName) {
		XMIni2SysMLine.run(modelName);
		SysMLine2SysML.run(modelName);
	}
}
