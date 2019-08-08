package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.sample.camping.dao.AdminCampSiteDao;
import com.sample.camping.vo.CampSite;

@Service
public class AdminCampSiteServiceImpl implements AdminCampSiteService {

	@Autowired
	private AdminCampSiteDao campSiteDao;
	
	@Override
	public void addCampSite(CampSite campSite) {
		
	}
	
	@Override
	public List<CampSite> getCampingSitesAll(Map<String, Object> param) {
		List<CampSite> campSite = campSiteDao.getCampingSitesAll(param);
		
		return campSite;
	}
	
	@Override
	public CampSite getCampingSitesbyNo(int no) {
		return campSiteDao.getCampingSitesbyNo(no);
	}
	
	@Override
	public int getCampingSitesCount(Map<String, Object> map) {
		return campSiteDao.getCampingSitesCount(map);
	}
}
