package net.prev.www.dao;

import org.springframework.web.multipart.MultipartFile;

import net.prev.www.model.PostImage;

public interface PostImageDao {

	void add(MultipartFile file);

}
