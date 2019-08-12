<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        #footer-full {padding: 50px 0; background: #d9dbe9; height: 203px;}
    	#footer-full .flogo {margin-right: 40px;}
    	#footer-full .bottomMenu {margin: 6px 0 15px 0;}
    	#footer-full .bottomMenu a {font-size: 15px; text-decoration: none; color: #000;}
    	#footer-full .bottomMenu .vline {display: inline-block; margin: 0 16px; color: #a7a9b3;}
        
    </style>
</head>
<body> 
   <div id="footer-full">
    	<div class="m-wrap">
    		<div class="fl flogo">
    			<a href="#" title="클릭시 메인으로 이동" class="footer-logo">
    				<img alt="오지캠핑 로고" src="/camping/resources/images/logo_square_100.jpg">
    			</a>
    		</div>
    		<div class="fl fcenter">
    			<div class="bottomMenu">
    				<a href="#">개인정보취급방침</a><span class="vline"> | </span>
    				<a href="#">홈페이지 이용약관</a><span class="vline"> | </span>
    				<a href="#">광고 및 제휴문의</a><span class="vline"> | </span>
    				<a href="#">고객센터</a><span class="vline"> | </span>
    				<a href="#">회원가입</a><span class="vline"> | </span>	<!-- onclick -->
    				<a href="#">로그인</a><span class="vline"> | </span>	<!-- onclick -->
    			</div>
    			<div class="copyright">
    				<span class="copy">
    					Copyright ⓒ 2019 <span class="b">www.5gcamp.com</span>. All rights reserved.<br>
    					<span class="b">010-3411-3433</span>
    				</span>
    			</div>
    		</div>
    	</div>
    </div>    
</body>
</html>