package net.prev.www.service;

import java.util.List;

import net.prev.www.model.Member;

public interface MemberService {

	Member item(String id);

	void add(Member item);

	boolean checkId(String id);

	Member profileInfo(String id);

	void profileUpdate(Member member);

	List<Member> list();

	List<Member> adminmembers();

	void adminMembersDelete(String id);

	Member adminMembersItem(String id);

	void adminMemberUpdate(Member item);


}
