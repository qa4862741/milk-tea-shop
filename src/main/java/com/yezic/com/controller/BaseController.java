package com.yezic.com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ModelAttribute;

public class BaseController {
	
	@ModelAttribute
	public void setBasePath(HttpServletRequest request) {
		StringBuffer requestURL = request.getRequestURL();
		String[] urls = requestURL.toString().split("/");
		if(urls.length>=2){
			String part1 = urls[urls.length-1];
			String part2 = urls[urls.length-2];
			String id = part2+part1.toUpperCase().substring(0, 1)+part1.substring(1, part1.length());
			request.setAttribute("activeId", id);
		}
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
		request.setAttribute("basePath", basePath);
	}
}
