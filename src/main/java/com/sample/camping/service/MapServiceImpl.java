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
	public List<CampSite> getCampsitesName(String keyword) {
		// TODO Auto-generated method stub
		return mapDao.getCampsitesName(keyword);
	}
	
	@Override
	public List<CampSite> getMoreCampNameAndAdress(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return mapDao.getMoreCampNameAndAdress(param);
	}
	
	@Override
	public Integer getCampAddressCount(String keyword) {
		// TODO Auto-generated method stub
		return mapDao.getCampAddressCount(keyword);
				
	}
	
	@Override
	public List<CampSite> getCampNameAndAdress(String keyword) {
		// TODO Auto-generated method stub
		return mapDao.getCampNameAndAdress(keyword);
	}
	
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
	public Integer getCampSitesCount(Map<String, Object>param) {
		// TODO Auto-generated method stub
		return mapDao.getCampSitesCount(param);
	}
	
@Override
	public List<CampSite> getAllCampSites(String sort) {
		
		return mapDao.getAllCampSites(sort);
	}
@Override
public CampSite getLatLngCamp(Map<String, Object> param) {
	// TODO Auto-generated method stub
	return mapDao.getLatLngCamp(param);
	}
}
