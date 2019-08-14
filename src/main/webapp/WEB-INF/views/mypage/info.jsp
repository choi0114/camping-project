<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>5gCamping :: 1박 2일</title>
	<link rel="shortcut icon" href="/camping/resources/images/campinglogo.png">
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
	    padding: 50px;
	}
.repro {float: left;}
#sidewrap{position: relative;}
	#container{position: relative !important;}
</style>
</head>
<body>
<%@ include file="../common/detailNav.jsp" %>

	<div id="sidewrap">
	<c:set var="submenu" value="info" />
		<%@ include file="nav/nav.jsp"%>
		<div class="scrollarea tse-scrollable" style="height: 780px;">
			<div class="tse-scroll-content scrollwrapbox" style="padding: 15px;">
				<div class="tse-content">
					<div id="Dash" class="dashwrap">
						<c:if test="${empty param.result }">
						<form id="outform" action="change.camp" method="post">			
							<div class="user-outter">
								<div class="title">
									<h3>정보수정</h3>
								</div>
								<div class="reprofile">
									<p class="p1"><span id="ps1" class="repro">현재 비밀번호</span><em><input type="password" name="pw1" maxlength="20" style="width: 250px; margin-left: 63px;" /></em></p>
									<p class="p2"><span id="ps2" class="repro">변경하실 비밀번호</span><em><input type="password" name="pw2" maxlength="20" style="width: 250px; margin-left:34px; " /></em></p>
									<p class="p3"><span id="ps3" class="repro">비밀번호 확인</span><em><input type="password" name="pw3" maxlength="20" style="width: 250px; margin-left: 62px;" /></em></p>
									<p class="e1"><span id="email1" class="repro">이메일</span><em><input type="text" id="testemail" name="email" maxlength="30" value="${USER.email }"  style="width: 250px; margin-left: 107px;" /></em></p>
									<p class="n1"><span id="nick1" class="repro">별명</span><em><input type="text" name="nick" maxlength="20" value="${USER.nickName }" style="width: 250px; margin-left: 122px;" /></em></p>
								</div>
								<div class="submitbox">
									<button id="pwck" type="submit" class="btn btn-primary">변경하기</button>
								</div>
							</div>
						</form>
						</c:if>
					
						<c:if test="${param.result eq 'fail' }">
						<script>
							alert("가입시 입력한 비밀번호와 일치하지 않습니다.");
						</script>
						<form id="outform" action="change.camp" method="post">			
							<div class="user-outter">    
								<div class="title">
									<h3>정보수정</h3>
								</div>
								<div class="reprofile">
									<p class="p1"><span id="repro" class="ps1">현재 비밀번호</span><em><input type="password" name="pw1" maxlength="20" style="width: 250px; margin-left: 63px;" /></em></p>
									<p class="p2"><span id="repro" class="ps2">변경하실 비밀번호</span><em><input type="password" name="pw2" maxlength="20" style="width: 250px; margin-left:34px; " /></em></p>
									<p class="p3"><span id="repro" class="ps3">비밀번호 확인</span><em><input type="password" name="pw3" maxlength="20" style="width: 250px; margin-left: 62px;" /></em></p>
									<p class="e1"><span id="repro" class="email1">이메일</span><em><input type="text" name="email" maxlength="30" value="${USER.email }"  style="width: 250px; margin-left: 107px;" /></em></p>
									<p class="n1"><span id="repro" class="nick1">별명</span><em><input type="text" name="nick" maxlength="20" value="${USER.nickName }" style="width: 250px; margin-left: 122px;" /></em></p>
								</div>
								<div class="submitbox">
									<button id="pwck" type="submit" class="btn btn-primary">변경하기</button>
								</div>
							</div>
						</form>
						</c:if>
						
						<c:if test="${param.result eq 'success' }">
						<script>
							alert("정보수정이 완료되었습니다.");
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
			var pw3 = $('[name=pw3]').val();
			
			if(pw1 == pw2) {
				alert("기존 비밀번호와 일치하는 비밀번호입니다.");
				return false;
			}
			
			if(pw1 == pw3) {
				alert("기존 비밀번호와 일치하는 비밀번호입니다.");
				return false;
			}
			
			if(pw2 != pw3) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			
			return true;
			
		});
	</script>
	
</body>
</html>