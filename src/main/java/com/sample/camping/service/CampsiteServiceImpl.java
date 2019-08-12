package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.CampsiteDao;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.LikeCampsite;
import com.sample.camping.vo.LikeHateCampsite;
import com.sample.camping.vo.OpinionBoard;
import com.sample.camping.vo.ReviewBoard;

@Service
public class CampsiteServiceImpl implements CampsitesService {

	@Autowired
	CampsiteDao campsiteDao;
	
	@Override
	public CampSite getCampSiteByNo(int no) {
		return campsiteDao.getCampSiteByNo(no);
	}
	
	@Override
	public List<CampSite> selectCampsite(Map<String, Object> map) {
		return (List<CampSite>) campsiteDao.selectCampsite(map);
	}

	@Override
	public Integer selectCampCount(Map<String, Object> map) {
		return campsiteDao.selectCampCount(map);
	}
	
	@Override
	public List<CampSite> getCampSiteByTheme(Map<String, Object> map) {
		return campsiteDao.getCampSiteByTheme(map);
	}
	
	@Override
	public List<CampSite> get10CampSites(Map<String, Object> map) {
		return campsiteDao.get10CampSites(map);
	}
	
	@Override
	public List<CampSite> getAllCampsites() {
		return campsiteDao.getAllCampsites();
	}
	
	@Override
	public List<CampSite> getCampsitesByGugun(String gugun) {
		return campsiteDao.getCampsitesByGugun(gugun);
	}
	
	@Override
	public List<OpinionBoard> getOpinionByCSNo(int no) {
		return campsiteDao.getOpinionByCSNo(no);
	}
	
	@Override
	public List<ReviewBoard> getReviewByCSNo(int no) {
		return campsiteDao.getReviewByCSNo(no);
	}
	
	@Override
	public void updateCampsite(Map<String, Object> map) {
		campsiteDao.updateCampsite(map);
	}
	
	@Override
	public LikeHateCampsite alreadyChecked(Map<String, Object> map) {
		return campsiteDao.alreadyChecked(map);
	}
	
	@Override
	public int getJjimCountByNo(int no) {
		return campsiteDao.getJjimCountByNo(no);
	}
	
	@Override
	public int getOpinionCountByCSNo(int no) {
		return campsiteDao.getOpinionCountByCSNo(no);
	}
	
	@Override
	public void insertLikeHate(Map<String, Object> map) {
		campsiteDao.insertLikeHate(map);
	}
	
	@Override
	public void insertJjim(Map<String, Object> map) {
		campsiteDao.insertJjim(map);
	}
	
	@Override
	public LikeCampsite getJjimByNoId(Map<String, Object> map) {
		return campsiteDao.getJjimByNoId(map);
	}
}
