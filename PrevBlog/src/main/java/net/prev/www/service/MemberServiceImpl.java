package net.prev.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.prev.www.dao.MemberDao;
import net.prev.www.model.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public Member item(String id) {
		return dao.item(id);
	}

	@Override
	public void add(Member item) {
		dao.add(item);
	}

	@Override
	public boolean checkId(String id) {
		if(dao.checkId(id) > 0)
			return false;
		else
			return true;
	}

	@Override
	public Member profileInfo(String id) {
		return dao.profileInfo(id);
	}

	@Override
	public void profileUpdate(Member member) {
		
		dao.profileUpdate(member);
	}

}