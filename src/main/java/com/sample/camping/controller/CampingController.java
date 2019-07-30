package com.sample.camping.controller;

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
	
	@RequestMapping(value="/xml.camp")
	public ModelAndView getXML(String x, String y) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("path", "http://www.kma.go.kr/wid/queryDFS.jsp?gridx="+x+"&gridy="+y);
		mav.setView(new WeatherXMLView());
		
		return mav;
	}
}
