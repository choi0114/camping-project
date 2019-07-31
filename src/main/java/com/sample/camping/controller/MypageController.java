package com.sample.camping.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.camping.service.MypageService;
import com.sample.camping.vo.User;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private MypageService myPageService;
	
	@RequestMapping("/mypage.camp")
	public String mypage(HttpSession session) {
		
		User user = (User) session.getAttribute("LOGIN_USER");
		user.getNickName();
		user.getName();
		user.getId();
		user.getCreateDate();
		user.getProfilePhoto();
		user.getType();
		
		
		
		return "mypage/mypage";
	}
	@RequestMapping("/comment.camp")
	public String comment() {
		
		return "mypage/comment";
	}
	
	@RequestMapping("/post.camp")
	public String post() {
		
		return "mypage/post";
	}
	
	@RequestMapping("/clip.camp")
	public String clip() {
		
		return "mypage/clip";
	}
	
	@RequestMapping("/addCamp.camp")
	public String tent() {
		
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
	
}
