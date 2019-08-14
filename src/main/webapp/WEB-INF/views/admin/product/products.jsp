<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>5gCamping :: 1박 2일</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script type="text/javascript" src="/camping/resources/js/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
    	.table td {
    		vertical-align: middle !important;
    	}
    </style>
</head>
<body style="background-color:#f7f7f9">
<%@ include file="../common/adminNavi.jsp"%>
	<div class="col-xs-1">
		<c:set var="menu" value="campsite" />
		<%@ include file="../common/adminSidebar.jsp"%>
	</div>
<div class="container">
	<div class="page-header">
		<h1>상품관리 <button class="btn btn-default pull-right" id="btn-open-modal">등록</button></h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12 text-center">
			<table class="table" >
				<colgroup>
					<col width="10%" />
					<col width="10%" />
					<col width="20%" />
					<col width="10%" />
					<col width="10%" />
					<col width="10%" />
					<col width="20%" />
					<col width="5%" />
					<col width="5%" />
				</colgroup>
				<thead >
					<tr >
						<th class="text-center">썸네일</th>
						<th class="text-center">카테고리</th>
						<th class="text-center">상품명</th>
						<th class="text-center">가격</th>
						<th class="text-center">재고</th>
						<th class="text-center">등록일</th>
						<th class="text-center">판매여부</th>
						<th class="text-center">수정</th>
						<th class="text-center">삭제</th>
					</tr>
				</thead>
				<tbody id="in-body">
				</tbody>
			</table>
		</div>
	</div>
	
	<div id="product-form-modal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content" >
				<form class="well" method="post" id="add-form" enctype="multipart/form-data" action="addProduct.camp">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">신규 상품 등록</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>카테고리</label>
							<select class="form-control" name="category">
								<option value="BED"> 베드텐트</option>
								<option value="TENT"> 텐트·그늘막</option>
								<option value="CANOPY"> 캐노피·타프</option>
								<option value="CHAIR"> 체어·테이블</option>
								<option value="SLEEPINGBAG"> 침낭·캠핑용품</option>
								<option value="INDOOR"> 실내가구</option>
							</select>
						</div>
						<div class="form-group">
							<label>상품명</label>
							<input type="text" class="form-control" name="name"/>
						</div>
						<div class="form-group">
							<label>썸네일 등록</label>
							<input type="file" class="form-control" name="photo" id="board-thumbnail"/>
						</div>
						<div class="form-group">
							<label>상품설명</label>
							<textarea rows="3" class="form-control" name="summary"></textarea>
						</div>
						<div class="form-group">
							<label>상품가격</label>
							<input type="number" class="form-control" name="price" value="0"/>
						</div>
						<div class="form-group">
							<label>상품재고</label>
							<input type="number" class="form-control" name="stock" value="0"/>
						</div>
						<div class="form-group">
							<label>상품구분</label>
							<div class="radio">
								<label><input type="radio" name="sort" value="NEW" checked="checked"> 신규상품</label>
								<label><input type="radio" name="sort" value="RECOMMEND"> 추천상품</label>
							</div>
						</div>
						<div class="row form-group" style="width: 860px;">
							<div class="col-sm-12">
								<label>내용</label>
								<textarea rows="10" class="form-control" name="longSummary" id="board-contents" width="850px;"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" id="btn-add-form">등록</button>
						<button type="button" class="btn btn-default" data-dismiss="modal"  id="btn-close">닫기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="product-modify-form-modal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg" >
			<div class="modal-content">
				<form class="well" method="post" id="modify-form" enctype="multipart/form-data" action="modify.camp">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">상품 정보 수정</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>카테고리</label>
							<select class="form-control" name="category" id="goods-category">
								<option id="modify-bed" value="BED" > 베드텐트</option>
								<option id="modify-tent" value="TENT" > 텐트·그늘막</option>
								<option id="modify-canopy" value="CANOPY"> 캐노피·타프</option>
								<option id="modify-chair" value="CHAIR"> 체어·테이블</option>
								<option id="modify-sleepingbag" value="SLEEPINGBAG"> 침낭·캠핑용품</option>
								<option id="modify-indoor" value="INDOOR"> 실내가구</option>
							</select>
						</div>
						<input type="hidden" class="form-control" name="no" id="modify-no"/>
						<div class="form-group">
							<label>상품명</label>
							<input type="text" class="form-control" name="name" id="modify-name"/>
						</div>
						<div class="form-group">
							<label>썸네일 등록</label>
							<input type="file" class="form-control" name="photo" id="modify-photo"/>
						</div>
						<div class="form-group">
							<label>상품설명</label>
							<textarea rows="3" class="form-control" name="summary" id="modify-summary"></textarea>
						</div>
						<div class="form-group">
							<label>상품가격</label>
							<input type="number" class="form-control" name="price" id="modify-price"/>
						</div>
						<div class="form-group">
							<label>상품재고</label>
							<input type="number" class="form-control" name="stock" id="modify-stock"/>
						</div>
						<div class="form-group">
							<label>상품구분</label>
							<div class="radio">
								<label><input type="radio" name="sort" value="NEW" id="modify-new" > 신규상품</label>
								<label><input type="radio" name="sort" value="RECOMMEND" id="modify-recommend"> 추천상품</label>
							</div>
						</div>
						<div class="row form-group" style="width: 860px;">
							<div class="col-sm-12">
								<label>내용</label>
								<textarea rows="10" class="form-control" name="longSummary" id="board-content" width="850px;"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" id="btn-add-modify-form">수정</button>
						<button type="button" class="btn btn-default" data-dismiss="modal" id="btn-close-modify">닫기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="row text-center">
	    <ul class="pagination " id="product-page-box" >
		</ul>
    </div>
