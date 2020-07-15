package com.test.dao.daoImpl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.example.utils.DruidUtils;
import com.test.dao.UserDao;

import com.test.model.User;
import com.test.servic.Userservice;

public class UserDaoImpl implements UserDao{

	@Override
	public void insertuserinfo(User user) {
		// TODO Auto-generated method stub
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
        jdbcTemplate.update("insert into loginfo (name,password,email)values(?,?,?)", user.getName(), user.getPassword(), user.getEmail());
	}

	@Override
	public List<User> checkUserInfo(String username, String password) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
		List<User> user =jdbcTemplate.query("SELECT u.`userId`,u.`name`,u.`password`,u.`email`,u.`time`,u.`img` FROM `user` u WHERE u.`name`= ? AND u.`password` =?"
		        ,new Object[]{username,password},new BeanPropertyRowMapper<>(User.class));
		return user;	
	}

	@Override
	public List<User> checkuserNameInfo(String userName) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
		List<User> users=jdbcTemplate.query("SELECT u.`userId`,u.`name`,u.`password`,u.`email`,u.`time`,u.`img` FROM `user` u WHERE u.`name`= ?"
				,new Object[] {userName},new BeanPropertyRowMapper<>(User.class));
		return users;
	}
}
