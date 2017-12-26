package io.bigtree.stock.vpa.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 首页管理
 * 
 * @author Jack
 */
@Controller
public class IndexController {

	@RequestMapping(value="index")
	public ModelAndView index() {
		return new ModelAndView("index.page");
	}
	
	@RequestMapping(value="about")
	public ModelAndView about() {
		return new ModelAndView("about.page");
	}
}
