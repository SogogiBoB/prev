package net.prev.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.prev.www.model.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Category> list() {
		return sql.selectList("category.list");
	}

	@Override
	public void add(Category item) {
		sql.insert("category.add", item);
	}

	@Override
	public List<Category> ajaxList() {
		return sql.selectList("category.ajaxList");
	}

	@Override
	public List<Category> clist(String id) {
		return sql.selectList("category.clist", id);
	}

	@Override
	public List<Category> adminCategorys() {
		return sql.selectList("category.adminCategorys");
	}

	@Override
	public void adminCategorysDelete(int cid) {
		sql.delete("category.adminCategorysDelete", cid);
	}

	@Override
	public void adminCategoryUpdate(Category item) {
		sql.update("category.adminCategoryUpdate", item);
	}

	@Override
	public void adminCategoryAdd(Category item) {
		sql.insert("category.adminCategoryAdd", item);
	}

	
}
