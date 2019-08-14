<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap Example</title>
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
  		<h1>MY CART > 주문하기</h1>
  	</div>
  	
  	<div class="row">
  		<div class="col-sm-12">
  			<div class="panel panel-default">
  				<div class="panel-heading">
  					${LOGIN_USER.name}님의 주문 목록입니다.
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
	  						<c:set var = "sum" value = "0" />
  							<c:forEach var="purchase" items="${purchases }">
	  							<tr >
	  								<td>
	  									<input type="hidden" name="purchase-no" value="${purchase.purchaseNo}"/>
	  									<img src="/camping/resources/images/product/${purchase.goodsPhoto }" alt="Nature" style="width: 120px; height:100px">
	  								</td>
	  								<td>${purchase.goodsName }</td>
	  								<td id="price-${purchase.purchaseNo}" >${ purchase.goodsPrice}</td>
	  								<c:set var= "sum" value="${sum +  purchase.goodsPrice }"/>
	  								<td >
										${purchase.amount}
									</td>
	  							</tr>
  							</c:forEach>
  						</tbody>
  					</table>
  					<div class="row" style="padding-bottom:20px; padding-top:20px; padding-left:20px; border-top: 1px solid #ddd;">
  						<div class="col-sm-8" style="  border-right: 1px solid #ddd;">
	  						<div class="row" style="padding-left:40px;">
	  							<h3>배송지 정보</h3>
	  						</div>
  							<div style="padding-top:4px;">
			  					<input style="padding:4px; " type="text" id="sample4_postcode" placeholder="우편번호">
								<input type="button" class="btn btn-default"  onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
  							</div>
							<div style="padding-top:4px;">
								<input style="padding:4px; width:300px;" type="text" id="sample4_roadAddress" name="doro-addr" placeholder="도로명주소">
								<input style="padding:4px; width:300px;" type="text" id="sample4_jibunAddress" placeholder="지번주소">
								<span id="guide" style="color:#999;display:none"></span>
							</div>
							<div style="padding-top:4px;">
								<input  style="padding:4px; width:300px; " type="text" id="sample4_detailAddress" name="detail-addr" placeholder="상세주소">
								<input style="padding:4px;" type="text" id="sample4_extraAddress" placeholder="참고항목">
							</div>
  						</div>
  						
  						<div class="col-sm-3" style=" margin-left:70px; margin-top:30px;">
		  					<div style="padding:4px;">
		  						 <h3  class="text-right totalPrice"
		                            style=" padding-top: 10px">
		                            <span name="total-price" >${sum }</span> + 2500
		                        </h3>
		  						 <h5  class="text-right "
		                            style=" padding-top: 3px">
		                            <span  >(배송비)</span>
		                        </h5>
		  						
		  						 <h3  class="text-right "
		                            style="color: #e91d75; padding-top: 10px">
		                            <span  >합계 : ${sum+2500 } 원</span>
		                        </h3>
		                        
		  					</div>
		  					
		  					<div class="text-right" style="padding:4px; ">
								<a class="btn btn-danger btn-lg" id="pay" >결제하기</a>
		  					</div>
  						</div>
  					</div>
  					
  					
  					
  				</div>
  			</div>
  		</div>
  	</div>
</div>
<script type="text/javascript">
	$(".container").on("click", "#pay", function(){
		var no = $("[name='purchase-no']").val();
		var addr = $("[name='doro-addr']").val() + $("[name='detail-addr']").val();
		var price = $("[name='total-price']").html();
		
		location.href = "addOrder.camp?no="+no+"&addr="+addr+"&price="+ (parseInt(price)+2500);
		
	})
	
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }

	/* 
	console.log(checked);
 */
 	var DATA;
	$(".container").on("click","#pur", function(){
		var check = $("input:checkbox[id^='cart-check']:checked")
		check.each(function() {
			var test = $(this).val();

			console.log(test);

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
</script>
</body>
</html>