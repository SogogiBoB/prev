package net.prev.www.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	@Transactional
	public void add(Post item) {
		dao.add(item);
		
	}

	@Override
	public void postAdd(Post item) {
		dao.postAdd(item);
	}

	@Override
	@Transactional
	public Post postsItem(int pid) {		
		Post item = dao.searchCount(pid);
		
		int count = item.getViewcount();
		
		System.out.println("ī��Ʈ��" + count);
		
		item.setPid(pid);
		item.setViewcount(count+1);
		
		dao.plusCount(item);
		
		return dao.postsItem(pid);
	}

	@Override
	public void postsUpdate(Post item) {
		
		dao.postsUpdate(item);
	}

	@Override
	public List<Post> utdList() {
		return dao.utdList();
	}

	@Override
	public Post updateItem(int pid) {
		return dao.updateItem(pid);
	}

 	@Override
	public List<Post> allList() { 		
		return dao.allList();
	}

	@Override
	public List<Post> EList(String id) {
		return dao.EList(id);
	}


}
