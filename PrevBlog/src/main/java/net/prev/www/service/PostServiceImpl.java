package net.prev.www.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.prev.www.dao.PostDao;
import net.prev.www.model.Post;
import net.prev.www.util.Pager;

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
		List<Post> lessThree = new ArrayList<Post>();
		List<Post> allList = dao.utdList();
		if(allList.size()>=3) {
	 		for(int i=0; i<3; i++) {
	 			lessThree.add(i, allList.get(i));
	 		}
		} else {
			return allList;
		}
		return lessThree;
	}

	@Override
	public Post updateItem(int pid) {
		return dao.updateItem(pid);
	}

 	@Override
	public List<Post> allList(Pager pager) {
 		int total = dao.total(pager);
 		
 		pager.setTotal((float)total);
		return dao.allList(pager);
	}

	@Override
	public List<Post> utdList(String id) {
		List<Post> lessThree = new ArrayList<Post>();
		List<Post> allList = dao.utdList(id); 
 		for(int i=0; i<3; i++) {
 			lessThree.add(i, allList.get(i));
 		}
		return lessThree;
	}

	@Override
	public void delete(Post item) {
		dao.delete(item);
	}

	@Override
	public List<Post> EList(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal((float) total);
		return dao.EList(pager);
	}

	@Override
	public List<Post> postList() {
		return dao.postList();
	}

	@Override
	public void adminPostsDelete(int pid) {
		dao.adminPostsDelete(pid);
	}

}
