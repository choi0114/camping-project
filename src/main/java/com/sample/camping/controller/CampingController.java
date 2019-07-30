package com.sample.camping.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sample.camping.view.WeatherXMLView;

@Controller
public class CampingController {

	@RequestMapping("/detail.camp")
	public String detail() {
		return "camping/detail";
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
}
