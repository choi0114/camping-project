package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.LikeCampsite;
import com.sample.camping.vo.LikeHateCampsite;
import com.sample.camping.vo.OpinionBoard;
import com.sample.camping.vo.ReviewBoard;

public interface CampsiteDao {
	public List<CampSite> selectCampsite (Map<String, Object> map);
	public Integer selectCampCount (Map<String, Object> map);
	CampSite getCampSiteByNo(int no);
	
	List<CampSite> getCampSiteByTheme(Map<String, Object> map);
	List<CampSite> get10CampSites(Map<String, Object> map);
	
	List<CampSite> getAllCampsites();
	List<CampSite> getCampsitesByGugun(String gugun);
	
	List<OpinionBoard> getOpinionByCSNo(int no);
	List<ReviewBoard> getReviewByCSNo(int no);
	void updateCampsite(Map<String, Object> map);
	
	LikeHateCampsite alreadyChecked(Map<String, Object> map);
	int getJjimCountByNo(int no);
	int getOpinionCountByCSNo(int no);
	void insertLikeHate(Map<String, Object> map);
	
	void insertJjim(Map<String, Object> map);
	LikeCampsite getJjimByNoId(Map<String, Object> map);
}
