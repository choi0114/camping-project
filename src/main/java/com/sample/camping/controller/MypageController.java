package com.sample.camping.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.GeocoderStatus;
import com.google.code.geocoder.model.LatLng;
import com.sample.camping.service.MypageService;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.LikeCampsite;
import com.sample.camping.vo.MyCampsite;
import com.sample.camping.vo.Scrap;
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
	
	@RequestMapping("/profilePhoto.camp")
	public String profilePhoto(MultipartFile photo, HttpSession session) throws IOException {
		String savePath = "C:/Users/JHTA/git/camping-project/src/main/webapp/resources/images/profilePhoto";
		User user = (User) session.getAttribute("LOGIN_USER");
		
		String filename = user.getId();
		
		if(!photo.isEmpty()) {
			long date = System.currentTimeMillis ( );
			
			filename += date;
			filename += photo.getOriginalFilename();
			
			FileCopyUtils.copy(photo.getInputStream(), new FileOutputStream(new File(savePath, filename)));
			System.out.println(filename);
		}
		System.out.println(filename);
		
		user.setId(user.getId());
		user.setProfilePhoto(filename);
		
		myPageService.updateUserProfilePhoto(user);
		
		return "redirect:/mypage/mypage.camp";
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
	
	@RequestMapping("/adddetail.camp")
	public String detail() {
		
		return "mypage/adddetail";
	}
	
	@RequestMapping("/detail.camp")
	public String detail(String name, String sort, String address, String tel, Double latitude, Double longitude, int sites, int price, MultipartFile photo, HttpSession session) throws Exception {
		String savePath = "C:/Users/JHTA/git/camping-project/src/main/webapp/resources/images/campsite";
		MyCampsite mycamp = new MyCampsite();
		User user = (User) session.getAttribute("LOGIN_USER");
		
		mycamp.setUser(user);
		
		myPageService.addMyCampSite(mycamp);
		
		MyCampsite myCampSite = myPageService.getMyCampSiteById(user.getId());
		
		CampSite campSite = new CampSite();
		campSite.setName(name);
		campSite.setSort(sort);
		campSite.setAddress(address);
		campSite.setTel(tel);
		campSite.setLatitude(latitude);
		campSite.setLongitude(longitude);
		campSite.setSites(sites);
		campSite.setPrice(price);
		campSite.setMyCampsite(myCampSite);
		
		System.out.println(name);
		System.out.println(sort);
		System.out.println(address);
		System.out.println(tel);
		System.out.println(latitude);
		System.out.println(longitude);
		System.out.println(sites);
		System.out.println(price);
		
		if (!photo.isEmpty()) {
			String filename = photo.getOriginalFilename();
			
			FileCopyUtils.copy(photo.getInputStream(), new FileOutputStream(new File(savePath, filename)));
			System.out.println(filename);
			
			campSite.setPhoto(filename);
		} 
		
		
		String[] as = address.split(" ");
		
		String sido = as[0];
		campSite.setSido(sido);
		
		String gugun = as[1];
		campSite.setGugun(gugun);
		
		myPageService.addCampSite(campSite);
		
		return "redirect:/mypage/addCamp.camp";
	}
	
	@RequestMapping("/oneline.camp")
	public String oneline() {
		
		return "mypage/oneline";
	}
	
	@RequestMapping("/scrap.camp")
	public String scrap(HttpSession session, Model model) {
		User user = (User) session.getAttribute("LOGIN_USER");
		List<Scrap> scraps = myPageService.getScrapById(user.getId());
		
		model.addAttribute("scraps", scraps);
		
		return "mypage/scrap";
	}

	@RequestMapping("/info.camp")
	public String info(HttpSession session, Model model) {
		
		User user = (User) session.getAttribute("LOGIN_USER");
		
		model.addAttribute("USER", user);
		
		return "mypage/info";
	}
	
	@RequestMapping("change.camp")
	public String change(String pw1, String pw2, String pw3, String email, String nick, HttpSession session, Model model) {
		User user = (User) session.getAttribute("LOGIN_USER");
		
		String md5pw = DigestUtils.md5Hex(pw1);
		
		if(!user.getPassword().equals(md5pw)) {
			model.addAttribute("USER", user);
			return "redirect:/mypage/info.camp?result=fail";
		}
		
		user.setId(user.getId());
		user.setNickName(nick);
		user.setEmail(email);
		String md5pw2 = DigestUtils.md5Hex(pw2);
		System.out.println(email);
		user.setPassword(md5pw2);
		
		myPageService.updateUserData(user);
		
		session.invalidate();
		return "redirect:/mypage/info.camp?result=success";
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
	
	public static Float[] geoCoding(String location) {

		if (location == null)  
		return null;
		Geocoder geocoder = new Geocoder();

		// setAddress : 변환하려는 주소 (경기도 성남시 분당구 등)

		// setLanguate : 인코딩 설정

		GeocoderRequest geocoderRequest = new GeocoderRequestBuilder().setAddress(location).setLanguage("ko").getGeocoderRequest();

		GeocodeResponse geocoderResponse;

		try {
			geocoderResponse = geocoder.geocode(geocoderRequest);
				
			if (geocoderResponse.getStatus() == GeocoderStatus.OK & !geocoderResponse.getResults().isEmpty()) {
				GeocoderResult geocoderResult=geocoderResponse.getResults().iterator().next();
				LatLng latitudeLongitude = geocoderResult.getGeometry().getLocation();
		
				Float[] coords = new Float[2];
				coords[0] = latitudeLongitude.getLat().floatValue();
				coords[1] = latitudeLongitude.getLng().floatValue();
				return coords;
			}
		
		} catch (IOException ex) {
			
			ex.printStackTrace();
		}
		
		return null;
		}
}
