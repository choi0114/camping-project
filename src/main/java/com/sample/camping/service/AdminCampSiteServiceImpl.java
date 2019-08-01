package com.sample.camping.service;

import java.util.List;

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
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public List<CampSite> getCampingSitesAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
