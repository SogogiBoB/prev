package net.prev.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.prev.www.dao.ReplyDao;
import net.prev.www.model.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDao dao;
	
	@Override
	public void add(Reply item) {
		System.out.println(item.getContent());
		System.out.println(item.getId());
		System.out.println(item.getPid());
		
		dao.add(item);
	}

	@Override
	public List<Reply> list() {
		return dao.list();
	}

	@Override
	public void delete(int rid) {
		System.out.println(rid);
		
		dao.delete(rid);
	}

}
