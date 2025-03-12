package org.omg.sysmline.transform;

import java.io.File;
import java.io.IOException;

import org.eclipse.epsilon.etl.EtlModule;
import org.eclipse.epsilon.emc.emf.EmfModel;

public class XMIni2SysMLine {
	public static String ModelName = "model\\examples\\VehicleIndividuals\\VehicleIndividuals";
	public static String XMIniEcore = "E:\\EclipseBoxes\\sysml-v2-20250302\\git\\SysML-v2-Pilot-Implementation\\org.omg.sysml\\model\\SysML.ecore";
	public static String SysMLineEcore = "metamodel\\sysmline\\sysmline.ecore";
	
	public static void main(String[] args) throws IOException {
		run();
    }
	
	public static void run() {
		try {
			String sourceModel = ModelName + "_.sysmlx";
			String targetModel = ModelName + ".sysmline";
	        EmfModel xminiModel = new EmfModel();
	        xminiModel.setMetamodelFile(XMIniEcore);
	        xminiModel.setModelFile(sourceModel);
	        xminiModel.setName("XMIni");
	        xminiModel.setReadOnLoad(true);
	        xminiModel.setStoredOnDisposal(false);
	        xminiModel.load();
	        
	        EmfModel sysmlineModel = new EmfModel();
	        sysmlineModel.setMetamodelFile(SysMLineEcore);
	        sysmlineModel.setModelFile(targetModel);
	        sysmlineModel.setName("SysMLine");
	        sysmlineModel.setReadOnLoad(false);
	        sysmlineModel.setStoredOnDisposal(true);
	        sysmlineModel.load();
	        
			EtlModule etlModule = new EtlModule();    
	        File etlFile = new File("transform\\XMIni2SysMLine\\XMIni2SysMLine.etl");
	        etlModule.parse(etlFile);
	        etlModule.getContext().getModelRepository().addModel(xminiModel);
	        etlModule.getContext().getModelRepository().addModel(sysmlineModel);
	        etlModule.execute();
	        etlModule.getContext().getModelRepository().dispose();
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		
	}
	
}
