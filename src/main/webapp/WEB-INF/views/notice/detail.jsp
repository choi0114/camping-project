<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Bootstrap Example</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="/camping/resources/js/moment.js"></script>
	<style type="text/css">
		.btn-none-group {
			background-color: #f7f7f9;
		}
		
		.btn-border-group {
			background-color: #f7f7f9;
			border: 1px solid #333333;
		}
	</style>
</head>
<body style="background-color: #f7f7f9;" data-user="${LOGIN_USER.id }" data-notice-no="${notice.no }">
<%@ include file="../common/detailNav.jsp" %>
<div class="container">
	<div class="page-header">
		<span style="font-size: 24px; font-weight: 500;">오지캠핑 공지사항</span>
		<button class="btn btn-border-group pull-right" onclick="history.back()">돌아가기</button>
	</div>
	
	<div class="row" style="margin-bottom: 20px;">
		<div class="col-sm-12">
			<h2>${notice.title }</h2>
		</div>
	</div>
	<div class="row" style="margin-bottom: 40px;">
		<div class="col-sm-9">
			<button class="btn btn-none-group" id="like-btn">
				<span class="glyphicon glyphicon-thumbs-up"></span>
				추천 ${notice.likes }
			</button>
			<button class="btn btn-none-group" id="hate-btn">
				<span class="glyphicon glyphicon-thumbs-down"></span>
				비추천 ${notice.hates }
			</button>
			<button class="btn btn-none-group">
				<span class="glyphicon glyphicon-comment"></span>
				댓글 0
			</button>			
		</div>
		<div class="col-sm-offset-1 col-sm-2 pull-right" style="margin-left: 50px;">
			<p class="pull-right">
				<span class="glyphicon glyphicon-time"></span>
				<fmt:formatDate value="${notice.createDate }" pattern="yyyy-MM-dd"/>
			</p>
		</div>
	</div>
	<hr/>
	<div class="row" style="margin-bottom: 100px;">
		<div class="col-sm-12">
			${notice.contents }
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<div style="margin-bottom: 10px;">
				<span class="glyphicon glyphicon-pencil"></span>
				댓글쓰기
			</div>
			<c:choose>
				<c:when test="${not empty LOGIN_USER }">
					<div>
						<textarea id="contents-box" rows="5" cols="160"></textarea>
					</div>				
				</c:when>
				<c:otherwise>
					<div>
						<textarea rows="5" cols="160" disabled="disabled" style="border-radius: 5px; background-color: #f7f7f7;">로그인이 필요한 서비스입니다.</textarea>
					</div>
				</c:otherwise>
			</c:choose>
			<div class="text-right">
				<button id="comment-insert-btn" type="button" class="btn btn-border-group">등록</button>
			</div>
		</div>
	</div>
	<div class="row" id="comment-count-box">
		<div class="col-sm-12">
			댓글 ${count }
		</div>
	</div>
	<hr/>
	<div class="row">
		<div class="col-sm-12" id="comment-box">
		<c:choose>
			<c:when test="${count eq 0 }">
				<div class="row">
					<div class="col-sm-12">
						등록된 댓글이 없습니다.
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<c:forEach var="comment" items="${comments }">
					<div class="row">
						<div class="col-sm-1">
							<img src="/camping/resources/images/profilePhoto/default.png" width="50px;" height="50px;" style="border-radius: 25px;">
						</div>
						<div class="col-sm-11">
							<div class="row" style="margin-bottom: 5px;">
								<div class="col-sm-12">
									<span style="color: #32a1ff; font-weight: bold;">${comment.user.nickName }</span>
									<span class="pull-right"><fmt:formatDate value="${comment.createDate }" pattern="yyyy-MM-dd"/></span>					
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									${comment.contents }
								</div>
							</div>
						</div>
					</div>
					<hr/>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		</div>
	</div>
</div>
<script type="text/javascript">

	$('#comment-insert-btn').click(function() {
		var id = $('body').attr('data-user');
		var no = $('body').attr('data-notice-no');
		var contents = $('#contents-box').val();
		
		$.ajax({
			url: 'addcomment.camp',
			data: {id: id, no: no, contents: contents},
			dataType: 'json',
			success: function(datas) {
				console.log(datas);
				var html1 = '<div class="col-sm-12">댓글 ' + datas.count + '</div>';
				
				$.each(datas.comments, function(index, comment) {
					var html2 = '<div class="row">'
							  + '<div class="col-sm-1">'
							  + '<img src="/camping/resources/images/profilePhoto/default.png" width="50px;" height="50px;" style="border-radius: 25px;">'
							  + '</div>'
							  + '<div class="col-sm-11">'
							  + '<div class="row" style="margin-bottom: 5px;">'
							  + '<div class="col-sm-12">'
							  + '<span style="color: #32a1ff; font-weight: bold;">' + comment.user.nickName + '</span>'
							  + '<span class="pull-right">' + moment(comment.createDate).format('YYYY-MM-DD') + '</span>'					
							  + '</div>'
							  + '</div>'
							  + '<div class="row">'
							  + '<div class="col-sm-12">'
							  + comment.contents
							  + '</div>'
							  + '</div>'
							  + '</div>'
							  + '</div>'
							  + '<hr/>';
							  
					$('#comment-box').append(html2);
				});
								
				$('#comment-count-box').empty();
				$('#comment-count-box').append(html1);
			}
		});
	});
</script>
</body>
</html>