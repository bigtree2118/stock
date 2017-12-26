package io.bigtree.stock.vpa.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class StaticCacheFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletResponse res = (HttpServletResponse)response;
		res.setHeader("Cache-Control", "no-cache, must-revalidate");
		res.setHeader("pragma", "no-cache");
		res.setHeader("expires", "0");
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		
	}

}
