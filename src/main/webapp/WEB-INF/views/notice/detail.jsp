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
</head>
<body style="background-color: #f7f7f9;">
<%@ include file="../common/detailNav.jsp" %>
<div class="container" style="padding-top: 100px;">
	<div class="page-header">
		<span style="font-size: 24px; font-weight: 500;">오지캠핑 공지사항</span>
		<button class="btn pull-right" onclick="history.back()">돌아가기</button>
	</div>
	
	<div class="row" style="margin-bottom: 20px;">
		<div class="col-sm-12">
			<h2>오지/노지 정보는 단계적 회원서비스로 변경합니다.</h2>
		</div>
	</div>
	<div class="row" style="margin-bottom: 40px;">
		<div class="col-sm-2">
			<p>2019-08-09</p>
		</div>
		<div class="col-sm-10">
			<button class="btn">추천 2</button>
			<button class="btn">비추천 0</button>
			<button class="btn">의견 0</button>			
		</div>
	</div>
	<hr/>
	<div class="row" style="margin-bottom: 100px;">
		<div class="col-sm-12">
			오지/노지 정보는 단계적으로 회원제/회원레벨 시스템을 적용하고자 합니다.<br/>
			우선 회원로그인 하지 않으면 오지/노지 카테고리 정보는 이용함에 있어 약간 불편할 수 있습니다.
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<form>
				<div>
					댓글쓰기
				</div>
				<div>
					<textarea rows="5" cols="160"></textarea>
				</div>
				<div class="text-right">
					<button type="button" class="btn">등록</button>
				</div>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			댓글 0
		</div>
	</div>
	<hr/>
	<div class="row">
		<div class="col-sm-1">
			<img src="/camping/resources/images/1.jpg" width="50px;" height="50px;" style="border-radius: 25px;">
		</div>
		<div class="col-sm-11">
			<div class="row" style="margin-bottom: 5px;">
				<div class="col-sm-12">
					<span style="color: #32a1ff; font-weight: bold;">은쟘</span>
					<span class="pull-right">2019-08-09</span>					
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					수고하셨습니다
				</div>
			</div>
		</div>
	</div>
	<hr/>
	<div class="row">
		<div class="col-sm-1">
			<img src="/camping/resources/images/1.jpg" width="50px;" height="50px;" style="border-radius: 25px;">
		</div>
		<div class="col-sm-11">
			<div class="row" style="margin-bottom: 5px;">
				<div class="col-sm-12">
					<span style="color: #32a1ff; font-weight: bold;">은쟘</span>
					<span class="pull-right">2019-08-09</span>					
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					수고하셨습니다
				</div>
			</div>
		</div>
	</div>
	<hr/>
	<div class="row">
		<div class="col-sm-1">
			<img src="/camping/resources/images/1.jpg" width="50px;" height="50px;" style="border-radius: 25px;">
		</div>
		<div class="col-sm-11">
			<div class="row" style="margin-bottom: 5px;">
				<div class="col-sm-12">
					<span style="color: #32a1ff; font-weight: bold;">은쟘</span>
					<span class="pull-right">2019-08-09</span>					
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					수고하셨습니다
				</div>
			</div>
		</div>
	</div>
	<hr/>
	<div class="row">
		<div class="col-sm-1">
			<img src="/camping/resources/images/1.jpg" width="50px;" height="50px;" style="border-radius: 25px;">
		</div>
		<div class="col-sm-11">
			<div class="row" style="margin-bottom: 5px;">
				<div class="col-sm-12">
					<span style="color: #32a1ff; font-weight: bold;">은쟘</span>
					<span class="pull-right">2019-08-09</span>					
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					수고하셨습니다
				</div>
			</div>
		</div>
	</div>
	<hr/>
	<div class="row">
		<div class="col-sm-1">
			<img src="/camping/resources/images/1.jpg" width="50px;" height="50px;" style="border-radius: 25px;">
		</div>
		<div class="col-sm-11">
			<div class="row" style="margin-bottom: 5px;">
				<div class="col-sm-12">
					<span style="color: #32a1ff; font-weight: bold;">은쟘</span>
					<span class="pull-right">2019-08-09</span>					
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					수고하셨습니다
				</div>
			</div>
		</div>
	</div>
	<hr/>
	<div class="row">
		<div class="col-sm-1">
			<img src="/camping/resources/images/1.jpg" width="50px;" height="50px;" style="border-radius: 25px;">
		</div>
		<div class="col-sm-11">
			<div class="row" style="margin-bottom: 5px;">
				<div class="col-sm-12">
					<span style="color: #32a1ff; font-weight: bold;">은쟘</span>
					<span class="pull-right">2019-08-09</span>					
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					수고하셨습니다
				</div>
			</div>
		</div>
	</div>
	<hr/>
</div>
</body>
</html>