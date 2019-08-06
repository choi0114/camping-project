<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Bootstrap Example</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="/camping/resources/css/mypage/sys.css">
	<link rel="stylesheet" href="/camping/resources/css/mypage/mypage.css">
	<link rel="stylesheet" href="/camping/resources/css/main.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="/camping/resources/js/datatables.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#board-table').DataTable();
		});
	</script>
</head>
<body>
<!-- http://localhost/camping/community/detail.camp?no=66&boardType=1 -->
	<div id="sidewrap">
		<c:set var="submenu" value="post" />
		<%@ include file="nav/nav.jsp" %>
		<div class="container">
			<div class="row">
				<div class="col-sm-12" style="margin-top: 50px;">
					<table id="board-table" class="table">
						<colgroup>
							<col width="15%">
							<col width="*">
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th>게시판 유형</th>
								<th>제목</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
						<c:choose>
							<c:when test="${not empty boardMap }">
							
							<c:forEach var="free" items="${boardMap.free }">
							<tr>
								<td>자유게시판</td>
								<td><a href="../community/detail.camp?no=${free.no }&boardType=4" >${free.title }</a></td>
								<td><fmt:formatDate value="${free.createDate }" pattern="yyyy년 M월 d일"/></td>
							</tr>
							</c:forEach>
							
							<c:forEach var="joining" items="${boardMap.joining }">
							<tr>
								<td>가입인사게시판</td>
								<td><a href="../community/detail.camp?no=${joining.no }&boardType=1">${joining.title }</a></td>
								<td><fmt:formatDate value="${joining.createDate }" pattern="yyyy년 M월 d일"/>}</td>
							</tr>
							</c:forEach>
							
							<c:forEach var="opinion" items="${boardMap.opinion }">
							<tr>
								<td>의견게시판</td>
								<td><a href="../community/detail.camp?no=${opinion.no }&boardType=3">${opinion.title }</a></td>
								<td><fmt:formatDate value="${opinion.createDate }" pattern="yyyy년 M월 d일"/></td>
							</tr>
							</c:forEach>
							
							<c:forEach var="review" items="${boardMap.review }">
							<tr>
								<td>리뷰게시판</td>
								<td><a href="../community/detail.camp?no=${review.no }&boardType=2">${review.title }</a></td>
								<td><fmt:formatDate value="${review.createDate }" pattern="yyyy년 M월 d일"/></td>
							</tr>
							</c:forEach>
							
							</c:when>
							<c:otherwise>
							<tr>
								<td></td>
								<td><h3>게시글이 존재하지 않습니다.</h3></td>
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