<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@include file="common.jsp"%>
<%
	String userID = (String)request.getSession().getAttribute("userID");
%>
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
	</ul>
</nav>
<script type="text/javascript">
	function doLogout(){
		window.location.href="logout";
	}
</script>

