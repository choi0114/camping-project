<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
</head>

<body style="background-color: #f7f7f9">

<div class="container" style="padding-top: 120px;">
    <div class="col-sm-12 new-product-list">
        <div class="row">
        	캠핑용품 > 상품 상세 정보
            <div class="text-right" id="click-home"  style="margin-top:20px;">
                    <a href="category.camp">
	                    <span style="border:1px solid; margin-top:15px; margin-right: 20px; " class="glyphicon glyphicon glyphicon-list-alt btn-sm" aria-hidden="true">
	                        <span  class="like">목록으로</span>
	                    </span>
                    </a>
            </div>
            <hr>
        </div>
        <div class="row" id="">
            <div class="col-md-6" style="padding-bottom: 15px;">
                <div class="text-center"
                                style="padding: 15px; background-color: white; min-height: 430px;">
                    <a href="detail.do" style="padding-top: 10px;"> <img
                                    src="/camping/resources/images/product/${product.photo }"
                                    width="230px;" height="250px;" alt="Nature"
                                    style="width: 100%">
                    </a>

                </div>
            </div>
            <div class="col-md-6" style="padding-bottom: 15px;">
                <div
                    style="padding: 15px; background-color: white; min-height: 430px;">
                    <div>
                        <h2 class="text-center">
                            <span
                                style=" padding-bottom: -20px; display: inline-block; width: 230px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${product.name }</span>
                        </h2>
                        <hr>
                    </div>
                    <div class="caption">
                    	<div class="row">
                    		<div class="col-sm-3">
                    			<h5>배송방법</h5>
                    		</div>
                    		<div class="col-sm-9">
                    			<h5>택배</h5>
                    		</div>
                    	</div>
                    	<div class="row">
                    		<div class="col-sm-3">
                    			<h5>배송비</h5>
                    		</div>
                    		<div class="col-sm-9">
                    			<h5>2500원 (30,000원 이상 구매 시 무료)</h5>
                    		</div>
                    	</div>
                    	<div class="row">
                    		<div class="col-sm-3">
                    			<h5>배송비결제</h5>
                    		</div>
                    		<div class="col-sm-9">
                    			<h5>주문시 결제</h5>
                    		</div>
                    	</div>
						
                        <div class="row">
                        	<div class="col-sm-3 row">
	                        	<div class="col-sm-10">
	                    			<h5>수량</h5>
	                    		</div>
                    		</div>
                        	<div class="col-sm-3" style="margin-left:30px; margin-top:5px;">
								<button class="btn btn-default btn-xs" id="btn-minus">-</button>
								<input type="text" style="width:25px;" id="item-amount" value="1"/>
								<button class="btn btn-default btn-xs" id="btn-plus">+</button>
							</div>
                        	<div class="col-sm-6 row" >
	                        	<div class="col-sm-5">
	                    			<h6>재고 (${product.stock }개)</h6>
	                    		</div>
	                        	<div class="col-sm-10">
	                    			<h6>1인당 최대 10개 구매가능</h6>
	                            <input type="hidden" id="price" value="${product.price }"/>
	                            
	                    		</div>
                    		</div>
                        </div>
                       
                       <div class="row" style="margin-right:40px;">
	                        <h3  class="text-right totalPrice"
	                            style="color: #e91d75; padding-top: 10px">
	                            <span >${product.price }</span>원
	                        </h3>
                       </div>
                        <div class="row" style="margin-right:20px;">
	                        <div class="text-right col-sm-6" id="add-cart" data-isInCart="${product.isInCart }"
	                            data-no="${product.goodsNo }" style="padding: 10px">
	                            <a class="btn btn-lg btn-default glyphicon glyphicon-shopping-cart">&nbsp;장바구니 담기</a>
	                        </div>
	                        <div class="text-right col-sm-6" id="buy"
	                            data-no="${product.goodsNo }" style="padding: 10px;">
	                            <a class="btn btn-lg btn-default glyphicon glyphicon-credit-card">&nbsp;바로 구매하기</a>
	                        </div>
                        </div>
                     </div>
                </div>
            </div>
            <c:choose>
				<c:when test="${empty LOGIN_USER}">
					<input type="hidden" id="user" value="0"/>
				</c:when>
				<c:otherwise>
					<input type="hidden" id="user" value="1"/>
				</c:otherwise>
			</c:choose>
				
            <div class="row ">
            	<h2   style="margin-top: 520px;" class="text-center">DETAIL</h2>
            </div>
            <hr>
            <div class="row ">
               <div class="col-md-12" style="padding-bottom: 15px;">
                   <div
                       style="padding: 15px; background-color: white; min-height: 400px;">
                       <div class="caption">
                           <h6 class="text-center">
                              ${product.longSummary }
                           </h6>
                       </div>
                   </div>
               </div>
            </div>
        </div>
        <div class="result" data-result="${param.result }"></div>
    </div>
</div>
<script type="text/javascript">
$(function(){
	$(".container").on("click","[id^='add-cart']", function(event){
		
		var no = $(this).attr("data-no");
		var user = $("#user").val();
		var amount = $("#item-amount").val();
		if(user == 0){
			alert('로그인이 필요한 서비스입니다.');
			
		} else {
			$.ajax({
				type: "GET",
				url : "detailLogin.camp?no="+no+"&amount="+ amount,
				data : {no : no},
				success : function(result){
					if(result == 'Y'){
						alert('이미 담긴 상품입니다');
						
						var result = confirm('장바구니를 확인하시겠습니까?');
						if(result){
							location.href = "cart.camp";
						}
					} else{
						var result = confirm('상품을 담으시겠습니까?');
						if(result){
							location.href = "addCart.camp?no="+ no+"&amount="+amount;
						}
					}
				}
			})
			
		}
		
	})
	
	$(".container").on("click","#btn-minus", function(){
		var amount = $("#item-amount").val();
		console.log(amount);
		var minus = parseInt(amount)-1;
		console.log(minus);
		var price = $("#price").val();
		console.log(price);
		var total = minus *price;
		console.log(total);
		if(minus <= 0){
			alert("0이상 입력하여 주세요.");
			return false;
		}else {
			$("#item-amount").val(minus);
	 		$(".totalPrice").html(total +"원");
		}
	
	});
	
	$(".container").on("click", "#btn-plus", function(){
		
		var amount = $("#item-amount").val();
		console.log(amount);
		var plus = parseInt(amount)+1;
		console.log(plus);
		var price = $("#price").val();
		console.log(price);
		var total = plus *price;
		console.log(total);
		if(plus > 10){
			alert("최대 구매가능 수량은 10개 입니다.");
			return false;
		} else {	
			$("#item-amount").val(plus );
	 		$(".totalPrice").html(total +"원");
		}
	});
	
});
</script>	
</body>
</html>