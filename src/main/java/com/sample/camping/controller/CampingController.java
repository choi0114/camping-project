package com.sample.camping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CampingController {

	@RequestMapping("/detail.camp")
	public String detail() {
		return "camping/detail";
	}
	
	public String test() {
		System.out.println("git test 입니다.");
		return "test";
	}
}
