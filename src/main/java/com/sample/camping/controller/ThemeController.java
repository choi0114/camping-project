package com.sample.camping.controller;

import java.util.ArrayList;
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
import com.sample.camping.service.ThemeService;
import com.sample.camping.vo.CampSite;

@Controller
public class ThemeController {
	
	@Autowired
	private ThemeService themeService;
	
	@Autowired
	private CampsitesService campsiteService;
	
	@RequestMapping("/themesearch.camp")
	public String themesearch(Model model) {
		model.addAttribute("natureThemes", themeService.getThemesByCategory("NATURE"));
		model.addAttribute("funThemes", themeService.getThemesByCategory("ACTIVITY"));
		model.addAttribute("convenientThemes", themeService.getThemesByCategory("FACILITY"));
		
		return "theme/theme";
	}
	
	@RequestMapping("/themelist.camp")
	public String themelist(@RequestParam(value = "cp", required = false, defaultValue = "1") int cp, String themes, Model model) {
		String[] themeNumbers = themes.split(",");
		List<String> themeNos = new ArrayList<String>();
		for(int i=0; i<themeNumbers.length; i++) {
			themeNos.add(themeNumbers[i]);
		}
		
		int startNo = 10 * (cp-1) + 1;
		int endNo = 10 * cp;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("themeNos", themeNos);
		map.put("startNo", startNo);
		map.put("endNo", endNo);
		
		List<CampSite> campsites = campsiteService.getCampSiteByTheme(map);
		List<CampSite> campsitesRange = campsiteService.get10CampSites(map);
		
		model.addAttribute("campsites", campsitesRange);
		model.addAttribute("campCounts", campsites.size());
		model.addAttribute("themes", themes);
		
		return "theme/themelist";
	}
	
	@RequestMapping("/themelistjson.camp")
	public @ResponseBody List<CampSite> themelistJSON(String themes) {
		String[] themeNumbers = themes.split(",");
		List<String> themeNos = new ArrayList<String>();
		for(int i=0; i<themeNumbers.length; i++) {
			themeNos.add(themeNumbers[i]);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("themeNos", themeNos);
		
		return campsiteService.getCampSiteByTheme(map);
	}
	
	@RequestMapping("/themelistjson10range.camp")
	public @ResponseBody List<CampSite> themelistJSON10Range(String themes, int cp) {
		int startNo = 10 * (cp-1) + 1;
		int endNo = 10 * cp;
		System.out.println("startNo : " + startNo);
		System.out.println("endNo : " + endNo);
		
		String[] themeNumbers = themes.split(",");
		List<String> themeNos = new ArrayList<String>();
		for(int i=0; i<themeNumbers.length; i++) {
			themeNos.add(themeNumbers[i]);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNo", startNo);
		map.put("endNo", endNo);
		map.put("themeNos", themeNos);
		
		return campsiteService.get10CampSites(map);
	}
}
