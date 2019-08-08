package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;

public interface AdminCampSiteService {

	void addCampSite(CampSite campSite);
	List<CampSite> getCampingSitesAll(Map<String, Object> param);
	CampSite getCampingSitesbyNo(int no);
	public int getCampingSitesCount(Map<String, Object> map);
}
