package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.CampSite;

public interface HomeService {

	int getCountByKeyword(String keyword);
	List<CampSite> getCampSitesByKeyword(Map<String, Object> map);
}
