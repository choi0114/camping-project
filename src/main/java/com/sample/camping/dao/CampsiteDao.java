package com.sample.camping.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.camping.vo.CampSite;
import com.sample.camping.vo.Criteria;

@Repository
public interface CampsiteDao {
	public List<CampSite> selectCampsite (Criteria criteria);
}
