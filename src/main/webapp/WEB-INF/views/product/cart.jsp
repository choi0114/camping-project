<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.table td {
	vertical-align: middle !important;
}
</style>
</head>
<body>
	<%@ include file="../common/detailNav.jsp"%>
	<div class="container" style="padding-top: 120px;">
		<div class="page-header">
			<h1>MY CART</h1>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default">
					<div class="panel-heading">${LOGIN_USER.name}님의 장바구니 목록입니다.</div>
					<div class="panel-body">
						<table class="table">
							<thead>
								<tr>
									<th>선택</th>
									<th>썸네일</th>
									<th>상품명</th>
									<th>가격</th>
									<th>개수</th>
									<th>등록일</th>
									<th>수정</th>
									<th>삭제</th>
								</tr>
							</thead>
							<tbody>


								<c:set var="sum" value="0" />
								<c:forEach var="cart" items="${carts }">
									<tr>
										<td><input type="checkbox" id="cartNo" name="cartNo"
											value="${cart.cartNo}"> <input type="hidden"
											name="goodsNo" value="${cart.no}" /> <input type="hidden"
											name="cartCount" value="${cart.count}" /> <input
											type="hidden" name="cartPrice"
											value="${cart.price*cart.count}" /></td>
										<td><img
											src="/camping/resources/images/product/${cart.photo }"
											alt="Nature" style="width: 120px; height: 100px"></td>
										<td>${cart.name }</td>
										<td id="price-${cart.no}">${ cart.price }</td>
										<c:set var="sum" value="${sum + cart.price*cart.count}" />
										<td id="amount-${cart.no}">
											<button class="btn btn-default btn-xs"
												id="btn-minus-${cart.no}">-</button> <input type="text"
											style="width: 25px;" id="item-amount-${cart.no}"
											name="cartCount" value="${cart.count}" />
											<button class="btn btn-default btn-xs"
												id="btn-plus-${cart.no }">+</button>
										</td>
										<td><fmt:formatDate value="${cart.createDate }" /></td>
										<td><a href="" class="btn btn-success btn-sm"
											id="btn-modify-${cart.cartNo}" data-no="${cart.cartNo}">수정</a></td>
										<td><a href="" class="btn btn-success btn-sm"
											id="btn-delete-${cart.cartNo}" data-no="${cart.cartNo}">삭제</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div>
							<h3 class="text-right totalPrice"
								style="color: #e91d75; padding-top: 10px">
								<span id="sum-total">${sum }원</span>
							</h3>
						</div>
						<div class="text-right">
							<button type="submit" class="btn btn-danger btn-lg" id="pur">구매하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$(function(){
		
		$(".container").on("click","input[name='cartNo']", function(){
			$("#sum-total").text("ddd");
			var totalPrice=0;
			 
			$('input[name="cartNo"]:checkbox:checked').each(function(){
				var price = $(this).next().next().next().val();
				totalPrice += parseInt(price);
			});
			
			$("#sum-total").text(totalPrice+"원")
			
		});
	

	$(".container").on("click","#pur", function(){
		
		 
		$('input[name="cartNo"]:checkbox:checked').each(function(){
			
			var cartNo = $(this).val();
			var goodsNo = $(this).next().val();
			var cartCount = $(this).next().next().val();
			
			location.href = "addPurchase.camp?cartNo="+cartNo+"&goodsNo="+goodsNo+"&cartCount="+cartCount;
			
		});
		
		
	});



	$(".container").on("click","[id^='btn-delete']", function(){
		var no = $(this).attr("data-no");
		var amount = $(this).parent().siblings("[id^='amount']").children("[id^='item-amount']").val();
		
		$.ajax({
			type: "GET",
			url: "deleteCart.camp?no="+no,
			success: function(){
				location.href= "cart.camp"
			}
		})
	
	});
	$(".container").on("click","[id^='btn-modify']", function(){
		var no = $(this).attr("data-no");
		var amount = $(this).parent().siblings("[id^='amount']").children("[id^='item-amount']").val();
		console.log(amount);	
		$.ajax({
			type: "GET",
			url: "modifyCart.camp?no="+no+"&amount="+amount,
			success: function(){
				location.href= "cart.camp"
			}
		})
	
	});


	$(".container").on("click","[id^='btn-minus']", function(){
		var amount = $(this).next().val();
		console.log(amount);
		var minus = parseInt(amount)-1;
		console.log(minus);
		var price = $(this).parent().prev().html();
		console.log(price);
		var total = minus *price;
		console.log(total);
		if(minus <= 0){
			alert("0이상 입력하여 주세요.");
			return false;
		}else {
			$(this).next().val(minus );
		}
	
	});
	
	$(".container").on("click", "[id^='btn-plus']", function(){
		
		var amount =  $(this).prev().val();
		console.log(amount);
		var plus = parseInt(amount)+1;
		console.log(plus);
		var price = $(this).parent().prev().html();
		console.log(price);
		var total = plus *price;
		console.log(total);
		if(plus > 10){
			alert("최대 구매가능 수량은 10개 입니다.");
			return false;
		} else {	
			$(this).prev().val(plus );
		}
	});
	});
</script>
</body>
</html>