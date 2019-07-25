package com.sample.camping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.CampsiteDao;
import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.Criteria;
@Service
public class CampSiteSeviceImpl implements CampSiteService {
	@Autowired
	private CampsiteDao campsiteDao;
	
	@Override
	public List<CampSite> selectCampsite(Criteria criteria) {
		return (List<CampSite>) campsiteDao.selectCampsite(criteria);
	}

}
