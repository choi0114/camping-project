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
					<select>
						<option>제목</option>
						<option>내용</option>
						<option>제목+내용</option>
					</select>
					<input type="text">
					<button class="btn">검색</button>
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
					<tr>
						<td>1</td>
						<td>
							<a href="noticedetail.camp">하이</a>
						</td>
						<td>2019-08-09</td>
					</tr>
					<tr>
						<td>1</td>
						<td>
							<a href="noticedetail.camp">하이</a>
						</td>
						<td>2019-08-09</td>
					</tr>
					<tr>
						<td>1</td>
						<td>
							<a href="noticedetail.camp">하이</a>
						</td>
						<td>2019-08-09</td>
					</tr>
					<tr>
						<td>1</td>
						<td>
							<a href="noticedetail.camp">하이</a>
						</td>
						<td>2019-08-09</td>
					</tr>
					<tr>
						<td>1</td>
						<td>
							<a href="noticedetail.camp">하이</a>
						</td>
						<td>2019-08-09</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>