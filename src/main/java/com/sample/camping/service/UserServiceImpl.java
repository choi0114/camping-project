package com.sample.camping.service;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.AdminUserDao;
import com.sample.camping.exception.AlreadyUsedIdException;
import com.sample.camping.exception.LoginFailureException;
import com.sample.camping.vo.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private AdminUserDao userDao;

	@Override
	public void registerUser(User user) {
		if (userDao.getUserById(user.getId()) != null) {
			throw new AlreadyUsedIdException("["+user.getId()+")는 이미 사용중인 아이디입니다.");
			// 예외발생
		}

		String md5Password = DigestUtils.md5Hex(user.getPassword());
		user.setPassword(md5Password);
		userDao.addUser(user);
	}

	@Override
	public User login(String id, String password) {
		User user = userDao.getUserById(id);
		if (user == null) {
			throw new LoginFailureException("아이디 혹은 비밀번호가 올바르지 않습니다.");
		}
		String md5Password = DigestUtils.md5Hex(password);
		if (!md5Password.equals(user.getPassword())) {
			throw new LoginFailureException("아이디 혹은 비밀번호가 올바르지 않습니다.");
		}
		return user;	
	}
	
	@Override
	public List<User> getUserByName(String name) {
		return userDao.getUserByName(name);
	}
}
