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
import org.springframework.web.servlet.ModelAndView;

import com.sample.camping.dao.CampsiteDao;
import com.sample.camping.service.CampsitesService;
import com.sample.camping.service.ThemeService;
import com.sample.camping.view.WeatherXMLView;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.LikeHateCampsite;
import com.sample.camping.vo.OpinionBoard;
import com.sample.camping.vo.ReviewBoard;

@Controller
public class CampingController {

	@Autowired
	private CampsitesService campsiteService;
	
	@Autowired
	private ThemeService themeService;
	
	@RequestMapping("/detail.camp")
	public String detail(@RequestParam("no") int no, Model model) {
		model.addAttribute("campsite", campsiteService.getCampSiteByNo(no));
		model.addAttribute("themes", themeService.getThemesByCampSite(no));
		model.addAttribute("opinions", campsiteService.getOpinionByCSNo(no));
		
		return "camping/detail";
	}
	
	@RequestMapping("/opinions.camp")
	public @ResponseBody List<OpinionBoard> opinions(int no) {
		return campsiteService.getOpinionByCSNo(no);
	}
	
	@RequestMapping("/reviews.camp")
	public @ResponseBody List<ReviewBoard> reviews(int no) {
		return campsiteService.getReviewByCSNo(no);
	}
	
	@RequestMapping("/updatecs.camp")
	public @ResponseBody CampSite likes(int no, String sort, int value) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("no", no);
		map.put("sort", sort);
		map.put("value", value);
		
		campsiteService.updateCampsite(map);
		
		return campsiteService.getCampSiteByNo(no);
	}
	
	@RequestMapping("/alreadychecked.camp")
	public @ResponseBody LikeHateCampsite checkedLikeHate(String id, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("no", no);
		
		return campsiteService.alreadyChecked(map);
	}
	
	@RequestMapping("/getallcampsites.camp")
	public @ResponseBody List<CampSite> allCampsites(String gugun) {
		return campsiteService.getCampsitesByGugun(gugun);
	}
	
	@RequestMapping(value="/weatherxml.camp")
	public ModelAndView getWeatherXML(String x, String y) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("path", "http://www.kma.go.kr/wid/queryDFS.jsp?gridx="+x+"&gridy="+y);
		mav.setView(new WeatherXMLView());
		
		return mav;
	}
	
	@RequestMapping(value = "/measuringstationxml.camp")
	public ModelAndView getMeasuringStationXML(String serviceKey, String tmX, String tmY) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("path", "http://openapi.airkorea.or.kr/openapi/services/rest/MsrstnInfoInqireSvc/getNearbyMsrstnList?ServiceKey="
								  + serviceKey + "&tmX=" + tmX + "&tmY=" + tmY);
		mav.setView(new WeatherXMLView());
		
		return mav;
	}
	
	@RequestMapping(value = "/finedustinfoxml.camp")
	public ModelAndView getFineDustInfoXML(String serviceKey, String stationName) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("path","http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty"
								+ "?dataTerm=DAILY&ver=1.0&ServiceKey=" + serviceKey + "&stationName=" + stationName);
		mav.setView(new WeatherXMLView());
		
		return mav;
	}
	
	@RequestMapping(value = "/suntimexml.camp")
	public ModelAndView getSunTimeXML(String serviceKey, String latitude, String longitude, String locdate) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("path", "http://apis.data.go.kr/B090041/openapi/service/RiseSetInfoService/getLCRiseSetInfo"
								+ "?dnYn=Y&ServiceKey=" + serviceKey + "&latitude=" + latitude + "&longitude=" + longitude + "&locdate=" + locdate);
		
		mav.setView(new WeatherXMLView());
		
		return mav;
	}
	
	@RequestMapping("/resonestep.camp")
	public String resonestep() {
		return "camping/resonestep";
	}
	
	@RequestMapping("/restwostep.camp")
	public String restwostep() {
		return "camping/restwostep";
	}
}
