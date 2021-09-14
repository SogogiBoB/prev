package net.prev.www.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.prev.www.dao.PostDao;
import net.prev.www.dao.ReplyDao;
import net.prev.www.model.Post;
import net.prev.www.model.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDao dao;
	
	@Autowired
	PostDao postDao;
	
	@Override
	@Transactional
	public void add(Reply item) {
		Post post = postDao.searchCount(item.getPid());
		
		int count = post.getViewcount();
		
		//System.out.println("add 누른 순간 카운트"+count);
		
		post.setPid(item.getPid());
		post.setViewcount(count-1);
		
		postDao.plusCount(post);
		
		//System.out.println("1 줄임"+post.getViewcount());
		
		dao.add(item);
	}

	@Override
	public List<Reply> list(int pid) {
		return dao.list(pid);
	}

	@Override
	public void delete(int rid) {
		System.out.println(rid);
		
		dao.delete(rid);
	}

	@Override
	public void update(Reply item) {
		
		dao.update(item);
	}

}
