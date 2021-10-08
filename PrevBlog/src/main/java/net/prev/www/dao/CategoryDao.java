package net.prev.www.dao;

import java.util.List;

import net.prev.www.model.Category;

public interface CategoryDao {

	List<Category> list();

	void add(Category item);

	List<Category> ajaxList();

	List<Category> clist(String id);

	List<Category> adminCategorys();

	void adminCategorysDelete(int cid);

	void adminCategoryUpdate(Category item);

	void adminCategoryAdd(Category item);

	

	
}
