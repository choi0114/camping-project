<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>커뮤니티 상세페이지</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="/camping/resources/css/community/detail.css"> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
</head>
<body style="background-color:#f7f7f9">
<%@ include file="../common/detailNav.jsp" %>
<div style="padding-top: 120px;">
    <div class="row">
        <div class="col-sm-1">
        </div>
        <div class="col-sm-6 page-head-left" style="padding-bottom: 10px;">
            <span>커뮤니티 > </span>
        </div>
        
    </div>
    <hr/>
   <div class="row">
       <div class="col-sm-3"></div>
       <div class="col-sm-6 panel panel-default">
       		<div class="text-right" id="click-home"  style="margin-top:20px;">
       			<span style="border:1px solid; margin-top:7px; padding-left:-20px; margin-top:-20px;" class="glyphicon glyphicon glyphicon-list-alt btn-sm" aria-hidden="true">
	            	<span  class="like">목록으로</span>
	            </span>
       		</div>
       		
            <div class="row bottom-line " >
                <div class="col-sm-1 boot">
                   <img class="id-img " src="/camping/resources/images/profilePhoto/${board.profilePhoto }" width="50" border-radius=50% height="50" alt=""/>
                </div>
                <div class="col-sm-7 boot ">
                   <div class="row nick" >
                        ${board.userNick }
                   </div>
                   <div class="row date" >
                       <fmt:formatDate value="${board.createDate }"/>
                   </div>
                </div>
                <div class="col-sm-4 location">
                    <div class="row">
                    	<c:if test="${not empty board.campsiteName}">
	                        <div class="col-sm-1">
	                            <img class="id-img " src="/camping/resources/images/community/map.png" width="25"  height="25" alt=""/>
	                        </div>
	                        <div class="col-sm-9">
	                        	${board.campsiteName }
	                        </div>
                    	</c:if>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1 sort ">
                   
                </div>
                <div class="col-sm-10 title">
                    ${board.title }
                </div>
            </div>
            <div class="row bottom-line">
                <div class="col-sm-12 contents" style="min-height: 400px;">
                	${board.contents }
                </div>
            </div>
            <div class="row like-comment  bottom-line">
                <div class="col-sm-6">
                    <span style="border:1px solid; margin-top:7px; padding-left:-20px;" class="glyphicon glyphicon glyphicon glyphicon-comment btn-sm" aria-hidden="true">
                    	<span  class="like">${board.commentCnt }</span>
                    </span>
                    <span style="border:1px solid; margin-top:7px;" class="glyphicon glyphicon glyphicon-share btn-sm" aria-hidden="true">
                    	<span  class="like">공유하기</span>
                    </span>
                   
                </div>
                <div class="col-sm-6 text-right">
                    <span  id="click-hate" style="border:1px solid; margin-top:7px;" class="glyphicon glyphicon-thumbs-down btn-sm" aria-hidden="true">
                    	<span  class="like">${board.hates }</span>
                    </span>
                    <span  id="click-like" style="border:1px solid; margin-top:7px;" class="glyphicon glyphicon-thumbs-up btn-sm" aria-hidden="true">
                    	<span  class="like">${board.likes }</span>
                    </span>
               	</div>
            </div>
            <div class="row bottom-line">
            	<form action="addComment.camp" method="get">
	     			<input type="hidden" value="${boardType }" name="boardType" id="boardType"/>
	     			<input type="hidden" value="${board.no }" name="boardNo" id="boardNo"/>
	                <div class="col-sm-1">
	                     <img class="id-img2 " src="/camping/resources/images/profilePhoto/${LOGIN_USER.profilePhoto }" width="60" border-radius=50% height="60" alt=""/>
	                </div>
	     
	                <div class="col-sm-10">
	                    <textarea class="write-comment" name="contents" id="contents-id">댓글을 남겨주세요</textarea>
	                </div>
	                <div class="col-sm-1">
	                    <button type="submit" class="btn btn-default write-button" >등록</button>
	                </div>
            	</form>
            </div>
           
            <div class="row bottom-line">
            	<c:forEach var="comment" items="${comments }">
	                <div class="col-sm-1">
	                     <img class="id-img3" src="/camping/resources/images/profilePhoto/${comment.profilePhoto }" width="55" border-radius=50% height="55" alt=""/>
	                </div>
	                <div class="col-sm-10">
	                    <div class="row comment-top">
	                        <div class="col-sm-2 comment-nick">${comment.userNick }</div>
	                        <div class="col-sm-3 comment-date"><fmt:formatDate value="${comment.createDate }"/> </div>
	                    </div>
	                    <div class="row comment-bottom">
	                   		${comment.contents }
	                    </div>
	                </div>
	                <div class="col-sm-1 img_container">
	                     <img class="share-img" src="/camping/resources/images/community/share.png"  alts=""/>
	                </div>
	                <div class="row text-center">
					    <ul class="pagination " id="board-page-box" >
					    	
						</ul>
				    </div>
				    <hr>
 	           </c:forEach>
            </div>
       </div>
       <div class="col-sm-3">
       </div>
   </div>
</div>
   <script type="text/javascript">
   		$(function(){
   			$("#click-home").click(function(){
   				location.href="home.camp"
   			})
			var boardType = $("#boardType").val();
			var boardNo= $("#boardNo").val();
   			$("#click-like").click(function(){
   				
   				$.ajax({
   					type:"GET"
   					, url:"updateLike.camp?boardType="+boardType+"&boardNo="+boardNo
   					, success:function(){
   						location.href="detail.camp?boardType="+boardType+"&no="+boardNo
   					}
   				});
   				
   			})
   			$("#click-hate").click(function(){
   				
   				$.ajax({
   					type:"GET"
   					, url:"updateHate.camp?boardType="+boardType+"&boardNo="+boardNo
   					, success:function(){
   						location.href="detail.camp?boardType="+boardType+"&no="+boardNo
   					}
   				});
   				
   			})
   			
   			$('#contents-id').focusin(function(){
	   			var comment = $("#contents-id").text();
	   			if(comment == "댓글을 남겨주세요") {
	   				$("#contents-id").text("");
	   			}
   			});
   			$('#contents-id').focusout(function(){
   				var comment = $("#contents-id").text();
	   			if(comment == "") {
	   				$("#contents-id").text("댓글을 남겨주세요");
	   			}
   			})
   		});
   </script>
</body>
</html>