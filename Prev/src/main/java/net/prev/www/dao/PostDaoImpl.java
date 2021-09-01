package net.prev.www.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.prev.www.model.Post;

@Repository
public class PostDaoImpl implements PostDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Post> list(String id) {
		return sql.selectList("post.list", id);
	}

	@Override
	public void add(Post item) {
		sql.insert("post.add", item);
	}

	@Override
	public void postAdd(Post item) {
		sql.insert("post.postsAdd", item);
	}

	@Override
	public Post postsItem(int pid) {
		return sql.selectOne("post.postsItem", pid);
	}

	@Override
	public void postsUpdate(Post item) {
		sql.update("post.postsUpdate", item);
	}
}
