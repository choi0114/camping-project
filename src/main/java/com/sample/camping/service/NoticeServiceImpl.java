package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.NoticeDao;
import com.sample.camping.vo.NoticeBoard;
import com.sample.camping.vo.NoticeComment;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public List<NoticeBoard> getAllNotices() {
		return noticeDao.getAllNotices();
	}
	
	@Override
	public NoticeBoard getNoticeByNo(int no) {
		return noticeDao.getNoticeByNo(no);
	}
	
	@Override
	public List<NoticeComment> getAllNoticeCommentsByNo(int no) {
		return noticeDao.getAllNoticeCommentsByNo(no);
	}
	
	@Override
	public void insertComment(Map<String, Object> map) {
		noticeDao.insertComment(map);
	}
	
	@Override
	public List<NoticeComment> get10Comments(Map<String, Object> map) {
		return noticeDao.get10Comments(map);
	}
}
