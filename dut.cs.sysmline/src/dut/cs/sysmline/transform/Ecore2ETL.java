package dut.cs.sysmline.transform;

import java.io.File;
import java.io.IOException;
import org.eclipse.epsilon.egl.EgxModule;
import org.eclipse.epsilon.emc.emf.EmfModel;
import org.eclipse.epsilon.egl.EglFileGeneratingTemplateFactory;


public class Ecore2ETL {
	public static String ModelName = "model\\PlayGround\\psl";
	public static String EcoreEcore = "metamodel\\Ecore\\ecore.ecore";
	
	public static void main(String[] args) throws IOException {
		run(ModelName);
    }
	
	public static void run(String modelName) {
		try {
			String sourceModel = modelName + ".ecore";

	        EmfModel sysmlineModel = new EmfModel();
	        sysmlineModel.setMetamodelFile(EcoreEcore);
	        sysmlineModel.setModelFile(sourceModel);
	        sysmlineModel.setName("Ecore");
	        sysmlineModel.setReadOnLoad(true);
	        sysmlineModel.setStoredOnDisposal(false);
	        sysmlineModel.load();
	        
	        EgxModule eglModule = new EgxModule(new EglFileGeneratingTemplateFactory());
	        eglModule.parse(new File("transform\\Ecore2ETL\\Ecore2ETL.egx").getAbsoluteFile());
	        eglModule.getContext().getModelRepository().addModel(sysmlineModel);
	        eglModule.execute();
	        eglModule.getContext().getModelRepository().dispose();
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
}
