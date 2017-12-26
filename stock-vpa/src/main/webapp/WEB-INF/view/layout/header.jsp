<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<div class="top">
	<div class="wrap">
		<a href="${_path}/index"><h1 class="logo"><img alt="火山风暴" title="火山风暴" src="${_path}/static/image/logo.png"></h1></a>
		<ul class="nav">
			<li><a id="menu_index" href="${_path}/index" title="">首页</a></li>
			<%-- 
			<li><a id="menu_film" href="${_path}/film/index" title="">电影</a></li>
			--%>
			<li><a id="menu_actor" href="${_path}/actor/index" title="">艺人</a></li>
			<li><a id="menu_comic" href="${_path}/comic/index" title="">动漫</a></li>
			<li><a id="menu_about" href="${_path}/about" title="">关于我们</a></li>
		</ul>
	</div>
	<script type="text/javascript">
		var now_menu = '<tiles:getAsString name="now" />';
		var now_menu_element = document.getElementById('menu_' + now_menu);
		if(now_menu_element){
			now_menu_element.classList.add('now');
		}
	</script>
</div>