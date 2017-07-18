<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"%>
<%
	response.setContentType("text/html;charset=utf-8");//设置相应的MINI类型

	out.println("<h1>response内置对象</h1>");
	out.println("<br>");
	//out.flush();
	
	PrintWriter outer = response.getWriter();
	outer.println("我是response对象生成的输出流outer对象");
	//输出流对象提前于out对象
	
	//客户端行为 本质上等同于两次请求 前一次的请求对象不会保存 地址栏的url地址会改变
	//response.sendRedirect("requestst.jsp");//重定向
	
	//服务器端信息相当于一次请求 地址栏url不会改变
	request.getRequestDispatcher("requestst.jsp").forward(request,response);	
%>

