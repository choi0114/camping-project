package com.sample.camping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.camping.service.CampsitesService;
import com.sample.camping.service.HomeService;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.Pagination;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService homeService;

	@RequestMapping("/home.camp")
	public String home(Model model) {
		
		Map<String, Object> map = homeService.getCounts();
		
		model.addAttribute("total", map.get("TOTAL"));
		model.addAttribute("car", map.get("CAR"));
		model.addAttribute("normal", map.get("NORMAL"));
		model.addAttribute("camp", map.get("CAMP"));
		
		model.addAttribute("items", homeService.getCampSitesByUpdate());
		model.addAttribute("reviews", homeService.getAllReviewBoard());
		
		return "home";
	}
	
	@RequestMapping("/search.camp")
	public @ResponseBody Map<String, Object> searchCount(@RequestParam(value="gubun", required=false, defaultValue="") String gubun,
														@RequestParam(value="city", required=false, defaultValue="") String city,
														@RequestParam(value="keyword", required=false, defaultValue="") String keyword,
														@RequestParam(value="size", required=false, defaultValue="100") int size,
														@RequestParam(value="pno", required=false, defaultValue="1" ) int pno) {

		int begin = (pno-1) * size + 1;
		int end = pno * size;
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("city", city);
		param.put("gubun", gubun);
		param.put("begin", begin);
		param.put("end", end);
		if (!keyword.isEmpty()) {
			param.put("keyword", keyword);
		}
		
		int records = homeService.getCountByKeyword(param);
		Pagination pagination = new Pagination(pno, size, records);
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		result.put("count", records);
		result.put("pagination", pagination);
		result.put("items", homeService.searchCampSites(param));
		result.put("gugun", homeService.getGugunBysido(city));
		
		return result;
	}
	
	/*
	 * @RequestMapping("/update.camp") public @ResponseBody Map<String, Object>
	 * updateList() {
	 * 
	 * Map<String, Object> result = new HashMap<String, Object>();
	 * result.put("items", homeService.getCampSitesByUpdate());
	 * 
	 * return result; }
	 */
	
	
}
