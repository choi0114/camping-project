package com.sample.camping.service;

import java.util.List;

import com.sample.camping.vo.User;

public interface UserService {

	void registerUser(User user);
	User login(String id, String password);
	List<User> getUserByName(String name);
}
