<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style>
        #resultImg{position: absolute;left: 331px;top: 90px;}
        
       #resulttop .sitem .cright {
    height: 45px;
    cursor: pointer;
    width: 230px;
    display: inline-block;
    padding-left:10px;
    
		}
	#resulttop .sitem .fr .clink {
	    margin-top: 10px;
	    float:left;
	}
       /*  .hand{
            position: absolute;
 		    left: 118px;
    		top: 60px;
        }
        .clink{
            position: absolute;
 		    left: 342px;
    		top: 83px;
   	    } */
         .imgresult{
         	float:right;
         }
        .sitem{
		    border-bottom: 1px #ddd solid;
		    padding: 15px;
		    height: 86px;
		    white-space: nowrap;
		    text-overflow: ellipsis;
		    /* overflow: hidden; */
		    line-height: 1.2;
		    cursor: pointer;
        }
        #resulttop{
        	 background:#fff;
        	 max-height: 400px;
   			 overflow-y: auto;
        }
        .t-arr-blue{
            position: absolute;
		    left: 191px;
		    top: 11px;
		}
		.rewult-wrap h3{
			background: #25a5f0;
		    height: 40px;
		    line-height: 40px;
		    color: #fff;
		    margin: 0;
		    padding: 0;
		    text-align: center;
		    font-size: 15px;
		}
        .rewult-wrap{
        	position: absolute;
        	top: 36px;
   			left: 1146px;
   			z-index:1000;
		    width: 400px;
		    margin-left: -200px;
		    display: block;
		    max-height: 400px;
		    box-shadow: 7px 7px 20px rgba(0,0,0,.28);
        }
        #container{
            width: 100%;
            position: fixed;
            z-index: 13;
            background: rgba(0,0,0,.8);
            height: 100px;
            transition: background-color 700ms linear;
        }
        #container .scrolled{background-color: #383943;}
        #container .gnb {
            height: 40px;
            z-index: 0;
            width: 100%;
            z-index: 12;
        
        }
        #container .gnb ul {
            position: absolute;
            right: 20px;
            top: 10px;
            font-size: 12px;
            padding: 0px;
        }
        #container .gnb ul li {
            display: inline-block;
            position: relative;
        }
        #container .gnb ul li > a {
            color: #ccc;
            display: inline-block;
            margin: 0 8px;
            height: 40px;
            line-height: 3px;
            font-weight: bold;
        }
        #container .gnb ul li > a:hover {color: #0d7ebf; font-weight: bold;}
        #container a {text-decoration: none;}
        #container .header-wrap {
            width: 1200px;
            margin: 0 auto;
            position: absolute;
            left: 50%;
            margin-left: -900px;
            top: 30px;
        }
        #container.scrolled {background-color: #383943;}
        li{list-style: none;}
        .logo{display: inline-block; float: left; margin: 8px 0 0 0;}
        .logo h1{margin: 0;}
        
        .topmenu{text-align: center;}
        .topmenu>ul{display: inline-block; float: left; padding: 0; margin: 24px -60px 18px 60px;}
        .topmenu>ul>li{float: left; font-size: 18px; margin: 0 32px;}
        .topmenu ul li>a{font-weight: 600; color: #fff; padding: 20px 0px;}
        .topmenu ul li>a:hover{color: #0d7ebf; font-weight: bold;}
        .topmenu ul .search-input{margin-left: 35px; padding: 0 40px 0 10px; height: 24px; border: 1px #565865 solid; font-size: 12px;
                                background: #565865; border-radius: 30px; outline: 0; width: 165px; color: #fff !important;}
        .topmenu .topsearch{position: relative; top: -3px;}
        .topmenu .topsearch legend{display: none}
        .topmenu .topsearch .btn-search{position: absolute; top: 1px; right: 3px; background: none; padding: 0; margin: 0; border: none;
                            color: #fff; cursor: pointer; height: 26px; width: 26px; text-align: center; outline: 0; font-size: 13px;}
    </style>
<div class="detail-Nav" id="container" >
    <div class="gnb">
        <ul class="">
            <li><a href="home.camp">HOME</a></li>
            <li><a href="">공지사항</a></li>
            <c:choose>
            	<c:when test="${empty LOGIN_USER }">
		            <li><a id="open-register-modal">회원가입</a></li>
		            <li><a id="open-login-modal">로그인</a></li>
            	</c:when>
            	<c:otherwise>
		            <c:choose>
			            <c:when test="${LOGIN_USER.id eq 'admin'}">
				            <li><a href="admin/list.camp">관리자페이지</a></li>
			            </c:when>
			            <c:otherwise>
				            <li><a href="mypage.camp">마이페이지</a></li>
			            </c:otherwise>
		            </c:choose>
			        <li><a href="mypage.camp"><span style="color: #25a5f0">안녕하세요! ${LOGIN_USER.id }님</span></a></li>
			        <li><a href="logout.camp">로그아웃</a></li>
            	</c:otherwise>
            </c:choose>
        </ul>
    </div>
    <div class="header-wrap">
        <div class="logo">
            <h1><a href="home.camp"><img src="/camping/resources/images/5g_logo1.png" alt="오지캠핑"/></a></h1>
        </div>
        <div class="topmenu">
            <ul>
                <li><a href="map.camp">전체</a></li>
                <li><a href="map.camp?sort=CAMP">글램핑</a></li>
                <li><a href="map.camp?sort=CAR">카라반</a></li>
                <li><a href="map.camp?sort=NORMAL">캠핑장</a></li>
                <li><a href="themesearch.camp">테마검색</a></li>
                <li>
                    <a data-toggle="collapse" href="#">캠핑톡</a>
                    <ul style="display: none;">
                        <li><a class="panel-collapse collapse" href="#">가입인사</a></li>
                        <li><a class="panel-collapse collapse" href="#">캠핑 리뷰</a></li>
                        <li><a class="panel-collapse collapse" href="#">자유게시판</a></li>
                    </ul>
                </li>
                <li class="searchli"> 
                    <div class="topsearch">
                       <form action="map.camp?resach" method="get" id="layout-search-border"> <!--onsubmit-->
                           <fieldset>
                                <legend>통합검색 폼</legend>
                                <input autocomplete="off" type="text" id="totalsearch" class="search-input" name="keyword" placeholder="캠핑장 검색" onfocus="this.placeholder = ''" onblur="this.placeholder = '캠핑장 검색'" value="">
                                <button type="submit" class="btn-search">
                                    <i class="glyphicon glyphicon-search" aria-hidden="true"></i>
                                </button>
                           </fieldset>
                       </form>
                    </div>
                    <div class="rewult-wrap" style="display: none;" id="result-box">
                        <img src="resources/images/t_arr_blue.png" class="t-arr-blue">
                       	<i class="far fa-window-close"></i>
                        <i class="fa fa-window-close-o hand"></i> <!--onclick 안내창 숨기기-->
                        <h3 id="bot">
                            <span class="fblack"></span>
                            <span class="count"></span><span class="sodyd">건이 검색되었네요</span><!-- 또는 검색결과가 없습니다. -->
                        </h3>
                        <div class="resultBox">
	                        <div id="resulttop" style="display: block;">
	                        </div>
	                        <div id='more-list-box' class="text-center" style="background: #fff; display: block;">
	                        	<button id="more-List-Button" class="btn btn-primary" style="width: 100%">더보기</button>
	                        </div> 
                        </div>
                    </div>
               </li>
               </ul>
        </div>
    </div>
</div>
<div id="login-modal" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form class="pb-modalreglog-form-reg" method="post" action="login.camp" id="ab">
			<div class="modal-header"> 
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">로그인</h4>
			</div>
			<div class="modal-body">
					<div class="form-group">
						<label for="id">아이디</label>
						<div class="input-group pb-modalreglog-input-group">
							<input type="text" class="form-control" id="id" name="id"
								placeholder="아이디"> <span class="input-group-addon"><span
								class="glyphicon glyphicon-user"></span></span>
						</div>
						<div class="check_font" id="id_check"></div>
					</div>
					<div class="form-group">
						<label for="password">비밀번호</label>
						<div class="input-group pb-modalreglog-input-group">
							<input type="password" class="form-control" id="pws" name="password"
								placeholder="비밀번호"> <span class="input-group-addon"><span
								class="glyphicon glyphicon-lock"></span></span>
						</div>
						<div class="check_font" id="pw_check"></div>
					</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" id="btn-login">로그인</button>
				<button type="button" class="btn btn-secondary"
					data-dismiss="modal">닫기</button>
			</div>
		  </form>
		</div>
	</div>
</div>
<div id="register-modal" class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form class="pb-modalreglog-form-reg" method="post" action="register.camp" id="abc">
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
						</select>
					</div>
			</div>
			<div class="modal-footer">
				<button type="submit" class="btn btn-primary" id='a'>회원가입</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
			</div>
			</form>
		</div>
	</div>
</div>


<script type="text/javascript">
var prevLength;
var page = 2;
var isMoveIntoResultBox = false;


$('#more-List-Button').click(function(){
	var resutl = $('#totalsearch').val();
	page++;
	
	$.ajax({
		type:"GET",
		url:"more.camp",
		data:{result:resutl,page:page},
		dataType:"json",
		success:(function(data){
			$.each(data , function(index, list){
				var content = "<div class='sitem' id='"+list.name+"'>";
				content += "<div class='imgBox' style='float: left; padding-left: 10px;'>"
				content += "<img src='resources/images/"+list.photo+"' width='80' height='45' class='img-thumbnail'>"
				content += "</div>";
				content += "<div class='fl cirght hand'>";
				content += "<p class='cpath' style='font-size: 12px;'>"+list.sido+"><span style='font-size:12px;'>"+list.gugun+"</span></p>"
				content += "<p class='sbjval'><span class='highlight'>"+list.name+"</span></p>"
				content +="<a href='map.camp?"+list.name+"' class='cdirectlink'>"
		        content +="<img class='imgresult' src='resources/images/direct.svg'  width='26' height='26' >"
				content +="</a>"
				content += "</div>"
				content +="</div>"
				$('#resulttop').append(content);
			})
		})
	})
})

$('#totalsearch').click(function(){
	var res = $(this).val();
	if(res){
		$('#result-box').css('display','block');
	}else{
		$('#result-box').css('display','none');
	}
}) 
$('#totalsearch').focus(function(){
	var res = $(this).val();
	if(res){
		$('#result-box').css('display','block');
	}
})

$('#totalsearch').blur(function(){
	var res = $(this).val();
	if (!isMoveIntoResultBox) {
		$('#result-box').css('display','none');
	}
})

$('.searchli').on('mouseenter','.resultBox',function(){
	isMoveIntoResultBox = true
	console.log(isMoveIntoResultBox);
})
$('.searchli').on('mouseleave','.resultBox',function(){
	isMoveIntoResultBox = false;
	console.log(isMoveIntoResultBox);
	$('#result-box').css('display','none');
}) 


/* $('.searchli').on('click', '.sitem', function() {
	console.log("아이템 클릭");
	return false;
})
$('.searchli').on('click', '#more-list-box', function() {
	console.log("아이템 클릭");
	return false;
}) */

$('#totalsearch').keyup(function(event){
	var res = $(this).val();
	if(res){
		$('#result-box').css('display','block');
	}else{
		$('#result-box').css('display','none');
	}
		
	
	if(event.keyCode == 8){ // 백스페이스 할 때 마다 keyup 되는거 막기
		if (prevLength == res.length) {
			return false;
		}
	} else {
		prevLength = res.length;
	}
	$.ajax({
		type:"GET",
		url:"nameAndAddress.camp",
		data:{result:res},
		dataType:"json",
		success:(function(data){
			if(data.length < 10){
				$('#more-list-box').hide();
			} else {
				$('#more-list-box').show();
			}
			var totalHap = data.length
			$('.fblack').text("＇"+res+"＇"); 
			$('#resulttop').empty();
			$.each(data , function(index, list){
				var content = "<div class='sitem'>";
				content += "<div class='imgBox' style='float: left; padding-left: 10px;'>"
				if(list.photo == null){
				content += "<img src='resources/images/campsite/noimg.jpg' width='80' height='45' class='img-thumbnail'>"
				}else{
				content += "<img src='resources/images/campsite/"+list.photo+"' width='80' height='45' class='img-thumbnail'>"
				}
				content += "</div>";
				content += "<div class='fl cirght hand'>";
				content += "<p class='cpath' style='font-size: 12px;'>"+list.sido+"><span style='font-size:12px;'>"+list.gugun+"</span></p>"
				content += "<p class='sbjval'><span class='highlight'>"+list.name+"</span>"
				content +="<a href='map.camp?keyword="+list.name+"' class='cdirectlink'>"
		        content +="<img class='imgresult' src='resources/images/direct.svg'  width='26' height='26' >"
				content +="</a>"
				content += "</div>"
				content +="</div>"
				$('#resulttop').append(content);
				})
				$('.count').text(totalHap);
			})
		})
	})
	
	$('#abc').on('submit',function(data){

			var id = document.getElementById("inputId").value;
			if (id == '') {
				event.preventDefault();
				alert("아이디를 입력하세요");
				return false;
			}
			
			var password = document.getElementById("inputPws").value;
			if (password == '') {
				event.preventDefault();
				alert("비밀번호를 입력하세요");
				return false;
			}
			
			var confirm = document.getElementById("inputConfirmPws").value;
			if (confirm == '') {
				event.preventDefault();
				alert("비밀번호를 입력하세요");
				return false;
			}
			
			var phone = document.getElementById("inputPhone").value;
			if (phone == '') {
				event.preventDefault();
				alert("전화번호를 입력하세요");
				return false;
			}
			
			var nickname = document.getElementById("inputNickname").value;
			if (nickname == '') {
				event.preventDefault();
				alert("닉네임을 입력하세요");
				return false;
			}
			
			var email = document.getElementById("inputEmail").value;
			if (email == '') {
				event.preventDefault();
				alert("이메일을 입력하세요");
				return false;
			}
			
			alert("회원가입이 완료되었습니다.");
		})


		$("#btn-login").click(function() {
			var id = document.getElementById("id").value;
			if (id == '') {
				event.preventDefault();
				alert("아이디를 입력하세요");
				return false;
			}
			var pws = document.getElementById("pws").value;
			if (pws == '') {
				event.preventDefault();
				alert("비밀번호를 입력하세요");
				return false;
			}
			
			$.ajax({
				type:"POST",
				url:"login.camp",
				data:{id:id, password:pws},
				dataType:"text",
				success:function(result) {
					if(result == "success"){
						location.href=location.href.substring(location.href.lastIndexOf("/") + 1);
					} else {
						alert("로그인 실패");
					}
				}
				
			});
			
		})
			
		$('#open-login-modal').click(function() {
			$("#login-modal").modal("show")
		});
		
		$('#open-register-modal').click(function() {
			$("#register-modal").modal("show")
		});
		
		$('.form-control').click(function(){
			 $(this).removeAttr('placeholder');
		});
		
		var empJ = /\s/g;
		var idJ = /^[a-zA-Z0-9]{4,}$/;
		var pwJ = /^[a-zA-Z0-9]{8,}$/;
		var nameJ = /^[가-힣]{2,6}$/;
		var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var phoneJ = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
		
		$("#id").blur(function(){
			if (idJ.test($(this).val())) {
				console.log(idJ.test($(this).val()));
				$("#id_check").text('');
			} else {
				$('#id_check').text('4글자이상, 영어 대소문자/숫자만 입력하세요');
				$('#id_check').css('color', 'red');
			}
		});

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
				$('#id_check').text('4글자이상, 영어 대소문자/숫자만 입력하세요');
				$('#id_check').css('color', 'red');
			}
		});
</script>
