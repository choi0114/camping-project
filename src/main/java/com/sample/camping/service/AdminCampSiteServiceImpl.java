package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.sample.camping.dao.AdminCampSiteDao;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.Statistics;

@Service
public class AdminCampSiteServiceImpl implements AdminCampSiteService {

	@Autowired
	private AdminCampSiteDao campSiteDao;
	
	@Override
	public List<Statistics> gugunStatistics() {
		// TODO Auto-generated method stub
		return campSiteDao.gugunStatistics();
	}
	@Override
	public List<Statistics> sidoStatistics() {
		// TODO Auto-generated method stub
		return campSiteDao.sidoStatistics();
	}
	@Override
	public List<Statistics> campsiteStatistics() {
		// TODO Auto-generated method stub
		return campSiteDao.campsiteStatistics();
	}	
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
		return campSiteDao.getCampingSitesByNo(no);
	}
	
	@Override
	public int getCampingSitesCount(Map<String, Object> map) {
		return campSiteDao.getCampingSitesCount(map);
	}
	
	@Override
	public void updateCampingSitesByNo(CampSite campSite) {
		campSiteDao.updateCampingSitesByNo(campSite);
	}
	
	@Override
	public void deleteCampingSite(int[] campsiteNo) {
		
		for (Integer no : campsiteNo) {
			CampSite campSite = campSiteDao.getCampingSitesByNo(no);
			campSite.setUsedYn("N");
			campSiteDao.updateCampingSitesByNo(campSite);
		}
	}
	
	@Override
	public void deleteCampingSites(int[] campsiteNo) {
		
		for (Integer no : campsiteNo) {
			CampSite campSites = campSiteDao.getCampingSitesByNo(no);
			campSites.setUsedYn("Y");
			campSiteDao.updateCampingSitesByNo(campSites);
		}
	}
}
