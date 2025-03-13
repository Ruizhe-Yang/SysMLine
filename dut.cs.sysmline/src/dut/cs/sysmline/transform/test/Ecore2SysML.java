package dut.cs.sysmline.transform.test;

import java.io.IOException;

import dut.cs.sysmline.transform.Ecore2SysMLine;
import dut.cs.sysmline.transform.SysMLine2SysML;

public class Ecore2SysML {
	
	public static void main(String[] args) throws IOException {
		run("metamodel\\BPMN\\BPMN20");
//		run("metamodel\\BPMN\\BPMNDI");
//		run("metamodel\\BPMN\\DC");
//		run("metamodel\\BPMN\\DI");
    }
	
	public static void run(String modelName) {
		Ecore2SysMLine.run(modelName);
		SysMLine2SysML.run(modelName);
	}
}
