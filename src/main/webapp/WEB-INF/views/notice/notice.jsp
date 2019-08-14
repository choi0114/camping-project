<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>5gCamping :: 1박 2일</title>
	<link rel="shortcut icon" href="/camping/resources/images/campinglogo.png">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<style type="text/css">
		th, td {
			text-align: center;
		}
	</style>
</head>
<body style="background-color: #f7f7f9;">
<%@ include file="../common/detailNav.jsp" %>
<div class="container" style="padding-top: 100px;">
	<div class="page-header">
		<h3>오지캠핑 공지사항</h3>
	</div>
	
	<div class="row" style="margin-bottom: 20px;">
		<div class="col-sm-12">
			<form>
				<div class="pull-right">
					<select name="search-sort">
						<option value="title">제목</option>
						<option value="contents">내용</option>
						<option value="tandc">제목+내용</option>
					</select>
					<input type="text">
					<button id="search-btn" class="btn">검색</button>
				</div>
			</form>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<table class="table">
				<colgroup>
					<col width="10%">
					<col width="80%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>공지번호</th>
						<th>제목</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${not empty notices }">
						<c:forEach var="notice" items="${notices }">
							<tr>
								<td>${notice.no }</td>
								<td>
									<a href="noticedetail.camp?no=${notice.no }" style="color: #000;">${notice.title }</a>
								</td>
								<td><fmt:formatDate value="${notice.createDate }" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="4">
								등록된 공지사항이 없습니다.
							</td>
						</tr>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>