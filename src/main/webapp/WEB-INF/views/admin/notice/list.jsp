<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<div class="col-xs-6">
			<h1 class="admin-buttom">공지사항</h1>
		</div>
		<div class="col-xs-11">	
	       <form class="form-inline" action="list.camp" id='list-form'>
			<div class="row">
			    <div class="col-sm-11 page-head-right text-right">
			           <div class="form-group">
			                <label>캠핑장 이름</label>
			            	<input class="form-control" type="text" id="keyword" name="keyword">
			            	<button class="form-control" type="submit" class="btn btn-default" id="btn_header_search">검색</button>
			           </div>
			    </div>
			</div>
		<div class="container-top">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="admin-check"></th>
						<th class="text-center">번호</th>
						<th class="text-center">캠핑장명</th>
						<th class="text-center">제목</th>
						<th class="text-center">등록일</th>
					</tr>
				</thead>
				<tbody> 
					<c:choose>
							<c:when test="${not empty listCamp }">
								<c:forEach var="campSite" items="${listCamp }">				
									<tr>
										<td class="text-center"><input type="checkbox" name="campsiteNo" value="${campSite.no }"></td>
										<td class="text-center">${campSite.no }</td>
										<td class="text-center"><a href="detail.camp?pno=${param.pno }&no=${campSite.no }">${campSite.name }</a></td>
										<td class="text-center">${campSite.price }</td>
										<td class="text-center"><fmt:formatDate value="${campSite.createDate }" pattern="yyyy-MM-dd" /></td>
										<td class="text-center">${campSite.usedYn }</td>
									</tr>
								</c:forEach>
							</c:when>
					   <c:otherwise>
					   		<tr>
								<td colspan="5" class="text-center">조회된 글이 없습니다.</td>
							</tr>
					   </c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4"></div>
			<div class="col-sm-4">  	
				<button type="button"  class="btn btn-default" id="btn-yes-campingsite">영업개시</button>
				<button type="button"  class="btn btn-default" id="btn-no-campingsite">영업종료</button>
			</div>
		</div>
			<div class="text-center">
				<ul class="pagination">
					<li><a href="">&laquo;</a></li>
					<li><a href="list.camp?pno=1">1</a></li>
					<li><a href="list.camp?pno=2">2</a></li>
					<li><a href="list.camp?pno=3">3</a></li>
					<li><a href="list.camp?pno=4">4</a></li>
					<li><a href="list.camp?pno=5">5</a></li>
					<li><a href="">&raquo;</a></li>
				</ul>
			</div>
   	  	</form>
	</div>
	<script type="text/javascript">
		$("#btn-no-campingsite").click(function() {
			$("#list-form").attr("action", "delete.camp").submit();
		});
		$("#btn-yes-campingsite").click(function() {
			$("#list-form").attr("action", "deletes.camp").submit();
		});
	</script>
</body>
</html>