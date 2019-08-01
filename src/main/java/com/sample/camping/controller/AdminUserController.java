package com.sample.camping.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.camping.exception.AlreadyUsedIdException;
import com.sample.camping.exception.LoginFailureException;
import com.sample.camping.service.UserService;
import com.sample.camping.vo.User;

@Controller
public class AdminUserController {
	
	@Autowired
	private UserService userService;

	@ExceptionHandler(AlreadyUsedIdException.class) // 실행하다가 예외가 발생하면 실행
	public String alreadyUsedIdExceptionHandler(AlreadyUsedIdException ex) {
		ex.printStackTrace();
		return "error/user/registerfail";
	}
	
	@ExceptionHandler(LoginFailureException.class) // 로그인 실패시 발생하는 예외
	public String LoginFailureExceptionHandler(LoginFailureException ex) {
		ex.printStackTrace();
		return "error/user/loginfail";
	}
	
	@RequestMapping("/form.camp")
	public String home() {
		return "login/form";
	}
	
	@RequestMapping("/register.camp") 
	public String register(User user) {
		userService.registerUser(user);
		return "login/form";
	}
	
	@RequestMapping("/login.camp")
	public String login(String id, String password,
			HttpSession session) {
		
		User user = userService.login(id, password);

		session.setAttribute("LOGIN_USER", user);
		return "home";
	}
	
}