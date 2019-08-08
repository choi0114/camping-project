package com.sample.camping.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.camping.service.MypageService;
import com.sample.camping.vo.LikeCampsite;
import com.sample.camping.vo.MyCampsite;
import com.sample.camping.vo.User;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private MypageService myPageService;
	
	@RequestMapping("/mypage.camp")
	public String mypage(HttpSession session, Model model) {

		User user = (User) session.getAttribute("LOGIN_USER");
		model.addAttribute("LOGIN_USER", user);
		
		model.addAttribute("count" ,myPageService.getAllCommentCount(user.getId()));
		
		Map<String, Object> boardMap = myPageService.getBoards(user.getId());
		model.addAttribute("boardMap", boardMap);
		
		Map<String, Object> commentMap = myPageService.getComments(user.getId());
		model.addAttribute("commentMap", commentMap);
		
		List<LikeCampsite> likeCamp = myPageService.getLikeCampsiteById(user.getId());		
		model.addAttribute("likeCamp", likeCamp);
		
		return "mypage/mypage";
	}
	
	@RequestMapping("/comment.camp")
	public String comment(HttpSession session, Model model) {
		
		User user = (User) session.getAttribute("LOGIN_USER");
		
		Map<String, Object> commentMap = myPageService.getComments(user.getId());
		model.addAttribute("commentMap", commentMap);
		
		return "mypage/comment";
	}
	
	@RequestMapping("/post.camp")
	public String post(Model model, HttpSession session) {
		
		User user = (User) session.getAttribute("LOGIN_USER");
		
		Map<String, Object> boardMap = myPageService.getBoards(user.getId());
		model.addAttribute("boardMap", boardMap);
		
		return "mypage/post";
	}
	
	@RequestMapping("/clip.camp")
	public String clip(Model model, HttpSession session) {
		
		User user = (User) session.getAttribute("LOGIN_USER");
		
		List<LikeCampsite> likeCamp = myPageService.getLikeCampsiteById(user.getId());				
		model.addAttribute("likeCamp", likeCamp);
		
		return "mypage/clip";
	}
	
	@RequestMapping("/addCamp.camp")
	public String tent(Model model, HttpSession session) {
		
		User user = (User) session.getAttribute("LOGIN_USER");
		
		List<MyCampsite> addCamp = myPageService.getMyAddCampById(user.getId());
		model.addAttribute("addCamp", addCamp);
		
		return "mypage/addCamp";
	}
	
	@RequestMapping("/conquest.camp")
	public String conquest() {
		
		return "mypage/conquest";
	}
	
	@RequestMapping("/oneline.camp")
	public String oneline() {
		
		return "mypage/oneline";
	}
	
	@RequestMapping("/scrap.camp")
	public String scrap() {
		
		return "mypage/scrap";
	}

	@RequestMapping("/mail.camp")
	public String mail() {
		
		return "mypage/mail";
	}

	@RequestMapping("/friend.camp")
	public String friend() {
		
		return "mypage/friend";
	}

	@RequestMapping("/info.camp")
	public String info() {
		
		return "mypage/info";
	}

	@RequestMapping("/pw.camp")
	public String pw() {
		
		return "mypage/pw";
	}

	@RequestMapping("/out.camp")
	public String out() {
		
		return "mypage/out";
	}
	
	@RequestMapping("/outuser.camp")
	public String outuser(String pw1, String pw2, HttpSession session) {
		
		User user = (User) session.getAttribute("LOGIN_USER");
		
		String md5pw1 = DigestUtils.md5Hex(pw1);
		if(!user.getPassword().equals(md5pw1)) {
			return "redirect:/mypage/out.camp?result=fail";
		}
		user.setId(user.getId());
		user.setUsedYn("N");
		
		myPageService.updateUserUsedYn(user);
		
		session.invalidate();
		return "redirect:/mypage/out.camp?result=success";
	}
	
}
