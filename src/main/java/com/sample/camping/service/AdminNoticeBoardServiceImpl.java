package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.AdminNoticeBoardDao;
import com.sample.camping.vo.NoticeBoard;

@Service
public class AdminNoticeBoardServiceImpl implements AdminNoticeBoardService {

	@Autowired
	private AdminNoticeBoardDao noticeBoardDao;
	
	@Override
	public void addNotice(NoticeBoard noticeBoard) {
		
	}
	
	@Override
	public List<NoticeBoard> getNoticeAll(Map<String, Object> param) {
		List<NoticeBoard> noticeBoard = noticeBoardDao.getNoticeAll(param);
		
		return noticeBoard;
	}
	
	@Override
	public NoticeBoard getNoticeByNo(int no) {
		return noticeBoardDao.getNoticeByNo(no);
	}
	
	@Override
	public int getNoticeCount(Map<String, Object> map) {
		return noticeBoardDao.getNoticeCount(map);
	}
	
	@Override
	public void updateNoticeByNo(NoticeBoard noticeBoard) {
		noticeBoardDao.updateNoticeByNo(noticeBoard);
	}
	
	
	
	
}
