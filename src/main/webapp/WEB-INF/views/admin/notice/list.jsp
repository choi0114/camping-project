<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>5gCamping :: 1박 2일</title>
<link rel="shortcut icon" href="/camping/resources/images/campinglogo.png">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="/camping/resources/js/moment.js"></script>
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
		<div class="col-xs-11" style="margin-top: 30px;">	
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
            <tbody id="notices-box">
            <c:forEach var="notice" items="${notices }">
            	<tr>
                    <td>
                        <input type="checkbox" data-no="${notice.no }">
                    </td>
                    <td>${notice.no }</td>
                    <td class="title-box">${notice.title }</td>
                    <td><fmt:formatDate value="${notice.createDate }" pattern="yyyy.MM.dd"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        ${notice.contents }
                    </td>
                    <td></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4"></div>
			<div class="col-sm-4">  	
				<button type="button"  class="btn btn-default" id="btn-modify-campingsite">수정</button>
				<button type="button"  class="btn btn-default" id="btn-enroll-campingsite">등록</button>
				<button type="button"  class="btn btn-default" id="btn-delete-campingsite">삭제</button>
			</div>
		</div>
    </div>
    <script type="text/javascript">
    	$(function() {
	    	$('tbody tr:odd').hide();
	    
	    	$('tbody tr:even').click(function() {
	    		$(this).next().toggle();
	    	});
    	});
    	
    	$('#btn-modify-campingsite').click(function() {
    		var no = $('input:checked').attr('data-no');
    		
    		location.href = "modifyform.camp?sort=Notice&no=" + no;
    	});
    	
    	$('#btn-enroll-campingsite').click(function() {
    		location.href = "noticeform.camp?sort=Notice";
    	});
    	
    	$('#btn-delete-campingsite').click(function() {
    		var no = $('input:checked').attr('data-no');
    		
    		$('#notices-box').empty();
    		
			$.ajax({
				url: 'deleteNotice.camp',
				data: {no: no},
				dataType: 'json',
				success:function(notices) {
					$.each(notices, function(index, notice) {
						var html = '<tr>'
		                    	 + '<td>'
	                    		 + '<input type="checkbox" data-no="' + notice.no + '">'
	                			 + '</td>'
	                			 + '<td>' + notice.no + '</td>'
	                			 + '<td class="title-box">' + notice.title + '</td>'
	                			 + '<td>' + moment(notice.createDate).format('YYYY.MM.DD') + '</td>'
	            				 + '</tr>'
	            				 + '<tr>'
	                			 + '<td></td>'
	                			 + '<td></td>'
	                			 + '<td>'	
	                    		 + notice.contents
	                			 + '</td>'
	                			 + '<td></td>'
	            				 + '</tr>';
	            				 
	            		$('#notices-box').append(html);
	            		
					});
					
					$('tbody tr:odd').hide();
				    
			    	$('tbody tr:even').click(function() {
			    		$(this).next().toggle();
			    	});
					
				}
			});
    		
    	});
    </script>
</body>
</html>