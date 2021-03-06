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
				<%@ include file="../common/adminSidebar.jsp"%>
				<div class="col-xs-11">
					<div class="container">
						<h1 class="admin-buttom">캠핑장 관리</h1>
						<div class="well">
							<form method="post" action="update.camping" enctype="multipart/form-data" onsubmit="checkfield(event)">
								<input type="hidden" name="pno" value="${param.pno }">
									<div class="form-group">
										<div class="row">
											<div class="col-xs-1 list-number">
												<label>번호</label>
											</div>
											<div class="col-xs-11"></div>
											<input type="hidden" name="no" value="${campSite.no }">
										</div>
										<div class="row">
											<div class="col-xs-1">
												<label>캠핑장명</label>
											</div>
											<div class="col-xs-11">
												<input class="form-control" name="name" type="text" value="${campSite.name }" id="name" />
											</div>
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
									<div class="form-group">
										<div class="row">
											<div class="col-xs-1"></div>
											<div class="col-xs-11">
												<textarea class="form-control margin-div" name="info" placeholder="상세설명" rows="10" id="info"></textarea>
											</div>
										</div>
									</div>
									<div class="text-right">
										<input type="submit" class="btn btn-warning" value="등록"> <a
											class="btn btn-default" href="list.camp?pno=${pno }">취소</a>
									</div>
								</form>
							</div>
						</div>
					</div>
			</body>
</html>