package net.prev.www.service;

import java.util.List;

import net.prev.www.model.Category;

public interface CategoryService {

	List<Category> list();

	void add(Category item);
}
