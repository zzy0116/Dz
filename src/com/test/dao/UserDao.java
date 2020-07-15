package com.test.dao;

import java.util.List;

import com.test.model.User;

public interface UserDao {
	

	void insertuserinfo(User user);
	List<User> checkUserInfo(String username ,String password);
	
	List<User> checkuserNameInfo(String userName);
}
