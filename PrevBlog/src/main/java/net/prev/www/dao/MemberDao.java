package net.prev.www.dao;

import java.util.List;

import net.prev.www.model.Member;

public interface MemberDao {

	Member item(String id);

	void add(Member item);

	int checkId(String id);

	Member profileInfo(String id);

	void profileUpdate(Member member);

	List<Member> list();

}
