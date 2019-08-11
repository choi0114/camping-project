package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.NoticeBoard;

public interface AdminNoticeBoardService {

	void addNotice(NoticeBoard noticeBoard);
	List<NoticeBoard> getNoticeAll(Map<String, Object> param);
	NoticeBoard getNoticeByNo(int no);
	public int getNoticeCount(Map<String, Object> map);
	
	void updateNoticeByNo(NoticeBoard noticeBoard);
}
