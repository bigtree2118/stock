package io.bigtree.stock.vpa.controller.kline;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class KlineController {
	@RequestMapping(value="kline")
	public ModelAndView kline() {
		return new ModelAndView("kline/kline");
	}
	
	@RequestMapping(value="candlestick")
	public ModelAndView candlestick() {
		return new ModelAndView("kline/candlestick");
	}
	
	@RequestMapping(value="echarts")
	public ModelAndView echarts() {
		return new ModelAndView("kline/echarts");
	}
}
