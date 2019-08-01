package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.CampsiteDao;
import com.sample.camping.vo.CampSite;
@Service
public class CampSiteSeviceImpl implements CampSiteService {
	@Autowired
	private CampsiteDao campsiteDao;
	
	@Override
	public List<CampSite> selectCampsite(Map<String, Object> map) {
		return (List<CampSite>) campsiteDao.selectCampsite(map);
	}

	@Override
	public Integer selectCampCount(Map<String, Object> map) {
		return campsiteDao.selectCampCount(map);
	}

}
