<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.* , java.text.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>session内置对象</title>
    
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
    <h1>session内置对象</h1>
    <br>
    <%
    //session可以在各个浏览器中保存用户的状态
      SimpleDateFormat a = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
      Date b = new Date(session.getCreationTime());
      session.setAttribute("username", "admin");
      session.setAttribute("password", "123456");
      session.setAttribute("year", "20");
      
      //设置当前session最大生成期限 单位是秒
      //session.setMaxInactiveInterval(5);
     %>
    session创建时间<%=a.format(b) %><br>
    session的id号<%= session.getId() %><br>
          从session中获取用户名<%=session.getAttribute("username") %><br>
          
          <a href="Session1.jsp" target="_blank">跳转到新的session</a>>
  </body>
</html>
