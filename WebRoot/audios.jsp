<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + "-:" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>
	<a href="http://localhost:8080/audiosys/upload.jsp">添加音频</a>
	<br>
	<br>
	音频列表:
	<br>
	<s:iterator value="audio">
	<br>
	<h1>	
		<s:property value="audio.audioName" />
	</h1>
	<h3>
		 音频编号：<s:property value="audio.audioId" /><br>
	</h3>
	 </s:iterator>
	 <a href="#">删除音频</a>
	
</body>
</html>
