package com.sample.camping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.camping.service.AdminCampSiteService;
import com.sample.camping.vo.CampSite;

@Controller
@RequestMapping("/admin")
public class AdminCampSiteController {
	
	@Autowired
	private AdminCampSiteService adminCampSiteService;
	
	@RequestMapping("/add.camp")
	public String add(CampSite campSite) {
		adminCampSiteService.addCampSite(campSite);
		return "admin/campsite/list";
	}
	
	@RequestMapping("/detail.camp")
	public String detail() {
		return "admin/campsite/list";
	}
	
	@RequestMapping("/update.camp")
	public String update() {
		return "admin/campsite/list";
	}
	
	@RequestMapping("/list.camp")
	public String list() {
		return "admin/campsite/list";
	}
}