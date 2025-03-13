package dut.cs.sysmline.transform;

import java.io.File;
import java.io.IOException;

import org.eclipse.epsilon.etl.EtlModule;
import org.eclipse.epsilon.emc.emf.EmfModel;

public class DSL2SysMLine {
	public static String ExtentedName = "flexmi";
	public static String ModelName = "model\\PlayGround\\psl-model";
	public static String ModelEcore = "model\\PlayGround\\psl.ecore";
	public static String ETL = "transform\\DSL2SysMLine\\psl2SysMLine.etl";
	public static String SysMLineEcore = "metamodel\\sysmline\\sysmline.ecore";
	
	public static void main(String[] args) throws IOException {
		run(ModelName, ModelEcore, ETL, ExtentedName);
    }
	
	public static void run(String modelName, String ModelEcore, String ETL, String ExtentedName) {
		try {
			String sourceModel = modelName + "." + ExtentedName;
			String targetModel = modelName + ".sysmline";
			ensureFileExists(targetModel);
			
	        EmfModel dslModel = new EmfModel();
	        dslModel.setName("DSL");
	        dslModel.setMetamodelFile("E:\\GitYang\\SysMLine\\dut.cs.sysmline\\model\\PlayGround\\psl.ecore");
	        dslModel.setModelFile("E:\\GitYang\\SysMLine\\dut.cs.sysmline\\model\\PlayGround\\psl-model.flexmi");
	        
//	        dslModel.setMetamodelFile(ModelEcore);
	        
	        dslModel.setReadOnLoad(true);
	        dslModel.setStoredOnDisposal(false);
	        dslModel.load();
	        
	        EmfModel sysmlineModel = new EmfModel();
	        sysmlineModel.setMetamodelFile(SysMLineEcore);
	        sysmlineModel.setModelFile(targetModel);
	        sysmlineModel.setName("SysMLine");
	        sysmlineModel.setReadOnLoad(false);
	        sysmlineModel.setStoredOnDisposal(true);
	        sysmlineModel.load();
	        
			EtlModule etlModule = new EtlModule();
	        etlModule.parse(new File(ETL));
	        etlModule.getContext().getModelRepository().addModel(dslModel);
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
