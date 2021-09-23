package net.prev.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import net.prev.www.service.PostImageService;

@Controller
public class PostImageController {
	
	final String path = "C://upload/";

	@Autowired
	PostImageService service;
	
	@PostMapping("/image")
	public String imageUpload(@RequestParam("file") MultipartFile file) {
		service.add(file);
		
		String filename = file.getOriginalFilename();
		
		return path + filename;
	}
}
