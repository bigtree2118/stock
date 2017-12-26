package io.bigtree.stock.vpa.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;



/**
 * 初始化全局参数(备注：引用系统有特殊需求，可自行继承覆盖)
 * 
 * @author Jack
 */
public class InitListener implements HttpSessionListener, ServletContextListener, ServletContextAttributeListener {
	
	@Override
	public void attributeAdded(ServletContextAttributeEvent arg0) {
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent arg0) {
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent arg0) {
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		ServletContext servletContext = (ServletContext) event.getServletContext();
		servletContext.setAttribute("_path", servletContext.getContextPath());
	}

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
	}
}
