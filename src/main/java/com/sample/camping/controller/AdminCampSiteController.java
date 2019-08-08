package com.sample.camping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.sample.camping.service.AdminCampSiteService;
import com.sample.camping.vo.AdminPagination;

@Controller
@RequestMapping("/admin")
public class AdminCampSiteController {
	
	@Autowired
	private AdminCampSiteService adminCampSiteService;
	
	
	@RequestMapping("/detail.camp")
	public String detail() {
		return "admin/campsite/detail";
	}
	
	@RequestMapping("/update.camp")
	public String update() {
		return "admin/campsite/update";
	}
	

	@RequestMapping("/form.camp")
	public String form() {
		return "admin/campsite/form";
	}
	
	@RequestMapping("/list.camp")
	public String search(
			  @RequestParam (value="keyword", required = false, defaultValue = "") String keyword
			, @RequestParam (value = "pno", required = false, defaultValue = "1") int pno, Model model) {
		Map<String, Object> param = new HashMap<String, Object>();
		
		int begin = (pno - 1)*10 + 1;
		int end = pno*10;
		param.put("begin", begin);
		param.put("end", end);
		if (!keyword.isEmpty()) {
			param.put("keyword", keyword);
		}
		
		int records = adminCampSiteService.getCampingSitesCount(param);
		AdminPagination adminPagination = new AdminPagination(pno, 10, records);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("pagination",adminPagination);
		
		
		model.addAttribute("listCamp", adminCampSiteService.getCampingSitesAll(param));
		return "admin/campsite/list";
		
	}
	
}