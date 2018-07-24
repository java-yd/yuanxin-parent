<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企联互联后台数据管理入口</title>
<meta name="viewport" content="width=device-width">
<link href="<%=basePath%>css/login.css" rel="stylesheet" type="text/css">
<link rel="icon" href="<%=basePath%>favicon.ico" mce_href="<%=basePath%>favicon.ico" type="image/x-icon">
</head>
<body>
	<div class="login">
		<form action="<%=basePath%>manager/ma_login" id="login_form" method="post">
			<div class="logo"></div>
			<div class="login_form">
				<div class="user">
					<input class="text_value" value="" name="name" type="text" id="name"> 
					<input class="text_value" value="" name="password" type="password" id="password">
				</div>
				<button class="button" id="submit" type="submit">登录</button>
			</div>
			<div id="tip"><font  color="red">${requestScope.errormsg }</font></div>
			<div class="foot">Copyright &copy; 2016  <a  href="http://www.qiliandata.com/" target="_blank">企联互联网络科技版本所有</a>　</div>
		</form>
	</div>
</body>
</html>