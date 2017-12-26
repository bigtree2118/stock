$(function(){
	var Url = window.location.href;
	var now ='';
	var reg =/(index|movie|comic|star|about)/i;
	switch(Url.match(reg) ? Url.match(reg)[0]:1){
		case "index":
			now ='<ul class="nav"><li><a class="now" href="index.html" title="">首页</a></li><li><a href="movie.html" title="">电影</a></li><li><a href="comic.html" title="">动漫</a></li><li><a href="star.html" title="">艺人</a></li><li><a href="about.html" title="">关于我们</a></li></ul>'
			break;
		case "movie":
			now ='<ul class="nav"><li><a href="index.html" title="">首页</a></li><li><a class="now" href="movie.html" title="">电影</a></li><li><a href="comic.html" title="">动漫</a></li><li><a href="star.html" title="">艺人</a></li><li><a href="about.html" title="">关于我们</a></li></ul>'
			break;
		case "comic":
			now ='<ul class="nav"><li><a href="index.html" title="">首页</a></li><li><a href="movie.html" title="">电影</a></li><li><a class="now" href="comic.html" title="">动漫</a></li><li><a href="star.html" title="">艺人</a></li><li><a href="about.html" title="">关于我们</a></li></ul>'
			break;
		case "star":
			now ='<ul class="nav"><li><a href="index.html" title="">首页</a></li><li><a href="movie.html" title="">电影</a></li><li><a href="comic.html" title="">动漫</a></li><li><a class="now" href="star.html" title="">艺人</a></li><li><a href="about.html" title="">关于我们</a></li></ul>'
			break;
		case "about":
			now ='<ul class="nav"><li><a href="index.html" title="">首页</a></li><li><a href="movie.html" title="">电影</a></li><li><a href="comic.html" title="">动漫</a></li><li><a href="star.html" title="">艺人</a></li><li><a class="now" href="about.html" title="">关于我们</a></li></ul>'
			break;
		default:
		now ='<ul class="nav"><li><a href="index.html" title="">首页</a></li><li><a href="movie.html" title="">电影</a></li><li><a href="comic.html" title="">动漫</a></li><li><a href="star.html" title="">艺人</a></li><li><a href="about.html" title="">关于我们</a></li></ul>'
	}
	var headerText='<div class="top"><div class="wrap"><a href="index.html"><h1 class="logo">火山风暴</h1></a>'+now+'</div></div>'
	$('body').prepend(headerText);
})