package com.sample.camping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.ThemeDao;
import com.sample.camping.vo.Theme;

@Service
public class ThemeServiceImpl implements ThemeService {

	@Autowired
	private ThemeDao themeDao;
	
	@Override
	public List<Theme> getThemesByCategory(String category) {
		return themeDao.getThemesByCategory(category);
	}
	
	@Override
	public List<Theme> getThemesByCampSite(int no) {
		return themeDao.getThemesByCampSite(no);
	}
}
