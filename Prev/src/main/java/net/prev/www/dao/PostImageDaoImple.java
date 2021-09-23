package net.prev.www.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import net.prev.www.model.PostImage;

@Repository
public class PostImageDaoImple implements PostImageDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(MultipartFile file) {
		sql.insert("post_image.add", file);
	}

}
