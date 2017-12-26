$(function(){
	var footerText='<div class="foot"><ul class="foot-list"><a href="about.html">关于我们</a><a href="#">官方微博</a><a href="about.html#lx">联系方式</a><a href="about.html#zp">招聘信息</a></ul><div class="foot-info"><p>光线传媒A股股票发行上市信息披露:www.cninfo.com.cn</p><p>Copyright@ 2000-2017 北京光线易视网络科技有限公司 版权所有</p><p><a href="movie_play.html">京ICP备06042475号 京ICP证050023号 </a>信息网络传播视听节目许可证0108231号 京公网安备11010102000025号</p></div></div>'
	var script = $('body script').eq(0);
	script.before(footerText);
})