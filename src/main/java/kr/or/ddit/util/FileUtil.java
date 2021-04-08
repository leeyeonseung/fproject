package kr.or.ddit.util;

public class FileUtil {

	public static String getFileName(String contentDisposition) {
		String[] attrs = contentDisposition.split("; ");
		
		for(String attr : attrs) {
			
			if(attr.startsWith("filename=")) {
				//filename="brown.png"
				attr = attr.replace("filename=", "");
					
				// "brown.png"
				return attr.substring(1, attr.length() - 1);
			}
		}
		
		
		return " ";
	}
	
	public static String getFileExtension(String filename) {
		//String[] ext = filename.split("\\.")[1];
		
		
		//확장자가 없을 때 brown
		if(filename.indexOf(".") == -1)	// 아무것도 없을 때 -1 반환된다
			return "";
		
		//return filename.split("\\.")[1];
		return filename.substring(filename.lastIndexOf(".")+1);
			
			
		
		
		
		
	
	}
	
}
