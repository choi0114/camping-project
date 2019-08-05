package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sample.camping.vo.CampSite;

@Repository
public interface HomeDao {

	int getCountByKeyword(String keyword);
	List<CampSite> getCampSitesByKeyword(Map<String, Object> map);
}
