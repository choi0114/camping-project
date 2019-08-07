<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="page-header">
				<h1>로그인/회원가입 페이지</h1>
			</div>
			<div class="">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">로그인</button>
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal2">회원가입</button>
			</div>
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<form class="pb-modalreglog-form-reg" method="post" action="login.camp">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">로그인</h4>
						</div>
						<div class="modal-body">
								<div class="form-group">
									<label for="email">아이디</label>
									<div class="input-group pb-modalreglog-input-group">
										<input type="text" class="form-control" id="id" name="id"
											placeholder="아이디"> <span class="input-group-addon"><span
											class="glyphicon glyphicon-user"></span></span>
									</div>
								</div>
								<div class="form-group">
									<label for="password">비밀번호</label>
									<div class="input-group pb-modalreglog-input-group">
										<input type="password" class="form-control" id="pws" name="password"
											placeholder="비밀번호"> <span class="input-group-addon"><span
											class="glyphicon glyphicon-lock"></span></span>
									</div>
								</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">닫기</button>
							<button type="submit" class="btn btn-primary">로그인</button>
						</div>
					  </form>
					</div>
				</div>
			</div>
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<form class="pb-modalreglog-form-reg" method="post" action="register.camp">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">회원가입</h4>
						</div>
						<div class="modal-body">
								<div class="form-group">
									<div class="input-group pb-modalreglog-input-group">
										<span class="input-group-addon"><span class="glyphicon glyphicon-education"></span></span>
										<input type="text" class="form-control" id="inputName" placeholder="이름" name="name">
									</div>	
									<div class="check_font" id="name_check"></div>
								</div>
								<div class="form-group">
									<div class="input-group pb-modalreglog-input-group">
										<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span> 
										<input type="text" class="form-control" id="inputId" placeholder="아이디(아이디는 6글자이상, 영어 대소문자/숫자만 입력하세요)" name="id">
									</div>
									<div class="check_font" id="id_check"></div>
								</div>
								<div class="form-group">
									<div class="input-group pb-modalreglog-input-group">
										<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span> 
										<input type="password" class="form-control" id="inputPws" placeholder="비밀번호(비밀번호는 8글자이상, 영어 대소문자/숫자만 입력하세요)" name="password">
									</div>
									<div class="check_font" id="pw_check"></div>
								</div>
								<div class="form-group">
									<div class="input-group pb-modalreglog-input-group">
										<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span> 
										<input type="password" class="form-control" id="inputConfirmPws" placeholder="비밀번호 확인" name="password2">
									</div>
									<div class="check_font" id="pw2_check"></div>
								</div>
								<div class="form-group">
									<div class="input-group pb-modalreglog-input-group">
										<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span> 
										<input type="text" class="form-control" id="inputPhone" placeholder="전화번호" name="phoneNumber">
									</div>
									<div class="check_font" id="phone_check"></div>
								</div>
								<div class="form-group">
									<div class="input-group pb-modalreglog-input-group">
										<span class="input-group-addon"><span class="glyphicon glyphicon-heart"></span></span> 
										<input type="text" class="form-control" id="inputNickname" placeholder="닉네임" name="nickName">
									</div>
									<div class="check_font" id="nickname_check"></div>
								</div>
								<div class="form-group">
									<div class="input-group pb-modalreglog-input-group">
										<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span> 
										<input type="text" class="form-control" id="inputEmail" placeholder="이메일" name="email">
									</div>
									<div class="check_font" id="email_check"></div>
								</div>
								<div class="form-group">
									<label>사용자타입</label>
									<select class="form-control" name="type">
										<option value="CLIENT"> 고객 </option>
										<option value="OWNER"> 주인 </option>
										<option value="ADMIN"> 관리자 </option>
									</select>
								</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
							<button type="submit" class="btn btn-primary">회원가입</button>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="pb-modalreglog-footer">
		<p>5g camping</p>
	</div>
</div>
<script type="text/javascript">
	$('.form-control').click(function(){
		 $(this).removeAttr('placeholder');
	});
	var empJ = /\s/g;
	var idJ = /^[a-zA-Z0-9]{6,}$/;
	var pwJ = /^[a-zA-Z0-9]{8,}$/;
	var nameJ = /^[가-힣]{2,6}$/;
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var phoneJ = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;

	$('#inputPws').blur(function(){
		if(pwJ.test($('#inputPws').val())){
			console.log('true');
			$('#pw_check').text('');
		} else {
			console.log('false');
			$('#pw_check').text('8글자이상, 영어 대소문자/숫자만 입력하세요');
			$('#pw_check').css('color', 'red');
		}
	});
	
	$('#inputConfirmPws').blur(function(){
		if ($('#inputPws').val() != $(this).val()) {
			$('#pw_check').text('비밀번호가 일치하지 않습니다.');
			$('#pw2_check').css('color', 'red');
		} else {
			$('#pw2_check').text('');
		}
	});
	
	$("#inputName").blur(function(){
		if (nameJ.test($(this).val())) {
			console.log(nameJ.test($(this).val()));
			$("#name_check").text('');
		} else {	
			$('#name_check').text('이름을 확인해주세요');
			$('#name_check').css('color', 'red');
		}
	});
	
	$("#inputPhone").blur(function(){
		if (phoneJ.test($(this).val())) {
			console.log(phoneJ.test($(this).val()));
			$("#phone_check").text('');
		} else {
			$('#phone_check').text('유효한 전화번호 형식이 아닙니다.');
			$('#phone_check').css('color', 'red');
		}
	});
	
	$("#inputEmail").blur(function(){
		if (mailJ.test($(this).val())) {
			console.log(emailJ.test($(this).val()));
			$("#email_check").text('');
		} else {
			$('#email_check').text('이메일 형식을 확인해주세요');
			$('#email_check').css('color', 'red');
		}
	});
	
	$("#inputId").blur(function(){
		if (idJ.test($(this).val())) {
			console.log(idJ.test($(this).val()));
			$("#id_check").text('');
		} else {
			$('#id_check').text('6글자이상, 영어 대소문자/숫자만 입력하세요');
			$('#id_check').css('color', 'red');
		}
	});

</script>
</body>
</html>