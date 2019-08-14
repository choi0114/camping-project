package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.FreeBoard;
import com.sample.camping.vo.NoticeBoard;
import com.sample.camping.vo.ReviewBoard;

@Repository
public interface HomeDao {

	int getCountByKeyword(Map<String, Object> map);
	List<CampSite> searchCampSites(Map<String, Object> map);
	List<CampSite> getGugunBysido(String city);
	List<Map<String, Object>> getCampSitesByUpdate();
	Map<String, Object> getCounts();
	List<ReviewBoard> getAllReviewBoard();
	List<FreeBoard> getAllFreeBoard();
	List<NoticeBoard> getAllNoticeBoard();
	void addBookmark(String id, int no);
	void deleteBookmark(int no);
}
