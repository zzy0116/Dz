package com.test.servic.servicImpl;

import java.util.List;

import com.test.dao.UserDao;
import com.test.dao.daoImpl.UserDaoImpl;
import com.test.model.User;
import com.test.servic.Userservice;

public class UserserviceImpl implements Userservice{

	@Override
	public void insertuserinfo(User user) {
		UserDao userdao =new UserDaoImpl();
		userdao.insertuserinfo(user);
	}

	@Override
	public List<User> checkUserInfo(String username, String password) {
		UserDao userdao = new UserDaoImpl();
		List<User> user = userdao.checkUserInfo(username, password);
		return user;
	}

	@Override
	public List<User> checkuserNameInfo(String userName) {
		
		UserDao userdao= new UserDaoImpl();
		List<User> users=userdao.checkuserNameInfo(userName);
		
		return users;
	}

	
	
}
