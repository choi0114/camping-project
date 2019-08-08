<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/camping/resources/css/community/home.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  	
  	.content-summary img {
  		display:none;
  	}
  	
  </style>
</head>
<body style="background-color:#f7f7f9" >
<div class="row">
    <div class="col-sm-3 col-sm-offset-2 page-head-left " id="community-sort">
        커뮤니티 > 전체: 최신순
    </div>
    <div class="col-sm-5 page-head-right">
       <form class="form-inline">
           <div class="form-group pull-right">
                <select class="form-control" id="boardType">
                    <option value="1">가입인사</option>
                    <option value="2">캠핑장 리뷰</option>
                    <option value="3">캠핑장 의견</option>
                    <option value="4">자유</option>
                </select> 
                <select class="form-control" id="sort">
                    <option value="title">제목</option>
                    <option value="contents">내용</option>
                </select>
            <input class="form-control" type="text" id="keyword" minlength="2" maxlength="10">
            <button class="form-control" type="button" class="btn btn-default" id="btn_header_search">검색</button>
           </div>
      </form>
    </div>
</div>
<hr/>
<div class="row bottom">
    <div class="col-sm-2 col-sm-offset-2 ">
    
   		<div class="panel panel-default category">
   			<div class="panel-heading">
					CATEGORY
			</div>
   			<ul class="nav nav-pills nav-stacked" id="dept-list-box">
    			<li class='item active' data-board-type="0"  id="new" ><a href="#">전체: 최신순 </a></li>
    			<li class='item' data-board-type="1" id="join" ><a href="#">가입인사 게시판 </a></li>
    			<li class='item' data-board-type="2" id="review" ><a href="#">캠핑장 리뷰 게시판 </a></li>
    			<li class='item' data-board-type="3" id="opinion" ><a href="#">캠핑장 의견 게시판 </a></li>
    			<li class='item' data-board-type="4" id="free" ><a href="#">자유 게시판 </a></li>
   			</ul>
   		</div>
    </div>
    <div class="col-sm-5 " >
        <div class="in-board">
	        <!-- right-box 시작 -->
	        <div class="row panel panel-default">
	        	<div class="row join-board panel-heading" >
	        		<div class="col-sm-6">
	        			<div class="row">
				        	<h3> 가입인사 게시판</h3>
	        			</div>
	        		</div>
	        		<div class="col-sm-6 text-right more">
		        		<a  data-pno="1" data-Tnum="1">더보기</a>
	        		</div>
	        	</div>
				<div class="row right-box" style="height:260px;">
					<table class="table">
						<colgroup>
							<col width="70%" />
							<col width="10%" />
							<col width="20%" />
						</colgroup>
						<thead>
							<tr>
								<th>제목</th>
								<th>조회수</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="join" items="${joins }">
								<tr>
									<td><a class="title" href='detail.camp?no=${join.no }&boardType=1' >${join.title }</a></td>
									<td>${join.views }</td>
									<td><fmt:formatDate value="${join.createDate }"/> </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
	        </div>
			
			 <div class="row panel panel-default">
	        	<div class="row join-board panel-heading">
	        		<div class="col-sm-6">
	        			<div class="row">
				        	<h3> 캠핑장 리뷰 게시판</h3>
	        			</div>
	        		</div>
	        		<div class="col-sm-6 text-right more">
		        		<a data-pno="1" data-Tnum="2">더보기</a>
	        		</div>
	        	</div>
				<div class="row right-box"  style="height:260px;">
					<table class="table">
						<colgroup>
							<col width="70%" />
							<col width="10%" />
							<col width="20%" />
						</colgroup>
						<thead>
							<tr>
								<th>제목</th>
								<th>조회수</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="review" items="${reviews }">
								<tr>
									<td><a class="title"  href='detail.camp?no=${review.no }&boardType=2' >${review.title }</a></td>
									<td>${review.views }</td>
									<td><fmt:formatDate value="${review.createDate }"/> </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
	        </div>
	        
	         <div class="row panel panel-default">
	        	<div class="row join-board panel-heading">
	        		<div class="col-sm-6">
	        			<div class="row">
				        	<h3> 캠핑장 의견 게시판</h3>
	        			</div>
	        		</div>
	        		<div class="col-sm-6 text-right more">
		        		<a data-pno="1" data-Tnum="3">더보기</a>
	        		</div>
	        	</div>
				<div class="row right-box" style="height:260px;">
					<table class="table">
						<colgroup>
							<col width="70%" />
							<col width="10%" />
							<col width="20%" />
						</colgroup>
						<thead>
							<tr>
								<th>제목</th>
								<th>조회수</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="opinion" items="${opinions }">
								<tr>
									<td><a class="title" href='detail.camp?no=${opinion.no }&boardType=3' >${opinion.title }</a></td>
									<td>${opinion.views }</td>
									<td><fmt:formatDate value="${opinion.createDate }"/> </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
	        </div>
	        
	         <div class="row panel panel-default">
	        	<div class="row join-board panel-heading">
	        		<div class="col-sm-6">
	        			<div class="row">
				        	<h3> 자유 게시판</h3>
	        			</div>
	        		</div>
	        		<div class="col-sm-6 text-right more">
		        		<a data-pno="1" data-Tnum="4">더보기</a>
	        		</div>
	        	</div>
				<div class="row right-box" style="height:260px;">
					<table class="table">
						<colgroup>
							<col width="70%" />
							<col width="10%" />
							<col width="20%" />
						</colgroup>
												
						<thead>
							<tr>
								<th>제목</th>
								<th>조회수</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="free" items="${frees }">
								<tr>
									<td><a class="title" href='detail.camp?no=${free.no }&boardType=4' >${free.title }</a></td>
									<td>${free.views }</td>
									<td><fmt:formatDate value="${free.createDate }"/> </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
	        </div>
	
				<!-- 끝 -->
	        <div class="row">
	            <div class="col-sm-4 col-sm-offset-8 text-right">
	                <button type="button" onclick="location.href='write.camp'" class="btn btn-default write-button" >글쓰기</button>
	            </div>
	        </div>
        </div>
	    <div class="row text-center">
		    <ul class="pagination " id="board-page-box" >
		    	
			</ul>
	    </div>
    </div>
