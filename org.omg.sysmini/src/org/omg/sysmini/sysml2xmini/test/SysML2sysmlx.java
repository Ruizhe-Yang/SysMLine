package org.omg.sysmini.sysml2xmini.test;

import java.io.File;
import org.omg.sysml.xtext.util.SysML2XMI;

public class SysML2sysmlx {

    public static void main(String[] args) {
    	String path ="D:\\EclipseInstallTest\\Sysml-v2-Pilot-Implementation-20241119\\runtime-SysML\\yang.sysml.test2\\model\\vehicle example\\VehicleDefinitions.sysml";
        String folderPath = "D:\\EclipseInstallTest\\Sysml-v2-Pilot-Implementation-20241119\\git\\SysML-v2-Pilot-Implementation\\sysml.library";
        String[] result = findFiles(folderPath);
        String[] config = {"-g", path};
        String[] arg = mergeArrays(config, result);
		SysML2XMI.main(arg);
//		deleteFiles(folderPath);
		System.out.println("-----------------------------OVER-----------------------------");
	}
    
    public static String[] mergeArrays(String[] array1, String[] array2) {
        String[] mergedArray = new String[array1.length + array2.length];
        System.arraycopy(array1, 0, mergedArray, 0, array1.length);
        System.arraycopy(array2, 0, mergedArray, array1.length, array2.length);
        return mergedArray;
    }

    public static String[] findFiles(String folderPath) {
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
                if (fileName.endsWith(".sysml") || fileName.endsWith(".kerml")) {
                    if (result.length() > 0) {
                        result.append(", ");
                    }
                    result.append(file.getAbsolutePath());
                }
            }
        }
    }
    
    public static void deleteFiles(String folderPath) {
        File folder = new File(folderPath);
        if (!folder.exists() || !folder.isDirectory()) {
            System.out.println("Invalid folder path.");
            return;
        }
        deleteFilesRecursive(folder);
    }

    private static void deleteFilesRecursive(File folder) {
        File[] files = folder.listFiles();
        if (files == null) return;

        for (File file : files) {
            if (file.isDirectory()) {
                deleteFilesRecursive(file);
            } else {
                String fileName = file.getName();
                if (fileName.endsWith(".sysmlx") || fileName.endsWith(".kermlx")) {
                    boolean deleted = file.delete();
                    if (deleted) {
                        System.out.println("Deleted: " + file.getAbsolutePath());
                    } else {
                        System.out.println("Failed to delete: " + file.getAbsolutePath());
                    }
                }
            }
        }
    }
}
