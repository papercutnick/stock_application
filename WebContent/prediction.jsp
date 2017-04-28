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
<link href="/<%=contextRoot %>/css/highcharts.css" rel="stylesheet">
<link href="/<%=contextRoot %>/css/prediction.css" rel="stylesheet">
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
		    <div class="small-2 columns">
		      <label for="chart1"><input type="radio" name="chart" value="chart1" id="chart1" checked>Real Time</label>
		    </div>
		    <div class="small-2 columns">
		      <label for="chart2"><input type="radio" name="chart" value="chart2" id="chart2">History</label>
		    </div>
		    <div class="small-2 columns">
		      <label id="BYS"></label>
		    </div>
		    <div class="small-2 columns">
		      <label id="ANN"></label>
		    </div>
		  </div>
		</form>
		<div id="container"></div>
	</div>
</body>
<script src="/<%=contextRoot %>/js/vendor/jquery.js"></script>
<script src="/<%=contextRoot %>/js/vendor/foundation.js"></script>
<script src="/<%=contextRoot %>/js/vendor/highcharts/highstock.js"></script>
<script src="/<%=contextRoot %>/js/vendor/highcharts/modules/exporting.js"></script>
<script type="text/javascript">
	$(document).foundation();
	
	$(function(){
		$("#stockCode").change(function () {
			var chart=$("[name=chart]:checked").val();
			$("#container").empty();
			if(chart=="chart1"){
				getRealTimeChart();
			}else if(chart=="chart2"){
				getHistoryChart();
			}
			getPrediction();
	    });
		
		$("#chart1").click(function () {
			$("#container").empty();
			getRealTimeChart();
		});
		
		$("#chart2").click(function () {
			$("#container").empty();
			getHistoryChart();
		});
		
		getPrediction();
		getRealTimeChart();
	});
	
	function getPrediction(){
		var code = $("#stockCode").val();
		$.get("Prediction", {stockCode: code}, function(data){
			data=data.split("|");
			var price=parseFloat(data[0].split(",")[0]);
			var bys_d=parseInt(data[0].split(",")[1]);
			var ann_d=parseInt(data[1]);
			
			$("#BYS").text("Predicted: "+price);
			if(bys_d!=ann_d){
				$("#ANN").text("Suggestion: HOLD");
			}else if(ann_d==-1){
				$("#ANN").text("Suggestion: SELL");
			}else{
				$("#ANN").text("Suggestion: BUY");
			}
		});
	}
	
	function getRealTimeChart(){
		var code = $("#stockCode").val();
		$.get("ChartQuery", {stockCode: code, type:"realtime"}, function(data){
			data=eval(data);
			// split the data set into ohlc and volume
		    var prices = [],
		        volume = [],
		        dataLength = data.length,
		        // set the allowed units for data grouping
		        groupingUnits = [[
		            'week',                         // unit name
		            [1]                             // allowed multiples
		        ], [
		            'month',
		            [1, 2, 3, 4, 6]
		        ]];
	
		        i = 0;
	
		    for (i; i < dataLength; i += 1) {
		    	prices.push([
		            data[i][0], // the date
		            data[i][1], // price
		        ]);
	
		        volume.push([
		            data[i][0], // the date
		            data[i][2] // the volume
		        ]);
		    }
			
			// create the chart
		    Highcharts.stockChart('container', {


		        title: {
		            text: code+' stock price by minute'
		        },

		        xAxis: {
		            gapGridLineWidth: 0
		        },
		        
		        yAxis: [{
		            labels: {
		                align: 'right',
		                x: -3
		            },
		            title: {
		                text: 'prices'
		            },
		            height: '60%',
		            lineWidth: 2
		        }, {
		            labels: {
		                align: 'right',
		                x: -3
		            },
		            title: {
		                text: 'Volume'
		            },
		            top: '65%',
		            height: '35%',
		            offset: 0,
		            lineWidth: 2
		        }],

		        rangeSelector: {
		            buttons: [{
		                type: 'hour',
		                count: 1,
		                text: '1h'
		            }, {
		                type: 'day',
		                count: 1,
		                text: '1D'
		            }, {
		                type: 'all',
		                count: 1,
		                text: 'All'
		            }],
		            selected: 1,
		            inputEnabled: false
		        },
				
		        tooltip: {
		            split: true
		        },
		        
		        series: [{
		            name: code,
		            type: 'area',
		            data: prices,
		            gapSize: 5,
		            tooltip: {
		                valueDecimals: 2
		            },
		            fillColor: {
		                linearGradient: {
		                    x1: 0,
		                    y1: 0,
		                    x2: 0,
		                    y2: 1
		                },
		                stops: [
		                    [0, "#7cb5ec"],
		                    [1, "rgba(124,181,236,0)"]
		                ]
		            },
		            threshold: null
		        }, {
		            type: 'column',
		            name: 'Volume',
		            data: volume,
		            yAxis: 1
		        }]
		    });
		});
	}
	
	function getHistoryChart(){
		var code = $("#stockCode").val();
		$.get("ChartQuery", {stockCode: code, type:"history"}, function(data){
			data=eval(data);
			// split the data set into ohlc and volume
		    var ohlc = [],
		        volume = [],
		        dataLength = data.length,
		        // set the allowed units for data grouping
		        groupingUnits = [[
		            'week',                         // unit name
		            [1]                             // allowed multiples
		        ], [
		            'month',
		            [1, 2, 3, 4, 6]
		        ]];
	
		        i = 0;
	
		    for (i; i < dataLength; i += 1) {
		        ohlc.push([
		            data[i][0], // the date
		            data[i][1], // open
		            data[i][2], // high
		            data[i][3], // low
		            data[i][4] // close
		        ]);
	
		        volume.push([
		            data[i][0], // the date
		            data[i][5] // the volume
		        ]);
		    }
	
	
		    // create the chart
		    Highcharts.stockChart('container', {
	
		        rangeSelector: {
		            selected: 1
		        },
	
		        title: {
		            text: code+' Historical'
		        },
	
		        yAxis: [{
		            labels: {
		                align: 'right',
		                x: -3
		            },
		            title: {
		                text: 'OHLC'
		            },
		            height: '60%',
		            lineWidth: 2
		        }, {
		            labels: {
		                align: 'right',
		                x: -3
		            },
		            title: {
		                text: 'Volume'
		            },
		            top: '65%',
		            height: '35%',
		            offset: 0,
		            lineWidth: 2
		        }],
	
		        tooltip: {
		            split: true
		        },
	
		        series: [{
		            type: 'candlestick',
		            name: code,
		            data: ohlc,
		            dataGrouping: {
		                units: groupingUnits
		            }
		        }, {
		            type: 'column',
		            name: 'Volume',
		            data: volume,
		            yAxis: 1,
		            dataGrouping: {
		                units: groupingUnits
		            }
		        }]
		    });
		})
		//$.getJSON('https://www.highcharts.com/samples/data/jsonp.php?filename=aapl-ohlcv.json&callback=?', function (data) {
			
		    
		//});
	}
</script>
</html>
