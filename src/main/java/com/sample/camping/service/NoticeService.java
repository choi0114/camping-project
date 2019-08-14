package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.NoticeBoard;
import com.sample.camping.vo.NoticeComment;

public interface NoticeService {

	List<NoticeBoard> getAllNotices();
	NoticeBoard getNoticeByNo(int no);
	List<NoticeComment> getAllNoticeCommentsByNo(int no);
	void insertComment(Map<String, Object> map);
}
