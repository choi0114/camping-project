package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.LikeCampsite;
import com.sample.camping.vo.MyCampsite;

public interface MypageService {

	Map<String, Object> getBoards(String userId);
	Integer getAllCommentCount(String userId);
	
	List<LikeCampsite> getLikeCampsiteById(String userId);
	
	List<MyCampsite> getMyAddCampById(String userId);
	
}
