package dut.cs.sysmline.transform;

import java.io.File;
import java.io.IOException;

import org.eclipse.epsilon.etl.EtlModule;
import org.eclipse.epsilon.emc.emf.EmfModel;

public class Ecore2SysMLine {
	public static String ModelName = "metamodel\\Ecore\\ecore";
	public static String EcoreEcore = "metamodel\\Ecore\\ecore.ecore";
	public static String SysMLineEcore = "metamodel\\sysmline\\sysmline.ecore";
	
	public static void main(String[] args) throws IOException {
		run(ModelName);
    }
	
	public static void run(String modelName) {
		try {
			String sourceModel = modelName + ".ecore";
			String targetModel = modelName + ".sysmline";
			ensureFileExists(targetModel);
			
	        EmfModel ecoreModel = new EmfModel();
	        ecoreModel.setMetamodelFile(EcoreEcore);
	        ecoreModel.setModelFile(sourceModel);
	        ecoreModel.setName("Ecore");
	        ecoreModel.setReadOnLoad(true);
	        ecoreModel.setStoredOnDisposal(false);
	        ecoreModel.load();
	        
	        EmfModel sysmlineModel = new EmfModel();
	        sysmlineModel.setMetamodelFile(SysMLineEcore);
	        sysmlineModel.setModelFile(targetModel);
	        sysmlineModel.setName("SysMLine");
	        sysmlineModel.setReadOnLoad(false);
	        sysmlineModel.setStoredOnDisposal(true);
	        sysmlineModel.load();
	        
			EtlModule etlModule = new EtlModule();
	        File etlFile = new File("transform\\Ecore2SysMLine\\Ecore2SysMLine.etl");
	        etlModule.parse(etlFile);
	        etlModule.getContext().getModelRepository().addModel(ecoreModel);
	        etlModule.getContext().getModelRepository().addModel(sysmlineModel);
	        etlModule.execute();
	        etlModule.getContext().getModelRepository().dispose();
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		
	}
	
	public static boolean ensureFileExists(String filePath) {
        File file = new File(filePath);
        if (file.exists()) {
            return file.isFile();
        }
        File parentDir = file.getParentFile();
        if (parentDir != null && !parentDir.exists()) {
            if (!parentDir.mkdirs()) {
                return false;
            }
        }
        try {
        	System.out.println(">> create "+filePath);
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
	
}
