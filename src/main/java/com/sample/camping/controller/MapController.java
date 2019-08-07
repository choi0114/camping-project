package com.sample.camping.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

import com.sample.camping.service.MapService;
import com.sample.camping.view.WeatherXMLView;
import com.sample.camping.vo.CampSite;

@Controller
public class MapController {

	@Autowired
	private MapService mapService;

	@RequestMapping("/more.camp")
	@ResponseBody
	public List<CampSite> MoreCampNameAndAdress(@RequestParam("result")String keyword , @RequestParam("page")Integer pagNo){
		
		Map<String, Object> param = new HashMap<String, Object>();

		
		Integer start = (pagNo-1)*10+1;
		Integer end = start+10-1;

		
		param.put("result", keyword);
		param.put("start", start);
		param.put("end", end);
		
		return mapService.getMoreCampNameAndAdress(param);
	}
	@RequestMapping("/nameAndAddress.camp")
	@ResponseBody
	public List<CampSite> nameAndAdress(@RequestParam("result") String nameAndAddress) {
		
		List<CampSite> resutl = mapService.getCampNameAndAdress(nameAndAddress);		
		
		return resutl;
	}
	
	@RequestMapping("/map.camp")
	public String map(Model model , @RequestParam(value = "keyword",required = false, defaultValue = "없음")String name, @RequestParam(value = "city",required = false , defaultValue = "전국")String city, @RequestParam(value="status",required = false, defaultValue = "update") String status,
					@RequestParam(value = "sort",required = false, defaultValue = "없음")String sort) {
		System.out.println(sort);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("citys", city);
		param.put("states", status);
		param.put("name",name);
		param.put("sort", sort);
		
			model.addAttribute("campsites",mapService.getCampSites(param));
			model.addAttribute("campCounts",mapService.getCampSitesCount(param));
			
		return "map/main";
	}
	
	
	
	@RequestMapping("/maplist.camp")
	@ResponseBody
	public List<CampSite> maplist(@RequestParam(value = "cp" , required = false, defaultValue = "1") int cp , @RequestParam(value = "city",required = false , defaultValue = "전국")String city
				,@RequestParam(value="status",required = false, defaultValue = "update")String status,
				@RequestParam(value = "keyword", required = false, defaultValue = "없음")String name,
				@RequestParam(value="sort", required = false, defaultValue = "없음")String sort){		
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		Integer start = (cp-1)*10+1;
		Integer end = start+10-1;
		
		param.put("st",start);
		param.put("en", end);
		param.put("citys",city);
		param.put("states",status);
		param.put("name",name);
		param.put("sort",sort);
		
		
		return mapService.getCampSitesList(param);
			
	}
	
	@RequestMapping("/mapAllList.camp") // 맵 전부 가져오기 (mycampingNo 제외) 
	@ResponseBody
	public List<CampSite> allCampsit(@RequestParam(value = "sort",required = false,defaultValue = "없음")String sort){
		
		return mapService.getAllCampSites(sort);
	}
	
	@RequestMapping("/mapLatLng.camp")
	@ResponseBody
	public CampSite mapLatLng(Double lat , Double lng) {
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		param.put("lat",lat);
		param.put("lng",lng);
		
		return mapService.getLatLngCamp(param);
	}
	
	
	@RequestMapping("/mapWeather.camp")
	public ModelAndView mapWeather(String x , String y) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("path", "http://www.kma.go.kr/wid/queryDFS.jsp?gridx="+x+"&gridy="+y);
		mav.setView(new WeatherXMLView());
		return mav;
	}
	
}