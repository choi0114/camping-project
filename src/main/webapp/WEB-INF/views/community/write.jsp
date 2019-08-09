<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/camping/resources/css/community/write.css">
  <link rel="stylesheet" href="/camping/resources/css/community/home.css">
  <script type="text/javascript" src="/camping/resources/js/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="../common/detailNav.jsp" %>
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
					<input class="form-control" type="text" title="통합검색"  name="headerkeyword"  maxlength="10">
					<button class="form-control" type="button" class="btn btn-default" id="btn_header_search">검색</button>
				</div>
			</form>
		</div>
	</div>
	<hr />


	<div class="row bottom">
		<div class="col-sm-2 col-sm-offset-2">
	   		<div class="panel panel-primary">
	   			<ul class="list-group" id="dept-list-box">
	    			<li class='list-group-item' data-board-type="0" >전체: 최신순 </li>
	    			<li class='list-group-item' data-board-type="1" >가입인사 게시판 </li>
	    			<li class='list-group-item' data-board-type="2" >캠핑장 리뷰 게시판 </li>
	    			<li class='list-group-item' data-board-type="3" >캠핑장 의견 게시판 </li>
	    			<li class='list-group-item' data-board-type="4" >자유 게시판 </li>
	   			</ul>
	   		</div>
	    </div>
		<div class="col-sm-5 in-board">
			<form id="register-form" class="writeWell well " method="post" action="write.camp" enctype="multipart/form-data" >
				<div class="form-group">
					<label>게시판 선택</label>
					<select name="menu" id="board-select" class="form-control">
						<option value="1"> 가입인사</option>
						<option value="2"> 캠핑장리뷰 게시판</option>
						<option value="3"> 캠핑장의견 게시판</option>
						<option value="4"> 자유 게시판</option>
					</select>
				</div>
				<div class="form-group choose-camp-1">
					<label>캠핑장 선택</label>
					<div class="row">
						<div class="col-sm-10">
							<input class="form-control" type="text" value=""  id="campsite-Name" disabled="disabled" maxlength="20">
							<input type="hidden"  id="campsite-No" name="campsiteNo" value=""/>
						</div>
						<div class="col-sm-2">
							<button type="button" class="btn btn-primary form-control" data-toggle="modal" data-target="#modal-search-campsite" >검색</button>
						</div>

					</div>
				</div>
				
				<div class="form-group">
					<label>제목</label>
					<input type="text" class="form-control" name="title" id="board-title"/>
				</div>
				<div class="form-group">
					<label>썸네일 등록</label>
					<input type="file" class="form-control" name="thumbnailUploadFile" id="board-thumbnail"/>
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
	<div class="modal fade" id="modal-search-campsite" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">캠핑장 선택</h4>
				</div>
				<div class="modal-body" style="height:430px;">
					<form>
						<div class="row">
							<div class="col-sm-10">
								<input class="form-control" type="text" id="search" >
							</div>
							<div class="col-sm-2">
								<button type="button" class=" btn btn-primary form-control" id="btn-search-camp">검색</button>
							</div>
						</div>
					</form>
					<hr/>
					<div class="row ">
						<div class="row searchCamp">
							
						</div>
						<div class="row">
				            <div class="text-center col-sm-12">
				                <ul class="pagination" id="camp-page-box" >
						           
						        </ul>
				            </div>
				        </div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$(function() {
		$(".list-group-item").click(function(){
			var boardType = $(this).attr("data-board-type");
			$(this).addClass('active').siblings().removeClass('active');
			getPage(1, boardType);
		});
		function getPage(pno, boardType){
				
			if(boardType == 0) {
				location.href= "home.camp";
			
			} else {
					
				$(".in-board").empty();
				
				$.ajax({
					type:"GET"
					, url:"board.camp?boardType=" + boardType + "&pno=" + pno
					, dataType:"json"
					, success:function(data){
						var boards = data.boards;
						var pagination = data.pagination;
						var pagination = data.pagination;
						
						if(boards.length){
							$.each(boards, function(index, board){
								var row = '<div class="row">';
								row += '<div class="row right-box">';
								row += '<div class="col-sm-3 right-box-img">';
								row += '<img src="/camping/resources/images/community/'+ board.thumbnail +'" width="154" height="154">';
								row += '</div>';
								row += '<div class="col-sm-9 in-contents">';
								row += '<div class="row">';
								row += '<div class="col-sm-7 title">';
								row += '<span>'+board.title+'</span>';
								row += '</div>';
								row += '<div class="col-sm-5 date text-right">';
								row += '<span>'+ board.createDateStr +'</span>';
								row += '</div>';
								row += '</div>';
								row += '<div class="row">';
								row += '<div class="col-sm-12 contents">'+board.contents+'</div>';
								row += '</div>';
								row += '<div class="row">';
								row += '<div class="col-sm-7 trace">';
								row += '<span class="id-emphasis">'+board.userId+'님이 남긴포스트입니다</div>';
								row += '<div class="col-sm-5 text-right">';
								row += '<span class="glyphicon glyphicon-thumbs-up btn-lg" aria-hidden="true"></span>';
								row += '<span class="like">'+board.likes+'</span> ';
								row += '<img class="icon-img" src="/camping/resources/images/community/blogging.png" width="18" height="18" align="top" />'; 
								row += '<span class="comment">'+board.commentCnt+'</span>';
								row += '</div>';
								row += '</div>';
								row += '</div>';
								row += '</div>';
								row += '</div>';
								
								$(".in-board").append(row);
							});
							var navi = "";
							var pre = pagination.page - 1;
							if(pagination.first == false){
								navi += '<li><a href="#" aria-label="Previous" data-pno="'+pre+'"><span aria-hidden="true">&laquo;</span></a></li>';
								
							}
							
							for(var i=pagination.begin; i<=pagination.end; i++){
								if(pagination.page == i){
									navi += '<li class="active"><a data-pno="'+i+'" data-Tnum="'+ boardType +'">'+i+'</a></li>';
									
								} else {
									navi += '<li><a data-pno="'+i+'" data-Tnum="'+ boardType +'">'+i+'</a></li>';
								}
							}
							var next = pagination.page + 1;
							if(pagination.last == false){
								navi += '<li><a href="#" aria-label="Next" data-pno="'+next+'"><span aria-hidden="true">&raquo;</span></a></li>';
								
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
			getPage(page, boardType);
			
			
		})
		
		
		
		$(".choose-camp-1").hide();
		$("#board-select").change(function() {
			
			var boardValue = $("#board-select option:selected").val();
	
			if(boardValue == "1") {
				$(".choose-camp-1").hide();
			}
			if(boardValue == "4") {
				$(".choose-camp-1").hide();
			}
			if(boardValue == "2") {
				$(".choose-camp-1").show();
			}
			if(boardValue == "3") {
				$(".choose-camp-1").show();
			}
		})
		
		$("#btn-search-camp").click(function(){
			getCampsites(1);			
		})
		
		function getCampsites(pno) {
			
			$(".searchCamp").empty();
			$("#camp-page-box").empty();
			var search = $("#search").val();
			if(search == "") {
				alert("검색어를 입력하세요");
				return false;
			}
			
			$.ajax({
				type:"GET"
				, url:"/camping/community/search.camp?keyword=" + search +"&pno=" + pno
				, dataType: "json"
				, success:function(data) {
					var campsites = data.campList;
					var pagination = data.pagination;
					if(campsites.length) {
						console.log(campsites);
						$.each(campsites, function(index, campsite) {
							var row = '<div class="col-sm-9 col-sm-offset-1">';						
							row += "<div>"+campsite.name+"</div>";
							row += '</div>';
							row += '<div class="col-sm-2" id="choose-box'+campsite.no+'">';
							row += '<button type="button" id="choose'+campsite.no+'" class="btn-xs btn-default" data-no="'+campsite.no+'" data-name="'+campsite.name+'">선택</button>';
							row += '</div>';
							
							$(".searchCamp").append(row);
							
						})
						
						var navi = "";
						var pre = pagination.page - 1;
						if(pagination.first == false){
							navi += '<li><a href="#" aria-label="Previous" data-pno="'+pre+'"><span aria-hidden="true">&laquo;</span></a></li>';
							
						}
						
						for(var i=pagination.begin; i<=pagination.end; i++){
							if(pagination.page == i){
								navi += '<li class="active"><a data-pno="'+i+'">'+i+'</a></li>';
							} else {
								navi += '<li><a data-pno="'+i+'">'+i+'</a></li>';
							}
						}
						var next = pagination.page + 1;
						if(pagination.last == false){
							navi += '<li><a href="#" aria-label="Next" data-pno="'+next+'"><span aria-hidden="true">&raquo;</span></a></li>';
							
						}
						
						
						$("#camp-page-box").html(navi);
					} else {
						var row = '<div class="col-sm-9 col-sm-offset-1   ">';						
						row += "<div>검색 된 캠핑장 정보가 존재하지 않습니다.</div>";
						row += '</div>';
						
						$(".searchCamp").append(row);
					}
				}
			})
			
		}

		
		$(".searchCamp").on("click","button",function(){
			
			var name = $(this).attr("data-name");
			var no = $(this).attr("data-no");
			
			$("#campsite-Name").attr('value',name);
			$("#campsite-No").attr('value',no);
			
			$('#modal-search-campsite').modal('hide');
		});
		
		
			
		$("#camp-page-box").on("click", "a", function(){
			var page = $(this).attr("data-pno");
			getCampsites(page);
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
	    	var sHTML = '<img src="/camping/resources/images/editor/'+filepath+'">';
	    	oEditors.getById["board-contents"].exec("PASTE_HTML", [sHTML]);
		}, 5000);
	}
	
	// 등록버튼 클릭시 실행할 코드
	$('#btn-add-form').click(function() {
		
		if ($("#board-title").val() == '') {
			alert("제목을 입력하여 주세요");
			return false;
		} else if ($("#board-thumbnail").val() == '') {
			alert("썸네일을 등록하여 주세요");
			return false;
		}
		
		var boardValue = $("#board-select option:selected").val();
		
		if(boardValue == "2") {
			if ($("#campsite-No").val() == '') {
				
				alert("캠핑장을 선택해주세요");
				return false;
			}
		}
		
		if(boardValue == "3") {
			if ($("#campsite-No").val() == '') {
				
				alert("캠핑장을 선택해주세요");
				return false;
			}
		}
		
		
		oEditors.getById["board-contents"].exec("UPDATE_CONTENTS_FIELD", [ ]);
		$("#register-form").submit();
	});
 </script>
</body>
</html>