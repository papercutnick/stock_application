<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@include file="common/common.jsp"%>
<%
	String errorFlag = (String)request.getAttribute("errorFlag");
	String username = (String)request.getAttribute("username");
	String email = (String)request.getAttribute("email");
	
	String userID = (String)request.getSession().getAttribute("userID"); 
	if(userID!=null){
		response.sendRedirect("SelectF.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/foundation.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/loginregister.css" rel="stylesheet">
<title>index</title>
<style type="text/css">
		
</style>
</head>
<body class="no-go-back">
	<jsp:include page="common/header.jsp" />
	<div class="login-box blur-box">
	  <div id="frame" class="row collapse expanded" >
	  <form id="login" action="login" method="post" data-abide novalidate>
	    <div class="small-12 medium-6 column small-order-2 medium-order-1 signin">
	      <div class="login-box-social-section-inner">
	        <h1 class="login-box-title"><b>Sign In</b></h1>
	        <label>Account
			    <input type="text" name="email" placeholder="somebody@example.com" required pattern="Email" size="50" <%="log01".equals(errorFlag)?"value='"+email+"'":"" %>>
			    <span class="form-error">This field is required.</span>
			</label>
			<label <%="log01".equals(errorFlag)?"class='is-invalid-label'":"" %>>Password
			    <input type="password" name="password" placeholder="Password" required size="50" <%="log01".equals(errorFlag)?"class='is-invalid-input' data-invalid":"" %>>
			    <span class="form-error <%="log01".equals(errorFlag)?"is-visible":"" %>"><%="log01".equals(errorFlag)?"Account and password do not match.":"This field is required." %></span>
			</label>
			<p><a class="button expanded" href="#" onclick='login()'>Log in</a></p>
	      </div>
	      <div class="or">OR</div>
	    </div>
	   </form>
	   
	   <form id="signup" action="register" method="post" data-abide novalidate>
	    <div class="small-12 medium-6 column small-order-2 medium-order-1">
	      <div class="login-box-form-section">
	        <h1 class="login-box-title"><b>Sign Up</b></h1>
	        <label>Username
	        	<input type="text" name="username" placeholder="Username" required size="120" value="<%="reg01".equals(errorFlag)?username:"" %>">
	        	<span class="form-error">This field is required.</span>
	        </label>
	        <label <%="reg01".equals(errorFlag)?"class='is-invalid-label'":"" %>>Email
	       		<input  type="text" name="email" placeholder="somebody@example.com" required pattern="Email" size="50" <%="reg01".equals(errorFlag)?"class='is-invalid-input' data-invalid value='"+email+"'":"" %>>
	       		<span class="form-error <%="reg01".equals(errorFlag)?"is-visible":"" %>"><%="reg01".equals(errorFlag)?"Email address already in use.":"This field is required." %></span>
	        </label>
	        <label>Password
	        	<input  type="password" name="password" placeholder="Password" required data-validator="password_length_check" size="50">
	        	<span class="form-error">This field is required.</span>
	        </label>
	        <label>Retype password
	        	<input  type="password" name="password2" placeholder="Retype password" required data-validator="password_match_check" size="50">
	        	<span class="form-error">This field is required.</span>
	        </label>
	        <a class="button expanded" href="#" onclick='register()'>Sign me up</a>
	      </div>
	    </div>
	  </form>
	  </div>
	</div>
</body>
<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/foundation.js"></script>
<script src="js/user/user.js"></script>
<script type="text/javascript">
	
</script>
</html>