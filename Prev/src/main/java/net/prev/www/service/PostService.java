package net.prev.www.service;

import java.util.List;

import net.prev.www.model.Post;

public interface PostService {

	List<Post> list(String id);

	void add(Post item);

	void postAdd(Post item);

	Post postsItem(int pid);

	void postsUpdate(Post item);

	List<Post> utdList();

	Post updateItem(int pid);

}
