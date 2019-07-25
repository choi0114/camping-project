package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampingSites;

public interface MapService {

	List<CampingSites> getCampSites(Map<String, Object> param);
	List<CampingSites> getCampSitesList(Map<String, Object>param);
	Integer getCampSitesCount();
}
