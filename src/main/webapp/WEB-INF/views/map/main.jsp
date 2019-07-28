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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <style>
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
                    <input type="text" disabled="disabled" style="position: absolute; left:70px; top: 23px; z-index:1000;" id="text-addr">
	                <button id="location-button" class="btn btn-default btn-sm" style="position: absolute; left:0; top: 20px; z-index: 1000;">현재위치</button>
                    </div>
                </div> 
             
              
            </div>            
        </div>
        
    </div>
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c15f1b097ded46b54909fe59a2a59f85&libraries=services,clusterer,drawing"></script>
	<script>
	
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
	
		// 맵 생성
		var container = document.getElementById('map');
		var lat; // 위도
		var lng; // 경도
		
		var options = {
			center: new kakao.maps.LatLng(37.581854899999996, 126.98633099999998),
			level: 5
			
		};
		
		var map = new kakao.maps.Map(container, options);
		
		var markers = [];
		
		// 캠핑 이름 클릭시 위도 경도 획득 및 마커 지우기
		$(".camping-list").on('click', '.campsite-name', function(event){
			//marker.setMap(null); 마커 지우기 어떻게 작동해야하나
			var abc = $(this).children('.sbjcat').text();
			console.log(abc);
			if(markers != null){
					setMarkers(null);
			}
			
			lat = $(this).attr('data-lat');
			lng = $(this).attr('data-lng');
			 
			event.preventDefault();
			
			// var markerPosition  = new kakao.maps.LatLng(lat, lng); 
	
			var imageSrc = 'resources/images/maptent1.svg', // 마커이미지의 주소입니다    
		    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
		    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
		     
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
		   	//markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); 
		    var markerPosition  = new kakao.maps.LatLng(lat, lng); 
			
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition,
			    image: markerImage // 마커 이미지 설정
			});	 
			// 마커를 지도에 표시.
				marker.setMap(map);
				markers.push(marker);
			// 해당 마커로 위도,경도로 이동.
				setCenter(lat,lng);
			// 하이브리드 맵으로 변경
				map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
		});


		// 현재위치 정보
		$("#location-button").click(function(){
			if(markers != null){
				setMarkers(null);
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
		
		})
	</script>
</body>
</html>