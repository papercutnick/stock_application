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
				    <option value="AR" selected>AR</option>
				    <option value="MA" >MA</option>
				    <option value="OBV" >OBV</option>
				    <option value="ADL" >ADL</option>
				    <option value="ROC" >ROC</option>
				    <option value="RSI" >RSI</option>
				    <option value="SO" >SO</option>
				  </select>
		    </div>
		    <div class="small-1 columns">
		      <label for="day"><input type="radio" name="interval" value="1" id="day" checked>30d</label>
		    </div>
		    <div class="small-1 columns">
		      <label for="month"><input type="radio" name="interval" value="2" id="month">6m</label>
		    </div>
		    <div class="small-2 columns">
		      <label for="year"><input type="radio" name="interval" value="3" id="year">1Y</label>
		    </div>
		  </div>
		</form>
		<div id="container"></div>
	</div>
</body>
<script src="/<%=contextRoot %>/js/vendor/jquery.js"></script>
<script src="/<%=contextRoot %>/js/vendor/foundation.js"></script>
<script src="/<%=contextRoot %>/js/indi-highcharts.js"></script>
<script src="/<%=contextRoot %>/js/gray.js"></script>
<script type="text/javascript">
	$(document).foundation();
	
	$(function(){
		$("#stockCode").change(function () {
			getPrediction();
	    });
		
		$("#indicatorType").change(function () {
			getPrediction();
	    });
		
		$("#day").click(function () {
			getPrediction();
		});
		
		$("#month").click(function () {
			getPrediction();
		});
		
		$("#year").click(function () {
			getPrediction();
		});
		
		getPrediction();
	});
	
	function getPrediction(){
		$("#container").empty();
		var code=$("#stockCode").val();
		var type=$("#indicatorType").val();
		var itl=$("[name=interval]:checked").val();
		
		$.get("Indicator", {stockCode: code, indicatorType: type, interval: itl}, function(data){
			var i=type;
			var x=eval(data);
			
			new Highcharts.Chart({
                chart: {
                    renderTo: 'container',          //
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    defaultSeriesType: 'spline'   //line, spline, area, areaspline, column, bar, pie , scatter 
                },
                title: {
                    text: 'Indicators'
                }, 
                xAxis: {//X
                    
                    labels: {
                        rotation: -45, //
                        align: 'right',
                        style: { font: 'normal 13px Futura' }
                    }
                },
                yAxis: {//Y
                    title: {
                        text: 'weight'
                    }
                },
                tooltip: {
                    enabled: true,
                    formatter: function() {
                        return '<b>' + this.x + '</b><br/>' + this.series.name + ': ' + Highcharts.numberFormat(this.y, 1);
                    }
                },
                plotOptions: {
                    column: {
                        dataLabels: {
                            enabled: true
                        },
                        enableMouseTracking: true//
                    }
                },
               
                series: [{
                    name: i,
                    data: x
                }]
              });
		});
		
		$("#container").hide();
		$("#container").show();
	}
</script>
</html>
