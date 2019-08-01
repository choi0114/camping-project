package com.sample.camping.dao;
import java.util.List;

import com.sample.camping.vo.CampSite;

public interface AdminCampSiteDao {

	void addCampSite(CampSite campSite);
	List<CampSite> getCampingSitesAll();
}
