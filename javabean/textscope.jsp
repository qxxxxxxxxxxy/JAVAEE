<%@ page language="java" import="java.util.*,com.po.Users" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'textscope.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>Javabean的四个作用域范围</h1>
    <hr>
    <jsp:uesBean id="myUsers" class="com.po.Users" scope="application"/>
    <jsp:setProperty property="*" name="myUsers"/>
	 用户名: <jsp:getProperty property="username" name="myUsers"/>   <br>
	 密码: <jsp:getProperty property="password" name="myUsers"/>   <br><br>
  </body>
</html>
