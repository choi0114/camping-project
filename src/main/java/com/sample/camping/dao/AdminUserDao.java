package com.sample.camping.dao;

import java.util.List;

import com.sample.camping.vo.User;

public interface AdminUserDao {

	void addUser(User user);
	User getUserById(String userId);
	List<User> getUserByName(String userName);
}
