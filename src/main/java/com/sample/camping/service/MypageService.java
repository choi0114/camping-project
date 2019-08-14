package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.LikeCampsite;
import com.sample.camping.vo.MyCampsite;
import com.sample.camping.vo.Scrap;
import com.sample.camping.vo.User;

public interface MypageService {

	Map<String, Object> getBoards(String userId);
	Map<String, Object> getComments(String userId);
	Integer getAllCommentCount(String userId);
	
	List<LikeCampsite> getLikeCampsiteById(String userId);
	
	List<MyCampsite> getMyAddCampById(String userId);
	
	void updateUserData(User user);
	void updateUserUsedYn(User user);
	
	void addCampSite(CampSite campSite);
	void addMyCampSite(MyCampsite myCampsite);
	MyCampsite getMyCampSiteById(String userId);
	
	List<Scrap> getScrapById(String userId);
}
