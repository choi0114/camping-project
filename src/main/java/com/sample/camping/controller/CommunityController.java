package com.sample.camping.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sample.camping.form.BoardForm;
import com.sample.camping.service.BoardService;
import com.sample.camping.service.CampsitesService;
import com.sample.camping.service.UserService;
import com.sample.camping.vo.Board;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.Pagination;
import com.sample.camping.vo.User;


@Controller
@RequestMapping("/community")
public class CommunityController {
   
	@Autowired
	private BoardService boardService;
	@Autowired
	private CampsitesService campsiteService;
	
	@GetMapping("/home.camp")
	public String communityHome (Model model) {
		model.addAttribute("joins", boardService.selectJoin());
		model.addAttribute("opinions", boardService.selectOpinion());
		model.addAttribute("reviews", boardService.selectReview());
		model.addAttribute("frees", boardService.selectFree());
		
		return "community/home";
	}
	
	
	@RequestMapping("/detail.camp")
	public String communityDetail (Model model
									,@RequestParam int no
									,@RequestParam int boardType
									) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("no", no);
		map.put("boardType", boardType);
		
		if(boardType == 1) {
			model.addAttribute("comments", boardService.commentByBoardNo(map));
			model.addAttribute("board", boardService.selectJoinByNo(no));
			model.addAttribute("sort", "가입인사 ");
			model.addAttribute("boardType", 1 );
			return "community/detail";
		}
		if(boardType == 2) {
			model.addAttribute("comments", boardService.commentByBoardNo(map));
			model.addAttribute("board", boardService.selectReviewByNo(no));
			model.addAttribute("sort", "캠핑장리뷰 ");
			model.addAttribute("boardType", 2 );
			return "community/detail";
		}
		if(boardType == 3) {
			model.addAttribute("comments", boardService.commentByBoardNo(map));
			model.addAttribute("board", boardService.selectOpinionByNo(no));
			model.addAttribute("sort", "캠핑장의견 ");
			model.addAttribute("boardType", 3 );
			return "community/detail";
		}
		if(boardType == 4) {
			model.addAttribute("comments", boardService.commentByBoardNo(map));
			model.addAttribute("sort", "자유게시판 ");
			model.addAttribute("board", boardService.selectFreeByNo(no));
			model.addAttribute("boardType", 4 );
			return "community/detail";
		}
		return "community/detail";
	}
	
	@GetMapping("/write.camp")
	public String write () {
		return "community/write";
	}
	
	@PostMapping("/write.camp")
	public String addwrite (BoardForm boardForm, HttpSession session) throws IOException {
		Board board = new Board();
		User user = (User) session.getAttribute("LOGIN_USER");
		BeanUtils.copyProperties(boardForm, board);
		MultipartFile mf = boardForm.getThumbnailUploadFile();
		String  profileImageSaveDirectory = "/camping-project/src/main/webapp/resources/images/community";
		if(!mf.isEmpty()) {
			String filename = mf.getOriginalFilename();
				
			if(boardForm.getMenu() == 1) {
				FileCopyUtils.copy(mf.getBytes(), new File(profileImageSaveDirectory, filename));
				board.setThumbnail(filename);
				board.setTitle(boardForm.getTitle());
				board.setContents(boardForm.getContents());
				board.setUserId(user.getId());
				boardService.addJoin(board);
				
				return "redirect:home.camp";
			} else if(boardForm.getMenu() == 2) {
				FileCopyUtils.copy(mf.getBytes(), new File(profileImageSaveDirectory, filename));
				board.setThumbnail(filename);
				board.setTitle(boardForm.getTitle());
				board.setContents(boardForm.getContents());
				board.setCampsiteNo(boardForm.getCampsiteNo());
				board.setUserId(user.getId());
				boardService.addReview(board);
				
				return "redirect:home.camp";
			} else if(boardForm.getMenu() == 3) {
				FileCopyUtils.copy(mf.getBytes(), new File(profileImageSaveDirectory, filename));
				board.setThumbnail(filename);
				board.setTitle(boardForm.getTitle());
				board.setContents(boardForm.getContents());
				board.setCampsiteNo(boardForm.getCampsiteNo());
				board.setUserId(user.getId());
				boardService.addOpinion(board);
				
				return "redirect:home.camp";
			} else if(boardForm.getMenu() == 4) {
				FileCopyUtils.copy(mf.getBytes(), new File(profileImageSaveDirectory, filename));
				board.setThumbnail(filename);
				board.setTitle(boardForm.getTitle());
				board.setContents(boardForm.getContents());
				board.setUserId(user.getId());
				boardService.addFree(board);
				
				return "redirect:home.camp";
			}
		}
		return "redirect:home.camp";
	}
	
	@GetMapping("/addComment.camp")
	public String addComment( @RequestParam int boardType, 
							  @RequestParam int boardNo, 
							  @RequestParam String contents,
							  HttpSession session ){
		
		User user = (User) session.getAttribute("LOGIN_USER");
		System.out.println(boardType);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardType", boardType);
		map.put("boardNo", boardNo);
		map.put("contents", contents);
		map.put("userId", user.getId());
		boardService.addComment(map);
		return "redirect:detail.camp?boardType="+boardType+"&no="+boardNo;
	}

	@GetMapping("/search.camp")
	public @ResponseBody Map<String, Object> search(
			  @RequestParam (value="keyword", required = false, defaultValue = "") String keyword
			, @RequestParam (value = "pno", required = false, defaultValue = "1") int pno) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int begin = (pno - 1)*10 + 1;
		int end = pno*10;
		map.put("begin", begin);
		map.put("end", end);
		map.put("keyword", keyword);

		// 글 갯수 조회
		int records = campsiteService.selectCampCount(map);
		// 페이지번호에 해당하는 글 목록조회
		List<CampSite> camp = campsiteService.selectCampsite(map);
		Pagination pagination = new Pagination(pno, 10, records);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("campList",camp);
		result.put("pagination",pagination);
		// 페이지 내비게이션 처리에 필요한 Pagination 객체 생성
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
		
		return result;
	}
	@GetMapping("/updateLike.camp")
	public @ResponseBody String updateLike(@RequestParam int boardType, 
			@RequestParam int boardNo, HttpSession session) {
		User user = (User) session.getAttribute("LOGIN_USER");
		Map<String, Object> map = new HashMap<String, Object>();
		Board board = new Board();
		// 해당 보드를 가져온다
		map.put("boardType", boardType);
		if(boardType == 1) {
			// 조이닝 라이크를 1 증가시킨다.
			board = boardService.selectJoinByNo(boardNo);
			int like = board.getLikes();
			map.put("like", like);
			map.put("boardNo", boardNo);
			boardService.updateLike(map);
			return "redirect:detail.camp?boardType="+boardType+"&no="+boardNo;
			// setter를 사용하여 라이크 필드를 변경시킨다. setLikes()
			// updateBoard를 사용해 가져왔던 보드를 다시 넣는다.
		} else if(boardType == 2) {
			board = boardService.selectReviewByNo(boardNo);
			int like = board.getLikes();
			map.put("like", like);
			map.put("boardNo", boardNo);
			boardService.updateLike(map);
			return "redirect:detail.camp?boardType="+boardType+"&no="+boardNo;
		} else if(boardType == 3) {
			board = boardService.selectOpinionByNo(boardNo);
			int like = board.getLikes();
			map.put("like", like);
			map.put("boardNo", boardNo);
			boardService.updateLike(map);
			return "redirect:detail.camp?boardType="+boardType+"&no="+boardNo;
			
		} else {
			board = boardService.selectFreeByNo(boardNo);
			int like = board.getLikes();
			map.put("like", like);
			map.put("boardNo", boardNo);
			boardService.updateLike(map);
			return "redirect:detail.camp?boardType="+boardType+"&no="+boardNo;
			
		}
		
	}
	
	@GetMapping("/updateHate.camp")
	public @ResponseBody String updateHate(@RequestParam int boardType, 
			@RequestParam int boardNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		Board board = new Board();
		// 해당 보드를 가져온다
		map.put("boardType", boardType);
		if(boardType == 1) {
			// 조이닝 라이크를 1 증가시킨다.
			board = boardService.selectJoinByNo(boardNo);
			int hate = board.getHates();
			map.put("hate", hate);
			map.put("boardNo", boardNo);
			boardService.updateHate(map);
			return "redirect:detail.camp?boardType="+boardType+"&no="+boardNo;
			// setter를 사용하여 라이크 필드를 변경시킨다. setLikes()
			// updateBoard를 사용해 가져왔던 보드를 다시 넣는다.
		} else if(boardType == 2) {
			board = boardService.selectReviewByNo(boardNo);
			int hate = board.getHates();
			map.put("hate", hate);
			map.put("boardNo", boardNo);
			boardService.updateHate(map);
			
			return "redirect:detail.camp?boardType="+boardType+"&no="+boardNo;
		} else if(boardType == 3) {
			board = boardService.selectOpinionByNo(boardNo);
			int hate = board.getHates();
			map.put("hate", hate);
			map.put("boardNo", boardNo);
			boardService.updateHate(map);
			
			return "redirect:detail.camp?boardType="+boardType+"&no="+boardNo;
		} else {
			board = boardService.selectFreeByNo(boardNo);
			int hate = board.getHates();
			map.put("hate", hate);
			map.put("boardNo", boardNo);
			boardService.updateHate(map);
			
			return "redirect:detail.camp?boardType="+boardType+"&no="+boardNo;
		}
		
	}
	
	@GetMapping("/board.camp")
	public @ResponseBody Map<String , Object> board(@RequestParam int boardType,
													@RequestParam (value = "pno", required = false, defaultValue = "1") int pno,
													@RequestParam String keyword,
													@RequestParam String sort) {
		Map<String , Object> map = new HashMap<String, Object>();
		
		Map<String , Object> selectmap = new HashMap<String, Object>();
		int begin = (pno - 1)*6 + 1;
		int end = pno*6;
		selectmap.put("begin", begin);
		selectmap.put("end", end);
		selectmap.put("keyword", keyword);
		selectmap.put("sort", sort);
		map.put("boardType", boardType);
		
		if(boardType == 1) {
			int records = boardService.selectJoinCount(selectmap);
			Pagination pagination = new Pagination(pno, 6, records);
			map.put("pagination", pagination);
			map.put("boards", boardService.selectJoinPage(selectmap));
			
			return map;
		}
		if(boardType == 2) {
			int records = boardService.selectReviewCount(selectmap);
			Pagination pagination = new Pagination(pno, 6, records);
			map.put("pagination", pagination);
			map.put("boards", boardService.selectReviewPage(selectmap));
			return map;
			
		}
		if(boardType == 3) {
			int records = boardService.selectOpinionCount(selectmap);
			Pagination pagination = new Pagination(pno, 6, records);
			map.put("pagination", pagination);
			map.put("boards", boardService.selectOpinionPage(selectmap));
			return map;
			
		}
		if(boardType == 4) {
			int records = boardService.selectFreeCount(selectmap);
			Pagination pagination = new Pagination(pno, 6, records);
			map.put("pagination", pagination);
			map.put("boards", boardService.selectFreePage(selectmap));
			return map;
		} else {
			return null;
		}
	}
}
