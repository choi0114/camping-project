package com.sample.camping.controller;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.camping.service.MypageService;
import com.sample.camping.vo.User;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private MypageService myPageService;
	
	@RequestMapping("/mypage.camp")
	public String mypage(HttpSession session, Model model) {
		
		User user = new User();
		user.setId("admin");
		user.setName("admin");
		user.setEmail("admin@5gcamp.com");
		user.setNickName("admin");
		user.setPassword("zxcv1234");
		user.setPhoneNumber("010-1111-1111");
		user.setProfilePhoto("default.png");
		user.setType("ADMIN");
		
		Date date = new Date ( );
		user.setCreateDate(date);

		user.setUsedYn("Y");

		session.setAttribute("LOGIN_USER", user);
		
		String userId = user.getId();
		
		Map<String, Object> boardMap = myPageService.getBoards(userId);
		
		model.addAttribute("boardMap", boardMap);
		
		
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
