package net.prev.www.service;

import net.prev.www.model.Member;

public interface MemberService {

	Member item(String id);

	void add(Member item);

	boolean checkId(String id);

}
