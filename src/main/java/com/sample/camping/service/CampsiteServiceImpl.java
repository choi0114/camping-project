package com.sample.camping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.CampsiteDao;
import com.sample.camping.vo.CampSite;

@Service
public class CampsiteServiceImpl implements CampsiteService {

	@Autowired
	CampsiteDao campsiteDao;
	
	@Override
	public CampSite getCampSiteByNo(int no) {
		return campsiteDao.getCampSiteByNo(no);
	}
}
