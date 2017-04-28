<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userID = (String)request.getSession().getAttribute("userID"); 
	if(userID==null){
		response.sendRedirect("index.jsp");
	}else if("admin@rutgers.edu".equals(userID)){
		response.sendRedirect("admin.jsp");
	}
%>