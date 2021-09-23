package net.prev.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import net.prev.www.dao.PostImageDao;

@Service
public class PostImageServiceImpl implements PostImageService {

	@Autowired
	PostImageDao dao;
	
	@Override
	public void add(MultipartFile file) {
		dao.add(file);
	}

}
