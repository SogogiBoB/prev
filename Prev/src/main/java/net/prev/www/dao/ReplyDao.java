package net.prev.www.dao;

import java.util.List;

import net.prev.www.model.Reply;

public interface ReplyDao {

	void add(Reply item);

	List<Reply> list(int pid);

	void delete(int rid);

	void update(Reply item);

}
