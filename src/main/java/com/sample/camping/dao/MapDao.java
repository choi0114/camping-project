package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampingSites;

public interface MapDao {

	List<CampingSites> getCampSites(Map<String, Object> param);
	List<CampingSites> getCampSitesList(Map<String, Object>param);
	Integer getCampSitesCount();

}
