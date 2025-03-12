package org.omg.sysmline.transform;

import java.io.File;
import java.io.IOException;
import org.eclipse.epsilon.egl.EgxModule;
import org.eclipse.epsilon.emc.emf.EmfModel;
import org.eclipse.epsilon.egl.EglFileGeneratingTemplateFactory;


public class SysMLine2SysML {
	public static String ModelName = "E:\\GitYang\\SysMLine\\org.omg.sysmline\\model\\examples\\VehicleIndividuals\\VehicleIndividuals.sysmline";
	public static String SysMLineEcore = "E:\\GitYang\\SysMLine\\org.omg.sysmline\\metamodel\\sysmline\\sysmline.ecore";
	
	public static void main(String[] args) throws IOException {
		run();
    }
	
	public static void run() {
		try {
//			String sourceModel = ModelName + ".sysmline";
			String sourceModel = ModelName;
	        
//	        EglTemplateFactoryModuleAdapter  eglModule = new EglTemplateFactoryModuleAdapter();
	        EgxModule eglModule = new EgxModule(new EglFileGeneratingTemplateFactory());
//	        eglModule.parse(new File("transform\\SysMLine2SysML\\SysMLine2SysML.egx").getAbsoluteFile());
	        eglModule.parse(new File("E:\\GitYang\\SysMLine\\org.omg.sysmline\\transform\\SysMLine2SysML\\SysMLine2SysML.egx").getAbsoluteFile());
	        
	        if (!eglModule.getParseProblems().isEmpty()) {
	            System.out.println("Syntax errors found not Exiting.");
	        }
	        
	        EmfModel sysmlineModel = new EmfModel();
	        sysmlineModel.setMetamodelFile(SysMLineEcore);
	        sysmlineModel.setModelFile(sourceModel);
	        sysmlineModel.setName("SysMLine");
	        sysmlineModel.setReadOnLoad(true);
	        sysmlineModel.setStoredOnDisposal(false);
	        
	        sysmlineModel.load();
	        
	        eglModule.getContext().getModelRepository().addModel(sysmlineModel);
	        eglModule.execute();
//	        eglModule.getContext().getModelRepository().dispose();
	        System.out.println("SysMLine2SysML.java runtime ends.");
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

}
