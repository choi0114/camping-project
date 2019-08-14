<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>5gCamping :: 1박 2일</title>
	<link rel="shortcut icon" href="/camping/resources/images/campinglogo.png">
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
    <script>
        $(function(){
            $("#comment-table").DataTable();
        });
    </script>
<style>
	#container{position: relative !important;}
</style>
</head>
<body>
<%@ include file="../common/detailNav.jsp" %>
	<div id="sidewrap">
		<c:set var="submenu" value="comment" />
		<%@ include file="nav/nav.jsp" %>
		<div class="container">
			<div class="row">
				<div class="col-sm-12" style="margin-top: 50px;">
					<table id="comment-table" class="table">
					<colgroup>
						<col width="15%">
						<col width="*">
						<col width="20%">
					</colgroup>
						<thead>
							<tr>
								<th>게시글 제목</th>
								<th>댓글 내용</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
							<c:when test="${not empty commentMap }">
							
							<c:forEach var="free" items="${commentMap.freeComment }">
							<tr>
								<input type="hidden" id="no" value="${free.freeBoard.no }">
								<input type="hidden" id="boardType" value="4">
								<td>${free.freeBoard.title }</td>
								<td>${free.contents }</td>
								<td><fmt:formatDate value="${free.createDate }" pattern="yyyy년 M월 d일"/></td>
							</tr>
							</c:forEach>
							
							<c:forEach var="joining" items="${commentMap.joiningComment }">
							<tr>
								<input type="hidden" id="no" value="${joining.joiningBoard.no }">
								<input type="hidden" id="boardType" value="1">
								<td>${joining.joiningBoard.title }</td>
								<td>${joining.contents }</td>
								<td><fmt:formatDate value="${joining.createDate }" pattern="yyyy년 M월 d일"/>}</td>
							</tr>
							</c:forEach>
							
							<c:forEach var="opinion" items="${commentMap.opinionComment }">
							<tr>
								<input type="hidden" id="no" value="${opinion.opinionBoard.no }">
								<input type="hidden" id="boardType" value="3">
								<td>${opinion.opinionBoard.title }</td>
								<td>${opinion.contents }</td>
								<td><fmt:formatDate value="${opinion.createDate }" pattern="yyyy년 M월 d일"/></td>
							</tr>
							</c:forEach>
							
							<c:forEach var="review" items="${commentMap.reviewComment }">
							<tr>
								<input type="hidden" id="no" value="${review.reviewBoard.no }">
								<input type="hidden" id="boardType" value="2">
								<td>${review.reviewBoard.title }</td>
								<td>${review.contents}</td>
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
	<script type="text/javascript">
		$('#comment-table tbody tr').click(function() {
			var no = $('#no').val();
			var boardType = $('#boardType').val();
			
			location.href = "/camping/community/detail.camp?no="+ no + "&boardType=" + boardType; 
		}) 
	</script>
</body>
</html>