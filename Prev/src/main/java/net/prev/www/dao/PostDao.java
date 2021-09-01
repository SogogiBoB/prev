package net.prev.www.dao;

import java.util.List;

import net.prev.www.model.Post;

public interface PostDao {

	List<Post> list(String id);

	void add(Post item);

	void postAdd(Post item);

	Post postsItem(int pid);

	void postsUpdate(Post item);

}
