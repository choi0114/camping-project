package com.sample.camping.service;

import java.util.List;

import com.sample.camping.vo.Theme;

public interface ThemeService {

	List<Theme> getThemesByCategory(String category);
	List<Theme> getThemesByCampSite(int no);
}
