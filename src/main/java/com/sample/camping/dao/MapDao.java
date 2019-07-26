package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;

public interface MapDao {

	List<CampSite> getCampSites(Map<String, Object> param);
	List<CampSite> getCampSitesList(Map<String, Object>param);
	Integer getCampSitesCount();
	CampSite getLanLngMDetail(Map<String, Object>param);

}
