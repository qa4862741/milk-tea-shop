package com.yezic.com.util;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Service;
import org.springframework.web.context.ServletContextAware;

/**
 * ServletContentUtil工具类
 *
 */
@Service
public class ServletContextUtil implements ServletContextAware {

	private static ServletContext servletContext;

	@SuppressWarnings("static-access")
	public void setServletContext(ServletContext servletContext) {
		this.servletContext=servletContext; 
	}
	         
	/**
	 * 得到ServletContext
	 * @return
	 */
	public static ServletContext getServletContext() {
		return servletContext;
	}
	
	/**
	 * 得到servletContext中的对象
	 * @param name
	 * @return
	 */
	public static Object getAppObject(String name) {
		if(servletContext!=null) {
			return servletContext.getAttribute(name);
		}
		return null;
	}
}
