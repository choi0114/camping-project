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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color:#f7f7f9">
<div class="container" >
	<div class="page-header">
		<h1>CAMPING SUPPLIES</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-3">
			<div class="panel panel-default">
				<div class="panel-heading">
					CATEGORY
				</div>
				<ul class="nav nav-pills nav-stacked" id="list">
					<li data-type="type" data-keyword="NEW" class="active"><a href="#">NEW</a></li>
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
		<div class="col-sm-9">
			<div class="row" id="productList">
				<c:forEach var="product" items="${new1}">
					<div class="col-md-4">
						<div class="thumbnail" style="padding:15px;">
							<a href="detail.do"> 
								<img src="/camping/resources/images/product/${product.photo }" alt="Nature" style="width: 100%">
							</a>
								<h4>${product.name }</h4>
							<hr>
							<div class="caption">
					
					
								<h5>${product.price }원</h5>
								<h6>${product.summary }</h6>
								<div class="text-center"><a href="addCart.do?productNo=${product.goodsNo }" class="btn btn-primary">담기</a></div>
							</div>
						</div>
					</div>
	  			</c:forEach>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$("#list li").click(function(event){
		event.preventDefault();
		
		var type = $(this).attr("data-type");
		var keyword = $(this).attr("data-keyword");
		
		$(this).addClass("active").siblings().removeClass();
		
		$.ajax({
			type:"GET",
			url:"list.do?opt="+type+"&keyword="+ keyword,
			dataType:"json",
			success:function(products){
				$("#productList").empty();
				
				$.each(products, function(index, product){
					var row = '<div class="col-md-4">'
					row += '<div class="thumbnail">'
					row += '<a href="detail.do">' 
					row += '<img src="resources/images/'+product.photo+'" alt="Nature" style="width: 100%">'
					row += '</a>'
					row += '<div class="caption">'
					row += '<h4>'+ product.name +'</h4>'
					row += '<p>'+ product.price +'원</p>'
					row += '<p>'+ product.price +'원</p>'
					row += '<div class="text-center"><a href="" class="btn btn-primary">담기</a></div>'
					row += '</div>'
					row += '</div>'
					row += '</div>'
					
					$("#productList").append(row);					
				});
			}
		});
	})
</script>
</body>
</html>