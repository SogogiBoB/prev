package net.prev.www.service;

import java.util.List;

import net.prev.www.model.Post;
import net.prev.www.util.Pager;

public interface PostService {

	List<Post> list(String id);

	void add(Post item);

	void postAdd(Post item);

	Post postsItem(int pid);

	void postsUpdate(Post item);

	List<Post> utdList();

	Post updateItem(int pid);

	List<Post> allList(Pager pager);

	List<Post> EList(Pager pager);

	List<Post> utdList(String id);

	void delete(Post item);
}