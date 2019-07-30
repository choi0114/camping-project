<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>5gCamping</title>
<link rel="stylesheet" href="/camping/resources/css/mypage/sys.css">
<link rel="stylesheet" href="/camping/resources/css/mypage/mypage.css">
<link rel="stylesheet" href="/camping/resources/css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body {
    font-size: 12px;
    font-family: 'roboto','Noto Sans KR','malgun gothic',dotum,gothic;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    word-break: break-all;
    height: 100%;
    overflow: hidden;
    letter-spacing: -0.01em;
}

.round {
    display: inline-block;
    vertical-align: top;
    border-radius: 5px;
    box-shadow: 1px 1px 5px rgba(0,0,0,.1);
    background: #fff;
    text-align: center;
}

.round img {
	max-width: 370px;
}
.content p:first{
	padding-top: 20px;
}

</style>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-2">
			<div id="sidewrap">
				<c:set var="submenu" value="clip" />
				<%@ include file="nav/nav.jsp"%>
			</div>
		</div>
		<div class="col-sm-10">
			<div class="row">
				<div class="col-sm-3 text-center">
					<div class="round" style="margin-top: 40px;">
						<div class="photo">
							<a href="#">
								<img src="/camping/resources/images/mypage/camp1.jpg" class="image-thumbnail" />
							</a>
						</div>
						<div class="content">
							<h4>글램핑/카라반</h4>
							<a href="#">하비 카라반/글램핑</a>
							<p>경북 > 청도군 > 각북면</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 text-center">
					<div class="round" style="margin-top: 40px;">
						<div class="photo">
							<a href="#">
								<img src="/camping/resources/images/mypage/camp1.jpg" class="image-thumbnail" />
							</a>
						</div>
						<div class="content">
							<h4>글램핑/카라반</h4>
							<a href="#">하비 카라반/글램핑</a>
							<p>경북 > 청도군 > 각북면</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 text-center">
					<div class="round" style="margin-top: 40px;">
						<div class="photo">
							<a href="#">
								<img src="/camping/resources/images/mypage/camp1.jpg" class="image-thumbnail" />
							</a>
						</div>
						<div class="content">
							<h4>글램핑/카라반</h4>
							<a href="#">하비 카라반/글램핑</a>
							<p>경북 > 청도군 > 각북면</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 text-center">
					<div class="round" style="margin-top: 40px;">
						<div class="photo">
							<a href="#">
								<img src="/camping/resources/images/mypage/camp1.jpg" class="image-thumbnail" />
							</a>
						</div>
						<div class="content">
							<h4>글램핑/카라반</h4>
							<a href="#">하비 카라반/글램핑</a>
							<p>경북 > 청도군 > 각북면</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 text-center">
					<div class="round" style="margin-top: 40px;">
						<div class="photo">
							<a href="#">
								<img src="/camping/resources/images/mypage/camp1.jpg" class="image-thumbnail" />
							</a>
						</div>
						<div class="content">
							<h4>글램핑/카라반</h4>
							<a href="#">하비 카라반/글램핑</a>
							<p>경북 > 청도군 > 각북면</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 text-center">
					<div class="round" style="margin-top: 40px;">
						<div class="photo">
							<a href="#">
								<img src="/camping/resources/images/mypage/camp1.jpg" class="image-thumbnail"/>
							</a>
						</div>
						<div class="content">
							<h4>글램핑/카라반</h4>
							<a href="#">하비 카라반/글램핑</a>
							<p>경북 > 청도군 > 각북면</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 text-center">
					<div class="round" style="margin-top: 40px;">
						<div class="photo">
							<a href="#">
								<img src="/camping/resources/images/mypage/camp1.jpg" class="image-thumbnail" />
							</a>
						</div>
						<div class="content">
							<h4>글램핑/카라반</h4>
							<a href="#">하비 카라반/글램핑</a>
							<p>경북 > 청도군 > 각북면</p>
						</div>
					</div>
				</div>
			</div>
		
		</div>
	</div>
</div>

</body>
</html>