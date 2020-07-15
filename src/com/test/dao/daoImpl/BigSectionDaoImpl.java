package com.test.dao.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.example.utils.DruidUtils;
import com.test.dao.BigSectionDao;
import com.test.model.BigSection;

public class BigSectionDaoImpl implements BigSectionDao{

	@Override
	public List<BigSection> findBS() {
		 
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
		List<BigSection> bigsections =jdbcTemplate.query("select * from bigsection ",new BeanPropertyRowMapper<>(BigSection.class));
		return bigsections;
	}
	
	
}
