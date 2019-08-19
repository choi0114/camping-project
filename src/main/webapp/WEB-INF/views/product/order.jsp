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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
    	.table td {
    		vertical-align: middle !important;
    	}
    </style>
</head>
<body>
<%@ include file="../common/detailNav.jsp" %>
<div class="container" style="padding-top: 120px;">
  	<div class="page-header">
  		<h1>MY CART > 주문내역</h1>
  	</div>
  	
  	<div class="row">
  		<div class="col-sm-12" style="background-color: white;">
  			<div class="panel panel-default">
  				<div class="panel-heading">
  					${LOGIN_USER.name}님의 결제 내역입니다.
  				</div>
  				<div class="panel-body">
  					<table class="table" >
  						<thead>
  							<tr>
  								<th>썸네일</th>
  								<th>상품명</th>
  								<th>가격</th>
  								<th>개수</th>
  							</tr>
  						</thead>
  						<tbody>
  							<c:forEach var="purchase" items="${form }">
	  							<tr >
	  								<td>
	  									<input type="hidden" name="purchase-no" value=""/>
	  									<img src="/camping/resources/images/product/${purchase.photo }" alt="Nature" style="width: 120px; height:100px">
	  								</td>
	  								<td>${purchase.productName }</td>
	  								<td id="price-" >${ purchase.price*purchase.amount }</td>
	  								<td >
										${purchase.amount}
									</td>
	  							</tr>
  							</c:forEach>
  						</tbody>
  					</table>
  					<div class="row" style="padding-bottom:20px; padding-top:20px; padding-left:20px; border-top: 1px solid #ddd;">
  						<div class="col-sm-9" style="  border-right: 1px solid #ddd;">
	  						<div class="row" style="padding-left:40px;">
	  							<h3>배송지 정보</h3>
	  						</div>
  							<div style="padding-top:4px;">
  								<h5>${order.address }</h5>
  							</div>
							
  						</div>
  						
  						<div class="col-sm-2" style=" margin-left:70px; margin-top:30px;">
		  					<div style="padding:4px;">
		  						 <h3  class="text-right totalPrice"
		                            style="color: #e91d75; padding-top: 10px">
		                            <span name="total-price" >${order.price+2500 }</span>원
		                        </h3>
		  					</div>
		  					<div class="text-right" style="padding:4px; ">
								<a href="category.camp" class="btn btn-default btn-sm" id="pay" >다른상품 구경하러 가기</a>
		  					</div>
  						</div>
  					</div>
  					
  					
  					
  				</div>
  			</div>
  		</div>
  	</div>
</div>
<script type="text/javascript">
	
</script>
</body>
</html>