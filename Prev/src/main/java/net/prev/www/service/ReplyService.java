package net.prev.www.service;

import java.util.List;

import net.prev.www.model.Reply;

public interface ReplyService {

	void add(Reply item);

	List<Reply> list();

	void delete(int rid);

}
