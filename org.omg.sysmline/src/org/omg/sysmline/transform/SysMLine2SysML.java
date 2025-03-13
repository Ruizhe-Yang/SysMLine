package org.omg.sysmline.transform;

import java.io.File;
import java.io.IOException;
import org.eclipse.epsilon.egl.EgxModule;
import org.eclipse.epsilon.emc.emf.EmfModel;
import org.eclipse.epsilon.egl.EglFileGeneratingTemplateFactory;


public class SysMLine2SysML {
	public static String ModelName = "model\\examples\\VehicleIndividuals\\VehicleIndividuals";
	public static String SysMLineEcore = "metamodel\\sysmline\\sysmline.ecore";
	
	public static void main(String[] args) throws IOException {
		run(ModelName);
    }
	
	public static void run(String modelName) {
		try {
			String sourceModel = modelName + ".sysmline";

	        EmfModel sysmlineModel = new EmfModel();
	        sysmlineModel.setMetamodelFile(SysMLineEcore);
	        sysmlineModel.setModelFile(sourceModel);
	        sysmlineModel.setName("SysMLine");
	        sysmlineModel.setReadOnLoad(true);
	        sysmlineModel.setStoredOnDisposal(false);
	        sysmlineModel.load();
	        
	        EgxModule eglModule = new EgxModule(new EglFileGeneratingTemplateFactory());
	        eglModule.parse(new File("transform\\SysMLine2SysML\\SysMLine2SysML.egx").getAbsoluteFile());
	        eglModule.getContext().getModelRepository().addModel(sysmlineModel);
	        eglModule.execute();
	        eglModule.getContext().getModelRepository().dispose();
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

}
