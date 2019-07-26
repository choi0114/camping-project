package com.sample.camping.admin.dao;

import java.util.List;

import com.sample.camping.vo.User;

public interface Admin_UserDao {

	void addUser(User user);
	User getUserById(String userId);
	List<User> getUserByName(String userName);
}
