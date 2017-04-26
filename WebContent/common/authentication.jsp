<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userID = (String)request.getSession().getAttribute("userID"); 
	if(userID==null){
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
%>