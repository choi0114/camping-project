<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="/camping/resources/css/mypage/sys.css">
<link rel="stylesheet" href="/camping/resources/css/mypage/mypage.css">
<link rel="stylesheet" href="/camping/resources/css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">

	.panel-body ul li {
		margin: 3px 0;
		padding-left: 20px;
		padding-bottom:10px;
	}
	.panel-body ul {
		font-size: 14px;
	}
	.panel-heading { 
		border: 1px #c7c8d2 solid;
	}
	.panel-body {
		border: 1px/2 #c7c8d2 solid;
	}
	.avatar {
    float: left;
    width: 60px;
    height: 60px;
    margin: 4px 0 15px 16px;
    border-radius: 100%;
}
	.msg {
    padding: 0 0 15px 28px;
    margin: 0 0 0 70px;
    color: #4F81BD;
    line-height: 144%;
    letter-spacing: -0.02em;
    font-size: 12px;
}
.rephoto {
	padding: 17px;
}
.upload {
    padding: 20px 0 0 0px;
    border-top: #dfdfdf dashed 1px;
    text-align: center;
    display: inline-block;
    width: 100%;
}
#filename {
    float: left;
    width: 40%;
    overflow: hidden;
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: none repeat scroll 0 0 white;
    border-color: #bbb #c6c6c6 #c6c6c6;
    border-image: none;
    border-radius: 3px;
    border-right: 1px solid #c6c6c6;
    border-style: solid;
    border-width: 1px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.06) inset, 0 1px rgba(255, 255, 255, 0.4);
    color: #666;
    display: inline-block;
    height: 30px;
    line-height: 30px;
    padding: 0 7px;
    vertical-align: top;
    box-sizing: border-box;
}
.upload label[for="upFile"] {
    display: inline-block;
    background: #eee;
    cursor: pointer;
    border: 1px #ccc solid;
    height: 30px;
    line-height: 30px;
    padding: 0;
    border-radius: 3px;
    float: left;
    width: 25%;
    box-sizing: border-box;
    margin: 0 1%;
}
#upFile {
    position: absolute;
    left: -9999px;
}
.bbtn2 {
    border-radius: 4px;
    float: left;
    width: 33%;
}
.bbtn2-gray {
    background: #47494f;
}
.bbtn2 {
    position: relative;
    display: inline-block;
    vertical-align: top;
    height: 36px;
    line-height: 36px;
    padding: 0 20px;
    font-size: 14px;
    color: #fff;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    font-weight: 500;
    border: none;
    outline: 0;
}
.round {
    display: inline-block;
    vertical-align: top;
    border-radius: 5px;
    box-shadow: 1px 1px 5px rgba(0,0,0,.1);
    background: #fff;
    text-align: center;
}

.round img {
	max-width: 370px;
}
</style>
</head>

