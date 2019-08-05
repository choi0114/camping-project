package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.HomeDao;
import com.sample.camping.vo.CampSite;

@Service
public class HomeServiceImpl implements HomeService{

	@Autowired
	private HomeDao homeDao;
	
	@Override
	public int getCountByKeyword(String keyword) {
		return homeDao.getCountByKeyword(keyword);
	}
	
	@Override
	public List<CampSite> getCampSitesByKeyword(Map<String, Object> map) {
		return homeDao.getCampSitesByKeyword(map);
	}
}
