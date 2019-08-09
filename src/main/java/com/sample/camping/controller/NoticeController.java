package com.sample.camping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@RequestMapping("/notice.camp")
	public String notice() {
		return "notice/notice";
	}
	
	@RequestMapping("/noticedetail.camp")
	public String noticeDetail() {
		return "notice/detail";
	}
}
