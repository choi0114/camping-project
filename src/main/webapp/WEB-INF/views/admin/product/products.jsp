<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap Example</title>
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
<body>
<div class="container">
	<div class="page-header">
		<h1>상품관리 <button class="btn btn-default pull-right" id="btn-open-modal">등록</button></h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12 text-center">
			<table class="table" >
				<thead >
					<tr >
						<th class="text-center"></th>
						<th class="text-center">카테고리</th>
						<th class="text-center">상품명</th>
						<th class="text-center">가격</th>
						<th class="text-center">재고</th>
						<th class="text-center">등록일</th>
						<th class="text-center">판매여부</th>
						<th class="text-center">수정</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="product" items="${products }">
					<tr>
						<td>
							<img src="/resources/images/product/${product.photo }" alt="Nature" style="width: 120px; height:100px">
						</td>
						
						<td>${product.goodsCategory }</td>
						<td>${product.name }</td>
						<td>${product.price }원</td>
						<td>${product.stock }</td>
						<td><fmt:formatDate value="${product.createDate }"/></td>
						
						<td>
							<button id="btn-start-${product.goodsNo }" data-product-no="${product.goodsNo }" class="btn btn-success btn-xs ${product.forsale eq 'Y' ? 'disabled': ''}" >판매시작</button>
							<button id="btn-end-${product.goodsNo }" data-product-no="${product.goodsNo }" class="btn btn-danger btn-xs ${product.forsale eq 'N' ? 'disabled' : ''} ">판매중지</button>
						</td>
						<td>
							<button class="btn btn-default btn-xs">수정</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
	<div id="product-form-modal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<form class="well" method="post" id="add-form" enctype="multipart/form-data" action="addProduct.camp">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">신규 상품 등록</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>카테고리</label>
							<select class="form-control" name="goodsCategory">
								<option value=""> 선택하세요</option>
								<option value="FOOD"> 식료품</option>
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
								<label><input type="radio" name="goodsSort" value="NEW" checked="checked"> 신규상품</label>
								<label><input type="radio" name="goodsSort" value="RECOMMEND"> 추천상품</label>
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
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</form>
			</div>
		</div>
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
	
	$(function() { 
		$("[id^='btn-start']").click(function(){
			
			$(this).addClass('disabled').next().removeClass('disabled');
			var no = $(this).attr("data-product-no");
			$.ajax({
				type:"GET"
				, url:"start.camp?start=Y&no="+ no
			})
		})
		$("[id^='btn-end']").click(function(){
			
			$(this).addClass('disabled').prev().removeClass('disabled');
			var no = $(this).attr("data-product-no");
			$.ajax({
				type:"GET"
				, url:"end.camp?end=N&no="+ no
			})
		})
		
		$("#btn-open-modal").click(function() {
			$("#product-form-modal").modal('show');
			nhn.husky.EZCreator.createInIFrame({
				oAppRef: oEditors,
				elPlaceHolder: "board-contents",
				sSkinURI: "/camping/resources/js/se2/SmartEditor2Skin.html",
				fCreator: "createSEditor2"
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