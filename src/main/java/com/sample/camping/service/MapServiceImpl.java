package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.MapDao;
import com.sample.camping.vo.CampSite;

@Service
public class MapServiceImpl implements MapService {

	@Autowired
	private MapDao mapDao;


	@Override
	public List<CampSite> getCampSites(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return mapDao.getCampSites(param);
	}
	
	@Override
	public List<CampSite> getCampSitesList(Map<String,Object>param) {

		return mapDao.getCampSitesList(param);
	}

	@Override
	public Integer getCampSitesCount() {
		// TODO Auto-generated method stub
		return mapDao.getCampSitesCount();
	}
	
@Override
	public List<CampSite> getAllCampSites() {
		
		return mapDao.getAllCampSites();
	}
@Override
public CampSite getLatLngCamp(Map<String, Object> param) {
	// TODO Auto-generated method stub
	return mapDao.getLatLngCamp(param);
	}
}