</div>
<script type="text/javascript">
	var oEditors = [];
	// textArea에 이미지 첨부
	function pasteHTML(filepath){
		setTimeout(function() {
	    	var sHTML = '<img src="/camping/resources/images/editor/'+filepath+'">';
	    	oEditors.getById["board-contents"].exec("PASTE_HTML", [sHTML]);
		}, 5000);
	}
	 function submitContents(elClickedObj) {
         // 에디터의 내용이 textarea에 적용된다.
         oEditors.getById["board-content"].exec("UPDATE_CONTENTS_FIELD",
               []);

         // 에디터의 내용에 대한 값 검증은 이곳에서
         // document.getElementById("textAreaContent").value를 이용해서 처리한다.
         console.log(document.getElementById("board-content").value);
         try {
            $("#modify-form").submit();
         } catch (e) {

         }
      }

	$(function() { 
		$(".container").on("click","#btn-add-modify-form", function(){
			if ($("#modify-photo").val() == '') {
				alert("썸네일을 등록하여 주세요");
				return false;
			}else{
				submitContents();
				$("#modify-form").submit();
				
			}
		})
		function getPage(pno, keyword, sort){
		
			$(".page-head-right").show();	
			$(".in-board").empty();
			
			$.ajax({
				type:"GET"
				, url:"selectAdminProduct.camp?&pno=" + pno + "&keyword=" + keyword + "&sort=" + sort
				, dataType:"json"
				, success:function(data){
					var products = data.products;
					var pagination = data.pagination;
					
					if(products.length){
						$.each(products, function(index, product){
							
							var row = '<tr>';
							row += '<td>';
							row += '<img src="/camping/resources/images/product/' + product.photo + '" alt="Nature" style="width: 120px; height:100px">';
							row += '</td>';
							row += '<td>'+ product.goodsCategory +'</td>';
							row += '<td>'+ product.name  +'</td>';
							row += '<td>'+ product.price  +'원</td>';
							row += '<td>'+ product.stock  +'</td>';
							row += '<td>'+ product.createDateStr  +'</td>';
							row += '<td class="">';
							row += '<button id="btn-start-'+ product.goodsNo  +'" data-product-no="'+ product.goodsNo  +'" class="btn btn-success btn-xs '+(product.forsale == "Y" ? "disabled" : "" )+'" >판매시작</button>';
							row += '<button style="margin-left: 10px;" id="btn-end-'+ product.goodsNo  +'" data-product-no="'+ product.goodsNo +'" class="btn btn-danger btn-xs '+(product.forsale == "N" ? "disabled" : "" )+'" >판매중지</button>';
							row += '</td>';
							row += '<td>';
							row += '<button class="btn btn-default btn-xs" id="btn-open-modal-modify-'+ product.goodsNo +'" data-product-no="'+ product.goodsNo +'">수정</button>';
							row += '</td>';
							row += '<td>';
							row += '<button class="btn btn-default btn-xs" id="delete-product-'+ product.goodsNo +'" data-product-no="'+ product.goodsNo +'">삭제</button>';
							row += '</td>';
							row += '</tr>';
							$("#in-body").append(row);	
						});
					
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
						$("#product-page-box").html(navi);
					}
				}
			});
			
		}
		// 모달이 사라질때
		
		
		$("#in-body").on("click","[id^='delete-product']",function(){
			var no = $(this).attr("data-product-no");
			$.ajax({
				type:"GET"
				, url:"delete.camp?no="+ no
				, success:function(data){
					location.href="adminProduct.camp"
				}
			})		
		})
		$("#in-body").on("click","[id^='btn-start']",function(){
			
			$(this).addClass('disabled').next().removeClass('disabled');
			var no = $(this).attr("data-product-no");
			$.ajax({
				type:"GET"
				, url:"start.camp?start=Y&no="+ no
			})
		})
		$("#in-body").on("click","[id^='btn-end']",function(){
			
			$(this).addClass('disabled').prev().removeClass('disabled');
			var no = $(this).attr("data-product-no");
			$.ajax({
				type:"GET"
				, url:"end.camp?end=N&no="+ no
			})
		})
		
		getPage(1,'','');
		$("#product-page-box").on("click", "a", function(){
			var page = $(this).attr("data-pno");
			var boardType = $(this).attr("data-Tnum");
			change(boardType);
			getPage(page, boardType);
		})
		
		$(".container").on("click", "#btn-open-modal", function() {
			$("#product-form-modal").modal('show');
			$('iframe').remove();
			console.log(oEditors);
			// 에디터 창
			nhn.husky.EZCreator.createInIFrame({
				oAppRef: oEditors,
			    elPlaceHolder: "board-contents",
				sSkinURI: "/camping/resources/js/se2/SmartEditor2Skin.html",
		      	fCreator: "createSEditor2",
		      	htParams : {
		          fOnBeforeUnload : function() {
		          }
		      	}
		    // 이페이지 나오기 alert 삭제
		    });
			
		});
		
		$(".container").on("click","[id^='btn-open-modal-modify']",function() {
			$("#product-modify-form-modal").modal('show');
			var no = $(this).attr("data-product-no");
			
			$.ajax({
				type:"GET"
				, url:"modal.camp?no="+ no
				, dataType:"json"
				, success:function(product){
					console.log(product.goodsNo);
					console.log(product.goodsCategory);
					
					if("BED" == product.goodsCategory){
						
						$("#modify-bed").attr("selected", "selected");
						$("#modify-bed").not(":selected").attr("selected", "")

					}
					if("TENT" == product.goodsCategory){
						$("#modify-tent").attr("selected", "selected");
						$("#modify-tent").not(":selected").attr("selected", "")
					}
					if("CANOPY" == product.goodsCategory){
						
						$("#modify-canopy").attr("selected", "selected");
						$("#modify-canopy").not(":selected").attr("selected", "")
					}
					if("CHAIR" == product.goodsCategory){
						$("#modify-chair").attr("selected", "selected");
						$("#modify-chair").not(":selected").attr("selected", "")
					}
					if("SLEEPINGBAG" == product.goodsCategory){
						
						$("#modify-sleepingbag").attr("selected", "selected");
						$("#modify-sleepingbag").not(":selected").attr("selected", "")
					}
					if("INDOOR" == product.goodsCategory){
						$("#modify-indoor").attr("selected", "selected");
						$("#modify-indoor").not(":selected").attr("selected", "")
					}
					
					
					
					
					
					
					if("NEW" == product.goodsSort){
						
						$("#modify-new").attr("checked", "checked");
						$("#modify-new").not(":selected").attr("selected", "")
					}
					if("RECOMMEND" == product.goodsSort){
						$("#modify-recommend").attr("checked", "checked");
						$("#modify-recommend").not(":selected").attr("selected", "")
					}
					$("#modify-no").val(product.goodsNo);
					
					$("#modify-name").val(product.name);
					//$("#modify-photo").val(product.photo);
					$("#modify-summary").val(product.summary);
					$("#modify-price").val(product.price);
					$("#modify-stock").val(product.stock);
					$("#board-content").val(product.longSummary);
				}
			})
			
				$('iframe').remove();
				console.log(oEditors);
				// 에디터 창
				nhn.husky.EZCreator.createInIFrame({
					oAppRef: oEditors,
				    elPlaceHolder: "board-content",
					sSkinURI: "/camping/resources/js/se2/SmartEditor2Skin.html",
			      	fCreator: "createSEditor2",
			      	htParams : {
			          fOnBeforeUnload : function() {
			          }
			      	}
			    // 이페이지 나오기 alert 삭제
			    });
			
			
			
		});

		
		// 등록버튼 클릭시 실행할 코드
		$('#btn-add-form').click(function() {
			
			if ($("#board-title").val() == '') {
				alert("제목을 입력하여 주세요");
				return false;
			} else if ($("#board-thumbnail").val() == '') {
				alert("썸네일을 등록하여 주세요");
				return false;
			}
			
			oEditors.getById["board-contents"].exec("UPDATE_CONTENTS_FIELD", [ ]);
			$("#add-form").submit();
		});
	})
</script>
</body>
</html>