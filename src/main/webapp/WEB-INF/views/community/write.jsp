<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/camping/resources/css/community/write.css">
  <script type="text/javascript" src="/camping/resources/js/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-sm-5 col-sm-offset-2 page-head-left">
			<span>커뮤니티 > 게시글작성</span>
		</div>
		<div class="col-sm-3 page-head-right">
			<form class="form-inline">
				<div class="form-group pull-right">
					<select class="form-control">
						<option>전체</option>
						<option>제목</option>
					</select> 
					<input class="form-control" type="text" title="통합검색" 	id="header_keyword" name="header_keyword"  maxlength="10">
					<button class="form-control" type="button" class="btn btn-default" id="btn_header_search">검색</button>
				</div>
			</form>
		</div>
	</div>
	<hr />


	<div class="row bottom">
		<div class="col-sm-2 col-sm-offset-2">
			<div class="left-box">
				<div class="menu-box">
					<span> 전체: 최신순 </span>
				</div>

				<div class="menu-box">
					<span> 가입인사 게시판 </span>
				</div>
				<div class="menu-box">
					<span> 캠핑장 리뷰 게시판 </span>
				</div>
				<div class="menu-box">
					<span> 캠핑장 의견 게시판 </span>
				</div>
				<div class="last-menu-box">
					<span> 자유 게시판 </span>
				</div>
			</div>
			<div class="ad"></div>
		</div>
		<div class="col-sm-5 ">
			<form id="register-form" class="writeWell well" method="post" action="write.camp">
				<div class="form-group">
					<label>게시판 선택</label>
					<select name="menu" class="form-control" onclick="getCamp(this.value)">
						<option value="1"> 가입인사</option>
						<option value="2"> 캠핑장리뷰 게시판</option>
						<option value="3"> 캠핑장의견 게시판</option>
						<option value="4"> 자유 게시판</option>
					</select>
				</div>
				<div class="form-group">
					<label>캠핑장 선택</label>
					<div class="row">
						<div class="col-sm-10">
							<input class="form-control" type="text" title="통합검색" 	id="header_keyword" name="header_keyword" disabled="disabled" maxlength="20">
						</div>
						<div class="col-sm-2">
							<button type="button" class="btn btn-primary form-control" data-toggle="modal" data-target="#myModal" >검색</button>
						</div>

					</div>
				</div>
				
				<div class="form-group">
					<label>제목</label>
					<input type="text" class="form-control" name="title" id="board-title"/>
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea rows="10" class="form-control" name="contents" id="board-contents"></textarea>
				</div>
				<div class="text-right">
					<button type="button" class="btn btn-primary" id="btn-add-form">등록</button>
				</div>
			</form>
		</div>
		<!--                    우측 게시판 끝-->
	</div>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">캠핑장 선택</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="row">
							<div class="col-sm-10">
								<input class="form-control" type="text" id="search" name="search">
							</div>
							<div class="col-sm-2">
								<button type="button" class="search-button btn btn-primary form-control" >검색</button>
							</div>
						</div>
					</form>
					<hr/>
					<div class="row ">
						<div class="row searchCamp">
							
						</div>
						<div class="row">
				            <div class="text-right col-sm-8">
				                <ul class="pagination">
						            <c:if test="${not pagination.first }">
						               <li><a href="#" onclick="goPage(event, ${pagination.page - 1})">prev</a></li>
						            </c:if>
						         
						            <c:forEach var="num" begin="${pagination.begin }" end="${pagination.end }">
						               <c:choose>
						                  <c:when test="${num eq pagination.page }">
						                     <li class="active"><a href="#" onclick="goPage(event, ${num})">${num }</a></li>
						                  </c:when>
						                  <c:otherwise>
						                     <li><a href="#" onclick="goPage(event, ${num})">${num }</a></li>
						                  </c:otherwise>
						               </c:choose>
						            </c:forEach>
						         
						            <c:if test="${not pagination.last }">
						               <li><a href="#" onclick="goPage(event, ${pagination.page + 1})">next</a></li>
						            </c:if>
						         </ul>
				            </div>
				        </div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">

	$(function() {
		$(".search-button").click(function(){
			$(".searchCamp").empty();
			var search = $("#search").val();
			
			$.ajax({
				type:"GET"
				, url:"/camping/community/search.camp?keyword=" + search
				, dataType: "json"
				, success:function(campsites) {
					if(campsites.length) {
						console.log(campsites);
						$.each(campsites, function(index, campsite) {
							var row = '<div class="col-sm-9 col-sm-offset-1">';						
							row += "<div>"+campsite.name+"</div>";
							row += '</div>';
							row += '<div class="col-sm-2">';
							row += '<button type="button" class="btn-xs btn-default">선택</button>';
							row += '</div>';
							
							$(".searchCamp").append(row);
						})
					} else {
						var row = '<div class="col-sm-9 col-sm-offset-1   ">';						
						row += "<div>검색 된 캠핑장 정보가 존재하지 않습니다.</div>";
						row += '</div>';
						
						$(".searchCamp").append(row);
					}
				}
			})
		})
	})

	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
			elPlaceHolder: "board-contents",
			sSkinURI: "/camping/resources/js/se2/SmartEditor2Skin.html",
		fCreator: "createSEditor2"
	});
	// textArea에 이미지 첨부
	function pasteHTML(filepath){
		setTimeout(function() {
	    	var sHTML = '<img src="/camping/resources/images/community/'+filepath+'">';
	    	oEditors.getById["board-contents"].exec("PASTE_HTML", [sHTML]);
		}, 5000);
	}
	
	// 등록버튼 클릭시 실행할 코드
	$('#btn-add-form').click(function() {
		if ($("#board-title").val() == '') {
			alert("제목을 입력하세요");
			return false;
		}
		oEditors.getById["board-contents"].exec("UPDATE_CONTENTS_FIELD", [ ]);
		if ($("#board-contents").val() == '') {
			alert("내용을 입력하세요");
			return false;
		}
		
		$("#register-form").submit();
	});
 </script>
</body>
</html>