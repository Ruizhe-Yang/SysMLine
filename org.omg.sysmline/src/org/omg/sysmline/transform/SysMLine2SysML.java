package org.omg.sysmline.transform;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.ecore.xmi.impl.XMIResourceFactoryImpl;
import org.eclipse.emf.emfatic.core.EmfaticResourceFactory;
import org.eclipse.epsilon.etl.EtlModule;
import org.eclipse.epsilon.egl.EglModule;
import org.eclipse.epsilon.egl.EglTemplateFactory;
import org.eclipse.epsilon.egl.EglTemplateFactoryModuleAdapter;
import org.eclipse.epsilon.egl.EgxModule;
import org.eclipse.epsilon.egl.traceability.Template;
import org.eclipse.epsilon.emc.emf.EmfModel;
import org.eclipse.epsilon.emc.emf.InMemoryEmfModel;
import org.eclipse.epsilon.flexmi.FlexmiResourceFactory;
import org.eclipse.epsilon.egl.EglModule;
import org.eclipse.epsilon.eol.execute.context.Variable;
import org.eclipse.epsilon.egl.EglFileGeneratingTemplateFactory;
import org.eclipse.epsilon.egl.EgxModule;
import org.eclipse.epsilon.emc.plainxml.PlainXmlModel;


public class SysMLine2SysML {
	public static String ModelName = "model\\examples\\VehicleIndividuals\\VehicleIndividuals";
	public static String SysMLineEcore = "metamodel\\sysmline\\sysmline.ecore";
	
	public static void main(String[] args) throws IOException {
		run();
    }
	
	public static void run() {
		try {
			String sourceModel = ModelName + ".sysmline";
			
	        
//	        EglTemplateFactoryModuleAdapter  eglModule = new EglTemplateFactoryModuleAdapter();
	        EgxModule eglModule = new EgxModule(new EglFileGeneratingTemplateFactory());
//	        eglModule.parse(new File("transform\\SysMLine2SysML\\SysMLine2SysML.egx").getAbsoluteFile());
	        eglModule.parse(new File("transform\\SysMLine2SysML\\SysMLine2SysML.egx").getAbsoluteFile());
	        
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
//	        System.out.println("SysMLine2SysML.java runtime ends.");
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

}
