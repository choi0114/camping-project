package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.Statistics;

public interface AdminCampSiteService {

	void addCampSite(CampSite campSite);
	List<CampSite> getCampingSitesAll(Map<String, Object> param);
	CampSite getCampingSitesbyNo(int no);
	CampSite getCampingSitebyNo(int no);
	public int getCampingSitesCount(Map<String, Object> map);
	void updateCampingSitesByNo(CampSite campSite); 
	void deleteCampingSite(int[] campsiteNo);
	void deleteCampingSites(int[] campsiteNo);
	List<Statistics> campsiteStatistics();
	//지역별 통계
	List<Statistics> sidoStatistics();
	//구군별 통계
	List<Statistics> gugunStatistics();
}
