<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/foundation.css" rel="stylesheet">
<link href="css/loginregister.css" rel="stylesheet">
<title>index</title>
<style type="text/css">
		
</style>
</head>
<body>
	<nav>
		<ul class="menu">
		  <li><a href="#">Item One</a></li>
		</ul>
	</nav>
	<div class="login-box">
	  <div id="frame" class="row collapse expanded">
	  <form id="login" action="" method="post">
	    <div class="small-12 medium-6 column small-order-2 medium-order-1">
	      <div class="login-box-social-section-inner">
	        <h1 class="login-box-title">Sign In</h1>
	        <label>Email
			    <input type="email" placeholder="somebody@example.com">
			</label>
			<label>Password
			    <input type="password" placeholder="Password">
			</label>
			<p><input type="submit" class="button expanded" value="Log in"></input></p>
	      </div>
	      <div class="or">OR</div>
	    </div>
	   </form>
	   <form id="signup" action="" method="post">
	    <div class="small-12 medium-6 column small-order-2 medium-order-1">
	      <div class="login-box-form-section">
	        <h1 class="login-box-title">Sign up</h1>
	        <input class="login-box-input" type="text" name="username" placeholder="Username" />
	        <input class="login-box-input" type="email" name="email" placeholder="E-mail" />
	        <input class="login-box-input" type="password" name="password" placeholder="Password" />
	        <input class="login-box-input" type="password" name="password2" placeholder="Retype password" />
	        <input class="login-box-submit-button" type="submit" name="signup_submit" value="Sign me up" />
	      </div>
	    </div>
	  </form>
	  </div>
	</div>
</body>

<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/foundation.js"></script>
<script type="text/javascript">
	$(document).foundation();
	$(function(){
		$(".login-box").css({"margin-top": ($(window).height()-390)/2-40+"px"});
		$(window).resize(function(){
			$(".login-box").css({"margin-top": ($(window).height()-390)/2-40+"px"});
		});
		$("#frame").hover(function(){
			
		});
		
	});
	
	
</script>
</html>