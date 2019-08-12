<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>5g 캠핑(###국내 No.1###)</title>
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
	padding-top: 30px;
}

.title-box {
	cursor: pointer;
}
</style>
</head>
<body style="background-color:#f7f7f9">
	<%@ include file="../common/adminNavi.jsp"%>
	<div class="col-xs-1">
		<c:set var="menu" value="manage" />
		<%@ include file="../common/adminSidebar.jsp"%>
	</div>
		<div class="container" >
		<div class="col-xs-11">	
			<div class="row">
			    <div class="col-sm-11">
			           <div class="form-group pull-right"  style="margin-top:15px">
			                <label>공지사항 내용</label>
			            	<input type="text" id="keyword" name="keyword">
			            	<button type="submit" class="btn btn-default" id="btn_header_search">검색</button>
			           </div>
			    </div>
			</div>
        <table class="table">
            <colgroup>
                <col width="10%">
                <col width="10%">
                <col width="60%">
                <col width="20%">
            </colgroup>
            <thead>
                <tr>
                    <th></th>
                    <th>번호</th>
                    <th>제목</th>
                    <th>등록일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>1</td>
                    <td class="title-box">공지사항</td>
                    <td>2019-08-08</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>1</td>
                    <td class="title-box">공지사항</td>
                    <td>2019-08-08</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>1</td>
                    <td class="title-box">공지사항</td>
                    <td>2019-08-08</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>1</td>
                    <td class="title-box">공지사항</td>
                    <td>2019-08-08</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4"></div>
			<div class="col-sm-4">  	
				<button type="button"  class="btn btn-default" id="btn-yes-campingsite">수정</button>
				<button type="button"  class="btn btn-default" id="btn-no-campingsite">등록</button>
				<button type="button"  class="btn btn-default" id="btn-no-campingsite">삭제</button>
			</div>
		</div>
			<div class="text-center">
				<ul class="pagination">
					<c:choose>
						<c:when test="${pagination.first }">
							<li><a href="">&laquo;</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="list.camp?pno=${pagination.page - 1 }">&laquo;</a></li>
						</c:otherwise>
					</c:choose>
					<c:forEach var="num" begin="${pagination.begin }" end="${pagination.end }">
						<li class="${pagination.page == num ? 'active' : '' }"><a href="noticeList.camp?pno=${num }">${num }</a></li>
					</c:forEach>
					<c:choose>
						<c:when test="${pagination.last }">
							<li><a href="">&raquo;</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="noticeList.camp?pno=${pagination.page + 1 }">&raquo;</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
    </div>
    <script type="text/javascript">
    	$('tbody tr:odd').hide();
    
    	$('tbody tr:even').click(function() {
    		$(this).next().toggle();
    	});
    </script>
</body>
</html>