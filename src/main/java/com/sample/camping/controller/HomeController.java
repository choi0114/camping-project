package com.sample.camping.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.camping.service.CampsitesService;
import com.sample.camping.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService homeService;

	@RequestMapping("/home.camp")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping("/search.camp")
	public @ResponseBody Map<String, Object> searchCount(@RequestParam("keyword") String keyword) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("count", homeService.getCountByKeyword(keyword));
		map.put("items", homeService.getCampSitesByKeyword(keyword));
		
		return map;
	}
	
	
}
