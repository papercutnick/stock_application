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
<link href="/<%=contextRoot %>/css/indicator.css" rel="stylesheet">
<title>index</title>
<style type="text/css">
		

</style>
</head>
<body>
	<jsp:include page="common/header.jsp" />
	<div class="blur-box">
		<form>
		  <div class="row top">
		    <div class="small-2 columns align-right">
		      <label>Stock Code</label>
		    </div>
		    <div class="small-2 columns">
		          <select id="stockCode">
				    <option value="BIDU" selected>BIDU</option>
				    <option value="ORCL">ORCL</option>
				    <option value="FB">FB</option>
				    <option value="CSCO">CSCO</option>
				    <option value="YHOO">YHOO</option>
				    <option value="AMZN">AMZN</option>
				    <option value="COST">COST</option>
				    <option value="GOOG">GOOG</option>
				    <option value="TSLA">TSLA</option>
				    <option value="MSFT">MSFT</option>
				  </select>
		    </div>
		    <div class="small-2 columns align-right">
		      <label>Indicator Type</label>
		    </div>
		    <div class="small-2 columns">
		          <select id="indicatorType">
				    <option value="BIDU" selected>BIDU</option>
				  </select>
		    </div>
		    <div class="small-1 columns">
		      <label for="day"><input type="radio" name="interval" value="day" id="day" checked>30d</label>
		    </div>
		    <div class="small-1 columns">
		      <label for="month"><input type="radio" name="interval" value="month" id="month">6m</label>
		    </div>
		    <div class="small-2 columns">
		      <label for="year"><input type="radio" name="interval" value="year" id="year">1Y</label>
		    </div>
		  </div>
		</form>
		<div id="container"></div>
	</div>
</body>
<script src="/<%=contextRoot %>/js/vendor/jquery.js"></script>
<script src="/<%=contextRoot %>/js/vendor/foundation.js"></script>
<script type="text/javascript">
	$(document).foundation();
	
	
</script>
</html>
