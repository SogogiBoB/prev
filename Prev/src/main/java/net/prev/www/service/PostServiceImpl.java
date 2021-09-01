package net.prev.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.prev.www.dao.PostDao;
import net.prev.www.model.Post;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	PostDao dao;
	
	@Override
	public List<Post> list(String id) {
		return dao.list(id);
	}

	@Override
	public void add(Post item) {
		dao.add(item);
	}

	@Override
	public void postAdd(Post item) {
		dao.postAdd(item);
	}

	@Override
	public Post postsItem(int pid) {
	
		return dao.postsItem(pid);
	}

	@Override
	public void postsUpdate(Post item) {
		dao.postsUpdate(item);
	}

}
