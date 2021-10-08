package net.prev.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.prev.www.dao.CategoryDao;
import net.prev.www.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDao dao;
	
	@Override
	public List<Category> list() {
		return dao.list();
	}

	@Override
	public void add(Category item) {
		dao.add(item);
	}

	@Override
	public List<Category> ajaxList() {
		return dao.ajaxList();
	}

	@Override
	public List<Category> clist(String id) {
		return dao.clist(id);
	}

	@Override
	public List<Category> adminCategorys() {
		return dao.adminCategorys();
	}

	@Override
	public void adminCategorysDelete(int cid) {
		dao.adminCategorysDelete(cid);
	}

	@Override
	public void adminCategoryUpdate(Category item) {
		dao.adminCategoryUpdate(item);
	}

	@Override
	public void adminCategoryAdd(Category item) {
		dao.adminCategoryAdd(item);
	}

	

}
