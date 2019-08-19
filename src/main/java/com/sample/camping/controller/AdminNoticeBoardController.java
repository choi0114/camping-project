package com.sample.camping.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.camping.service.AdminNoticeBoardService;
import com.sample.camping.service.NoticeService;
import com.sample.camping.vo.AdminPagination;
import com.sample.camping.vo.NoticeBoard;

@Controller
@RequestMapping("/admin")
public class AdminNoticeBoardController {
	
	@Autowired
	private AdminNoticeBoardService adminNoticeBoardService;
	
	@Autowired
	private NoticeService noticeService;
	
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
		model.addAttribute("notices", adminNoticeBoardService.getNoticeAll(param));
		return "admin/notice/list";
	}
	
	
	@PostMapping("/addnotice.camp")
	public String addNotice(String title, String contents) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("title", title);
		map.put("contents", contents);
		
		System.out.println("title : " + title + ", contents : " + contents);
		adminNoticeBoardService.addNotice(map);
		
		return "redirect:noticeList.camp?sort=Notice";
	}
		
	@RequestMapping("/deleteNotice.camp")
	public @ResponseBody List<NoticeBoard> removeNotice(int no) {
		adminNoticeBoardService.deleteNoticeByNo(no);
		
		return noticeService.getAllNotices();
	}
	
	@RequestMapping("/noticeform.camp")
	public String noticeform() {
		return "admin/notice/form";
	}
	
	@RequestMapping("/modifyform.camp")
	public String modifyform(int no, Model model) {
		model.addAttribute("notice", noticeService.getNoticeByNo(no));
		
		return "admin/notice/update";
	}
	
	@RequestMapping("/updatenotice.camp")
	public String updatenotice(int no, String title, String contents) {
		NoticeBoard notice = noticeService.getNoticeByNo(no);
		notice.setTitle(title);
		notice.setContents(contents);
		
		adminNoticeBoardService.updateNoticeByNo(notice);
		
		return "redirect:noticeList.camp?sort=Notice";
	}
	
	
}
