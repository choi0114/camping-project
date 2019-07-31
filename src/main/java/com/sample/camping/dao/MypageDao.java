package com.sample.camping.dao;

import com.sample.camping.vo.FreeBoard;
import com.sample.camping.vo.FreeBoardComment;
import com.sample.camping.vo.JoningBoard;
import com.sample.camping.vo.JoningBoardComment;
import com.sample.camping.vo.OpinionBoard;
import com.sample.camping.vo.OpinionBoardComment;
import com.sample.camping.vo.ReviewBoard;
import com.sample.camping.vo.ReviewBoardComment;

public interface MypageDao {

	JoningBoard getJoningBoardsById(String userId);
	OpinionBoard getOpinionBoardById(String userId);
	ReviewBoard getReviewBoaedById(String userId);
	FreeBoard getFreeBoardById(String userId);
	
	JoningBoardComment getJoningBoardCommentById(String userId);
	OpinionBoardComment getOpinionBoardCommentById(String userId);
	ReviewBoardComment getReviewBoardCommentById(String userId);
	FreeBoardComment getFreeBoardCommentById(String userId);

}
