<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@include file="common.jsp"%>
<%
	String userID = (String)request.getSession().getAttribute("userID");
	String username = (String)request.getSession().getAttribute("username");
%>
<script src="/<%=contextRoot %>/js/vendor/jquery.js"></script>
<style>
.round {
  border-radius: 5000px;
  padding-left: 1.5rem;
  padding-right: 1.5rem;
}
</style>
<nav>
	<ul class="menu">
	  <li style="display:inline-block"><img src="/<%=contextRoot %>img/wealthgot.png"></li>
	  <% if(userID!=null){ %>
	  <li style="float:right;cursor:pointer"><img src="/<%=contextRoot %>img/logout-button.png" onclick='doLogout()'></li>
	  <% } %>
	  <li id="back" style="float:right;cursor:pointer"><img src="/<%=contextRoot %>img/return.png" onclick='doGoback()'></li>
	  <% if(username!=null){ %>
	  <li style="float:right;color:white;margin-top:20px">Hello, <%=username %></li>
	  <% } %>
	</ul>
</nav>
<script type="text/javascript">
	$(function(){
		if($("body").hasClass("no-go-back")){
			$("#back").hide();
		}
	});
	
	function doLogout(){
		window.location.href="logout";
	}
	function doGoback(){
		window.location.href="SelectF.jsp";
	}
</script>

