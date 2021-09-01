package net.prev.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.prev.www.dao.perCategoryDao;
import net.prev.www.model.perCategory;

@Service
public class perCategoryServiceImpl implements perCategoryService {

	@Autowired
	perCategoryDao pdao;
	
	@Override
	public List<perCategory> list(String id) {
		return pdao.list(id);
	}

	@Override
	public void add(perCategory item) {
		pdao.add(item);
	}

	@Override
	public perCategory item(int pcid) {
		return pdao.item(pcid);
	}

	@Override
	public void categorysUpdate(perCategory item) {
		pdao.categorysUpdate(item);
	}

}
