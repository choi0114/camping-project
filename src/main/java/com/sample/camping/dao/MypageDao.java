package com.sample.camping.dao;

import java.util.List;

import com.sample.camping.vo.FreeBoard;
import com.sample.camping.vo.FreeBoardComment;
import com.sample.camping.vo.JoiningBoard;
import com.sample.camping.vo.JoiningBoardComment;
import com.sample.camping.vo.LikeCampsite;
import com.sample.camping.vo.MyCampsite;
import com.sample.camping.vo.OpinionBoard;
import com.sample.camping.vo.OpinionComment;
import com.sample.camping.vo.ReviewBoard;
import com.sample.camping.vo.ReviewBoardComment;
import com.sample.camping.vo.User;

public interface MypageDao {

	List<JoiningBoard> getJoiningBoardsById(String userId);
	List<OpinionBoard> getOpinionBoardById(String userId);
	List<ReviewBoard> getReviewBoaedById(String userId);
	List<FreeBoard> getFreeBoardById(String userId);
	
	List<JoiningBoardComment> getJoiningBoardCommentById(String userId);
	List<OpinionComment> getOpinionBoardCommentById(String userId);
	List<ReviewBoardComment> getReviewBoardCommentById(String userId);
	List<FreeBoardComment> getFreeBoardCommentById(String userId);

	Integer getAllCommentCount(String userId);
	
	List<LikeCampsite> getLikeCampsiteById(String userId);
	
	List<MyCampsite> getMyAddCampById(String userId);
	
	void updateUserData(User user);
	void updateUserUsedYn(User user);
}
