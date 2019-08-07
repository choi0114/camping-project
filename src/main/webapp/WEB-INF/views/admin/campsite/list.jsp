<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.container-top {
	padding-top: 60px;
}
</style>
</head>
<body>
	<%@ include file="../common/adminNavi.jsp"%>
	<div class="col-xs-1">
		<c:set var="menu" value="campsite" />
		<%@ include file="../common/adminSidebar.jsp"%>
	</div>
	<div class="col-xs-11">
		<div class="container-top">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="admin-check"></th>
						<th class="text-center">번호</th>
						<th class="text-center">캠핑장명</th>
						<th class="text-center">가격</th>
						<th class="text-center">등록일</th>
						<th class="text-center">영업여부</th>
					</tr>
				</thead>
				<tbody> 
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">1</td>
						<td class="text-center"><a href="">용산캠핑장</a></td>
						<td class="text-center">100000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">2</td>
						<td class="text-center"><a href="">선재캠핑장</a></td>
						<td class="text-center">100000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">3</td>
						<td class="text-center"><a href="">대부도캠핑장</a></td>
						<td class="text-center">100000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">4</td>
						<td class="text-center"><a href="">여의도캠핑장</a></td>
						<td class="text-center">100000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">5</td>
						<td class="text-center"><a href="">송도캠핑장</a></td>
						<td class="text-center">140000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">5</td>
						<td class="text-center"><a href="">송도캠핑장</a></td>
						<td class="text-center">140000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">5</td>
						<td class="text-center"><a href="">송도캠핑장</a></td>
						<td class="text-center">140000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">5</td>
						<td class="text-center"><a href="">송도캠핑장</a></td>
						<td class="text-center">140000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">5</td>
						<td class="text-center"><a href="">송도캠핑장</a></td>
						<td class="text-center">140000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">5</td>
						<td class="text-center"><a href="">송도캠핑장</a></td>
						<td class="text-center">140000</td>
						<td class="text-center">2019-07-19</td>
						<td class="text-center">영업중</td>
					</tr>
				</tbody>
			</table>
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
					<a href="" class="btn btn-default">영업여부변경</a> <a href=""
						class="btn btn-default">수정</a> <a href="" class="btn btn-default">삭제</a>
					<a href="" class="btn btn-default">등록</a>
				</div>
			</div>
			<div class="text-center">
				<ul class="pagination">
					<li><a href="">&laquo;</a></li>
					<li><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">&raquo;</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>