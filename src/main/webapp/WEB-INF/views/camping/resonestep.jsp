<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Bootstrap Example</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<style>
		div {
			border: 1px solid #aaa;
		}
	</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="page-header">
				<h3>장호 비치 캠핑장 예약하기</h3>
			</div>
		</div>
	</div>
	<div class="row" style="margin-bottom: 40px;">
		<div class="col-sm-6">
			<div class="row">
				<div class="col-sm-12">
					<img src="/camping/resources/images/mypage/camp1.jpg"/>			
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 text-center">
					<p>장호 비치 캠핑장</p>
					<p>입실/퇴실일을 선택하세요.</p>
					<p> 8.13.(화) ~ 8.17.(토)</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="row">
				<div class="col-sm-12">
					<h3>달력구간-오늘이 디폴트값으로 선택되어있어야 함</h3>				
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12"> 
					<button>예약가능 상품검색-ajax</button>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<p>전체 9</p>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3">
			<a href="restwostep.camp">
				<p>캠핑장111</p>			
			</a>
		</div>
		<div class="col-sm-3">
			<p>캠핑장222</p>
		</div>
		<div class="col-sm-3">
			<p>캠핑장333</p>
		</div>
		<div class="col-sm-3">
			<p>캠핑장444</p>
		</div>
		<div class="col-sm-3">
			<p>캠핑장555</p>
		</div>
		<div class="col-sm-3">
			<p>캠핑장666</p>
		</div>
		<div class="col-sm-3">
			<p>캠핑장777</p>
		</div>
		<div class="col-sm-3">
			<p>캠핑장888</p>
		</div>
		<div class="col-sm-3">
			<p>캠핑장999</p>
		</div>
	</div>
</div>
</body>
</html>