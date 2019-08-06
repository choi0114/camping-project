package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;

public interface MapService {

	List<CampSite> getCampSites(Map<String, Object> param);
	List<CampSite> getCampSitesList(Map<String, Object>param);
	List<CampSite> getAllCampSites();
	Integer getCampSitesCount(Map<String, Object>param);
	CampSite getLatLngCamp(Map<String, Object>param);
	List<CampSite> getCampNameAndAdress(String keyword);
	Integer getCampAddressCount(String keyword);
	List<CampSite> getMoreCampNameAndAdress(Map<String, Object>param);
	List<CampSite> getCampsitesName(String keyword);

}
