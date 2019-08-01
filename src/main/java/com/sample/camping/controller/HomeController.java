package com.sample.camping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/home.camp")
	public String home() {
		return "home";
	}
	
	
}
