package net.prev.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.prev.www.model.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Reply item) {
		sql.insert("reply.add", item);
	}

	@Override
	public List<Reply> list() {
		return sql.selectList("reply.list");
	}

}
