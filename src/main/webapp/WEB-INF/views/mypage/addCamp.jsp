<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Bootstrap Example</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/camping/resources/css/mypage/sys.css">
	<link rel="stylesheet" href="/camping/resources/css/mypage/mypage.css">
	<link rel="stylesheet" href="/camping/resources/css/main.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
	#container{position: relative !important;}
</style>
</head>
<body>
<%@ include file="../common/detailNav.jsp" %>
	<div id="sidewrap">
	<c:set var="submenu" value="addCamp" />
		<%@ include file="nav/nav.jsp"%>
		<div class="container" style="margin-left: 350px;">
			<div class="page-header">
				<h2>내가 등록한 캠핑장<span style="float: right;"><a href="adddetail.camp" class="btn btn-primary">캠핑장 등록</a></span></h2>
			</div>
			<div class="page-body">
				<c:choose>
					<c:when test="${not empty addCamp }">
						<ul class="list-group" style="height: 720px; overflow-y: scroll;">
							<c:forEach var="add" items="${addCamp }" >
								<li class="list-group-item">
									<h4>이름 : <a href="../detail.camp?no=${add.campSite.no }">${add.campSite.name }</a></h4>
									<p>위치 : ${add.campSite.address }</p>
									<p>등록 여부 : ${add.status } | 현재 사용여부 : ${add.campSite.usedYn }</p>
								</li>
							</c:forEach>
						</ul>
					</c:when>
					<c:otherwise>
					<div class="row" style="padding-top: 250px;">
						<div class="text-center">
							<p><img src="/camping/resources/images/mypage/danger.svg" style="max-width: 250px;"></p>
							<h2>등록한 캠핑장이 없습니다.</h2>
						</div>
					</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	
</body>
</html>