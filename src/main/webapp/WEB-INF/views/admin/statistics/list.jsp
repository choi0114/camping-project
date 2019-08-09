<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
var data = [['a','캠핑장3']];
var data2 =[['a','캠핑장1']];
var data3 =[['a','캠핑장2']];
$(function(){
	$.ajax({
		type:"GET",
		url:"gugunstat.camp",
		dataType:"json",
		success:(function(result){
				google.charts.load('current', {'packages':['corechart']});
				
			$.each(result,function(index,value){
				data3.push([value.gugun,value.count]);
			})
			var options = {
				    title: '구군별 캠핑장 수',
				    width:1000
			};
					
					google.load('visualization', '1.0', {'packages':['corechart']});
					google.setOnLoadCallback(function() {
					  var chart = new google.visualization.ColumnChart(document.querySelector('#chart_div3'));
					  chart.draw(google.visualization.arrayToDataTable(data3), options);
					});
		})		
	})
	$.ajax({
		type:"GET",
		url:"statosticsValue.camp",
		dataType:"json",
		success:(function(result){
				google.charts.load('current', {'packages':['corechart']});
				
			$.each(result,function(index,value){
				data.push([value.sort,value.count]);
			})
			var options = {
				    title: '캠핑장 종류별 수',
				    
			};
					
						google.load('visualization', '1.0', {'packages':['corechart']});
					google.setOnLoadCallback(function() {
					  var chart = new google.visualization.ColumnChart(document.querySelector('#chart_div'));
					  chart.draw(google.visualization.arrayToDataTable(data), options);
					});
		})		
	})
		$.ajax({
		type:"GET",
		url:"sidostat.camp",
		dataType:"json",
		success:(function(result){
				google.charts.load('current', {'packages':['corechart']});
				
			$.each(result,function(index,value){
				console.log(value.sido)
				data2.push([value.sido,value.count]);
			})
			var options = {
				    title: '시도별 캠핑장 수',
				    height:450
			};
					
					google.load('visualization', '1.0', {'packages':['corechart']});
					google.setOnLoadCallback(function() {
					  var chart = new google.visualization.BarChart(document.querySelector('#chart_div2'));
					  chart.draw(google.visualization.arrayToDataTable(data2), options);
					});
		})		
	})
})
</script>
<style>
.container-top {
	padding-top: 60px;
}
.chart-box{
	padding-bottom:20px;
}
</style>
</head>
<body>
	<%@ include file="../common/adminNavi.jsp"%>
	<div class="col-xs-1">
		<c:set var="menu" value="campsite" />
		<%@ include file="../common/adminSidebar.jsp"%>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-xs-11">
				<div class="row">
					<div class="col-sm-12">
						<div class="chart-box" id="chart_div" style="padding-top: 50px; ">
						</div
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="chart-box" id="chart_div2">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="chart-box" id="chart_div3">
						</div>
					</div>
				</div>
			
			</div>
		</div>
	
	</div>	
</body>
</html>