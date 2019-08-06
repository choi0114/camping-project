package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;

public interface HomeService {

	int getCountByKeyword(Map<String, Object> map);
	List<CampSite> searchCampSites(Map<String, Object> map);
}
