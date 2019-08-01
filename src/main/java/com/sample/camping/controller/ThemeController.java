package com.sample.camping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/theme")
public class ThemeController {
	
	@RequestMapping("/home.camp")
	public String theme() {
		return "/theme/theme";
	}
}
