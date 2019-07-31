package com.sample.camping.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.sample.camping.dao.MypageDao;

public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypageDao mypageDao;
	
	@Override
	public Map<String, Object> getBoards(String userId) {
		mypageDao.getFreeBoardById(userId);
		mypageDao.getJoningBoardsById(userId);
		mypageDao.getOpinionBoardById(userId);
		mypageDao.getReviewBoaedById(userId);
		mypageDao.getFreeBoardCommentById(userId);
		mypageDao.getJoningBoardCommentById(userId);
		mypageDao.getOpinionBoardCommentById(userId);
		mypageDao.getReviewBoardCommentById(userId);
		
		
		
		return null;
	}
	
}
