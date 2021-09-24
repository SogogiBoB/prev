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
	public List<Reply> list(int pid) {
		return sql.selectList("reply.list", pid);
	}

	@Override
	public void delete(int rid) {
		sql.delete("reply.delete", rid);
	}

	@Override
	public void update(Reply item) {
		sql.update("reply.update", item);
	}

}
