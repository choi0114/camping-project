package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.HomeDao;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.FreeBoard;
import com.sample.camping.vo.NoticeBoard;
import com.sample.camping.vo.ReviewBoard;

@Service
public class HomeServiceImpl implements HomeService{

	@Autowired
	private HomeDao homeDao;
	
	@Override
	public int getCountByKeyword(Map<String, Object> map) {
		return homeDao.getCountByKeyword(map);
	}
	
	@Override
	public List<CampSite> searchCampSites(Map<String, Object> map) {
		return homeDao.searchCampSites(map);
	}
	
	@Override
	public List<CampSite> getGugunBysido(String city) {
		return homeDao.getGugunBysido(city);
	}
	
	@Override
	public List<Map<String, Object>> getCampSitesByUpdate() {
		return homeDao.getCampSitesByUpdate();
	}
	
	@Override
	public Map<String, Object> getCounts() {
		return homeDao.getCounts();
	}
	
	@Override
	public List<ReviewBoard> getAllReviewBoard() {
		return homeDao.getAllReviewBoard();
	}
	
	@Override
	public List<FreeBoard> getAllFreeBoard() {
		return homeDao.getAllFreeBoard();
	}
	
	@Override
	public List<NoticeBoard> getAllNoticeBoard() {
		return homeDao.getAllNoticeBoard();
	}
	
	@Override
	public void addBookmark(Map<String, Object> map) {
		homeDao.addBookmark(map);
	}
	
	@Override
	public void deleteBookmark(Map<String, Object> map) {
		homeDao.deleteBookmark(map);
	}
}
