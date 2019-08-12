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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body style="background-color: #f7f7f9">
	<%@ include file="../common/detailNav.jsp"%>
	<div class="container" style="padding-top: 120px;">

		<div class="row">
		캠핑용품 > 카테고리
		</div>
		<hr>
		<div class="row">
			<div class="col-sm-3">
				<div class="panel panel-default">
					<div class="panel-heading">CATEGORY</div>
					<ul class="nav nav-pills nav-stacked" id="list">
						<li data-type="type" data-keyword="NEW" class="active"><a
							href="#">NEW</a></li>
						<li data-type="type" data-keyword="RECOMMEND"><a href="#">추천상품</a></li>
						<li data-type="cat" data-keyword="BED"><a href="#">베드텐트</a></li>
						<li data-type="cat" data-keyword="TENT"><a href="#">텐트·그늘막</a></li>
						<li data-type="cat" data-keyword="CANOPY"><a href="#">캐노피·타프</a></li>
						<li data-type="cat" data-keyword="CHAIR"><a href="#">체어·테이블</a></li>
						<li data-type="cat" data-keyword="SLEEPINGBAG"><a href="#">침낭·캠핑용품</a></li>
						<li data-type="cat" data-keyword="INDOOR"><a href="#">실내가구</a></li>
					</ul>
				</div>
			</div>


			<div class="col-sm-9 new-product-list">
				<c:if test="${new1 != null}">
					<div class="row">
						<h3 id="product-list" class="text-center"
							style="padding-left: 30px;">NEW</h3>
						<hr>
					</div>
					<div class="row" id="">
						<c:forEach var="product" items="${new1}">
							<div class="col-md-4" style="padding-bottom: 15px;">
								<div
									style="padding: 15px; background-color: white; min-height: 370px;">
									<a href="detail.camp?no=${product.goodsNo }" style="padding-top: 10px;"> <img
										src="/camping/resources/images/product/${product.photo }"
										width="230px;" height="157px;" alt="Nature"
										style="width: 100%">
									</a>
									<div>
										<h4 class="text-center">
											<a href="detail.camp?no=${product.goodsNo }">
													<span
														style="padding-top: 15px; padding-bottom: -20px; display: inline-block; width: 230px; min-height: 30px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${product.name }</span>
											</a>
										</h4>
									</div>
									<div class="caption">


										<h6 class="text-center"
											style="display: inline-block; width: 230px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; white-space: normal; min-height: 39px; text-align: center; word-wrap: break-word; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical;">${product.summary }</h6>
										<h5 class="text-center"
											style="color: #e91d75; padding-top: 10px">${product.price }원</h5>
										<div class="text-right" id="add-cart-${product.goodsNo }" data-isInCart="${product.isInCart }"
											data-no="${product.goodsNo }" style="padding-top: 10px">
											<a class="btn btn-default glyphicon glyphicon-shopping-cart">&nbsp;담기</a>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</c:if>
				
				<c:choose>
					<c:when test="${empty LOGIN_USER}">
						<input type="hidden" id="user" value="0"/>
					</c:when>
					<c:otherwise>
						<input type="hidden" id="user" value="1"/>
					</c:otherwise>
				</c:choose>
				
				
				<div class="row ">
					<h3 class="text-center" style="padding-left: 30px;">추천 상품</h3>
					<hr>
				</div>
				<div class="row ">
					<c:forEach var="product" items="${recommend}">
						<div class="col-md-4" style="padding-bottom: 15px;">
							<div
								style="padding: 15px; background-color: white; min-height: 370px;">
								<a href="detail.camp?no=${product.goodsNo }" style="padding-top: 10px;"> <img
									src="/camping/resources/images/product/${product.photo }"
									width="230px;" height="157px;" alt="Nature" style="width: 100%">
								</a>
								<div>
										<h4 class="text-center">
											<a href="detail.camp?no=${product.goodsNo }">
													<span
														style="padding-top: 15px; padding-bottom: -20px; display: inline-block; width: 230px; min-height: 30px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${product.name }</span>
											</a>
										</h4>
								</div>
								<div class="caption">


									<h6 class="text-center"
										style="display: inline-block; width: 230px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; white-space: normal; min-height: 39px; text-align: center; word-wrap: break-word; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical;">${product.summary }</h6>
									<h5 class="text-center"
										style="color: #e91d75; padding-top: 10px">${product.price }원</h5>
									<div class="text-right" id="add-cart-${product.goodsNo }"  data-isInCart="${product.isInCart }"
										data-no="${product.goodsNo }" style="padding-top: 10px">
										<a id="add"
											class="btn btn-default glyphicon glyphicon-shopping-cart">&nbsp;담기</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="result" data-result="${param.result }">
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$(function(){
		$(".container").on("click","[id^='add-cart']", function(event){
			
			var no = $(this).attr("data-no");
			var user = $("#user").val();
			
			if(user == 0){
				alert('로그인이 필요한 서비스입니다.');
				
			} else {
				$.ajax({
					type: "GET",
					url : "categoryLogin.camp",
					data : {no : no},
					success : function(result){
						if(result == 'Y'){
							alert('이미 담긴 상품입니다');
							
							var result = confirm('장바구니를 확인하시겠습니까?');
							if(result){
							     
								location.href = "cart.camp";
							}
						} else{
							var result = Number(prompt( '장바구니에 담을 상품의 수량을 입력하여주세요', '' ));
							if(result){
								if(result <= 10 && result > 0){
									location.href = "addCart.camp?no="+ no+"&amount="+result;
							    } else {
							    	alert("10개 이하 1개이상 숫자로 입력하여주세요");
							    }
							}
						}
					}
				})
				
			}
			
		})
	
		$("#list li").click(function(event){
			$(".new-product-list").empty();
			event.preventDefault();
			$(this).addClass("active").siblings().removeClass();
			
			var list = $(this).attr("data-type");
			var list1 = $(this).attr("data-keyword");
			
			if(list == 'type'){
	
				$.ajax({
					type:"GET"
					, url:"getCategoryType.camp?type=" + list1
					, dataType:"json"
					, success:function(map){
						var products = map.products
						var list1 = map.list
						$("#product-list").val(list1);
						if(products){
							var row1 = '<div class="row">';
							row1 += '<h3 class="text-center" style="padding-left:30px;">'+list1+'</h3>';
							row1 += '<hr>';
							row1 += '</div>';
							$(".new-product-list").append(row1);
							$.each(products, function(index, product){
								var row = '<div class="col-md-4" style="padding-bottom:15px;">';
								row += '<div style="padding:15px; background-color: white; min-height: 370px; ">';
								row += '<a href="detail.camp?no=${product.goodsNo }" style="padding-top:10px;">';
								row += '<img src="/camping/resources/images/product/'+ product.photo +'" width="230px;" height="157px;" alt="Nature" style="width: 100%">';
								row += '</a>';
								row += '<div >';
								row += '<h4 class="text-center" >';
								row += '<a href="detail.camp?no=${product.goodsNo }">';
								row += ' <span style="padding-top: 15px; ';
								row += 'padding-bottom: -20px;';
								row += '  display: inline-block;';
								row += 'width: 230px; ';
								row += 'min-height:30px;';
								row += 'white-space: nowrap;';
								row += 'overflow: hidden;';
								row += 'text-overflow: ellipsis;">'+ product.name +'</span>';
								row += '</a>';
								row += '</div>';
								row += '<div class="caption" >';
								row += '<h6 class="text-center" style="';
								row += 'display: inline-block; ';
								row += ' width: 230px; ';
								row += 'white-space: nowrap; ';
								row += 'overflow: hidden; ';
								row += 'text-overflow: ellipsis; ';
								row += 'white-space: normal; ';
								row += 'min-height: 39px; ';
								row += 'text-align: center; ';
								row += 'word-wrap: break-word;';
								row += 'display: -webkit-box; ';
								row += '-webkit-line-clamp: 3;';
								row += '-webkit-box-orient: vertical;"	>'+ product.summary  +'</h6>';
								row += '<h5 class="text-center" style="color:#e91d75; padding-top: 10px">'+ product.price  +'원</h5>';
								row += '<div class="text-right" id="add-cart-'+ product.goodsNo +'" data-no="' + product.goodsNo +'" style=" padding-top: 10px"><a class="btn btn-default glyphicon glyphicon-shopping-cart">&nbsp;담기</a></div>';
								row += '</div>';
								row += '</div>';
								row += '</div>';
								$(".new-product-list").append(row);
							})
						}	
					}
				})
			}
			if(list == 'cat'){
	
				$.ajax({
					type:"GET"
					, url:"getCategoryCat.camp?cat=" + list1
					, dataType:"json"
					, success:function(map){
						var products = map.products
						var list1 = map.list
						$("#product-list").val(list1);
						if(products){
							var row1 = '<div class="row">';
							row1 += '<h3 class="text-center" style="padding-left:30px;">'+list1+'</h3>';
							row1 += '<hr>';
							row1 += '</div>';
							$(".new-product-list").append(row1);
							$.each(products, function(index, product){
								var row = '<div class="col-md-4" style="padding-bottom:15px;">';
								row += '<div style="padding:15px; background-color: white; min-height: 370px; ">';
								row += '<a href="detail.do" style="padding-top:10px;">';
								row += '<img src="/camping/resources/images/product/'+ product.photo +'" width="230px;" height="157px;" alt="Nature" style="width: 100%">';
								row += '</a>';
								row += '<div >';
								row += '<h4 class="text-center" >';
								row += ' <span style="padding-top: 18px; ';
								row += 'padding-bottom: -20px;';
								row += '  display: inline-block;';
								row += 'width: 230px; ';
								row += 'min-height:30px;';
								row += 'white-space: nowrap;';
								row += 'overflow: hidden;';
								row += 'text-overflow: ellipsis;">'+ product.name +'</span>';
								row += '</div>';
								row += '<div class="caption" >';
								row += '<h6 class="text-center" style="';
								row += 'display: inline-block; ';
								row += ' width: 230px; ';
								row += 'white-space: nowrap; ';
								row += 'overflow: hidden; ';
								row += 'text-overflow: ellipsis; ';
								row += 'white-space: normal; ';
								row += 'min-height: 39px; ';
								row += 'text-align: center; ';
								row += 'word-wrap: break-word;';
								row += 'display: -webkit-box; ';
								row += '-webkit-line-clamp: 3;';
								row += '-webkit-box-orient: vertical;"	>'+ product.summary  +'</h6>';
								row += '<h5 class="text-center" style="color:#e91d75; padding-top: 10px">'+ product.price  +'원</h5>';
								row += '<div class="text-right" id="add-cart-'+ product.goodsNo +'"data-no="' + product.goodsNo +'" style=" padding-top: 10px"><a class="btn btn-default glyphicon glyphicon-shopping-cart">&nbsp;담기</a></div>';
								row += '</div>';
								row += '</div>';
								row += '</div>';
								$(".new-product-list").append(row);
								
							})
						}	
					}
				})
			}
		})
	})
</script>
</body>
</html>