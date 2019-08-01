package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sample.camping.vo.CampSite;

@Repository
public interface CampsiteDao {
	public List<CampSite> selectCampsite (Map<String, Object> map);
	public Integer selectCampCount (Map<String, Object> map);
	CampSite getCampSiteByNo(int no);
}
