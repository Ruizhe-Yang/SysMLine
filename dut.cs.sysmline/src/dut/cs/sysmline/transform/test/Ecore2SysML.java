package dut.cs.sysmline.transform.test;

import java.io.File;
import java.io.IOException;

import dut.cs.sysmline.transform.Ecore2SysMLine;
import dut.cs.sysmline.transform.SysMLine2SysML;

public class Ecore2SysML {
	
	public static void main(String[] args) throws IOException {
//		run("metamodel\\PlayGround\\psl");
//		run("metamodel\\test\\fmeda");
//		run("metamodel\\Capella\\Interaction");
//		testSACM();
//		testCapellaEcore();
//		testISDesigner();
//		testAADLEcore();
//		run("metamodel\\petrinet\\petrinet");
//		run("metamodel\\Modelica\\MO");
		run("metamodel\\PlayGround\\psl");
//		run("metamodel\\HSUV\\HSUV");
//		testBPMNEcore();
//		testRoboChartEcore();
    }
	
	public static void run(String modelName) {
		Ecore2SysMLine.run(modelName);
		SysMLine2SysML.run(modelName);
	}
	
	public static void testBPMNEcore() {
		run("metamodel\\BPMN\\BPMN20");
		run("metamodel\\BPMN\\BPMNDI");
		run("metamodel\\BPMN\\DC");
		run("metamodel\\BPMN\\DI");
	}
	
	public static void testAADLEcore() {
		String[] sysmlFilePaths = findFiles("E:\\GitYang\\SysMLine\\dut.cs.sysmline\\metamodel\\AADL");
		for (String FilePath : sysmlFilePaths) {
			run(FilePath);
		}
	}
	
	
	public static void testRoboChartEcore() {
		run("metamodel\\RoboChart\\robochart");
	}

	public static void testSACM() {
		String[] sysmlFilePaths = findFiles("E:\\GitYang\\SysMLine\\dut.cs.sysmline\\metamodel\\SACM");
		for (String FilePath : sysmlFilePaths) {
			run(FilePath);
		}
	}
	
	public static void testISDesigner() {
		String[] sysmlFilePaths = findFiles("E:\\GitYang\\SysMLine\\dut.cs.sysmline\\metamodel\\ISDesigner");
		for (String FilePath : sysmlFilePaths) {
			run(FilePath);
		}
	}
	
	public static void testCapellaEcore() {
		String[] sysmlFilePaths = findFiles("E:\\GitYang\\SysMLine\\dut.cs.sysmline\\metamodel\\Capella");
		for (String FilePath : sysmlFilePaths) {
//			System.out.println(FilePath);
			run(FilePath);
		}
	}
	
//  Return all paths of the library.
	private static String[] findFiles(String folderPath) {
	    File folder = new File(folderPath);
	    if (!folder.exists() || !folder.isDirectory()) {
	        return new String[0];
	    }
	    StringBuilder resultBuilder = new StringBuilder();
	    findFilesRecursive(folder, resultBuilder);
	    String resultString = resultBuilder.toString();
	    return resultString.isEmpty() ? new String[0] : resultString.split(", ");
	}
	
    private static void findFilesRecursive(File folder, StringBuilder result) {
        File[] files = folder.listFiles();
        if (files == null) return;
        for (File file : files) {
            if (file.isDirectory()) {
                findFilesRecursive(file, result);
            } else {
                String fileName = file.getName();
                if (fileName.endsWith(".ecore")) {
                    if (result.length() > 0) {
                        result.append(", ");
                    }
                    result.append(file.getAbsolutePath().substring(0, file.getAbsolutePath().length() - 6));
                }
            }
        }
    }
}
