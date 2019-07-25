package com.sample.camping.controller;

import java.io.File;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sample.camping.exception.AlreadyUsedIdException;
import com.sample.camping.exception.LoginFailureException;
import com.sample.camping.form.Userform;
import com.sample.camping.service.UserService;
import com.sample.camping.vo.User;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	@ExceptionHandler(AlreadyUsedIdException.class) // 실행하다가 예외가 발생하면 실행
	public String alreadyUsedIdExceptionHandler(AlreadyUsedIdException ex) {
		return "error/user/registerfail";
	}
	
	@RequestMapping("/form.camp")
	public String home() {
		return "login/form";
	}
	
	@RequestMapping("/register.camp")
	public String register(User user) {
		userService.registerUser(user);
		return "login/completed";
	}
	
}