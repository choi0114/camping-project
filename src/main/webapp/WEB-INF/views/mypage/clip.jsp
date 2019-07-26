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
    margin: 0 0 0 40px;
    position: relative;
    width: 225px;
    height: 320px;
    display: inline-block;
    vertical-align: top;
    margin: 0 20px 22px 0;
    overflow: hidden;
    border-radius: 5px;
    box-shadow: 1px 1px 5px rgba(0,0,0,.1);
    background: #fff;
    text-align: center;
}
.round .photo {
    position: relative;
    overflow: hidden;
    background: #f0f0f0;
}
.round .photo img .tm{
    display: block;
    position: absolute;
    z-index: 0;
    bottom: 0;
    right: 0;
    top: 0;
    left: 0;
    top: 0%;
    transition: .3s ease-in-out;
}
img, p {
    border: 0;
    margin: 0;
    padding: 0;
}
.content {
	padding-top: 20px;
}
</style>
</head>
<body>
<div id="sidewrap">
	<c:set var="submenu" value="clip" />
		<%@ include file="nav/nav.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-2">
				<div class="round" style="margin-top: 40px;">
					<div class="photo">
						<a href="#">
							<img src="/camping/resources/images/camp1.jpg" style="width: 225px;" class="tm">
						</a>
					</div>
					<div class="content">
						<p>글램핑/카라반</p>
						<a href="#">하비 카라반/글램핑</a>
						<p>경북 > 청도군 > 각북면</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
</body>
</html>