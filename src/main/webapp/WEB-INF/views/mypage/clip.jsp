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
.round {
    display: inline-block;
    vertical-align: top;
    border-radius: 5px;
    box-shadow: 1px 1px 5px rgba(0,0,0,.1);
    background: #fff;
    text-align: center;
}
.col-sm-2 {
	padding :0px;
}
.round img {
	max-width: 370px;
}
.content p:first{
	padding-top: 20px;
}


	#container{position: relative !important;}
</style>
</head>
<body>
<%@ include file="../common/detailNav.jsp" %>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-2">
			<div id="sidewrap" style="left: 10px;">
				<c:set var="submenu" value="clip" />
				<%@ include file="nav/nav.jsp"%>
			</div>
		</div>
		<div class="col-sm-10">
			<div class="row">
			<c:choose>
				<c:when test="${not empty likeCamp }">
				<c:forEach var="like" items="${likeCamp }">
					<div class="col-sm-3 text-center">
						<div class="round" style="margin-top: 40px;">
							<div class="photo">
								<a href="../detail.camp?no=${like.campSite.no }"> <img
									src="/camping/resources/images/campsite/${like.campSite.photo }" class="image-thumbnail" />
								</a>
							</div>
							<div class="content">
								<h4>
									<c:choose>
										<c:when test="${like.campSite.sort eq 'CAMP' }">
										야영장
									</c:when>
										<c:when test="${like.campSite.sort eq 'CAR' }">
										자동차야영장
									</c:when>
									<c:otherwise>
										일반야영장
									</c:otherwise>
									</c:choose>
								</h4>
								<a href="../detail.camp?no=${like.campSite.no }">${like.campSite.name}</a>
								<p>${like.campSite.sido }</p>
							</div>
						</div>
					</div>
				</c:forEach>
				</c:when>
				<c:otherwise>
				<div class="row" style="padding-top: 250px;">
					<div class="text-center">
						<p><img src="/camping/resources/images/mypage/danger.svg" style="max-width: 250px;"></p>
						<h2>찜한 캠핑장이 없습니다.</h2>
					</div>
				</div>
				</c:otherwise>
			</c:choose>
			</div>
		</div>
	</div>
</div>
</body>
</html>