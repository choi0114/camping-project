<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Bootstrap Example</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/camping/resources/css/theme/theme.css">
</head>
<body>
<div class="container">
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
	
	<!-- Modal -->
	<div id="theme-search-modal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
		    <!-- Modal content-->
		    <div class="modal-content">
		      	<div class="modal-body">
		        	<button type="button" class="close" data-dismiss="modal">&times;</button>
		        	<div class="row">
		        		<div class="col-sm-2">
		        			<h2 style="color: #25a5f0;">테마검색</h2>
		        		</div>
		        		<div class="col-sm-8" style="color: #aaa; margin-top: 18px;">
		        			<p>원하는 캠핑 스타일을 선택 후 상단우측 또는 하단 검색버튼을 클릭하세요.
		        			<br/>많은 옵션을 선택하면 검색 결과를 기대할 수 없습니다.</p>
		        		</div>
		        		<div class="col-sm-2">
		        			<button class="theme-search-btn">
		        				<span class="glyphicon glyphicon-search" style="color: #fff;"></span>
		        				테마검색
		        			</button>
		        		</div>
		        	</div>
		        	<div class="row">
		        		<div class="col-sm-12">
		        			<table class="table" id="theme-table">
		        				<tbody>
		        					<tr>
		        						<th>
	        								<p style="display: inline-block; font-size: 20px; margin-top: 5px;">자연환경</p>
	        								<p class="pull-right" style="font-size: 12px; color: #ff6000; font-weight: 400; margin-top: 10px;">자연환경은 3개 까지 선택 가능합니다.</p>
		        						</th>
		        					</tr>
		        					<tr>
		        						<td>
		        							<div style="margin-top: 10px; text-align: center;">
		        								<div class="facbox">
		        									<button data-theme-no="2">
		        										<img src="/camping/resources/images/themes/2.svg" class="svg"/>
		        										<p>계곡</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="9">
		        										<img src="/camping/resources/images/themes/9.svg" class="svg"/>
		        										<p>바다</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="10">
		        										<img src="/camping/resources/images/themes/10.svg" class="svg"/>
		        										<p>산</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="1">
		        										<img src="/camping/resources/images/themes/1.svg" class="svg"/>
		        										<p>강변</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="14">
		        										<img src="/camping/resources/images/themes/14.svg" class="svg"/>
		        										<p>자연휴양림</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="8">
		        										<img src="/camping/resources/images/themes/8.svg" class="svg"/>
		        										<p>도심</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="7">
		        										<img src="/camping/resources/images/themes/7.svg" class="svg"/>
		        										<p>농촌</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="11">
		        										<img src="/camping/resources/images/themes/11.svg" class="svg"/>
		        										<p>섬</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="6">
		        										<img src="/camping/resources/images/themes/6.svg" class="svg"/>
		        										<p>낚시터</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="5">
		        										<img src="/camping/resources/images/themes/5.svg" class="svg"/>
		        										<p>국립공원</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="13">
		        										<img src="/camping/resources/images/themes/13.svg" class="svg"/>
		        										<p>유원지</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="4">
		        										<img src="/camping/resources/images/themes/4.svg" class="svg"/>
		        										<p>공원</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="15">
		        										<img src="/camping/resources/images/themes/15.svg" class="svg"/>
		        										<p>호수</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="12">
		        										<img src="/camping/resources/images/themes/12.svg" class="svg"/>
		        										<p>스키장</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="3">
		        										<img src="/camping/resources/images/themes/3.svg" class="svg"/>
		        										<p>골프장</p>
		        									</button>
		        								</div>
		        							</div>
		        						</td>
		        					</tr>
		        					<tr>
		        						<th>
	        								<p style="display: inline-block; font-size: 20px; margin-top: 5px;">편의시설 및 환경</p>
	        								<p class="pull-right" style="font-size: 12px; color: #ff6000; font-weight: 400; margin-top: 10px;">편의시설 및 환경은 7개 까지 선택 가능합니다.</p>
		        						</th>
		        					</tr>
		        					<tr>
		        						<td>
		        							<div style="margin-top: 10px; text-align: center;">
		        								<div class="facbox">
		        									<button data-theme-no="47">
		        										<img src="/camping/resources/images/themes/47.svg" class="svg"/>
		        										<p>매점</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="48">
		        										<img src="/camping/resources/images/themes/48.svg" class="svg"/>
		        										<p>반려동물동반</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="51">
		        										<img src="/camping/resources/images/themes/51.svg" class="svg"/>
		        										<p>수세식화장실</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="62">
		        										<img src="/camping/resources/images/themes/62.svg" class="svg"/>
		        										<p>재래식화장실</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="57">
		        										<img src="/camping/resources/images/themes/57.svg" class="svg"/>
		        										<p>온라인예약</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="60">
		        										<img src="/camping/resources/images/themes/60.svg" class="svg"/>
		        										<p>장애인편의시설</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="59">
		        										<img src="/camping/resources/images/themes/59.svg" class="svg"/>
		        										<p>와이파이</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="61">
		        										<img src="/camping/resources/images/themes/61.svg" class="svg"/>
		        										<p>장작판매</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="50">
		        										<img src="/camping/resources/images/themes/50.svg" class="svg"/>
		        										<p>샤워시설</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="42">
		        										<img src="/camping/resources/images/themes/42.svg" class="svg"/>
		        										<p>개수대</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="63">
		        										<img src="/camping/resources/images/themes/63.svg" class="svg"/>
		        										<p>전기</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="46">
		        										<img src="/camping/resources/images/themes/46.svg" class="svg"/>
		        										<p>동계캠핑</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="58">
		        										<img src="/camping/resources/images/themes/58.svg" class="svg"/>
		        										<p>온수제공</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="56">
		        										<img src="/camping/resources/images/themes/56.svg" class="svg"/>
		        										<p>오토캠핑</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="43">
		        										<img src="/camping/resources/images/themes/43.svg" class="svg"/>
		        										<p>글램핑시설</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="65">
		        										<img src="/camping/resources/images/themes/65.svg" class="svg"/>
		        										<p>카라반시설</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="69">
		        										<img src="/camping/resources/images/themes/69.svg" class="svg"/>
		        										<p>펜션/민박</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="70">
		        										<img src="/camping/resources/images/themes/70.svg" class="svg"/>
		        										<p>호텔/리조트</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="54">
		        										<img src="/camping/resources/images/themes/54.svg" class="svg"/>
		        										<p>어린이놀이터</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="53">
		        										<img src="/camping/resources/images/themes/53.svg" class="svg"/>
		        										<p>야외스파</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="67">
		        										<img src="/camping/resources/images/themes/67.svg" class="svg"/>
		        										<p>캠핑용품대여</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="64">
		        										<img src="/camping/resources/images/themes/64.svg" class="svg"/>
		        										<p>찜질방</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="49">
		        										<img src="/camping/resources/images/themes/49.svg" class="svg"/>
		        										<p>방갈로</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="45">
		        										<img src="/camping/resources/images/themes/45.svg" class="svg"/>
		        										<p>도서관</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="52">
		        										<img src="/camping/resources/images/themes/52.svg" class="svg"/>
		        										<p>식당</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="68">
		        										<img src="/camping/resources/images/themes/68.svg" class="svg"/>
		        										<p>컨벤션/세미나</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="66">
		        										<img src="/camping/resources/images/themes/66.svg" class="svg"/>
		        										<p>카페</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="55">
		        										<img src="/camping/resources/images/themes/55.svg" class="svg"/>
		        										<p>연회장</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="44">
		        										<img src="/camping/resources/images/themes/44.svg" class="svg"/>
		        										<p>달구지입장가능</p>
		        									</button>
		        								</div>
		        							</div>
		        						</td>
		        					</tr>
		        					<tr>
		        						<th>
	        								<p style="display: inline-block; font-size: 18px; margin-top: 5px;">즐길거리</p>
	        								<p class="pull-right" style="font-size: 12px; color: #ff6000; font-weight: 400; margin-top: 10px;">즐길거리는 5개 까지 선택 가능합니다.</p>
		        						</th>
		        					</tr>
		        					<tr>
		        						<td>
		        							<div style="margin-top: 10px; text-align: center;">
		        								<div class="facbox">
		        									<button data-theme-no="27">
		        										<img src="/camping/resources/images/themes/27.svg" class="svg"/>
		        										<p>바다낚시</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="26">
		        										<img src="/camping/resources/images/themes/26.svg" class="svg"/>
		        										<p>민물낚시</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="32">
		        										<img src="/camping/resources/images/themes/32.svg" class="svg"/>
		        										<p>수영장</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="24">
		        										<img src="/camping/resources/images/themes/24.svg" class="svg"/>
		        										<p>물놀이</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="39">
		        										<img src="/camping/resources/images/themes/39.svg" class="svg"/>
		        										<p>체육시설</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="19">
		        										<img src="/camping/resources/images/themes/19.svg" class="svg"/>
		        										<p>노래방</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="23">
		        										<img src="/camping/resources/images/themes/23.svg" class="svg"/>
		        										<p>무대/공연장</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="31">
		        										<img src="/camping/resources/images/themes/31.svg" class="svg"/>
		        										<p>수상레저</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="40">
		        										<img src="/camping/resources/images/themes/40.svg" class="svg"/>
		        										<p>체험프로그램</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="30">
		        										<img src="/camping/resources/images/themes/30.svg" class="svg"/>
		        										<p>생태공원</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="17">
		        										<img src="/camping/resources/images/themes/17.svg" class="svg"/>
		        										<p>게임기</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="16">
		        										<img src="/camping/resources/images/themes/16.svg" class="svg"/>
		        										<p>ATV</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="22">
		        										<img src="/camping/resources/images/themes/22.svg" class="svg"/>
		        										<p>등산</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="34">
		        										<img src="/camping/resources/images/themes/34.svg" class="svg"/>
		        										<p>썰매장</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="25">
		        										<img src="/camping/resources/images/themes/25.svg" class="svg"/>
		        										<p>미술관/갤러리</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="38">
		        										<img src="/camping/resources/images/themes/38.svg" class="svg"/>
		        										<p>짚라인</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="29">
		        										<img src="/camping/resources/images/themes/29.svg" class="svg"/>
		        										<p>방방이</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="18">
		        										<img src="/camping/resources/images/themes/18.svg" class="svg"/>
		        										<p>골프연습장</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="28">
		        										<img src="/camping/resources/images/themes/28.svg" class="svg"/>
		        										<p>박물관</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="33">
		        										<img src="/camping/resources/images/themes/33.svg" class="svg"/>
		        										<p>승마체험</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="35">
		        										<img src="/camping/resources/images/themes/35.svg" class="svg"/>
		        										<p>영화관람실</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="36">
		        										<img src="/camping/resources/images/themes/36.svg" class="svg"/>
		        										<p>자전거대여</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="21">
		        										<img src="/camping/resources/images/themes/21.svg" class="svg"/>
		        										<p>동물농장</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="41">
		        										<img src="/camping/resources/images/themes/41.svg" class="svg"/>
		        										<p>클럽 파티</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="20">
		        										<img src="/camping/resources/images/themes/20.svg" class="svg"/>
		        										<p>당구장</p>
		        									</button>
		        								</div>
		        								<div class="facbox">
		        									<button data-theme-no="37">
		        										<img src="/camping/resources/images/themes/37.svg" class="svg"/>
		        										<p>잔디광장</p>
		        									</button>
		        								</div>
		        							</div>
		        						</td>
		        					</tr>
		        				</tbody>
		        			</table>
		        		</div>
		        	</div>
		        	<div class="row">
		        		<div class="col-sm-12 text-center">
		        			<button class="theme-search-btn">
		        				<span class="glyphicon glyphicon-search" style="color: #fff;"></span>
		        				테마검색
		        			</button>
		        		</div>
		        	</div>
		      	</div>
		    </div>
	  	</div>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		$('#theme-search-modal').modal();
		
		/*
		 * Replace all SVG images with inline SVG
		 */
		$('img.svg').each(function(){
		    var $img = $(this);
		    // var imgID = $img.attr('id');
		    var imgClass = $img.attr('class');
		    var imgURL = $img.attr('src');

		    $.get(imgURL, function(data) {
		    	
		        // Get the SVG tag, ignore the rest
		        var $svg = $(data).find('svg');
		        
		        $svg.attr('height', '40px');
		        $svg.attr('width', '40px');

		        // Add replaced image's ID to the new SVG
		        if(typeof imgID !== 'undefined') {
		            $svg = $svg.attr('id', imgID);
		        }
		        // Add replaced image's classes to the new SVG
		        if(typeof imgClass !== 'undefined') {
		            $svg = $svg.attr('class', imgClass+' replaced-svg');
		        }

		        // Remove any invalid XML tags as per http://validator.w3.org
		        $svg = $svg.removeAttr('xmlns:a');

		        // Check if the viewport is set, if the viewport is not set the SVG wont't scale.
		        if(!$svg.attr('viewBox') && $svg.attr('height') && $svg.attr('width')) {
		            $svg.attr('viewBox', '0 0 ' + $svg.attr('height') + ' ' + $svg.attr('width'))
		        }

		        // Replace image with new SVG
		        $img.replaceWith($svg);

		    }, 'xml');

		});
	});
	    var countEnvironment = 0;
	    var countConvenient = 0;
	    var countFun = 0;
		$('.facbox button').click(function() {
			var fillColor = $(this).find('.svg path').attr('fill');
			var imgNo = $(this).attr('data-theme-no');
			
			console.log(this);
			console.log(fillColor);
			
			if(fillColor == '#555555') {
				$(this).find('.svg path').attr('fill', '#25a5f0');
				$(this).find('.svg rect').attr('fill', '#25a5f0');
				$(this).find('p').css('color', '#25a5f0');
			} else {
				$(this).find('.svg path').attr('fill', '#555555');
				$(this).find('.svg rect').attr('fill', '#555555');
				$(this).find('p').css('color', '#333');
			}
			
		});
</script>
</body>
</html>