</div>
<script type="text/javascript">
	function change(boardType) {
		if(boardType == 1){
			$("#join").addClass('active').siblings().removeClass('active');
			$("#community-sort").text("커뮤니티 > 가입인사 게시판");
		}
		if(boardType == 2){
			$("#review").addClass('active').siblings().removeClass('active');
			$("#community-sort").text("커뮤니티 > 캠핑장리뷰 게시판");
		}
		if(boardType == 3){
			$("#opinion").addClass('active').siblings().removeClass('active');
			$("#community-sort").text("커뮤니티 > 캠핑장의견 게시판");
		}
		if(boardType == 4){
			$("#free").addClass('active').siblings().removeClass('active');
			$("#community-sort").text("커뮤니티 > 자유 게시판");
		}
	}
	$(function() {
		$("#btn_header_search").click(function(){
			var boardType = $("#boardType").val();
			var keyword = $("#keyword").val();
			var sort = $("#sort").val();
			if(keyword == ''){
				alert("검색어를 입력하여 주세요");
				return false;
			}
			change(boardType);
			getPage(1, boardType, keyword, sort);
			
		})
		
		$(".item").click(function(){
			var boardType = $(this).attr("data-board-type");
			change(boardType);
			$(this).addClass('active').siblings().removeClass('active');
			getPage(1, boardType);
		});
		function getPage(pno, boardType, keyword, sort){
			if(boardType == 0) {
				location.href= "home.camp";
				$(".page-head-right").hide();
			} else {
				$(".page-head-right").show();	
				$(".in-board").empty();
				
				$.ajax({
					type:"GET"
					, url:"board.camp?boardType=" + boardType + "&pno=" + pno + "&keyword=" + keyword + "&sort=" + sort
					, dataType:"json"
					, success:function(data){
						var boards = data.boards;
						var pagination = data.pagination;
						var pagination = data.pagination;
						if(boardType ==1){
							var menu = "가입인사";
						}
						if(boardType ==2){
							var menu = "캠핑장리뷰";
						}
						if(boardType ==3){
							var menu = "캠핑장의견";
						}
						if(boardType ==4){
							var menu = "자유게시판";
						}
						if(boards.length){
							$.each(boards, function(index, board){
								var row = '<div class="row right-box">';
								row += '<div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">';
								row += '<div class="col-sm-2 text-center" style="margin-bottom: 10px;">';
					           	row += '<img src="/camping/resources/images/community/'+ board.thumbnail +'" width="130px" height="130px"/>';
					       	 	row += '</div>';
					        	row += '<div class="col-sm-10 content-summary " >';
					          	row += '<div style="margin-bottom: 5px; padding-left: 40px;">';
				            	row += '<span style="font-size: 18px;"><a class="title" href="detail.camp?no='+board.no+'&boardType='+boardType+'" >'+board.title+'</a></span>';
					           	row += '</div>';
				                row += '<div  class="contents"  style="margin-bottom: 10px; padding-left: 40px;">';
				                row += '<span style="color: #888;" id="contents-in"> '+board.contents+'</span>';
					           	row += '</div>';
					           	row += '<div style="margin-bottom: 10px; padding-left: 40px;">';
             					row += '<span style="color: #3ea9cd">'+board.userNick+'</span>';
				          		row += '</div>';
					           	row += '<div class="text-right" style="margin-bottom: 15px;">';
				            	row += '<span>'+ board.createDateStr +'</span>';
					            row += '</div>';
					            row += '</div>';
				   				row += '</div>';
				   				row += '</div>';
					   			 
					   			 
					   			 
								
								$(".in-board").append(row);
							});
							var navi = "";
							var pre = pagination.page - 1;
							if(pagination.first == false){
								navi += '<li><a href="#" aria-label="Previous" data-pno="'+pre+'" data-Tnum="'+ boardType +'"><span aria-hidden="true">&laquo;</span></a></li>';
								
							}
							
							for(var i=pagination.begin; i<=pagination.end; i++){
								if(pagination.page == i){
									navi += '<li class="active"><a data-pno="'+i+'" data-Tnum="'+ boardType +'">'+i+'</a></li>';
									
								} else {
									navi += '<li><a data-pno="'+i+'" data-Tnum="'+ boardType +'" >'+i+'</a></li>';
								}
							}
							var next = pagination.page + 1;
							if(pagination.last == false){
								navi += '<li><a href="#" aria-label="Next" data-pno="'+next+'" data-Tnum="'+ boardType +'"><span aria-hidden="true">&raquo;</span></a></li>';
								
							}
							
							
							$("#board-page-box").html(navi);
						}
					}
				});
			}
		}
		
		
		
		$("#board-page-box").on("click", "a", function(){
			var page = $(this).attr("data-pno");
			var boardType = $(this).attr("data-Tnum");
			change(boardType);
			getPage(page, boardType);
		})
		$(".more").on("click", "a", function(){
			var page = $(this).attr("data-pno");
			var boardType = $(this).attr("data-Tnum");
			
			change(boardType);
			getPage(page, boardType);
		})
		
	});
	
