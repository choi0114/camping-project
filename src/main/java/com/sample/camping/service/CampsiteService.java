package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;

public interface CampsiteService {

	CampSite getCampSiteByNo(int no);
	public List<CampSite> selectCampsite(Map<String, Object> map);
	public Integer selectCampCount(Map<String, Object> map);
}
