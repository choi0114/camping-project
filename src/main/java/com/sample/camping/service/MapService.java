package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;

public interface MapService {

	List<CampSite> getCampSites(Map<String, Object> param);
	List<CampSite> getCampSitesList(Map<String, Object>param);
	Integer getCampSitesCount();
	List<CampSite> getAllCampSites(); // 전부 가져오기
	CampSite getLatLngCamp(Map<String, Object>param);
}
