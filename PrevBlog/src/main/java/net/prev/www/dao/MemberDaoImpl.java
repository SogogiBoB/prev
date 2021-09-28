package net.prev.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.prev.www.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public Member item(String id) {
		return sql.selectOne("member.item", id);
	}

	@Override
	public void add(Member item) {
		sql.insert("member.add", item);
	}

	@Override
	public int checkId(String id) {
		return sql.selectOne("member.checkId", id);
	}

	@Override
	public Member profileInfo(String id) {
		return sql.selectOne("member.profileInfo", id);
	}

	@Override
	public void profileUpdate(Member member) {
		sql.update("member.profileUpdate", member);
	}

	@Override
	public List<Member> list() {
		return sql.selectList("member.list");
	}
}
