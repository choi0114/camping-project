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

import com.sample.camping.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/notice.camp")
	public String notice(Model model) {
		model.addAttribute("notices", noticeService.getAllNotices());
		return "notice/notice";
	}
	
	@RequestMapping("/noticedetail.camp")
	public String noticeDetail(int no, Model model) {
		int count = noticeService.getAllNoticeCommentsByNo(no).size();
		model.addAttribute("notice", noticeService.getNoticeByNo(no));
		model.addAttribute("comments", noticeService.getAllNoticeCommentsByNo(no));
		model.addAttribute("count", count);
		
		return "notice/detail";
	}
	
	@RequestMapping("/addcomment.camp")
	public @ResponseBody Map<String, Object> addComment(String id, int no, String contents) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("no", no);
		map.put("contents", contents);
		
		noticeService.insertComment(map);
		
		int count = noticeService.getAllNoticeCommentsByNo(no).size();
		Map<String, Object> newmap = new HashMap<String, Object>();
		newmap.put("comments", noticeService.getAllNoticeCommentsByNo(no));
		newmap.put("count", count);
		
		return newmap;
	}
}
