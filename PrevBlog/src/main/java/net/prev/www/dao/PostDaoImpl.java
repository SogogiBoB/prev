package net.prev.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.prev.www.model.Post;
import net.prev.www.util.Pager;

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

	@Override
	public List<Post> utdList() {
		return sql.selectList("post.utdList");
	}

	@Override
	public void plusCount(Post item) {
		sql.update("post.plusCount", item);
	}

	@Override
	public Post searchCount(int pid) {
		return sql.selectOne("post.searchCount", pid);
	}

	@Override
	public Post updateItem(int pid) {
		return sql.selectOne("post.updateItem", pid);
	}

	@Override
	public List<Post> allList(Pager pager) {
		return sql.selectList("post.allList", pager);
	}

	@Override
	public List<Post> EList(Pager pager) {
		
		return sql.selectList("post.EList", pager);
	}

	@Override
	public List<Post> utdList(String id) {
		return sql.selectList("post.utdList",id);
	}

	@Override
	public void delete(Post item) {
		sql.delete("post.delete", item);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("post.total",pager);
	}

	@Override
	public List<Post> postList() {
		return sql.selectList("post.postList");
	}

	@Override
	public void adminPostsDelete(int pid) {
		sql.delete("post.adminPostsDelete", pid);
	}

	@Override
	public List<Post> adminPostList() {
		return sql.selectList("post.adminPostList");
	}

	@Override
	public void adminPostsUpdate(Post item) {
		sql.update("post.adminPostsUpdate", item);
	}

	
}
