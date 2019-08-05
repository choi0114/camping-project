<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>
<div class="container">
	<div class="page-header">
		<h1>카테고리별 상품</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-3">
			<div class="panel panel-default">
				<div class="panel-heading">
					카테고리
				</div>
				<ul class="nav nav-pills nav-stacked" id="list">
					<li data-type="type" data-keyword="NEW" class="active"><a href="#">신상품</a></li>
					<li data-type="type" data-keyword="RECOMMEND"><a href="#">추천상품</a></li>
					<li data-type="cat" data-keyword="FOOD"><a href="#">식료품</a></li>
					<li data-type="cat" data-keyword="ELECTRONIC"><a href="#">전자제품</a></li>
					<li data-type="cat" data-keyword="DRINK"><a href="#">음료</a></li>
					<li data-type="cat" data-keyword="FURNITURE"><a href="#">가구용품</a></li>
					<li data-type="cat" data-keyword="CLOTHES"><a href="#">의류용품</a></li>
				</ul>
			</div>
		</div>
		<div class="col-sm-9">
			<div class="row" id="productList">
				<c:forEach var="product" items="${products}">
					<div class="col-md-4">
						<div class="thumbnail">
							<a href="detail.do"> 
								<img src="resources/images/${product.imgName }" alt="Nature" style="width: 100%">
							</a>
							<div class="caption">
								<h4>${product.name }</h4>
								<p>${product.price }원</p>
								<div class="text-center"><a href="addCart.do?productNo=${product.no }" class="btn btn-primary">담기</a></div>
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
					row += '<img src="resources/images/'+product.imgName+'" alt="Nature" style="width: 100%">'
					row += '</a>'
					row += '<div class="caption">'
					row += '<h4>'+ product.name +'</h4>'
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