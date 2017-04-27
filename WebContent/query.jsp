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
	<jsp:include page="common/header.jsp" />
	<div class="blur-box">

	  <section class="contact-us-section">
		  <div class="row medium-unstack display-in-one-line">
		    <div class="columns contact-us-section-left">
		      <fieldset>
			    <label for="query1"><input type="radio" name="query" value="query1" id="query1" checked>Show the list of all companies in the database along with their latest stock price (real time latest stock price)</label>
			    <br>
			    <label for="query2"><input type="radio" name="query" value="query2" id="query2">Get the highest stock price of 
				    <select>
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
				 in the last ten days.</label>
			    <br>
			    <label for="query3"><input type="radio" name="query" value="query3" id="query3">Average stock price of 
				    <select>
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
				  in the latest one year.</label>
			    <br>
			    <label for="query4"><input type="radio" name="query" value="query4" id="query4">Lowest stock price for  
				    <select>
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
				  in the latest one year.</label>
			    <br>
			    <label for="query5" class="last-query"><input type="radio" name="query" value="query5" id="query5">List the ids of companies along with their names who have the average stock price lesser than the lowest of
any of the Selected Company in the latest one year. 
				 </label>
				<select multiple class="multiple-select">
					    <option value="BIDU">BIDU</option>
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
			  </fieldset>
			  <div class="row">
			  	<div class="small-1 columns small-offset-10">
			  		<a class="button round" href="#" onclick=''>Query</a>
				</div>
			  </div>
		    </div>
		    <div class="columns contact-us-section-right">
		      <h1 class="query-header">Results</h1>
		      <form class="contact-us-form">
		        <textarea name="message" id="" rows="12" readOnly></textarea>
		        <div class="row">
				  	<div class="small-1 columns small-offset-10">
				  		<a class="button round" href="#" onclick=''>Clear</a>
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
