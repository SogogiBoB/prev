package net.prev.www.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class Uploader {
	final private static String uploadPath = "c://upload/";
	
	public static boolean upload(MultipartFile file) {
		if(file != null && !file.isEmpty()) {
			return true;
		} else
			return false;
	}
	
	public static String newFileName(MultipartFile file) {
		String fileName = file.getOriginalFilename();
		UUID random = UUID.randomUUID();
		
		String newFileName = random + fileName;
		try {
			file.transferTo(new File(uploadPath + newFileName));
			System.out.println("»õ ÆÄÀÏ: "+newFileName);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		return newFileName;
	}
}
