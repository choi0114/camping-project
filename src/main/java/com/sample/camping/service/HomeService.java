package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.FreeBoard;
import com.sample.camping.vo.NoticeBoard;
import com.sample.camping.vo.ReviewBoard;

public interface HomeService {

	int getCountByKeyword(Map<String, Object> map);
	List<CampSite> searchCampSites(Map<String, Object> map);
	List<CampSite> getGugunBysido(String city);
	List<CampSite> getCampSitesByUpdate();
	Map<String, Object> getCounts();
	List<ReviewBoard> getAllReviewBoard();
	List<FreeBoard> getAllFreeBoard();
	List<NoticeBoard> getAllNoticeBoard();
}
