<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>5gCamping :: 1박 2일</title>
  <link rel="shortcut icon" href="/camping/resources/images/campinglogo.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
 .container-top {
    padding-top: 60px;
  }
  </style>
    </head>
    <style>
        .margin-div {
            margin-top: 15px;
        }
        .admin-line-height {
            line-height: 30px;
        }
        .margin-btn {
            padding: 0 !important;
        }
        .label-padding{
        	padding-left: 15px;
        }
        .list-number {
        	margin-bottom: 10px;
        }
	    </style>
			<body style="background-color:#f7f7f9">
				<c:set var="menu" value="campsite" />
				<%@ include file="../common/adminNavi.jsp"%>
				<div class="row">
					<div class="col-xs-1">
					<%@ include file="../common/adminSidebar.jsp"%>
					</div>
				<div class="col-xs-11">	
					<div class="container">
						<h1 class="admin-buttom">캠핑장 등록</h1>
						<div class="well">
							<form method="post" action="add.camp" enctype="multipart/form-data" onsubmit="checkfield(event)">
								<input type="hidden" name="pno" value="${param.pno }">
									<div class="form-group">
										<div class="row">
											<div class="col-xs-1">
												<label>캠핑장명</label>
											</div>
											<div class="col-xs-4">
												<input class="form-control" name="name" type="text" id="name" />
											</div>
										</div>
										<div class="row margin-div">
                                    <div class="col-xs-1 admin-line-height">
                                        <label>주소</label>
                                    </div>
                                    <div class="col-xs-7">
                                        <input class="form-control" name="address" type="text" id="address"/>
                                    </div>
                                </div>
									</div>
									<div class="row margin-div">
                                    <div class="col-xs-1 admin-line-height">
                                        <label>전화번호</label>
                                    </div>
                                    <div class="col-xs-3">
                                        <input class="form-control" name="phone" type="text" id="phone"/>
                                    </div>
                                </div>
                                <div class="row margin-div">
                                    <div class="col-xs-1 admin-line-height">
                                        <label>경도</label>
                                    </div>
                                    <div class="col-xs-3">
                                        <input class="form-control" name="longitude" type="text" id="longitude"/>
                                    </div>
                                     <div class="col-xs-1 admin-line-height">
                                        <label>위도</label>
                                    </div>
                                    <div class="col-xs-3">
                                        <input class="form-control" name="latitude" type="text" id="latitude"/>
                                    </div>
                                </div>
									<div class="form-group"></div>
									<div class="row">
										<div class="col-xs-1 admin-line-height margin-btn">
											<label class="label-padding">이미지첨부</label>
										</div>
										<div class="col-xs-11">
											<input type="file" name="imageFile" id="imageFile" />
										</div>
									</div>
									<div class="text-right">
										<input type="submit" class="btn btn-warning" value="등록"> 
										<a class="btn btn-default" href="list.camp?pno=${param.pno }">취소</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>	
	 <script type="text/javascript">
     function checkfield (event) {
     	
     	var productname = document.getElementById("name").value;
     	if (productname == '') {
     		alert("캠핑장명을 입력하세요");
     		event.preventDefault();
     		return false;
     	}
     	
     	var price = document.getElementById("address").value;
     	if (price == '') {
     		alert("주소를 입력하세요");
     		event.preventDefault();
     		return false;
     	
     	}
     		
     	var stock = document.getElementById("phone").value;
        	if (stock == '') {
        		alert("전화번호를 입력하세요");
        		event.preventDefault();
        		return false;
        	}
        		
        	var imageFile = document.getElementById("longitude").value;
        	if (imageFile == '') {
         	alert("경도를 입력해주세요");
            	event.preventDefault();
        		return false;	
        	}
        	
       	var contents = document.getElementById("latitude").value;
        	if (contents == '') {
             alert("위도를 입력해주세요");
            	event.preventDefault();
          	return false;		
     	}
        	
        	var sub = document.getElementById("imageFile").value;
        	if (sub == '') {
             alert("이미지를 첨부해주세요");
            	event.preventDefault();
          	return false;		
     	}
     }
     </script>
	</body>
</html>