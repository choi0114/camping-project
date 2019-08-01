<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>리스트</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <style>
    .wico{
     position: absolute;
    z-index: 10;
    left: -78px;
    top: -100px;
    }
    .today_weather{
        position: absolute;
	    top: 0px;
	    left: 1px;
	    z-index: 1;
    }
    .wwtemp{
    	position: absolute;
	    top: -59px;
	    left: -1px;
	    font-size: 22px;
	    color: #fff;
	    display: inline-block;
	    background: #000;
	    background: rgba(0,0,0,.6);
	    letter-spacing: -0.01em;
	    padding: 3px 10px 3px 43px;
	    z-index: 9;
	    font-weight: 600;
	    font-family: roboto;
	    border-radius: 5px;
    }
    .wwind{
    	    position: absolute;
		    top: -20px;
		    left: -1px;
		    background: #fff;
		    background: rgba(255,255,255,.8);
		    font-size: 11px;
		    padding: 2px 10px 2px 33px;
		    font-weight: 500;
    }
    .darkamap{
    	opacity: .2;
    	background-color: black;
    }
     .close{
            color: white;
            padding-top: 7px;
            padding-right:7px;
            opacity: .5	!important;
        }
       #poswrap {
            width: 440px;
            position: absolute;
            left: -205px;
            bottom: 80px;
            text-align: left;
            font-size: 14px;
            line-height: 1.5;
            box-shadow: 6px 6px 35px rgba(0,0,0,.65);
     		z-index:3;       
        }

        .cat3 {
            color: #3399ff;
        }

        .info .cat {
            display: inline-block;
            padding: 0 8px;
            height: 18px;
            font-weight: 700;
        }

        .title {
            background: #000;
            color: #fff;
            border: none;
            font-size: 15px;
            letter-spacing: -0.02em;
            padding: 0 0 0 10px;
            margin: 0;
            height: 40px;
            line-height: 40px
        }

        .body {
            background: #fff;
            height: 150px;
            position: relative;
            overflow: hidden;
        }

        .img {
            position: absolute;
            top: 10px;
            left: 10px;
            width: 125px;
            height: 80px;
            border: 1px solid #ddd;
            color: #888;
            overflow: hidden;
            /*background: #ccc url(./image/nothumb.svg) no-repeat center center;*/
            background-size: 30%;
        }

        .desc {
            position: relative;
            margin: 10px 0 0 150px;
            width: 275px;
            height: 140px;
        }

        .fa {
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            font-size: inherit;
            text-rendering: auto;
        }

        .jibun {
            padding-bottom: 10px;
        }

        .body .btn_vote_scrap {
            position: absolute;
            bottom: 14px;
            left: 10px;
            width: 125px;
            text-align: center;
        }

        .btn_vote_scrap a {
            color: #666;
        }

        .btn_vote_scrap a:link {
            text-decoration: none;
        }

        .btn_vote_scrap a:visited {
            text-decoration: none;
        }

        .btn_vote_scrap a:hover {
            text-decoration: none;
        }
 	.overlay_info {border-radius: 6px; margin-bottom: 12px; float:left;position: relative; border: 1px solid #ccc; border-bottom: 2px solid #ddd;background-color:black;color: white;}
    .address2{
    	font-weight: bold;
    }
        ul{
          margin: 7px 0px 0px 0px;
          padding: 0;
          font-weight: 400;
    }
        li {
            height: 18px;
            line-height: 18px;
            list-style: none;
            text-align: left;
        }
        .new {
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
            border-radius: 7px;
        }
        .tm{
            border-radius: 7px;
            display: block;
            transition: .3s ease-in-out;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 0
        }
    .cont {
        font-size: 12px;
        letter-spacing: -0.01em;
        margin-bottom: 5px;
        line-height: 1.5;
        font-weight: 400;
        }
        .distance{
                display: inline-block;
                font-weight: bold;
                font-size: 12px;
                color: #ff6000;
        }
        .camping-list{
        margin: 0;
        padding: 22px 12px;
        position: relative;
        border-bottom: 1px #dedede solid; 
        }
        .location{
            color:#3EA9CD;
        }
        .subject a span.sbjcat {
            display: inline-block;
            font-size: 12px;
            padding: 0 9px;
            height: 20px;
            line-height: 21px;
            color: #fff;
            vertical-align: top;
            margin: 4px 5px 0 0;
        }
    .subject a span.sbjcat3 { 
        background: #3789de;
        }
    .subject a span.sbjcat2{ 
    	background: #59DA50;
    }
    .subject a span.sbjcat1{
    	background: #FF9436;
    }
    
    .content .subject {
        font-size: 20px;
        letter-spacing: -0.03em;
        margin-bottom: 5px;
        font-weight: 600;
        
        }
        .left-photo{
            float: left;
            display:inline-block;
            position: relative;


        }
        .content{
                position: relative;
                margin-left: 180px;
        }
        
     
        .total{
            font-size: 15px;
            margin-bottom: 2px;
        }
        select{

            outline: none;
            min-width: 70px;
            height: 36px;
            width: 150px;
            padding: 4px 40px 6px 15px;
            border: 1px solid #bbb;
            font-size: 14px;
            line-height: 19px;
            color: #444;
            -webkit-appearance: none;
            background-color: #fff;
            font-weight: 400px;
            background: url(/camping/resources/images/list2.png) 100%  no-repeat;
            border: none;
        }
       
    .btn-default.active:focus, .btn-default.active:hover{
    	background-color: #FFA648;
    	color: white;
    	font-weight: bold;
    }
    	.pos{
		position: relative;
		top:0px;
		left:100px;
    	}
        .container{
            width: 100%;
        }
        .list-total{
            
        }
        .btn-xs{
                height: 30px;
                line-height: 30px;
                color: #333;
                font-size: 11px;
                display: inline-block;
                padding: 0 10px;
                border-style: none;
             }
        
        .total-list{

            padding-bottom: 3px;
        }
       
        .sear-box{
            border-bottom: 1px #dedede solid;
        }
        .camping{
            border-right: 2px #dedede solid;
        }
        .total-list{
              border-bottom: 1px #dedede solid;
        }
        .abc{
              border-bottom: 1px #dedede solid;
        }
        a:hover{text-decoration: none;}
        .list-box{
        	padding-bottom: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-12"> <!-- 총 12 나눔 -->
                <div class="col-sm-4 camping">
                <!-- 그 안에 3 / 8로 나눔 -->
               
                	<div class="col-sm-3 col-xs-2 text-left total-list" style="padding-top: 6px;">	<!-- 3 안에 2 / 10 으로 나눔 <-->
                	    <img src="resources/images/list.png" width="15%">
                		<span class="total" id="total-list">${campCounts } 개</span>
                	</div> 
                	<div class="col-sm-9 text-right abc">
	                   <div id="btn-group">
	                    <a href="map.camp?status=update&city=${param.city }" class="btn ${empty param.status || param.status eq 'update' ? 'btn-success' :'btn-default' } btn-xs" id="update">업데이트순</a>
	                    <a href="map.camp?status=like&city=${param.city }" class="btn ${param.status eq 'like' ? 'btn-success' :'btn-default' } btn-xs" id="like">추천순</a>
	                    <a href="map.camp?status=price&city=${param.city }" class="btn ${ param.status eq 'price' ? 'btn-success' :'btn-default' } btn-xs" id="price">가격순</a>
	                    <a href="map.camp?status=comment&city=${param.city }" class="btn ${param.status  eq 'comment' ? 'btn-success' :'btn-default' } btn-xs" id="comment">댓글순</a>
	                   </div>
                	</div>
                	<div class="row">
                			<img id="loading" src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif" style="z-index: 1000; position: absolute; 
                			left:1050px; top:300px;">;
                	    <div class="col-sm-12 text-left sear-box">
                	   <form method="post" action="#">
                           <select class="searchSelect" id="selectState" name="state">
	                            <option value="">전국</option>
	                            <option value="서울" ${param.city eq '서울' ? 'selected' : "" }>서울</option>
	                            <option value="경기" ${param.city eq '경기' ? 'selected' : "" }>경기</option>
	                            <option value="인천" ${param.city eq '인천' ? 'selected' : "" }>인천</option>
	                            <option value="부산" ${param.city eq '부산' ? 'selected' : "" }>부산</option>
	                            <option value="세종" ${param.city eq '세종' ? 'selected' : "" }>세종</option>
	                            <option value="대전" ${param.city eq '대전' ? 'selected' : "" }>대전</option>
	                            <option value="충청" ${param.city eq '충청' ? 'selected' : "" }>충청도</option>
	                            <option value="경상" ${param.city eq '경상' ? 'selected' : "" }>경상도</option>
	                            <option value="전라" ${param.city eq '전라' ? 'selected' : "" }>전라도</option>
	                            <option value="제주도" ${param.city eq '제주도' ? 'selected' : "" }>제주도</option>
                           </select>
                	   </form>
                	    </div>
                	</div>
               
                    
                	<div class="row camping-list" style="overflow: scroll; height: 833px; max-height: 833px;">
                	<c:forEach var="campsite" items="${campsites }">                	
                	       <div class="col-sm-12 col-xs-4 list-box">   
                               <div class="left-photo">
                                    <img src="resources/images/update.png" class="new">
                                    <img class="tm" src="resources/images/camping.png"> <!-- 캠핑 사진-->                                  
                               </div>
                               <div class="content">
                                   <div class="subject">	
	
                                    <a href="#" class="campsite-name" data-Lat="${campsite.latitude }" data-lng="${campsite.longitude }">
                                    <c:if test="${campsite.sort eq 'CAMP' }">
                                		<span class="sbjcat sbjcat3">글램핑</span><!--캠핑장분류--> 
                                    </c:if>
                                     <c:if test="${campsite.sort eq 'NOMAL' }">
                                		<span class="sbjcat sbjcat2">캠핑장</span><!--캠핑장분류--> 
                                    </c:if>
                                     <c:if test="${campsite.sort eq 'CAR' }">
                                		<span class="sbjcat sbjcat1">카라반</span><!--캠핑장분류--> 
                                    </c:if>
									                                
                                     	${campsite.name } <!-- 캠핑장 이름 -->
                                    </a>
                                   </div>
                                   <div class="cont"> <!-- 캠핑장 주소 -->
                                      <p class="location">
                                         	
                                          <span class="address2">${campsite.sido }</span>
                                      </p>
                                      <ul>
                                        <li class="address">${campsite.address }</li>         
                                        <li class="tel">${campsite.tel }</li>                                 
                                      </ul>
                                   </div>
                               </div>              	       
                        </div> <!-- 돌려야할곳 -->
                	</c:forEach>
                	</div>
           
                </div>
                <div class="col-sm-8">
                    <div id="map" style="width: 100%; height: 900px; position:relative;">
                    <input id="location" type="text" disabled="disabled" style="position: absolute; left:70px; top: 23px; z-index:1000;" id="text-addr">
	                <button id="location-button" class="btn btn-default btn-sm" style="position: absolute; left:0; top: 20px; z-index: 1000;">현재위치</button>
                    </div>
                </div> 
            </div>            
        </div>
        
    </div>
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c15f1b097ded46b54909fe59a2a59f85&libraries=services,clusterer,drawing"></script>
	<script>
			// 맵 생성
			var container = document.getElementById('map');
			var lat; // 위도
			var lng; // 경도
			
			var options = {
				center: new kakao.maps.LatLng(37.581854899999996, 126.98633099999998),
				level: 10,
				minLevel: 4,
				maxLevel: 10
				
			};
			
			var map = new kakao.maps.Map(container, options); 
			// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
			var mapTypeControl = new kakao.maps.MapTypeControl();
		
			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			
				
			function ovelay(maker,map,overlay){ // 클릭 시 어느 마크에 오버레이 등록하는 함수
				kakao.maps.event.addListener(maker, 'click', function() { // 해당 마커에 클릭 이벤트 등록
					overlay.setMap(map); // 해당 오버레이를 등록
				})
			}
			// 위도,경도로 이동
			function setCenter(lat,lng){
				var moveLatLng = new kakao.maps.LatLng(lat,lng);
					
				map.setCenter(moveLatLng);
			}
		
			// 배열에 담긴 마커 지우기
			function setMarkers(map){ 
			    for(var i=0; i<markers.length;i++){
			        markers[i].setMap(map);
			    }
			}
			// 전체 담긴 마커배열 지우기
			function setMarkers2(map){ 
			    for(var i=0; i<markers2.length;i++){
			        markers2[i].setMap(map);
			    }
			}
			function setMarkers3(map){ 
			    for(var i=0; i<markers3.length;i++){
			        markers3[i].setMap(map);
			    }
			}
		$('#selectState').change(function(){
			location.href ="map.camp?city=" + $(this).val() + "&satus=update";
		});

		var page = 2;
		var dataloading = false;
		var dosi = $("#selectState option:selected").val();
		
		$('.camping-list').scroll(function() {
			var scrollTop = $(this).scrollTop();
			var boxheight = $(this).height();
			var listheight = 0;	
			var stat = $('#btn-group .btn-success').attr("id");
			
			$(this).find('.list-box').each(function(index, box) {
				listheight += $(box).height();
			})
				
			if (!dataloading) {
				
				if((boxheight+scrollTop+100) > listheight){
					
					$.ajax({
						type:"GET",
						url:"maplist.camp",
						data:{cp:page , city:dosi , status:stat},
						dataType:"json",
						beforeSend: function() {
							dataloading = true;
						},
						complete: function() {
							dataloading = false;
						},
						success:function(result){
							console.log("새 데이터 도착............")
							page++;
	
							$.each(result , function(index , list){
								
								var sort;
								if (list.sort == 'CAMP'){
									sort = "<span class='sbjcat sbjcat3'>글램핑</span>";
								}else if(list.sort == "NOMAL"){
									sort = "<span class='sbjcat sbjcat2'>캠핑장</span>";
								}else{
									sort ="<span class='sbjcat sbjcat1'>카라반</span>";
								}
								
								var row = "<div class='col-sm-12 col-xs-4 list-box'>";
									row+= "<div class='left-photo'>";
									row+= "<img src='resources/images/update.png' class='new'>";
									row+= "<img class='tm' src='resources/images/camping.png'>";
									row+= "</div>";
									row+= "<div class='content'>";
									row+= "<div class='subject'>";
									row+= "<a href='#' class='campsite-name' data-Lat='"+list.latitude+"' data-lng='"+list.longitude+"'>";
									row+= sort;
									row+= list.name;
									row+="</a>";
									row+="</div>";
									row+="<div class='cont'>";
									row+="<p class='location'>";
									row+="<span class='address2'>"+list.sido+"</span>";
									row+="</p>";
									row+="<ul>";
									row+="<li class='address'>"+list.address+"</li>";
									row+="<li class='tel'>"+list.tel+"</li>";
									row+="</ul>";
									row+="</div>";
									row+="</div>";
									
								$(".camping-list").append(row);
							});
						}
					});
				}
			}
			
		});
	
			$(".btn-group a").click(function(){ // active 클래스 추가
				$(this).addClass("active").siblings().removeClass("active");
			})
		
		// ↓ KAKAO MAP 스크립트
		
		var prevClickedMarker=null;
		var bigMarker=null;
		var prevcustovlay=null;
		var newcustovlay=null;
		// 리스트 클릭해서 보여지는 마커 위도 경도를 담을 배열
		var markers = [];
		// 전체 마커 위도 경도를 담을 배열
		var markers2 = [];
		// 드래그 할 때 새로 나오는 마커들 담을 배열
		var markers3 = [];
		//  맵에서 클릭 했을 때 담을 마커
		var clickmarkers = [];
		// 원 지름 ( 반경 내에 마커 찍기 위해서)
		var radius = 50000;
		// 페이지 들어오자마자 반경 내에 마커 찍기 
		$(function(){
			$.ajax({
				type:"GET",
				url:"mapAllList.camp",
				dataType:"json",
				beforeSend:function(){
					$('#map').addClass('darkamap');

				},
				complete:function(){
					$('#map').removeClass('darkamap');
					$('#loading').hide();
				},
				success:(function(data){
					$.each(data , function(index , list){
						var name = list.name;
						var iwContent = '<div class="overlay_info">';
						iwContent += "<strong>"+list.name+"</strong>";
						iwContent += '</div>';
						
				    	var latitude = list.latitude;
				    	var longitude = list.longitude;
				    	
						var content = '<div id="poswrap">';
						content +="<div class='today_weather'>";
						content +="<span class='fwimg'><img src='' class='wico'></span>";
						content +="<span class='wtemp'></span>";
						content += "<span class='ww'></span>";
						content += "</div>";
						content +="<div class='info'>";
						content +="<div class='title'> <span class='cat cat3'>글램핑/카라반</span>";
						content +=list.name;
						content +="<div class='close' title='닫기'>X</div>";
						content +="</div>";
						content +="<div class='body'>";
						content += "<div class='img'> <img src='https://www.5gcamp.com/files/camping//2018/10/14/b83cb7183f6b48f810610b521b49a2e3.jpg' width='125' height='80' class='tm'></div>"
						content += "<div class='btn_vote_scrap'>"
						content +="<div style='float: right'>"
						content +="<a href='#'>"
						content +="<i class='fa fa-bookmark-o' aria-hidden='true'></i>"
						content +="좋아요";
						content +="<span id='scrap_count_914' class='scrap_count'>0</span>"
						content +="</a>";
						content +="</div>";
						content +="<div style='float: right;'>"
						content +="<a href='#'>"
						content +="<i class='fa fa-flag-o' aria-hidden='true'></i>"
						content += "싫어요"
						content += "<span id='conquest_count_914' class='scrap_count'>0&nbsp;&nbsp;&nbsp;&nbsp;</span>"
						content += "</a>";
						content += "</div>";
						content +="</div>";
						content +="<div class='desc'>"
						content +="<div class='jibun'>"+list.address+"</div>"
						content+="<i class='fa fa-phone-square' aria-hidden='true'>"+list.tel+"</i>"
						content+="</div>";
						content+="</div>";
						content+="</div>";
						content+="</div>";

						// 마커의 위치를 지정한다.
						var markerPosition  = new kakao.maps.LatLng(list.latitude, list.longitude); 
			 			
						var imageicon;
						var campsort = list.sort;
				
						if(campsort == 'NOMAL'){
							imageicon = 'resources/images/tent2.png';
						}else if(campsort == 'CAMP'){
							imageicon = 'resources/images/tent1.png';
						}else{
							imageicon = 'resources/images/tent3.png'; // 카라반 
						} 
						
	 					// 마커 이미지 설정
		    		 	 var imageSrc = imageicon, // 마커이미지의 주소입니다    
					    imageSize = new kakao.maps.Size(30, 30), // 마커이미지의 크기입니다
					    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
					    
					    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
							    position: markerPosition,
							    clickable:true,
							    image:markerImage
							})	
						
						markers2.push(marker);
						
						var c1 = map.getCenter();
					    var c2 = marker.getPosition();
					    var poly = new kakao.maps.Polyline({
					      // map: map, 을 하지 않아도 거리는 구할 수 있다.
					      path: [c1, c2]
					    });
					    var dist = poly.getLength(); // m 단위로 리턴
					    if (dist < radius) {
					    	
					    	// 오버레이 생성
				 	    	var overlay = new kakao.maps.CustomOverlay({
					    	    content: iwContent,
					    	    position: marker.getPosition(), 
					    	    xAnchor: 0.62,
					    	    yAnchor: 3.0
					    	}); 
					    	
					    	// 마커에 마우스 올리면 보이게 하고
					    	kakao.maps.event.addListener(marker, 'mouseover', function() {
					    	     overlay.setMap(map);
					    	});
					    	// 마커에서 마우스 내리면 사라지게 한다.
					    	kakao.maps.event.addListener(marker, 'mouseout', function() {
					    	     overlay.setMap(null); 
					    	});
					    	
					    	
					    	kakao.maps.event.addListener(marker, 'click', function() {

								if(prevcustovlay){ // 클릭 했던 오버레이가 있으면 
					    			prevcustovlay.setMap(null);  // 현재 오버레이를 삭제
					    		}
								if(prevClickedMarker){
									prevClickedMarker.setImage(markerImage)
								}
								// 날씨 구하기
								var grid = dfs_xy_conv('toXY', list.latitude, list.longitude);
								weathers(grid.x, grid.y);
								
								
						    // 클릭 커스텀 오버레이
							var customeroverlay = new kakao.maps.CustomOverlay({
								content: content,
							    position: marker.getPosition(),
								xAnchor: 0.62,
						    	yAnchor: 3.0
							});
						    
						   	 // 커스텀오버레이 생성 및 배열에 담기
								prevcustovlay = customeroverlay;
								prevcustovlay.setMap(map);
						    	
						    	var latitude = list.latitude;
						    	var longitude = list.longitude;
						    	
						    	// 현재 클릭된 마커를 담는다.
								prevClickedMarker = marker;
								//---
								var image = changeImage(list.sort);
								
								marker.setImage(image);
								//---
								// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
								$('#map').on('click','.close', function(){
									customeroverlay.setMap(null);
								})
					    			
					    		setCenter(latitude,longitude); // 그 마커의 위치로 맵의 중심점(포커스)을 변경
					    		map.setLevel(2);
								map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
								prevcustovlay.setMap(map); // 오버레이 등록
					    	});
					    	marker.setMap(map);
					    }
					})
				})
			})
	    })
		
		// 드래그를 시작 할 때 실행되는 이벤트리스너
		kakao.maps.event.addListener(map,'dragstart',function(){
			if(prevcustovlay){  // 드래그 했을 때 오버레이가 남아있으면 
    			prevcustovlay.setMap(null); // 오버레이를 삭제
    		}
		})
		
		
		// 드래그 끝날 때 마다 위도 경도 얻고 맵을 새로 찍는다.
		 kakao.maps.event.addListener(map, 'dragend', function() {
		    // 지도 중심좌표를 얻어옵니다 
		    var latlng = map.getCenter(); 
			    if(markers2 != null){
					setMarkers2(null); // 처음에 전체를 담았던 배열을 지운다.
				    }
			
				if(markers3 != null){ // 드래그 할 때 마다 새로 얻은 마크가 있다면 
					setMarkers3(null); // 마커들을 지운다.
				}
				if(markers != null){
					setMarkers(null);
				}
				
			$.ajax({
				type:"GET",
				url:"mapAllList.camp",
				dataType:"json",
				beforeSend:function(){
					$('#map').addClass('darkamap');
				},
				complete:function(){
					$('#map').removeClass('darkamap');
					$('#loading').hide();
				},
				success:(function(data){
					$.each(data , function(index , list){
						var name = list.name;
						var iwContent = '<div class="overlay_info">';
						iwContent += "<strong>"+list.name+"</strong>";
						iwContent += '</div>';

						var content = '<div id="poswrap">';
						content +="<div class='today_weather'>";
						content +="<span class='fwimg'><img src='' class='wico'></span>";
						content +="<span class='wtemp'></span>";
						content += "<span class='ww'></span>";
						content += "</div>";
						content +="<div class='info'>";
						content +="<div class='title'> <span class='cat cat3'>글램핑/카라반</span>";
						content +=list.name;
						content +="<div class='close' title='닫기'>X</div>";
						content +="</div>";
						content +="<div class='body'>";
						content += "<div class='img'> <img src='https://www.5gcamp.com/files/camping//2018/10/14/b83cb7183f6b48f810610b521b49a2e3.jpg' width='125' height='80' class='tm'></div>"
						content += "<div class='btn_vote_scrap'>"
						content +="<div style='float: right'>"
						content +="<a href='#'>"
						content +="<i class='fa fa-bookmark-o' aria-hidden='true'></i>"
						content +="좋아요";
						content +="<span id='scrap_count_914' class='scrap_count'>0</span>"
						content +="</a>";
						content +="</div>";
						content +="<div style='float: right;'>"
						content +="<a href='#'>"
						content +="<i class='fa fa-flag-o' aria-hidden='true'></i>"
						content += "싫어요"
						content += "<span id='conquest_count_914' class='scrap_count'>0&nbsp;&nbsp;&nbsp;&nbsp;</span>"
						content += "</a>";
						content += "</div>";
						content +="</div>";
						content +="<div class='desc'>"
						content +="<div class='jibun'>"+list.address+"</div>"
						content+="<i class='fa fa-phone-square' aria-hidden='true'>"+list.tel+"</i>"
						content+="</div>";
						content+="</div>";
						content+="</div>";
						content+="</div>";

						// 마커의 위치를 지정한다.
						var markerPosition  = new kakao.maps.LatLng(list.latitude, list.longitude); 
						var imageicon;
						var campsort = list.sort;
				
						if(campsort == 'NOMAL'){
							imageicon = 'resources/images/tent2.png';
						}else if(campsort == 'CAMP'){
							imageicon = 'resources/images/tent1.png';
						}else{
							imageicon = 'resources/images/tent3.png'; // 카라반 
						} 
						
	 					// 마커 이미지 설정
		    		 	 var imageSrc = imageicon, // 마커이미지의 주소입니다    
					    imageSize = new kakao.maps.Size(30, 30), // 마커이미지의 크기입니다
					    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
					    
					    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
							    position: markerPosition,
							    clickable:true,
							    image:markerImage
							})	
						markers2.push(marker);
						
						var c1 = map.getCenter();
					    var c2 = marker.getPosition();
					    var poly = new kakao.maps.Polyline({
					      // map: map, 을 하지 않아도 거리는 구할 수 있다.
					      path: [c1, c2]
					    });
					    var dist = poly.getLength(); // m 단위로 리턴
					    if (dist < radius) {
					    	
					    	// 오버레이 생성
				 	    	var overlay = new kakao.maps.CustomOverlay({
					    	    content: iwContent,
					    	    position: marker.getPosition(), 
					    	    xAnchor: 0.62,
					    	    yAnchor: 3.0
					    	}); 
					    	// 마커에 마우스 올리면 보이게 하고
					    	kakao.maps.event.addListener(marker, 'mouseover', function() {
					    	     overlay.setMap(map);
					    	});
					    	// 마커에서 마우스 내리면 사라지게 한다.
					    	kakao.maps.event.addListener(marker, 'mouseout', function() {
					    	     overlay.setMap(null); 
					    	});
					    	
					    	kakao.maps.event.addListener(marker, 'click', function() {
								var grid = dfs_xy_conv('toXY', list.latitude, list.longitude);
								weathers(grid.x, grid.y);
								
								if(prevcustovlay){ // 클릭 했던 오버레이가 있으면 
					    			prevcustovlay.setMap(null);  // 현재 오버레이를 삭제
					    		}
								if(prevClickedMarker){
									prevClickedMarker.setImage(markerImage)
								}
							    // 클릭 커스텀 오버레이
								var customeroverlay = new kakao.maps.CustomOverlay({
									content: content,
								    position: marker.getPosition(),
									xAnchor: 0.62,
							    	yAnchor: 3.0
								});
							    
							   	 // 커스텀오버레이 생성 및 배열에 담기
									prevcustovlay = customeroverlay;
									prevcustovlay.setMap(map);
							    	
							    	var latitude = list.latitude;
							    	var longitude = list.longitude;
							    	console.log(latitude);
							    	// 현재 클릭된 마커를 담는다.
									prevClickedMarker = marker;
									var image = changeImage(list.sort);
									
									marker.setImage(image);
									
									// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
									$('#map').on('click','.close', function(){
										customeroverlay.setMap(null);
									})
						    		setCenter(latitude,longitude); // 그 마커의 위치로 맵의 중심점(포커스)을 변경
						    		map.setLevel(2);
						    		// 하이브리드 맵으로 변경
									map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
									prevcustovlay.setMap(map); // 오버레이 등록
						    	});
						    	marker.setMap(map);
					    }
					})
				})
			})
		})
			function changeImage(sort){
			
					if(sort == 'CAMP'){
			    		newIconSrc = 'maptent1.svg';
					}else if(sort == '캠핑장'){
						newIconSrc = 'maptent3.svg';
					}else{
						newIconSrc = 'maptent2.svg'; // 카라반 
					}
			    	
			    	var imageSrc = 'resources/images/'+newIconSrc, // 마커이미지의 주소입니다    
					imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
					imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
					    
					var clickImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
					
					return clickImage;
			}
		// 캠핑 이름 클릭시 위도 경도 획득 및 마커 지우기
		$(".camping-list").on('click', '.campsite-name', function(event){
			event.preventDefault();
			//marker.setMap(null); 마커 지우기 어떻게 작동해야하나
		    if(markers2 != null){
				setMarkers2(null); // 처음에 전체를 담았던 배열을 지운다.
			    }
			if(markers3 != null){ // 드래그 할 때 마다 새로 얻은 마크가 있다면 
				setMarkers3(null); // 마커들을 지운다.
			}
			if(markers != null){
				setMarkers(null);
			}

			lat1 = $(this).attr('data-lat');
			lng1 = $(this).attr('data-lng');
			// 클릭한 캠핑장의 위도 경도
			var thisMarkerPosition  = new kakao.maps.LatLng(lat1, lng1);
			
			var icon;  // 아이콘 이미지 저장객체
			var sort = $(this).children('.sbjcat').text();
			if(sort == '글램핑'){
				icon = 'maptent1.svg';
			}else if(sort == '캠핑장'){
				icon = 'maptent3.svg';
			}else{
				icon = 'maptent2.svg'; // 카라반 
			}
			var imageSrc = 'resources/images/'+icon, // 마커이미지의 주소입니다  
		    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
		    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
		     
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
		   	markerPosition = new kakao.maps.LatLng(lat1, lng1); 
			
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition,
			    image: markerImage // 마커 이미지 설정
			});	 
		
			// 마커를 지도에 표시.
				marker.setMap(map);
			// 배열에 담는다.
				markers.push(marker);
			// 해당 마커로 위도,경도로 이동.
				setCenter(lat1,lng1);
			// 하이브리드 맵으로 변경
				map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
			// 맵 레벨 변경
				map.setLevel(2);
			
				
				kakao.maps.event.addListener(marker, 'click', function() {
					
					console.log(thisMarkerPosition)
					if(prevcustovlay){
						prevcustovlay.setMap(null)
					}
					$.ajax({
						type:"GET",
						url:"mapLatLng.camp",
						data:{lat:lat1 , lng:lng1},
						dataType:"json",
						success:(function(list){
												
							var grid = dfs_xy_conv('toXY', lat1, lng1);
							weathers(grid.x, grid.y);
							var content = '<div id="poswrap">';
							content +="<div class='today_weather'>";
							content +="<span class='fwimg'><img src='' class='wico'></span>";
							content +="<span class='wtemp'></span>";
							content += "<span class='ww'></span>";
							content += "</div>";
							content +="<div class='info'>";
							content +="<div class='title'> <span class='cat cat3'>글램핑/카라반</span>";
							content +=list.name;
							content +="<div class='close' title='닫기'>X</div>";
							content +="</div>";
							content +="<div class='body'>";
							content += "<div class='img'> <img src='https://www.5gcamp.com/files/camping//2018/10/14/b83cb7183f6b48f810610b521b49a2e3.jpg' width='125' height='80' class='tm'></div>"
							content += "<div class='btn_vote_scrap'>"
							content +="<div style='float: right'>"
							content +="<a href='#'>"
							content +="<i class='fa fa-bookmark-o' aria-hidden='true'></i>"
							content +="좋아요";
							content +="<span id='scrap_count_914' class='scrap_count'>0</span>"
							content +="</a>";
							content +="</div>";
							content +="<div style='float: right;'>"
							content +="<a href='#'>"
							content +="<i class='fa fa-flag-o' aria-hidden='true'></i>"
							content += "싫어요"
							content += "<span id='conquest_count_914' class='scrap_count'>0&nbsp;&nbsp;&nbsp;&nbsp;</span>"
							content += "</a>";
							content += "</div>";
							content +="</div>";
							content +="<div class='desc'>"
							content +="<div class='jibun'>"+list.address+"</div>"
							content+="<i class='fa fa-phone-square' aria-hidden='true'>"+list.tel+"</i>"
							content+="</div>";
							content+="</div>";
							content+="</div>";
							content+="</div>";
							
							var customeroverlay = new kakao.maps.CustomOverlay({
								content: content,
							    position: thisMarkerPosition,
								xAnchor: 0.62,
						    	yAnchor: 3.0
							});
							// x,y 좌표 구하기 
							//var grid = dfs_xy_conv('toXY', lat1, lng1);
							prevcustovlay =customeroverlay;
							prevcustovlay.setMap(map);
						})
					}) 
				});

				// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
				$('#map').on('click','.close', function(){
					prevcustovlay.setMap(null);
				})
			kakao.maps.event.trigger(marker, 'click', null);
		});

		// 현재위치 정보
		$("#location-button").click(function(){
			if(markers != null){
				setMarkers(null);
				}
			if(markers2 != null){
				setMarkers2(null);
			}
			if (navigator.geolocation) {
			    
			    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
			    navigator.geolocation.getCurrentPosition(function(position) {
			        
			        var lat = position.coords.latitude, // 위도
			            lon = position.coords.longitude; // 경도
			        
			        var locPosition = new kakao.maps.LatLng(lat, lon)// 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			        
			        // 현재 위치의 위도, 경도를 주소로 변환
				    var geocoder = new kakao.maps.services.Geocoder();
	
				    var callback = function(result, status) {
				        if (status === kakao.maps.services.Status.OK) {
	
				            var address = result[0].address_name; // 행정동 이름
				            $("#text-addr").val(address);  // Text 셋팅
				        }
				    };
				    
			  		geocoder.coord2RegionCode(lon, lat, callback);
			  	  
			        // 마커
			        displayMarker(locPosition);
			        map.setLevel(2);
			    
			      });

			} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
			    
			    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667)    
			        
			    displayMarker(locPosition);
			}

			// 지도에 마커와 인포윈도우를 표시하는 함수입니다
			function displayMarker(locPosition, message) {

			    // 마커를 생성합니다
			    var marker = new kakao.maps.Marker({  
			        map: map, 
			        position: locPosition
			    }); 
			    markers.push(marker);
			    // 지도 중심좌표를 접속위치로 변경합니다
			    map.setCenter(locPosition);      
			
			}
		});
		
		
	    //----------------------------------------------------------
	    // 기상청 홈페이지에서 발췌한 변환 함수
	    //
	    // LCC DFS 좌표변환을 위한 기초 자료
	    //
	    var RE = 6371.00877; // 지구 반경(km)
	    var GRID = 5.0; // 격자 간격(km)
	    var SLAT1 = 30.0; // 투영 위도1(degree)
	    var SLAT2 = 60.0; // 투영 위도2(degree)
	    var OLON = 126.0; // 기준점 경도(degree)
	    var OLAT = 38.0; // 기준점 위도(degree)
	    var XO = 43; // 기준점 X좌표(GRID)
	    var YO = 136; // 기1준점 Y좌표(GRID)

		// LCC DFS 좌표변환 ( code : 
		//          "toXY"(위경도->좌표, v1:위도, v2:경도), 
		//          "toLL"(좌표->위경도,v1:x, v2:y) )
		//

	    function dfs_xy_conv(code, v1, v2) {
	        var DEGRAD = Math.PI / 180.0;
	        var RADDEG = 180.0 / Math.PI;
	        
	        var re = RE / GRID;
	        var slat1 = SLAT1 * DEGRAD;
	        var slat2 = SLAT2 * DEGRAD;
	        var olon = OLON * DEGRAD;
	        var olat = OLAT * DEGRAD;
	        
	        var sn = Math.tan(Math.PI * 0.25 + slat2 * 0.5) / Math.tan(Math.PI * 0.25 + slat1 * 0.5);
	        sn = Math.log(Math.cos(slat1) / Math.cos(slat2)) / Math.log(sn);
	        var sf = Math.tan(Math.PI * 0.25 + slat1 * 0.5);
	        sf = Math.pow(sf, sn) * Math.cos(slat1) / sn;
	        var ro = Math.tan(Math.PI * 0.25 + olat * 0.5);
	        ro = re * sf / Math.pow(ro, sn);
	        var rs = {};
	        if (code == "toXY") {
	            rs['lat'] = v1;
	            rs['lng'] = v2;
	            var ra = Math.tan(Math.PI * 0.25 + (v1) * DEGRAD * 0.5);
	            ra = re * sf / Math.pow(ra, sn);
	            var theta = v2 * DEGRAD - olon;
	            if (theta > Math.PI) theta -= 2.0 * Math.PI;
	            if (theta < -Math.PI) theta += 2.0 * Math.PI;
	            theta *= sn;
	            rs['x'] = Math.floor(ra * Math.sin(theta) + XO + 0.5);
	            rs['y'] = Math.floor(ro - ra * Math.cos(theta) + YO + 0.5);
	        }
	        else {
	            rs['x'] = v1;
	            rs['y'] = v2;
	            var xn = v1 - XO;
	            var yn = ro - v2 + YO;
	            ra = Math.sqrt(xn * xn + yn * yn);
	            if (sn < 0.0) - ra;
	            var alat = Math.pow((re * sf / ra), (1.0 / sn));
	            alat = 2.0 * Math.atan(alat) - Math.PI * 0.5;
	            
	            if (Math.abs(xn) <= 0.0) {
	                theta = 0.0;
	            }
	            else {
	                if (Math.abs(yn) <= 0.0) {
	                    theta = Math.PI * 0.5;
	                    if (xn < 0.0) - theta;
	                }
	                else theta = Math.atan2(xn, yn);
	            }
	            var alon = theta / sn + olon;
	            rs['lat'] = alat * RADDEG;
	            rs['lng'] = alon * RADDEG;
	        }
	        return rs;
	    }
	    
	  function weathers(a,b){
	    $.ajax({
	    	url:"mapWeather.camp",
	    	data:{x:a , y:b},
	    	dataType:'xml',
	    	timeout : 10000,
	    	success:function(result){
	    		var weatherInfos = $(result).find('data:first-child');
	    		// 온도
	    		var temp = $(weatherInfos).find('temp').text();
	    		// 강수확률
	    		var pop = $(weatherInfos).find('pop').text();
	    		// 풍향
	    		var ws = Math.round($(weatherInfos).find('ws').text() * 10)/10;
	    		// 날씨상태 (맑음,구름 조금,구름 많음,흐림,비,눈/비,눈)
				var wfKor = $(weatherInfos).find('wfKor').text();
	    		
	    		if(wfKor == '맑음'){
	    			$('.fwimg').find('img').attr('src', 'resources/images/weathers/am_Clear.png');
	    		}else if(wfKor == '구름 조금'){
	    			$('.fwimg').find('img').attr('src', 'resources/images/weathers/am_MostlyCloudy.png');
	    		}else if(wfKor == '구름 많음'){
	    			$('.fwimg').find('img').attr('src', 'resources/images/weathers/am_MostlyCloudy.png');
	    		}else if(wfKor == '흐림'){
	    			$('.fwimg').find('img').attr('src', 'resources/images/weathers/am_Cloudy.png');
	    		}else if(wfKor == '비'){
	    			$('.fwimg').find('img').attr('src', 'resources/images/weathers/am_Rain.png');
	    		}else if(wfKor == '눈/비'){
	    			$('.fwimg').find('img').attr('src', 'resources/images/weathers/am_Rain.png');
	    		}else if(wfKor == '눈'){
	    			$('.fwimg').find('img').attr('src', 'resources/images/weathers/am_Shower.png');
	    		}else{  // 소나기
	    			$('.fwimg').find('img').attr('src', 'resources/images/weathers/am_Shower.png');
	    		}
	    		$('.today_weather').fadeIn();
	    		$('.ww').addClass('wwind');
	    		$('.wtemp').addClass('wwtemp');
	    		$('.wwtemp').append(temp+"℃");
	    		$('.wwind').append('<span>풍향: '+ws+'m/s 강수확률: '+pop+'%</span>')
	    		
	    		
	    	}
	    })
	  }
	    
	</script>
</body>
</html>