</script>
    
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/camping/resources/css/community/home.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
     
     .content-summary img {
        display:none;
     }
     
  </style>
</head>
<body>
<div class="row">
    <div class="col-sm-3 col-sm-offset-2 page-head-left " id="community-sort">
        커뮤니티 > 전체: 최신순
    </div>
    <div class="col-sm-5 page-head-right">
       <form class="form-inline">
           <div class="form-group pull-right">
                <select class="form-control" id="boardType">
                    <option value="1">가입인사</option>
                    <option value="2">캠핑장 리뷰</option>
                    <option value="3">캠핑장 의견</option>
                    <option value="4">자유</option>
                </select> 
                <select class="form-control" id="sort">
                    <option value="title">제목</option>
                    <option value="contents">내용</option>
                </select>
            <input class="form-control" type="text" id="keyword" minlength="2" maxlength="10">
            <button class="form-control" type="button" class="btn btn-default" id="btn_header_search">검색</button>
           </div>
      </form>
    </div>
</div>
<hr/>
<div class="row bottom">
    <div class="col-sm-2 col-sm-offset-2">
         <div class="panel panel-primary">
            
            <ul class="list-group" id="dept-list-box">
             <li class='list-group-item active' data-board-type="0"  id="new" >전체: 최신순 </li>
             <li class='list-group-item' data-board-type="1" id="join" >가입인사 게시판 </li>
             <li class='list-group-item' data-board-type="2" id="review" >캠핑장 리뷰 게시판 </li>
             <li class='list-group-item' data-board-type="3" id="opinion" >캠핑장 의견 게시판 </li>
             <li class='list-group-item ' data-board-type="4" id="free" >자유 게시판 </li>
            </ul>
         </div>
    </div>
    <div class="col-sm-5 " >
        <div class="in-board">
           <!-- right-box 시작 -->
           <div class="row" style="height:320x;">
              <div class="row join-board " >
                 <div class="col-sm-6">
                    <div class="row">
                       <h3>▶ 가입인사 게시판</h3>
                    </div>
                 </div>
                 <div class="col-sm-6 text-right more">
                    <a  data-pno="1" data-Tnum="1">더보기</a>
                 </div>
              </div>
            <div class="row right-box">
               <table class="table">
                  <colgroup>
                     <col width="70%" />
                     <col width="10%" />
                     <col width="20%" />
                  </colgroup>
                  <thead>
                     <tr>
                        <th>제목</th>
                        <th>조회수</th>
                        <th>등록일</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="join" items="${joins }">
                        <tr>
                           <td><a class="title" href='detail.camp?no=${join.no }&boardType=1' >${join.title }</a></td>
                           <td>${join.views }</td>
                           <td><fmt:formatDate value="${join.createDate }"/> </td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
            </div>
           </div>
         
          <div class="row" style="height:320px;">
              <div class="row join-board">
                 <div class="col-sm-6">
                    <div class="row">
                       <h3>▶ 캠핑장 리뷰 게시판</h3>
                    </div>
                 </div>
                 <div class="col-sm-6 text-right more">
                    <a data-pno="1" data-Tnum="2">더보기</a>
                 </div>
              </div>
            <div class="row right-box">
               <table class="table">
                  <colgroup>
                     <col width="70%" />
                     <col width="10%" />
                     <col width="20%" />
                  </colgroup>
                  <thead>
                     <tr>
                        <th>제목</th>
                        <th>조회수</th>
                        <th>등록일</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="review" items="${reviews }">
                        <tr>
                           <td><a class="title"  href='detail.camp?no=${review.no }&boardType=2' >${review.title }</a></td>
                           <td>${review.views }</td>
                           <td><fmt:formatDate value="${review.createDate }"/> </td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
            </div>
           </div>
           
            <div class="row" style="height:320px;">
              <div class="row join-board">
                 <div class="col-sm-6">
                    <div class="row">
                       <h3>▶ 캠핑장 의견 게시판</h3>
                    </div>
                 </div>
                 <div class="col-sm-6 text-right more">
                    <a data-pno="1" data-Tnum="3">더보기</a>
                 </div>
              </div>
            <div class="row right-box">
               <table class="table">
                  <colgroup>
                     <col width="70%" />
                     <col width="10%" />
                     <col width="20%" />
                  </colgroup>
                  <thead>
                     <tr>
                        <th>제목</th>
                        <th>조회수</th>
                        <th>등록일</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="opinion" items="${opinions }">
                        <tr>
                           <td><a class="title" href='detail.camp?no=${opinion.no }&boardType=3' >${opinion.title }</a></td>
                           <td>${opinion.views }</td>
                           <td><fmt:formatDate value="${opinion.createDate }"/> </td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
            </div>
           </div>
           
            <div class="row" style="height:320px;">
              <div class="row join-board">
                 <div class="col-sm-6">
                    <div class="row">
                       <h3>▶ 자유 게시판</h3>
                    </div>
                 </div>
                 <div class="col-sm-6 text-right more">
                    <a data-pno="1" data-Tnum="4">더보기</a>
                 </div>
              </div>
            <div class="row right-box">
               <table class="table">
                  <colgroup>
                     <col width="70%" />
                     <col width="10%" />
                     <col width="20%" />
                  </colgroup>
                                    
                  <thead>
                     <tr>
                        <th>제목</th>
                        <th>조회수</th>
                        <th>등록일</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="free" items="${frees }">
                        <tr>
                           <td><a class="title" href='detail.camp?no=${free.no }&boardType=4' >${free.title }</a></td>
                           <td>${free.views }</td>
                           <td><fmt:formatDate value="${free.createDate }"/> </td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
            </div>
           </div>
   
            <!-- 끝 -->
           <div class="row">
               <div class="col-sm-4 col-sm-offset-8 text-right">
                   <button type="button" onclick="location.href='write.camp'" class="btn btn-default write-button" >글쓰기</button>
               </div>
           </div>
        </div>
       <div class="row text-center">
          <ul class="pagination " id="board-page-box" >
             
         </ul>
       </div>
    </div>
