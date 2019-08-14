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
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	  	<style>
	        .admin-navi{
	            padding:27px;
	             border-bottom: 1px solid #000;
	        }
	        
	        .admin-navi-font-sub{
	            font-size: 17px;
	            color: black;
	        }
	        #navi-border{
	        	border-bottom: 1px solid #000;
	        }
	        .navbar {margin-bottom: 0px !important;} 
	        
	        
	    </style>
	</head>
<body>
	<div class="navbar admin-navi varbottom" id="navi-border">
	    <div class="container">
	        <div class="navbar-header"><a href="/camping/home.camp"><img src="../resources/images/5g_logo1.png" width="172px;"/></a></div>
	       
	        <ul class="nav navbar-nav navbar-right" >
	            <li><a href="/camping/admin/list.camp?sort=LIST&pno=1" class="admin-navi-font-sub">관리자 페이지</a></li>
	        </ul>
	    </div>
	</div>
</body>
</html>