<body>
	<div id="sidewrap">
	<c:set var="submenu" value="mypage" />
		<%@ include file="nav/nav.jsp"%>
		<div class="scrollarea tse-scrollable">
			<div class="tse-scroll-content scrollwrapbox" style="padding: 15px;">
				<div class="tse-content">
					<div id="Dash" class="dashwrap">
						<div class="row">
							<div class="col-xs-12 col-sm-6">
								
								<div class="panel panel-default">
									<div class="panel-heading">
										<span style="font-size: 25px;">${LOGIN_USER.nickName }님 정보</span>
									</div>
									<div class="panel-body">
										<ul style="list-style-type: none;">
											<li><span class="b">가입일</span> : <fmt:formatDate value="${LOGIN_USER.createDate }" pattern="yyyy년 M월 d일"/> </li>
											<li><span class="b">댓글</span> : ${count } 개</li>
										</ul>
									</div>
								</div>
								
								<div class="panel panel-default">
									<div class="panel-heading" style="text-align: center;">
										<span style="font-size: 20px;">찜한 캠핑장</span>
										<a href="clip.camp" class="pull-right"><img src="/camping/resources/images/mypage/plus.svg" class="more"></a>
									</div>
									<c:choose>
										<c:when test="${not empty likeCamp }">
											<ul class="list-group" style="height: 250px; overflow-y: scroll;">
												<c:forEach var="like" items="${likeCamp }" >
													<li class="list-group-item">
														<a href="../detail.camp?no=${like.campSite.no }">${like.campSite.name }</a>
														<p>${like.campSite.address }</p>
													</li>
												</c:forEach>
											</ul>
										</c:when>
										<c:otherwise>
											<div class="panel-body">
												<div style="text-align: center;">
													<p>찜한 캠핑장이 없습니다.</p>
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
								
								<div class="panel panel-default">
									<div class="panel-heading" style="text-align: center;">
										<span style="font-size: 20px;">정복한 캠핑장</span>
										<a href="conquest.camp" class="pull-right"><img src="/camping/resources/images/mypage/plus.svg" class="more"></a>
									</div>
									<div class="panel-body">
										<c:choose>
											<c:when test="${empty likeCamp }">
												
											</c:when>
											<c:otherwise>
												<div style="text-align: center;">
													<p>정복한 캠핑장이 없습니다.</p>
												</div>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3>프로필 사진 변경</h3>
									</div>
									<form method="post">
										<div class="rephoto">
											<div class="avatar" style="background: url(/camping/resources/images/profilePhoto/default.png) center center no-repeat; background-size: 100%;"></div>
											<div class="msg">
												회원님을 알릴 수 있는 사진을 등록해 주세요.
												<br>
												등록된 사진은 회원님의 개시물이나 댓글등에 사용됩니다.
												<br>
												사진 크기는 180 X 180px 이상 크기로 등록하세요.
											</div>
											<div class="clear"></div>
											<div class="upload">
												<span id="filename"></span>
												<label for="upFile">사진선택
													<input type="file" name="upfile" class="upfile" id="upFile" >
												</label>
												<button type="submit" class="bbtn2 bbtn2-gray" style="height: 30px; line-height: 30px;">
													<i><img src="/camping/resources/images/mypage/photo-camera.png" style="width: 14px; height: 14px; color: #fff;"></i>
													사진등록
												</button>
											</div>
										</div>
									</form>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" style="text-align: center;">
										<span style="font-size: 20px;">내가 쓴 게시글</span>
										<a href="post.camp" class="pull-right"><img src="/camping/resources/images/mypage/plus.svg" class="more"></a>
									</div>
									<div class="panel-body" style="height: 250px; overflow-y: scroll;">
										<c:choose>
										<c:when test="${not empty boardMap }">
											<ul class="list-group">
												<c:forEach var="free" items="${boardMap.free }">
													<li class="list-group-item">
														<h5>${free.title }</h5>
														<div class="text-right"><small><fmt:formatDate value="${free.createDate }" pattern="yyyy년 M월 d일"/></small></div>
													</li>
												</c:forEach>
												<c:forEach var="joning" items="${boardMap.joning }">
													<li class="list-group-item">
														<h5>${joning.title }</h5>
														<div class="text-right"><small><fmt:formatDate value="${joning.createDate }" pattern="yyyy년 M월 d일"/></small></div>
													</li>
												</c:forEach>
												<c:forEach var="opinion" items="${boardMap.opinion }">
													<li class="list-group-item">
														<h5>${opinion.title }</h5>
														<div class="text-right"><small><fmt:formatDate value="${opinion.createDate }" pattern="yyyy년 M월 d일"/></small></div>
													</li>
												</c:forEach>
												<c:forEach var="review" items="${boardMap.review }">
													<li class="list-group-item">
														<h5>${review.title }</h5>
														<div class="text-right"><small><fmt:formatDate value="${review.createDate }" pattern="yyyy년 M월 d일"/></small></div>
													</li>
												</c:forEach>
											</ul>
										</c:when>
										<c:otherwise>
											<div style="text-align: center;">
												<p>내가 작성한 게시글이 없습니다.</p>
											</div>
										</c:otherwise>
										</c:choose>
									</div>
								</div>
								
								<div class="panel panel-default">
									<div class="panel-heading" style="text-align: center;">
										<span style="font-size: 20px;">내가 쓴 댓글</span>
										<a href="comment.camp" class="pull-right"><img src="/camping/resources/images/mypage/plus.svg" class="more" ></a>
									</div>
									<div class="panel-body" style="height: 270px; overflow-y: scroll; position: relative;">
										<c:choose>
											<c:when test="${count > 0 }">
												<ul class="list-group">
													<c:forEach var="freeComment" items="${boardMap.freeComment }">
														<li class="list-group-item">
															<h4>${freeComment.contents }</h4>
															<div class="text-right"><small><fmt:formatDate value="${freeComment.createDate }" pattern="yyyy년 M월 d일"/></small></div>
														</li>
													</c:forEach>
													<c:forEach var="joningComment" items="${boardMap.joningComment }">
														<li class="list-group-item">
															<h4>${joningComment.contents }</h4>
															<div class="text-right"><small><fmt:formatDate value="${joningComment.createDate }" pattern="yyyy년 M월 d일"/></small></div>
														</li>
													</c:forEach>
													<c:forEach var="opinionComment" items="${boardMap.opinionComment }">
														<li class="list-group-item">
															<h4>${opinionComment.contents }</h4>
															<div class="text-right"><small><fmt:formatDate value="${opinionComment.createDate }" pattern="yyyy년 M월 d일"/></small></div>
														</li>
													</c:forEach>
													<c:forEach var="reviewComment" items="${boardMap.reviewComment }">
														<li class="list-group-item">
															<h4>${reviewComment.contents }</h4>
															<div class="text-right"><small><fmt:formatDate value="${reviewComment.createDate }" pattern="yyyy년 M월 d일"/></small></div>
														</li>
													</c:forEach>
												</ul>
											</c:when>
											<c:otherwise>
												<div>
													<p style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">내가 작성한 댓글이 없습니다.</p>
												</div>
											</c:otherwise>	
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$('#upFile').change(function() {
	    var filepath = this.value;
	    var m = filepath.match(/([^\/\\]+)$/);
	    var filename = m[1];
		var filesize = Math.ceil( (this.files[0].size / 1024) / 1024);
	    $('#filename').html(filename);
		if(filesize > 21) {
			alert("첨부파일 용량이 21MB 보다 더 큽니다.");
			$('#filename').html('');
			return false;
		}
		var file = $(this).val();
		if(file != '') {
			var fileExt = file.substring(file.lastIndexOf(".") +1);
			var reg = /zip|gif|jpg|jpeg|png/i;
			if(reg.test(fileExt) == false) {
				alert("첨부파일은 zip, gif, jpg, png 파일만 등록 가능합니다.");
				$('#filename').html('');
				return false;
			}
		}
	});
	function submitCheck(f)
	{
		if (f.a.value == '')
		{
			return false;
		}
	}

	function saveCheck(f)
	{
		if (f.upfile.value == '')
		{
			alert('사진파일을 선택해 주세요.');
			f.upfile.focus();
			return false;
		}
		var extarr = f.upfile.value.split('.');
		var filext = extarr[extarr.length-1].toLowerCase();
		var permxt = '[gif][jpg][jpeg][png]';

		if (permxt.indexOf(filext) == -1)
		{
			alert('gif/jpg/png 파일만 등록할 수 있습니다.    ');
			f.upfile.focus();
			return false;
		}
		return confirm('정말로 등록하시겠습니까?       ');
	}
	</script>
	
</body>
</html>