package com.test.servic.servicImpl;

import java.util.List;

import com.test.dao.BigSectionDao;
import com.test.dao.daoImpl.BigSectionDaoImpl;
import com.test.model.BigSection;
import com.test.servic.BigSectionService;

public class BigSectionServiceImpl implements BigSectionService{

	@Override
	public List<BigSection> findBS() {
		BigSectionDao bigsectiondao = new BigSectionDaoImpl();
		List<BigSection> bigsections = bigsectiondao.findBS();
		return bigsections;
	}
}
