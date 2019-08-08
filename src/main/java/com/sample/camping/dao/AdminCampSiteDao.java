package com.sample.camping.dao;
import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;

public interface AdminCampSiteDao {

	void addCampSite(CampSite campSite);
	List<CampSite> getCampingSitesAll(Map<String, Object> param);
	CampSite getCampingSitesByNo(int no);
	public int getCampingSitesCount(Map<String, Object> map);
	
}