</div>
<script type="text/javascript">
   function change(boardType) {
      if(boardType == 1){
         $("#join").addClass('active').siblings().removeClass('active');
         $("#community-sort").text("커뮤니티 > 가입인사 게시판");
      }
      if(boardType == 2){
         $("#review").addClass('active').siblings().removeClass('active');
         $("#community-sort").text("커뮤니티 > 캠핑장리뷰 게시판");
      }
      if(boardType == 3){
         $("#opinion").addClass('active').siblings().removeClass('active');
         $("#community-sort").text("커뮤니티 > 캠핑장의견 게시판");
      }
      if(boardType == 4){
         $("#free").addClass('active').siblings().removeClass('active');
         $("#community-sort").text("커뮤니티 > 자유 게시판");
      }
   }
   $(function() {
      $("#btn_header_search").click(function(){
         var boardType = $("#boardType").val();
         var keyword = $("#keyword").val();
         var sort = $("#sort").val();
         if(keyword == ''){
            alert("검색어를 입력하여 주세요");
            return false;
         }
         change(boardType);
         getPage(1, boardType, keyword, sort);
         
      })
      
      $(".list-group-item").click(function(){
         var boardType = $(this).attr("data-board-type");
         change(boardType);
         $(this).addClass('active').siblings().removeClass('active');
         getPage(1, boardType);
      });
      function getPage(pno, boardType, keyword, sort){
         if(boardType == 0) {
            location.href= "home.camp";
            $(".page-head-right").hide();
         } else {
            $(".page-head-right").show();   
            $(".in-board").empty();
            
            $.ajax({
               type:"GET"
               , url:"board.camp?boardType=" + boardType + "&pno=" + pno + "&keyword=" + keyword + "&sort=" + sort
               , dataType:"json"
               , success:function(data){
                  var boards = data.boards;
                  var pagination = data.pagination;
                  var pagination = data.pagination;
                  if(boardType ==1){
                     var menu = "가입인사";
                  }
                  if(boardType ==2){
                     var menu = "캠핑장리뷰";
                  }
                  if(boardType ==3){
                     var menu = "캠핑장의견";
                  }
                  if(boardType ==4){
                     var menu = "자유게시판";
                  }
                  if(boards.length){
                     $.each(boards, function(index, board){
                        var row = '<div class="row right-box">';
                        row += '<div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">';
                        row += '<div class="col-sm-2 text-center" style="margin-bottom: 10px;">';
                             row += '<img src="/camping/resources/images/community/'+ board.thumbnail +'" width="130px" height="130px"/>';
                             row += '</div>';
                          row += '<div class="col-sm-10 content-summary " >';
                            row += '<div style="margin-bottom: 5px; padding-left: 40px;">';
                           row += '<span style="font-size: 18px;"><a class="title" href="detail.camp?no='+board.no+'&boardType='+boardType+'" >'+board.title+'</a></span>';
                             row += '</div>';
                            row += '<div  class="contents"  style="margin-bottom: 10px; padding-left: 40px;">';
                            row += '<span style="color: #888;" id="contents-in"> '+board.contents+'</span>';
                             row += '</div>';
                             row += '<div style="margin-bottom: 10px; padding-left: 40px;">';
                            row += '<span style="color: #3ea9cd">'+board.userNick+'</span>';
                            row += '</div>';
                             row += '<div class="text-right" style="margin-bottom: 15px;">';
                           row += '<span>'+ board.createDateStr +'</span>';
                           row += '</div>';
                           row += '</div>';
                           row += '</div>';
                           row += '</div>';
                            
                            
                            
                        
                        $(".in-board").append(row);
                     });
                     var navi = "";
                     var pre = pagination.page - 1;
                     if(pagination.first == false){
                        navi += '<li><a href="#" aria-label="Previous" data-pno="'+pre+'" data-Tnum="'+ boardType +'"><span aria-hidden="true">&laquo;</span></a></li>';
                        
                     }
                     
                     for(var i=pagination.begin; i<=pagination.end; i++){
                        if(pagination.page == i){
                           navi += '<li class="active"><a data-pno="'+i+'" data-Tnum="'+ boardType +'">'+i+'</a></li>';
                           
                        } else {
                           navi += '<li><a data-pno="'+i+'" data-Tnum="'+ boardType +'" >'+i+'</a></li>';
                        }
                     }
                     var next = pagination.page + 1;
                     if(pagination.last == false){
                        navi += '<li><a href="#" aria-label="Next" data-pno="'+next+'" data-Tnum="'+ boardType +'"><span aria-hidden="true">&raquo;</span></a></li>';
                        
                     }
                     
                     
                     $("#board-page-box").html(navi);
                  }
               }
            });
         }
      }
      
      
      
      $("#board-page-box").on("click", "a", function(){
         var page = $(this).attr("data-pno");
         var boardType = $(this).attr("data-Tnum");
         change(boardType);
         getPage(page, boardType);
      })
      $(".more").on("click", "a", function(){
         var page = $(this).attr("data-pno");
         var boardType = $(this).attr("data-Tnum");
         
         change(boardType);
         getPage(page, boardType);
      })
      
   });
   
</script>
    
</body>
>>>>>>> c500f4056ff9254c235dabf9e15f529789616e0f
</html>