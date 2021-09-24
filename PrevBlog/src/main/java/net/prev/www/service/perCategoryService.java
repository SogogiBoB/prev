package net.prev.www.service;

import java.util.List;

import net.prev.www.model.perCategory;

public interface perCategoryService {

	List<perCategory> list(String id);

	void add(perCategory item);

	perCategory item(int pcid);

	void categorysUpdate(perCategory item);
	
}
