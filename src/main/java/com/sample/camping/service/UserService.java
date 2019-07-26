package com.sample.camping.service;

import java.util.List;

import com.sample.camping.vo.User;

public interface UserService {

	List<User> getUserByName(String name);
	User login(String id, String password);
	void registerUser(User user);
}