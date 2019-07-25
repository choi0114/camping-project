package com.sample.camping.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.Map;

import com.sample.camping.service.MapService;
import com.sample.camping.vo.CampingSites;

@Controller
public class MapController {

	@Autowired
	private MapService mapService;
	
	@RequestMapping("/map.camp")
	public String Map(Model model , @RequestParam(value = "city",required = false , defaultValue = "전국")String city) {
		
		model.addAttribute("campsites",mapService.getCampSites(city));
		model.addAttribute("campCounts",mapService.getCampSitesCount());
		
		return "map/main";
	}
	
	
	@RequestMapping("/maplist.camp")
	@ResponseBody
	public List<CampingSites> maplist(@RequestParam("cp") int cp , @RequestParam(value = "city",required = false , defaultValue = "전국")String city ){		
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		Integer start = (cp-1)*10+1;
		Integer end = start+10-1;
		
		param.put("st",start);
		param.put("en", end);
		param.put("citys",city);
		System.out.println(city);
		
	
		
		return mapService.getCampSitesList(param);
					
	}
} 
