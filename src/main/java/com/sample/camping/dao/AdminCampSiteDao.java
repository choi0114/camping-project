package com.sample.camping.dao;
import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.Statistics;

public interface AdminCampSiteDao {
	
	// 캠핑장 추가
	void addCampSite(CampSite campSite);
	List<CampSite> getCampingSitesAll(Map<String, Object> param);
	CampSite getCampingSitesByNo(int no);
	CampSite getCampingSiteByNo(int no);
	public int getCampingSitesCount(Map<String, Object> map);
	
	// 상품 업데이트
	void updateCampingSitesByNo(CampSite campSite); 
	
	//캠핑장 통계
	List<Statistics> campsiteStatistics();
	//지역별 통계
	List<Statistics> sidoStatistics();
	//구군별 통계
	List<Statistics> gugunStatistics();
}
 