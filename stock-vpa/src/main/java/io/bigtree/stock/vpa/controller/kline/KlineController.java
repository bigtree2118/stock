package io.bigtree.stock.vpa.controller.kline;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class KlineController {
	@RequestMapping(value="kline")
	public ModelAndView index() {
		return new ModelAndView("kline/kline");
	}
}
