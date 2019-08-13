package com.sample.camping.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.MypageDao;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.LikeCampsite;
import com.sample.camping.vo.MyCampsite;
import com.sample.camping.vo.Scrap;
import com.sample.camping.vo.User;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypageDao mypageDao;

	@Override
	public Map<String, Object> getBoards(String userId) {
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		
		boardMap.put("free", mypageDao.getFreeBoardById(userId)) ;
		boardMap.put("joining", mypageDao.getJoiningBoardsById(userId));
		boardMap.put("opinion", mypageDao.getOpinionBoardById(userId));
		boardMap.put("review", mypageDao.getReviewBoaedById(userId));
		
		return boardMap;
	}
	
	@Override
	public Map<String, Object> getComments(String userId) {
		
		Map<String, Object> commentMap = new HashMap<String, Object>();
		
		commentMap.put("freeComment", mypageDao.getFreeBoardCommentById(userId));
		commentMap.put("joiningComment", mypageDao.getJoiningBoardCommentById(userId));
		commentMap.put("opinionComment", mypageDao.getOpinionBoardCommentById(userId));
		commentMap.put("reviewComment", mypageDao.getReviewBoardCommentById(userId));
		
		return commentMap;
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
	
	@Override
	public void updateUserData(User user) {
		mypageDao.updateUserData(user);
		
	}
	
	@Override
	public void updateUserUsedYn(User user) {
		mypageDao.updateUserUsedYn(user);
		
	}
	
	@Override
	public void addCampSite(CampSite campSite) {
		mypageDao.addCampSite(campSite);
	}
	
	@Override
	public void addMyCampSite(MyCampsite myCampsite) {
		mypageDao.addMyCampSite(myCampsite);
	}
	
	@Override
	public MyCampsite getMyCampSiteById(String userId) {
		return mypageDao.getMyCampSiteById(userId);
	}
	
	@Override
	public List<Scrap> getScrapById(String userId) {
		return mypageDao.getScrapById(userId);
	}
	
}
