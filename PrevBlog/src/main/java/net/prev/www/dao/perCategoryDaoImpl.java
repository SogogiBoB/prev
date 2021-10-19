package net.prev.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.prev.www.model.perCategory;

@Repository
public class perCategoryDaoImpl implements perCategoryDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<perCategory> list(String id) {
		return sql.selectList("pCategory.categoryList", id);
	}

	@Override
	public void add(perCategory item) {
		sql.insert("pCategory.add", item);
	}

	@Override
	public perCategory item(int pcid) {
		return sql.selectOne("pCategory.item", pcid);
	}

	@Override
	public void categorysUpdate(perCategory item) {
		sql.update("pCategory.update", item);
	}

	@Override
	public void delete(int pcid) {
		sql.delete("pCategory.delete", pcid);
	}

}
