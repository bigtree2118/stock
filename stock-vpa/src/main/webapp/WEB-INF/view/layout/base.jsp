<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>
	<tiles:getAsString name="title" />
</title>
<link rel="stylesheet" href="${_path}/static/style/base.css">
<link rel="stylesheet" href="${_path}/static/style/tool.css">
<link rel="stylesheet" href="${_path}/static/style/style.css">
<script src="${_path}/static/js/jquery.min.js"></script>
<script type="text/javascript">
	ctx={
		basePath: '${_path}',
		ossRootPath: '${_ossRootPath}'
	};
</script>
</head>
<body>
<tiles:insertAttribute name="header" />

<tiles:insertAttribute name="body" />

<tiles:insertAttribute name="footer" />
</body>
</html>