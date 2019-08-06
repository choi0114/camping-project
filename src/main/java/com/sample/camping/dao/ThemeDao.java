package com.sample.camping.dao;

import java.util.List;

import com.sample.camping.vo.Theme;

public interface ThemeDao {

	List<Theme> getThemesByCategory(String category);
	List<Theme> getThemesByCampSite(int no);
}
