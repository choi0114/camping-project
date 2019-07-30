package com.sample.camping.view;

import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Reader;
import java.net.URL;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.web.servlet.view.AbstractView;

public class WeatherXMLView extends AbstractView {

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		URL url = new URL((String) model.get("path"));
		
		response.setContentType("text/xml;charset=utf-8");
		Reader reader = new InputStreamReader(url.openStream(), "utf-8");
		PrintWriter writer = response.getWriter();
		
		IOUtils.copy(reader, writer);
		
		
	}
}
