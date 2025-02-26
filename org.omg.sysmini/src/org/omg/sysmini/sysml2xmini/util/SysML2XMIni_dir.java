package org.omg.sysmini.sysml2xmini.util;

import org.omg.sysml.xtext.util.SysML2XMI;
import java.io.File;
import java.io.IOException;
import java.util.List;


public class SysML2XMIni_dir extends SysML2XMIni_file {
	//Directory path of 'types.ecore', 'kerml.ecore' and 'SysML.ecore'.
	public static String ecoreDirectoryPath = "E:\\GitYang\\SysMini\\org.omg.sysmini\\metamodel\\sysmlv2";
	//Directory path of the 'sysml.library'.
	public static String libraryDirectoryPath = "E:\\GitYang\\SysMini\\org.omg.sysmini.runtime\\sysml.library";
	//File path of the target file 'xxx.sysml'.
	public static String targetFileDirectory = "E:\\GitYang\\SysMini\\org.omg.sysmini.runtime\\sysml\\src\\examples";
	
    public static void main(String[] args) throws IOException {
    	run();
    }
    
    public static void run() throws IOException {
        String[] sysmlFilePaths = findFiles(targetFileDirectory);
        for (String FilePath : sysmlFilePaths) {
        	fileName = null;
        	selfDirectoryPath = getFolderPath(FilePath);
        	String newPath = copyFolder(selfDirectoryPath, libraryDirectoryPath);
        	String[] result = findFiles(libraryDirectoryPath);
        	targetFilePath = FilePath;
        	System.out.println(targetFilePath+" is transforming...");
        	String[] config = {"-g", targetFilePath};
            String[] arg = mergeArrays(config, result);
            SysML2XMI xmini = new SysML2XMI();
            xmini.run(arg);
        	File libraryDirectory = new File(libraryDirectoryPath);
        	File targetFile = new File(targetFilePath+"x");
    		List<List<String>> ElementIDList = getAllElementHref(targetFile);
    		registerEcoreModels();
    		System.out.println(fileName);
    		modifyXMI(libraryDirectory, ElementIDList);
    		deleteFiles(libraryDirectoryPath);
    		deleteFolder(newPath);
        }
        System.out.println("SysML2XMIni.java runtime ends.");
    }
}
