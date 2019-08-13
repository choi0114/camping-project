<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>마이페이지</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="/camping/resources/css/mypage/sys.css">
	<link rel="stylesheet" href="/camping/resources/css/mypage/mypage.css">
	<link rel="stylesheet" href="/camping/resources/css/main.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="/camping/resources/js/datatables.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#scrap-table').DataTable();
		});
	</script>
<style>
	#container{position: relative !important;}
</style>
</head>
<body>
<%@ include file="../common/detailNav.jsp" %>
	<div id="sidewrap">
		<c:set var="submenu" value="scrap" />
		<%@ include file="nav/nav.jsp"%>
		<div class="container">
			<div class="row">
				<div class="col-sm-12" style="margin-top: 50px;">
					<table id="scrap-table" class="table">
						<colgroup>
							<col width="15%">
							<col width="*">
							<col width="15%">
						</colgroup>
						<thead>
							<tr>
								<th>게시글 번호</th>
								<th>제목</th>
								<th>게시글 생성일</th>
							</tr>
						</thead>
						<tbody>
						<c:choose>
							<c:when test="${not empty scraps }">
							
							<c:forEach var="scrap" items="${scraps }">
								<tr>
									<td>${scrap.no }</td>
									<td>${scrap.review.title }</td>
									<td><fmt:formatDate value="${scrap.review.createDate }" pattern="yyyy년 M월 d일"/></td>
								</tr>
							</c:forEach>
							</c:when>
							<c:otherwise>
							<tr>
								<td></td>
								<td style="text-align: center;"><h3>게시글이 존재하지 않습니다.</h3></td>
								<td></td>
							</tr>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
				</div>
			</div>
		</div>
</div>
</body>
</html>