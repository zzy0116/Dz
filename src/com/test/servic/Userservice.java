package com.test.servic;

import java.util.List;

import com.test.model.User;

public interface Userservice {
	void insertuserinfo( User user);
	List<User> checkUserInfo(String username ,String password);
	
	List<User> checkuserNameInfo(String userName);
}
