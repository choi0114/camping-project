<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Bootstrap Example</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="/camping/resources/css/mypage/sys.css">
	<link rel="stylesheet" href="/camping/resources/css/mypage/mypage.css">
	<link rel="stylesheet" href="/camping/resources/css/main.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
	.msg {color: red;}
	.user-outter {
	    background-color: #fff;
	    display: inline-block;
	    position: absolute;
	    text-align: center;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    padding: 30px;
	}
	.ps1, .ps2 {float: left;}
	#sidewrap{position: relative;}
	.ps1 {margin-right: 30px;}
	#container{position: relative !important;}
</style>
</head>
<body>
<%@ include file="../common/detailNav.jsp" %>
	<div id="sidewrap">
	<c:set var="submenu" value="out" />
		<%@ include file="nav/nav.jsp"%>
		<div class="scrollarea tse-scrollable" style="height: 780px;">
			<div class="tse-scroll-content scrollwrapbox" style="padding: 15px;">
				<div class="tse-content">
					<div id="Dash" class="dashwrap">
						<c:if test="${empty param.result }">
						<form id="outform" action="outuser.camp" method="post">			
							<div class="user-outter">
								<div class="msg">
									회원탈퇴를 원하시면 비밀번호를 입력하신 후 회원탈퇴 버튼을 클릭해 주세요.<br />
									탈퇴하시면 회원정보가 데이터베이스에서 완전히 삭제됩니다.<br />
								</div>
								<div class="title">
									<h3>회원탈퇴</h3>
								</div>
								<div class="psw">
									<p class="p1"><span class="ps1">비밀번호</span><input type="password" name="pw1" maxlength="20" style="width: 250px" /></p>
									<p class="p2"><span class="ps2">비밀번호 확인</span><input type="password" name="pw2" maxlength="20" style="width: 250px" /></p>
								</div>
								<div class="submitbox">
									<button id="pwck" type="submit" class="btn btn-primary">회원 탈퇴</button>
								</div>
							</div>
						</form>
						</c:if>
					
						<c:if test="${param.result eq 'fail' }">
						<script>
							alert("가입시 입력한 비밀번호와 일치하지 않습니다.");
						</script>
						<form id="outform" action="outuser.camp" method="post">			
							<div class="user-outter">
								<div class="msg">
									회원탈퇴를 원하시면 비밀번호를 입력하신 후 회원탈퇴 버튼을 클릭해 주세요.<br />
									탈퇴하시면 회원정보가 데이터베이스에서 완전히 삭제됩니다.<br />
								</div>
								<div class="title">
									<h3>회원탈퇴</h3>
								</div>
								<div class="psw">
									<p class="p1"><span class="ps1">비밀번호</span><input type="password" name="pw1" maxlength="20" style="width: 250px" /></p>
									<p class="p2"><span class="ps2">비밀번호 확인</span><input type="password" name="pw2" maxlength="20" style="width: 250px" /></p>
								</div>
								<div class="submitbox">
									<button id="pwck" type="submit" class="btn btn-primary">회원 탈퇴</button>
								</div>
							</div>
						</form>
						</c:if>
						<c:if test="${param.result eq 'success' }">
						<script>
							alert("회원탈퇴가 완료되었습니다.");
							location.href="/camping/home.camp"
						</script>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		
	
		$('#outform').submit(function() {
			var pw1 = $('[name=pw1]').val();
			var pw2 = $('[name=pw2]').val();
			if(pw1 != pw2) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			return true;
			
		});
	</script>
	
</body>
</html>