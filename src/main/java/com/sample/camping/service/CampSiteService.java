package com.sample.camping.service;

import java.util.List;

import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.Criteria;

public interface CampSiteService {
	public List<CampSite> selectCampsite (Criteria criteria);
}
