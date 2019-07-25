package com.sample.camping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.camping.form.BoardForm;
import com.sample.camping.service.BoardService;
import com.sample.camping.service.CampSiteService;
import com.sample.camping.vo.Board;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.Criteria;

import oracle.net.aso.b;

@Controller
@RequestMapping("/community")
public class CommunityController {
	@Autowired
	private BoardService boardService;
	@Autowired
	private CampSiteService campsiteService;
	
	@RequestMapping("/home.camp")
	public String communityHome () {
		return "community/home";
	}
	
	@RequestMapping("/detail.camp")
	public String communityDetail () {
		return "community/detail";
	}
	
	@GetMapping("/write.camp")
	public String write () {
		return "community/write";
	}
	
	@PostMapping("/write.camp")
	public String addwrite (BoardForm boardForm) {
		
		if(boardForm.getMenu() == 1) {
			Board board = new Board();
			board.setTitle(boardForm.getTitle());
			board.setContents(boardForm.getContents());
			board.setUserId("user");
			boardService.addJoin(board);
			
			return "redirect:home.camp";
		} else if(boardForm.getMenu() == 2) {
			Board board = new Board();
			board.setTitle(boardForm.getTitle());
			board.setContents(boardForm.getContents());
			board.setUserId("user");
			boardService.addReview(board);
			
			return "redirect:home.camp";
		} else if(boardForm.getMenu() == 3) {
			Board board = new Board();
			board.setTitle(boardForm.getTitle());
			board.setContents(boardForm.getContents());
			board.setUserId("user");
			boardService.addOpinion(board);
			
			return "redirect:home.camp";
		} else if(boardForm.getMenu() == 4) {
			Board board = new Board();
			board.setTitle(boardForm.getTitle());
			board.setContents(boardForm.getContents());
			board.setUserId("user");
			boardService.addFree(board);
			
			return "redirect:home.camp";
		}
		return "redirect:home.camp";
	}
	
	@GetMapping("/search.camp")
	public @ResponseBody List<CampSite> search(@RequestParam String keyword) {
		Criteria criteria = new Criteria();
		criteria.setKeyword(keyword);
		
		return campsiteService.selectCampsite(criteria);
	}
	
}
