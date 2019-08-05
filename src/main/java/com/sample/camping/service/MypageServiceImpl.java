package com.sample.camping.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.MypageDao;
import com.sample.camping.vo.LikeCampsite;
import com.sample.camping.vo.MyCampsite;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypageDao mypageDao;

	@Override
	public Map<String, Object> getBoards(String userId) {
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		
		boardMap.put("free", mypageDao.getFreeBoardById(userId)) ;
		boardMap.put("joning", mypageDao.getJoningBoardsById(userId));
		boardMap.put("opinion", mypageDao.getOpinionBoardById(userId));
		boardMap.put("review", mypageDao.getReviewBoaedById(userId));
		
		boardMap.put("freeComment", mypageDao.getFreeBoardCommentById(userId));
		boardMap.put("joningComment", mypageDao.getJoningBoardCommentById(userId));
		boardMap.put("opinionComment", mypageDao.getOpinionBoardCommentById(userId));
		boardMap.put("reviewComment", mypageDao.getReviewBoardCommentById(userId));
		
		return boardMap;
	}
	
	@Override
	public Integer getAllCommentCount(String userId) {
		return mypageDao.getAllCommentCount(userId);
	}
	
	@Override
	public List<LikeCampsite> getLikeCampsiteById(String userId) {
		return mypageDao.getLikeCampsiteById(userId);
	}
	
	@Override
	public List<MyCampsite> getMyAddCampById(String userId) {
		return mypageDao.getMyAddCampById(userId);
	}
	
}
