<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Date date = new Date();
SimpleDateFormat a = new SimpleDateFormat("yyyy年MM月dd日");
String c = a.format(date);
out.println(c + "    ");
%>


