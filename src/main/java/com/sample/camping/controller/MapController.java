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
import com.sample.camping.vo.CampSite;

@Controller
public class MapController {

	@Autowired
	private MapService mapService;
	
	@RequestMapping("/map.camp")
	public String map(Model model , @RequestParam(value = "city",required = false , defaultValue = "전국")String city, @RequestParam(value="status",required = false, defaultValue = "update") String status) {
		
		System.out.println(status);
		Map<String, Object> param = new HashMap<String, Object>();
		
		param.put("citys", city);
		param.put("states", status);
		
		
		model.addAttribute("campsites",mapService.getCampSites(param));
		model.addAttribute("campCounts",mapService.getCampSitesCount());
		
		// List<CampingSites> list = mapService.getCampSites(param);
		
		
		return "map/main";
	}
	
	
	
	@RequestMapping("/maplist.camp")
	@ResponseBody
	public List<CampSite> maplist(@RequestParam(value = "cp" , required = false, defaultValue = "1") int cp , @RequestParam(value = "city",required = false , defaultValue = "전국")String city
				,@RequestParam(value="status",required = false, defaultValue = "update")String status){		
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		Integer start = (cp-1)*10+1;
		Integer end = start+10-1;
		
		param.put("st",start);
		param.put("en", end);
		param.put("citys",city);
		param.put("states",status);
		
		
		return mapService.getCampSitesList(param);
			
	}
	
	@RequestMapping("/mapAllList.camp") // 맵 전부 가져오기 (mycampingNo 제외) 
	@ResponseBody
	public List<CampSite> allCampsit(){
		
		return mapService.getAllCampSites();
	}
} 
