package com.sample.camping.service;

import java.util.List;

import com.sample.camping.vo.CampSite;

public interface AdminCampSiteService {

	void addCampSite(CampSite campSite);
	List<CampSite> getCampingSitesAll();
}
