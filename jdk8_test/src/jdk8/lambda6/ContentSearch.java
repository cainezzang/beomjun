package jdk8.lambda6;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ContentSearch {
	public static void main(String[] args) {
		
		File selectedFile = new File("D:\\Store\\mailTest_date");
		
		File folder = selectedFile.isDirectory() ? selectedFile : selectedFile;
		List<String> files = new ArrayList<String>();
		try {
			files = ContentSearch.searchFiles(folder, "테스트", files);
			files.forEach(System.out::println);
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		} 
	}

	public static List<String> searchFiles(File file, String pattern, List<String> result) throws FileNotFoundException {

		if (!file.isDirectory()) {
			throw new IllegalArgumentException("file has to be a directory");
		}

		if (result == null) {
			result = new ArrayList<String>();
		}

		File[] files = file.listFiles();

		if (files != null) {
			for (File currentFile : files) {
				if (currentFile.isDirectory()) {
					searchFiles(currentFile, pattern, result);
				} else {
					Scanner scanner = new Scanner(currentFile);
					if (scanner.findWithinHorizon(pattern, 0) != null) {
						result.add(currentFile.getName());
					}
					scanner.close();
				}
			}
		}
		return result;
	}
}
