package net.prev.www.dao;

import java.util.List;

import net.prev.www.model.perCategory;

public interface perCategoryDao {

	List<perCategory> list(String id);

	void add(perCategory item);

	perCategory item(int pcid);

	void categorysUpdate(perCategory item);

	void delete(int pcid);

}
