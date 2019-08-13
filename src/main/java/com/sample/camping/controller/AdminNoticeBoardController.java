package com.sample.camping.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sample.camping.service.AdminNoticeBoardService;
import com.sample.camping.vo.AdminPagination;
import com.sample.camping.vo.NoticeBoard;

@Controller
@RequestMapping("/admin")
public class AdminNoticeBoardController {
	
	@Autowired
	private AdminNoticeBoardService adminNoticeBoardService;
	
	@RequestMapping("/noticeList.camp")
	public String search(
			  @RequestParam (value="keyword", required = false, defaultValue = "") String keyword
			, @RequestParam (value = "pno", required = false, defaultValue = "1") int pno, Model model) {
		Map<String, Object> param = new HashMap<String, Object>();
		
		int begin = (pno - 1)*10 + 1;
		int end = pno*10;
		param.put("begin", begin);
		param.put("end", end);
		if (!keyword.isEmpty()) {
			param.put("keyword", keyword);
		}
		
		int records = adminNoticeBoardService.getNoticeCount(param);
		AdminPagination adminPagination = new AdminPagination(pno, 10, records);
		
		model.addAttribute("pagination",adminPagination);
		model.addAttribute("listCamp", adminNoticeBoardService.getNoticeAll(param));
		return "admin/notice/list";
	}
	
	
	@RequestMapping("/noticeAdd.camp")
	public String addNotice(int no, String title, String contents) {
		
		
		NoticeBoard noticeBoard = new NoticeBoard();
		noticeBoard.setNo(no);
		noticeBoard.setTitle(title);
		noticeBoard.setContents(contents);
		adminNoticeBoardService.addNotice(noticeBoard);
		
		return "admin/notice/list";
	}
		
			
	
	
}
