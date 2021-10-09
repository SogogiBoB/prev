package net.prev.www.dao;

import java.util.List;

import net.prev.www.model.Post;
import net.prev.www.util.Pager;

public interface PostDao {

	List<Post> list(String id);

	void add(Post item);

	void postAdd(Post item);

	Post postsItem(int pid);

	void postsUpdate(Post item);

	List<Post> utdList();

	void plusCount(Post item);

	Post searchCount(int pid);

	Post updateItem(int pid);

	List<Post> allList(Pager pager);

	List<Post> EList(Pager pager);

	List<Post> utdList(String id);

	void delete(Post item);

	int total(Pager pager);

	List<Post> postList();

	void adminPostsDelete(int pid);

	List<Post> adminPostList();

	void adminPostsUpdate(Post item);

}
