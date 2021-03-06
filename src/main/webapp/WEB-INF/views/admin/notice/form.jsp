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
			<body>
				<c:set var="menu" value="Notice" />
				<%@ include file="../common/adminNavi.jsp"%>
				<div class="row">
					<div class="col-xs-1">
					<%@ include file="../common/adminSidebar.jsp"%>
					</div>
				<div class="col-xs-11">	
					<div class="container">
						<h1 class="admin-buttom">공지사항 등록</h1>
						<div class="well">
							<form method="post" action="addnotice.camp">
									<div class="form-group">
										<div class="row">
											<div class="col-xs-1">
												<label>제목</label>
											</div>
											<div class="col-xs-11">
												<input class="form-control" name="title" type="text" id="title" />
											</div>
										</div>
										<div class="row margin-div">
		                                    <div class="col-xs-12 admin-line-height">
		                                        <label>내용</label>
		                                    </div>
		                                    <div class="col-xs-12">
		                                        <textarea class="form-control" name="contents" id="contents" cols="70" rows="10"></textarea>
		                                    </div>
                                		</div>
									</div>
									<div class="text-right">
										<input type="submit" class="btn btn-warning" value="등록"> 
										<a class="btn btn-default" href="#" onclick="">취소</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>	
	</body>
</html>