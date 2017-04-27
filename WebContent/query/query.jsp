<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@include file="../common/common.jsp"%>
<%@include file="../common/authentication.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/<%=contextRoot %>/css/foundation.css" rel="stylesheet">
<link href="/<%=contextRoot %>/css/common.css" rel="stylesheet">
<link href="/<%=contextRoot %>/css/query.css" rel="stylesheet">
<title>index</title>
<style type="text/css">
		
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="blur-box">
	  <section class="contact-us-section">
		  <div class="row medium-unstack display-in-one-line">
		    <div class="columns contact-us-section-left">
		      <h1 class="query-header">Query: </h1>
		      <fieldset>
			    <input type="radio" name="query1" value="query1" id="query1" selected><label for="query1">Show the list of all companies in the database along with their latest stock price (real time latest stock price)</label>
			    <br>
			    <input type="radio" name="pokemon" value="Blue" id="pokemonBlue"><label for="pokemonBlue">Blue</label>
			    <br>
			    <input type="radio" name="pokemon" value="Yellow" id="pokemonYellow"><label for="pokemonYellow">Yellow</label>
			  </fieldset>
		    </div>
		    <div class="columns contact-us-section-right">
		      <h1 class="query-header">Mail Us</h1>
		      <form class="contact-us-form">
		        <input type="text" placeholder="Full name">
		        <input type="email" placeholder="Email">
		        <textarea name="message" id="" rows="12" placeholder="Type your message here"></textarea>
		        <div class="contact-us-form-actions">
		          <input type="submit" class="button" value="Send it" />
		          <div>
		            <label for="FileUpload" class="button contact-us-file-button">Attach Files</label>
		            <input type="file" id="FileUpload" class="show-for-sr">
		          </div>
		        </div>
		      </form>
		    </div>
		  </div>
	</section>
	</div>
</body>
<script src="/<%=contextRoot %>/js/vendor/jquery.js"></script>
<script src="/<%=contextRoot %>/js/vendor/foundation.js"></script>
<script type="text/javascript">
	
</script>
</html>