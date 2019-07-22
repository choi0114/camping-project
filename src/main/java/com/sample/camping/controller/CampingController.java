package com.sample.camping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CampingController {

	@RequestMapping("/detail.camp")
	public String detail() {
		return "camping/detail";
	}
}
