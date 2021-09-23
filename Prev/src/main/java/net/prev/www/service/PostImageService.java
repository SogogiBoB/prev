package net.prev.www.service;

import org.springframework.web.multipart.MultipartFile;

public interface PostImageService {

	void add(MultipartFile file);

}
