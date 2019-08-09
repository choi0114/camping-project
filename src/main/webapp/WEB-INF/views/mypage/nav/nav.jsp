<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="sidemenu">

			<div class="memberinfobox">
				<h3 id="mypage-title"><span id="high-light">${LOGIN_USER.id }</span>님 마이페이지</h3>
			</div>
			<ul class="mymenu">
				<li><a href="/camping/mypage/mypage.camp" 	class="${submenu eq 'mypage' ? 'selected' : ''  }">		<span class="ico"><img src="/camping/resources/images/mypage/1.svg" width="18" height="20"></span> 마이페이지</a></li>
			<c:if test="${LOGIN_USER.type ne 'CLIENT' }">
				<li><a href="/camping/mypage/addCamp.camp" 	class="${submenu eq 'addCamp' ? 'selected' : ''  }">	<span class="ico"><img src="/camping/resources/images/mypage/tent.svg" width="18" height="20"></span> 내가 등록한 캠핑장</a></li>
			</c:if>
				<li><a href="/camping/mypage/clip.camp" 	class="${submenu eq 'clip' ? 'selected' : ''  }">		<span class="ico"><img src="/camping/resources/images/mypage/2.svg" width="18" height="20"></span> 찜한 캠핑장</a></li>
				<li><a href="/camping/mypage/conquest.camp" class="${submenu eq 'conquest' ? 'selected' : ''  }">	<span class="ico"><img src="/camping/resources/images/mypage/3.svg" width="18" height="20"></span> 정복한 캠핑장</a></li>
				<li><a href="/camping/mypage/post.camp" 	class="${submenu eq 'post' ? 'selected' : ''  }">		<span class="ico"><img src="/camping/resources/images/mypage/post.svg" width="18" height="20"></span> 게시물</a></li>
				<li><a href="/camping/mypage/comment.camp" 	class="${submenu eq 'comment' ? 'selected' : ''  }">	<span class="ico"><img src="/camping/resources/images/mypage/comment.svg" width="18" height="20"></span> 댓글</a></li>
				<li><a href="/camping/mypage/oneline.camp" 	class="${submenu eq 'online' ? 'selected' : ''  }">		<span class="ico"><img src="/camping/resources/images/mypage/oneline.svg" width="18" height="20"></span> 한줄의견</a></li>
				<li><a href="/camping/mypage/scrap.camp" 	class="${submenu eq 'scrap' ? 'selected' : ''  }">		<span class="ico"><img src="/camping/resources/images/mypage/scrap.svg" width="18" height="20"></span> 스크랩</a></li>
				<li><a href="/camping/mypage/info.camp" 	class="${submenu eq 'info' ? 'selected' : ''  }">		<span class="ico"><img src="/camping/resources/images/mypage/info.svg" width="18" height="20"></span> 정보수정</a></li>
				<li><a href="/camping/mypage/out.camp" 		class="${submenu eq 'out' ? 'selected' : ''  }">		<span class="ico"><img src="/camping/resources/images/mypage/out.svg" width="18" height="20"></span> 회원탈퇴</a></li>
			</ul>
		</div>
		
	<script type="text/javascript">
		$(".mymenu a").click(function(event) {
			$('.mymenu a').removeClass("selected");
			$(this).addClass("selected");
		})
	</script>