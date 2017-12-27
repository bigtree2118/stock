<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>K线图</title>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${_path }/static/kline/js/kline.css" rel="stylesheet"/>
    <script src="${_path }/static/kline/lib/jquery.js"></script>
    <script src="${_path }/static/kline/lib/jquery.mousewheel.js"></script>
    <style type="text/css">
        .kline {
            width: 1200px;
            margin-left: auto;
            margin-right: auto;
            height: 462px;
            position: relative;
        }
    </style>
</head>
<body>
	<div class="kline">
	    <h1>K线图</h1>
	    <div id="kline_container"></div>
	</div>
	
	<script src="${_path }/static/kline/js/kline.js"></script>
	
	<script type="text/javascript">
	
	    var kline = new Kline({
	        element: "#kline_container",
	        width: 1200,
	        height: 650,
	        theme: 'light', // light/dark
	        language: 'zh-cn', // zh-cn/en-us/zh-tw
	        ranges: ["1w", "1d", "1h", "30m", "15m", "5m", "1m", "line"],
	        symbol: "coin5/coin4",
	        symbolName: "COIN5_COIN4",
	        type: "poll", // poll/socket
	        url: "http://localhost:8080/stock-vpa/static/kline/mock.json",
	        limit: 1000,
	        intervalTime: 5000,
	        debug: true,
	        showTrade: false,
	        onResize: function(width, height) {
	            console.log("chart resized: " + width + " " + height);
	        }
	    });
	
	    kline.draw();
	</script>

</body>
</html>