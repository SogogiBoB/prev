package net.prev.www.dao;

import java.util.List;

import net.prev.www.model.Category;

public interface CategoryDao {

	List<Category> list();

	void add(Category item);

}
