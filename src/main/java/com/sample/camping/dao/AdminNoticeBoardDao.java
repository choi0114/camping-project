package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.NoticeBoard;

public interface AdminNoticeBoardDao {

	// 공지사항 추가
	void addNotice(NoticeBoard noticeBoard);
	List<NoticeBoard> getNoticeAll(Map<String, Object> param);
	NoticeBoard getNoticeByNo(int no);
	public int getNoticeCount(Map<String, Object> map);
	
	void updateNoticeByNo(NoticeBoard noticeBoard);
}
