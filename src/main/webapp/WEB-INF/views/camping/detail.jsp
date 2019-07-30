<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>5GCamping :: 캠핑장 상세</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript" src="http://d3js.org/d3.v3.min.js"></script>
    <script type="text/javascript" src="/camping/resources/js/liquidFillGauge.js"></script>
    <link rel="stylesheet" href="/camping/resources/css/campingdetail/detail.css">
</head>
<body>
	<div class="container">
		<div>
			<div class="row">
				<div class="col-sm-6">
					<p>업데이트 : 2019-07-17</p>
				</div>
				<div class="col-sm-6 text-right">
					<p>강원 > 삼척시 > 근덕면</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 page-header" style="border-bottom: 1px solid #25a5f0">
				<h3><strong style="color: #25a5f0">장호 비치 캠핑장</strong></h3>
			</div>
		</div>
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-12">
				<button class="btn btn-default">
					<span class="glyphicon glyphicon-heart-empty"></span>
					<span> | 찜 8</span>
				</button>
				<button class="btn btn-default" style="margin-left: 20px;">
					<span class="glyphicon glyphicon-thumbs-up"></span>
					<span> | 추천 0</span>
				</button>
				<button class="btn btn-default">
					<span class="glyphicon glyphicon-thumbs-down"></span>
					<span> | 비추천 0</span>
				</button>
				<button class="btn btn-default" style="margin-left: 20px;" id="opinion-btn">
					<span class="glyphicon glyphicon-pencil"></span>
					<span> | 의견 0</span>
				</button>
			</div>
		</div>
	</div>
	<div class="row" style="margin-bottom: 30px;">
		<div class="col-sm-10">
			<span class="glyphicon glyphicon-map-marker" style="margin-right: 10px;"></span>
			<strong style="color: #ff6000">241.3Km</strong> > 
			<strong>강원 삼척시 근덕면 삼척로 2116 (장호리, 장호국민여가캠핑장)</strong>
            <br/>
			<label class="label label-default">지번</label> 
            강원 삼척시 근덕면 장호리 217-2
		</div>
        <div class="col-sm-2 pull-right text-center" style="max-height: 100%;">
            <div>
                <button id="fine-dust-info-btn" style="background-color: #00c73c; color: #fff; display: inline-block; padding: 5px 10px; border-radius: 10px;">
                    <span style="font-size: 20px;">39</span>㎍/㎥<br/>미세먼지 보통
                </button>
            </div>
        </div>
    </div>
    <div class="row" style="margin-bottom: 40px;">
        <div class="col-sm-12">
            <span class="glyphicon glyphicon-earphone"></span> 
            <strong>033-576-0884 / 033-576-0885</strong>
        </div>
    </div>
    <div class="row text-center" id="info-button-box">
        <div class="col-sm-offset-2 col-sm-1">
            <a href="#">
            	<img src="/camping/resources/images/reservation.svg" width="45"/>
            </a>
            <p>실시간예약</p>
        </div>
        <div class="col-sm-1">
            <a href="#">
                <img src="/camping/resources/images/website.svg" width="45"/>
            </a>
            <p>웹사이트</p>
        </div>
        <div class="col-sm-1">
            <img src="/camping/resources/images/stick.png"/>
        </div>
        <div class="col-sm-1">
            <a href="#">
                <img src="/camping/resources/images/roadview.svg" width="45"/>
            </a>
            <p>로드뷰</p>
        </div>
        <div class="col-sm-1">
            <a href="#">
                <img src="/camping/resources/images/navigation.svg" width="45"/>
            </a>
            <p>길찾기</p>
        </div>
        <div class="col-sm-1">
            <img src="/camping/resources/images/stick.png"/>
        </div>
        <div class="col-sm-1">
            <a href="#">
                <img src="/camping/resources/images/share2.svg" width="45"/>
            </a>
            <p>공유하기</p>
        </div>
    </div>
    <div class="row" style="margin-top: 40px;">
        <div class="col-sm-6" style="padding-left: 0;">
            <div style="background-color: #555; float: left; padding: 5px 15px;">
                <span style="color: white; font-weight: 100;">주변 환경</span>
            </div>
            <div style="background-color: #b0b0b0; float: left; padding: 5px 15px;">
                <span style="color: white; font-weight: 100;">바다</span>
            </div>
            <div style="background-color: #555; float: left; padding: 5px 15px;">
                <span style="color: white; font-weight: 100;">바닥 종류</span>
            </div>
            <div style="background-color: #b0b0b0; float: left; padding: 5px 15px;">
                <span style="color: white; font-weight: 100;">데크, 파쇄석</span>
            </div>
        </div>
        <div class="col-sm-6 text-right" style="padding-top: 5px; padding-bottom: 5px;">
            <span>
                <img src="/camping/resources/images/weathers/sun.svg" width="18px;"/>
            </span>
            오늘 : 
            <span style="color: #ff6000"><strong>일출시간</strong> 05 : 15</span>
             ~ 
            <span style="color: #36f"><strong>일몰시간</strong> 19 : 41</span>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 text-center" id="theme-box">
            <div>
                <p>
                    <img src="/camping/resources/images/themes/27.svg" width="40">
                </p>
                <p style="font-size: 12px;">바다낚시</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/48.svg" width="40">
                </p>
                <p style="font-size: 12px;">반려동물<br>동반</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/51.svg" width="40">
                </p>
                <p style="font-size: 12px;">수세식<br>화장실</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/57.svg" width="40">
                </p>
                <p style="font-size: 12px;">온라인예약</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/59.svg" width="40">
                </p>
                <p style="font-size: 12px;">와이파이</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/50.svg" width="40">
                </p>
                <p style="font-size: 12px;">샤워시설</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/42.svg" width="40">
                </p>
                <p style="font-size: 12px;">개수대</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/63.svg" width="40">
                </p>
                <p style="font-size: 12px;">전기</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/46.svg" width="40">
                </p>
                <p style="font-size: 12px;">동계캠핑</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/58.svg" width="40">
                </p>
                <p style="font-size: 12px;">온수제공</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/56.svg" width="40">
                </p>
                <p style="font-size: 12px;">오토캠핑</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/65.svg" width="40">
                </p>
                <p style="font-size: 12px;">카라반시설</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/69.svg" width="40">
                </p>
                <p style="font-size: 12px;">펜션/민박</p>
            </div>
            <div>
                <p>
                    <img src="/camping/resources/images/themes/54.svg" width="40">
                </p>
                <p style="font-size: 12px;">어린이놀이터</p>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px;">
        <div class="col-sm-1 text-center">
            <span class="glyphicon glyphicon-info-sign"></span>
        </div>
        <div class="col-sm-11" style="padding-left: 0">
            삼척시 장호비치캠핑장은 장호관광지내 조성되어 있는 캠핑장으로서 주변 관광지와 어울어져 부모, 가족, 연인과 함께하여
            많은 추억을 만들 수 있는 곳입니다.<br>
            주변 관광지로서는 "한국의 나폴리"라 불리는 천혜의 자연경관과 청정해변이 인접하여 타 캠핑장보다 많은 장점을 가지고 있습니다. 또한 각종 체험을 경험하실 수 있고 바다낚시와 싱싱한 회를 즐기실 수도 있습니다.<br>
            장호비치캠핑장 주변에는 해양레일바이크, 어촌체험마을, 해신당공원, 해상로프웨이 등 강원남부권 최대 해양관광벨트화로 다양한 지역관광을 즐기실 수 있습니다.
        </div>
    </div>
    <div class="row" style="margin-top: 40px;">
        <div class="col-sm-12">
            <span style="margin-right: 10px;">
                <img src="/camping/resources/images/camp.svg" width="18px;"/>
            </span>
            <strong style="color: #144794; font-size: 15px;">총 규모 : </strong>
            <strong style="color: #0a8fe3; font-size: 15px;">총 48개</strong>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 text-center">
			<div id="campsite-amount-box">
            	<div>
                    <svg id="fillgauge1" width="100" height="150"></svg>
                    <div><strong>오토캠핑 (17)</strong></div>
                </div>
                <div>
                    <svg id="fillgauge2" width="100" height="150"></svg>
                    <div><strong>카라반 (10)</strong></div>
                </div>
                <div>
                    <svg id="fillgauge3" width="100" height="150"></svg>
                    <div><strong>야영장 (17)</strong></div>
                </div>
                <div>
                    <svg id="fillgauge4" width="100" height="150"></svg>
                    <div><strong>컨테이너하우스 (4)</strong></div>
                </div>
    		</div>
        </div>
    </div>
    <div class="row" style="margin-top: 60px;">
        <div class="col-sm-12">
            <span class="glyphicon glyphicon-credit-card"></span>
            <strong style="color: #144794; font-size: 15px;">이용 요금</strong>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12" style="margin-left: 18px; margin-top: 5px;">
            <p>
                <span style="margin-right: 28px;">일반야영장 (성수기)</span>
                <img src="/camping/resources/images/stick2.png"/>
                <strong>35,000</strong>원
            </p>
            <p>
                일반야영장 (비수기 주말)
                <img src="/camping/resources/images/stick2.png"/>
                <strong>25,000</strong>원
            </p>
            <p>
                일반야영장 (비수기 주중)
                <img src="/camping/resources/images/stick2.png"/>
                <strong>20,000</strong>원
            </p>
            <p>
                일반야영장 (동절기 주말)
                <img src="/camping/resources/images/stick2.png"/>
                <strong>20,000</strong>원
            </p>
            <p>
                일반야영장 (동절기 평일)
                <img src="/camping/resources/images/stick2.png"/>
                <strong>15,000</strong>원
            </p>
            <p>
                <span style="margin-right: 28px;">오토캠핑장 (성수기)</span>
                <img src="/camping/resources/images/stick2.png"/>
                <strong>40,000</strong>원
            </p>
            <p>
                오토캠핑장 (비수기 주말)
                <img src="/camping/resources/images/stick2.png"/>
                <strong>30,000</strong>원
            </p>
            <p>
                오토캠핑장 (비수기 주중)
                <img src="/camping/resources/images/stick2.png"/>
                <strong>25,000</strong>원
            </p>
            <p>
                오토캠핑장 (동절기 주말)
                <img src="/camping/resources/images/stick2.png"/>
                <strong>25,000</strong>원
            </p>
            <p>
                오토캠핑장 (동절기 평일)
                <img src="/camping/resources/images/stick2.png"/>
                <strong>20,000</strong>원
            </p>
        </div>
    </div>
    <div class="row" id="fine-dust-info-box" style="margin-top: 30px;">
    	<div class="col-sm-8">
        	<span style="margin-right: 10px;">
                <img src="/camping/resources/images/weathers/wind.svg" width="18px;"/>
            </span>
            <strong style="color: #144794; font-size: 15px;">장호 비치 캠핑장</strong>
            <strong style="color: #0a8fe3; font-size: 15px;"> 주변 미세먼지 농도 (PM<span style="font-size: 10px;">10</span>)</strong>
            <button class="btn glyphicon glyphicon-question-sign" id="fine-dust-btn"></button>
        </div>
        <div class="col-sm-4 text-right">
            <p>자료제공 : 한국환경공단</p>
        </div>
    </div>
    <!-- 원래 접혀 있는 곳 버튼 누르면 보이고 닫히게 하기 -->
    <div class="row" id="fine-dust-box"> 
        <div class="col-sm-12">
            <table class="table">
                <colgroup>
                    <col width="16%">
                    <col width="14%">
                    <col width="14%">
                    <col width="14%">
                    <col width="14%">
                    <col width="14%">
                    <col width="14%">
                </colgroup>
                <thead>
                    <tr style="background-color: #f5f5f5">
                        <th>색상</th>
                        <th>통합대기환경지수</th>
                        <th>미세먼지</th>
                        <th>오존</th>
                        <th>이산화질소</th>
                        <th>일산화탄소</th>
                        <th>아황산가스</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="background-color: #32a1ff; color: white">좋음</td>
                        <td style="color: #32a1ff;">0~50</td>
                        <td style="color: #32a1ff;">0~30</td>
                        <td style="color: #32a1ff;">0~0.030</td>
                        <td style="color: #32a1ff;">0~0.030</td>
                        <td style="color: #32a1ff;">0~2.0</td>
                        <td style="color: #32a1ff;">0~0.020</td>
                    </tr>
                    <tr>
                        <td style="background-color: #00c73c; color: white">보통</td>
                        <td style="color: #00c73c;">51~100</td>
                        <td style="color: #00c73c;">31~80</td>
                        <td style="color: #00c73c;">0.031~0.090</td>
                        <td style="color: #00c73c;">0.031~0.060</td>
                        <td style="color: #00c73c;">2.01~9</td>
                        <td style="color: #00c73c;">0.021~0.050</td>
                    </tr>
                    <tr>
                        <td style="background-color: #fd9b5a; color: white">나쁨</td>
                        <td style="color: #fd9b5a;">101~250</td>
                        <td style="color: #fd9b5a;">81~150</td>
                        <td style="color: #fd9b5a;">0.091~0.150</td>
                        <td style="color: #fd9b5a;">0.061~0.200</td>
                        <td style="color: #fd9b5a;">9.01~15</td>
                        <td style="color: #fd9b5a;">0.051~0.150</td>
                    </tr>
                    <tr>
                        <td style="background-color: #ff5959; color: white">매우 나쁨</td>
                        <td style="color: #ff5959;">251~</td>
                        <td style="color: #ff5959;">151~</td>
                        <td style="color: #ff5959;">0.151~</td>
                        <td style="color: #ff5959;">0.201~</td>
                        <td style="color: #ff5959;">15.01~</td>
                        <td style="color: #ff5959;">0.151~</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <table class="table" style="margin-bottom: 0;">
                <tbody>
                    <tr>
                    	<td style="width: 150px;">
                            <div><strong>통합대기지수</strong></div>
                            <div style="display: inline-block; margin: 0 10px;">
                                <svg id="fillgauge5" width="100" height="150"></svg>
                                <div><strong style="color: #32a1ff; font-size: 15px;">좋음</strong></div>
                            </div>
                        </td>
                        <td style="vertical-align: middle;">
                            <div style="display: inline-block;">
                                <div style="float: left; background-color: #32a1ff; padding: 0 40px; color: #fff;">0~30</div>
                                <div style="float: left; background-color: #00c73c; padding: 0 40px; color: #fff;">31~80</div>
                                <div style="float: left; background-color: #fd9b5a; padding: 0 40px; color: #fff;">81~150</div>
                                <div style="float: left; background-color: #ff5959; padding: 0 40px; color: #fff;">151~</div>
                            </div>
                            <div style="display: inline-block; margin-top: 10px;">
                                 <div style="float: left; color: #32a1ff; padding: 0 40px; font-size: 13px;">좋음</div>
                                <div style="float: left; color: #00c73c; padding: 0 45px; font-size: 13px;">보통</div>
                                <div style="float: left; color: #fd9b5a; padding: 0 48px; font-size: 13px;">나쁨</div>
                                <div style="float: left; color: #ff5959; padding: 0 30px; font-size: 13px;">매우나쁨</div>
                            </div>
                            <div style="margin-top: 20px;">
                                <p>
                                    > <strong>측정장소</strong> : 강원 삼척시 남양길 11(남양동 331-9) 남양동주민센터 3층 옥상
                                </p>
                                <p>
                                    > 캠핑장과 <strong style="color: #32a1ff;">21.7Km</strong> 떨어진 남양동1 측정소에서 <strong style="color: #32a1ff;">2019-07-26 09:00</strong>분에 측정된 수치
                                </p>
                            </div>
                        </td>
                        <td>
                            <div style="width: 150px;">
                                <strong style="font-size: 18px;">초미세먼지(PM<span style="font-size: 14px;">2.5</span>)</strong>
                            </div>
                            <div style="margin-top: 15px;">
                                <img src="/camping/resources/images/weathers/green_wind.svg" width="35"/>
                            </div>
                            <div>
                                <strong style="color: #00c73c;"><span style="font-size: 30px;">26</span><span style="font-size: 15px;">㎍/㎥</span></strong>
                            </div>
                            <div>
                                <span style="font-size: 23px; color: #00c73c;">보통</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <span style="font-size: 20px; color: #32a1ff">●</span>아황산가스 농도 0.003ppm 
                            <span style="font-size: 20px; color: #32a1ff">●</span>일산화탄소 농도 0.5ppm 
                            <span style="font-size: 20px; color: #00c73c">●</span>오존 농도 0.070ppm 
                            <span style="font-size: 20px; color: #32a1ff">●</span>이산화질소 농도 0.008ppm
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row" style="margin-bottom: 50px;">
        <div class="col-sm-12 text-right">
            <p>※ 현지사정이나 수신상태에 의해 차이가 발생할 수 있습니다.</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12" style="margin-bottom: 5px;">
            <span>
                <img src="/camping/resources/images/weathers/sun.svg" width="18px;"/>
            </span>
            <strong style="color: #144794; font-size: 15px;">날씨정보</strong>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
        	<div>
        		<div class="text-right" style="position: relative; z-index:2; top: 33px;" id="hidden-weather-box">
        			<button style="height: 33px; background-color: #000;">
        				<span class="glyphicon glyphicon-chevron-right" style="color: #fff;"></span>
        			</button>
        		</div>
        		<div class="text-center" id="weather-after-box" style="position: relative; z-index: 1; overflow: hidden;">
		            <table class="table" id="weather-table" style="left: 0px;">
		                <thead>
		                    <tr style="background-color: #f5f5f5;" id="weather-th-box"></tr>
		                </thead>
		                <tbody>
		                    <tr id="weather-box"></tr>
		                </tbody>
		            </table>
	            </div>
            </div>
        </div>
    </div>
    
     <div class="row">
        <div class="col-sm-12" style="margin-bottom: 5px;">
            <span class="glyphicon glyphicon-globe"></span>
            <strong style="color: #144794; font-size: 15px;">위치</strong>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-12">
    	
    	</div>
    </div>
    
    <div class="row">
        <div class="col-sm-12" style="margin-bottom: 15px;">
            <span style="margin-right: 10px;">
                <img src="/camping/resources/images/camp.svg" width="18px;"/>
            </span>
            <strong style="color: #144794; font-size: 15px;">장호 비치 캠핑장</strong>
            <strong style="color: #0a8fe3; font-size: 15px;"> 주변 다른 캠핑장소</strong>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 text-center" id="near-campingsite-box">
            <div>
                <div>
                    <a href="#"><img src="/camping/resources/images/camp1.jpg" width="160"/></a>
                </div>
                <div style="margin-top: 5px;">
                    <strong>검봉산 자연휴양림 야영장</strong>
                </div>
                <div>
                    <span>5.4Km</span>
                </div>
            </div>
            <div>
                <div>
                    <a href="#"><img src="/camping/resources/images/camp2.jpg" width="160"/></a>
                </div>
                <div style="margin-top: 5px;">
                    <strong>삼척 엘림 캠핑장</strong>
                </div>
                <div>
                    <span>8.3Km</span>
                </div>
            </div>
            <div>
                <div>
                    <a href="#"><img src="/camping/resources/images/camp3.jpg" width="160"/></a>
                </div>
                <div style="margin-top: 5px;">
                    <strong>씨스포빌 카라반</strong>
                </div>
                <div>
                    <span>14.8Km</span>
                </div>
            </div>
            <div>
                <div>
                    <a href="#"><img src="/camping/resources/images/camp4.jpg" width="160"/></a>
                </div>
                <div style="margin-top: 5px;">
                    <strong>덕풍계곡 마을 야영장</strong>
                </div>
                <div>
                    <span>22.6Km</span>
                </div>
            </div>
            <div>
                <div>
                    <a href="#"><img src="/camping/resources/images/camp3.jpg" width="160"/></a>
                </div>
                <div style="margin-top: 5px;">
                    <strong>덕풍계곡 솔밭 야영장</strong>
                </div>
                <div>
                    <span>23.4Km</span>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px;">
        <div class="col-sm-12">
            <ul class="nav nav-tabs">
                <li class="active" id="opinion-box"><a>의견</a></li>
                <li id="review-box"><a>리뷰</a></li>
                <li><a>주변 행사안내</a></li>
                <li><a>주변 관광지</a></li>
                <li><a>주변 맛집</a></li>
            </ul>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="/camping/resources/images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="/camping/resources/images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="/camping/resources/images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; border-bottom: 1px solid #ddd;">
        <div class="col-sm-2 text-center" style="margin-bottom: 10px;">
            <img src="images/camp4.jpg" width="130px" height="130px"/>
        </div>
        <div class="col-sm-10">
            <div style="margin-bottom: 5px;">
                <span style="font-size: 18px;">[삼척] 장호비치캠핑장 카라반 1박 2일</span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #888;">
                    삼척 장호비치캠핑장 다녀왔어요. 지난 3월 다녀온 동해 망상오토캠핑리조트 카라반에 이은 두 번째 삼척 카라반
                    이용 후기 시작해 보겠습니다. 장호비치캠핑장 강원도 삼척시 근덕면 장호1길 41 삼척 장호비치캠핑장 주소 강원도
                    삼척시 근덕면 장호 1길 41 전화번호 033. 576. 0884~5 #삼척장호항카라반 2017...
                </span>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="color: #3ea9cd">김콩씨네</span>
            </div>
            <div class="text-right" style="margin-bottom: 15px;">
                <span>2019-05-09</span>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 20px;">
        <div class="col-sm-12 text-center">
            <a class="btn btn-default">
                <span class="glyphicon glyphicon-backward"></span>
            </a>
            <a class="btn btn-default">
                <span class="glyphicon glyphicon-triangle-left"></span>
            </a>
            <a class="btn btn-default active">1</a>
            <a class="btn btn-default">2</a>
            <a class="btn btn-default">3</a>
            <a class="btn btn-default">4</a>
            <a class="btn btn-default">5</a>
            <a class="btn btn-default">6</a>
            <a class="btn btn-default">7</a>
            <a class="btn btn-default">8</a>
            <a class="btn btn-default">9</a>
            <a class="btn btn-default">10</a>
            <a class="btn btn-default">
                <span class="glyphicon glyphicon-triangle-right"></span>
            </a>
            <a class="btn btn-default">
                <span class="glyphicon glyphicon-forward"></span>
            </a>
        </div>
    </div>
    <div class="row" style="border-bottom: 1px solid #ddd; margin-top: 60px;"></div>
    <div class="row" style="margin-top: 15px; margin-bottom: 60px;">
        <div class="col-sm-12">
            <button class="btn btn-default" id="up-btn">
                <span class="glyphicon glyphicon-hand-up"></span> | 위로
            </button>
        </div>
    </div>
    
</div>
<script type="text/javascript">
    
    var config1 = liquidFillGaugeDefaultSettings();
        config1.waveAnimateTime = 3000;
    var gauge1 = loadLiquidFillGauge("fillgauge1", 17/48*100, config1);
    
    var config2 = liquidFillGaugeDefaultSettings();
        config2.waveAnimateTime = 3000;
        config2.circleColor = '#ff7777';
        config2.textColor = '#ff4444';
        config2.waveTextColor = '#ffaaaa';
        config2.waveColor = '#ffdddd';
    var gauge2 = loadLiquidFillGauge('fillgauge2', 17/48*100, config2);
    
    var config3 = liquidFillGaugeDefaultSettings();
        config3.waveAnimateTime = 3000;
        config3.circleColor = '#6DA398';
        config3.textColor = '#0E5144';
        config3.waveTextColor = '#6DA398';
        config3.waveColor = '#246D5F';
    var gauge3 = loadLiquidFillGauge('fillgauge3', 10/48*100, config3);
    
    var config4 = liquidFillGaugeDefaultSettings();
        config4.waveAnimateTime = 3000;
        config4.circleColor = '#D4AB6A';
        config4.textColor = '#553300';
        config4.waveTextColor = '#805615';
        config4.waveColor = '#AA7D39';
    var gauge4 = loadLiquidFillGauge('fillgauge4', 4/48*100, config4);
        
    var config5 = liquidFillGaugeDefaultSettings();
        config5.waveAnimateTime = 3000;
        config5.circleColor = '#32a1ff';
        config5.displayPercent = false;
        config5.maxValue = 160;
    var gauge5 = loadLiquidFillGauge('fillgauge5', 47, config5);
    
    $('#fine-dust-box').hide();
    
    $('#fine-dust-btn').click(function() {
    	$('#fine-dust-box').toggle('show');
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

    var grid = dfs_xy_conv('toXY', 37.38173710552906, 127.00620450263966);
   
    $.ajax({
    	url: 'xml.camp',
    	data: {x: grid.x, y:grid.y},
    	dataType: 'xml',
    	success: function(result) {
    		console.log(result);
    		
    		$('#weather-box').empty();
    		$('#weather-th-box').empty();
    		
    		var today = new Date();
    		var months = today.getMonth() + 1;
    		var month = months < 10 ? '0' + months : months;
    		var days = today.getDate();
    		var day = days < 10 ? '0' + days : days;
    		var count0 = 0, count1 = 0, count2 = 0;
    		var endDay = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    		
    		$(result).find('data').each(function(index, item) {
    			var hour = $(this).find('hour').text();
    			var temp = $(this).find('temp').text();
    			var sky = $(this).find('sky').text();
    			var imgName = '';
    			if(sky == 1) {			// 맑음
    				if(hour == 21 || hour == 24 || hour == 3) {
    					imgName = 'pm_Clear.png';
    				} else {
    					imgName = 'am_Clear.png';
    				}
    			} else if(sky == 3) {	// 구름많음
					if(hour == 21 || hour == 24 || hour == 3) {
    					imgName = 'pm_MostlyCloudy.png';
    				} else {
    					imgName = 'am_MostlyCloudy.png';
    				}
    			} else if(sky == 4) {	// 흐림
					if(hour == 21 || hour == 24 || hour == 3) {
    					imgName = 'pm_Cloudy.png';
    				} else {
    					imgName = 'am_Cloudy.png';
    				}
    			} else {
    				if(hour == 21 || hour == 24 || hour == 3) {
    					imgName = 'pm_Rain.png';
    				} else {
    					imgName = 'am_Rain.png';
    				}
    			}
    			var wfKor = $(this).find('wfKor').text();
    			var pop = $(this).find('pop').text();
    			var wdEn = $(this).find('wdEn').text();
    			var ws = Math.round($(this).find('ws').text() * 10)/10;
    			var reh = $(this).find('reh').text();
    			
    			var day = $(this).find('day').text();
    			if(day == 0) {
    				count0++;
    			} else if(day == 1) {
    				count1++;
    			} else if(day == 2) {
    				count2++;
    			}
    			
    			var html1 = '<td style="min-width: 85px;">'
			             + '<p>' + hour + '시</p>'
			             + '<p style="color: #06f;">' + temp + '℃</p>'
			             + '<p><img src="/camping/resources/images/weathers/' + imgName + '" width="40"/></p>'
			             + '<p><strong>' + wfKor + '</strong></p>'
			             + '<p>'
			             + '<img src="/camping/resources/images/weathers/drop.svg" width="15"/>'
			             + '<strong style="color: #069;">' + pop + '%</strong>'
			             + '</p>'
			             + '<p>' + wdEn + ' ' + ws + 'm/s</p>'
			             + '<p>' + reh + '%</p>'
			             + '</td>';
			             
				$('#weather-box').append(html1);
				
    		});
    		
			var html2 = '<th colspan="' + count0 + '">오늘</th>';
			
			if(endDay[months-1] == days) {
				html2 += '<th colspan="' + count1 + '">내일 (' + (months + 1) + '.01)</th>' 
					  + '<th colspan="' + count2 + '">모레 (' + (months + 1) + '.02)</th>';
				return;
			}
			if(endDay[months-1]-1 == days) {
				html2 += '<th colspan="' + count1 + '">내일 (' + month + '.' + (day + 1) + ')</th>' 
				  	  + '<th colspan="' + count2 + '">모레 (' + (months + 1) + '.01)</th>';
				return;
			}
			
			if(months == 12 && endDay[months-1] == days) {
				html2 += '<th colspan="' + count1 + '">내일 (01.01)</th>'
             	 	  + '<th colspan="' + count2 + '">모레 (01.02)</th>';
             	return;
			}
			if(months == 12 && endDay[months-1]-1 == days) {
				html2 += '<th colspan="' + count1 + '">내일 (12.31)</th>'
       	 	  		  + '<th colspan="' + count2 + '">모레 (01.01)</th>';
       			return;
			}
			
			html2 += '<th colspan="' + count1 + '">내일 (' + month + '.' + (day + 1) + ')</th>'
   	 	  		  + '<th colspan="' + count2 + '">모레 (' + month + '.' + (day + 2) + ')</th>';

            $('#weather-th-box').append(html2);
    	}
    });
    
    $('#up-btn').click(function() {
   		$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
   		return false;
    });
    
    $('#hidden-weather-box button').click(function() {
    	$(this).parent().toggleClass('text-right');
    	
    	if($(this).parent().hasClass('text-right')) {
    		$(this).find('span').removeClass().addClass('glyphicon glyphicon-chevron-right');
    		$('#weather-table').animate({marginLeft : '0px'}, 1000);
    	} else {
	    	$(this).find('span').removeClass().addClass('glyphicon glyphicon-chevron-left');    		
			$('#weather-table').animate({ marginLeft : '-595px' }, 1000);    		
    	}
    	
    });
    
    $('#opinion-btn').click(function() {
    	var offset = $('#opinion-box').offset();
    	$('html, body').animate({scrollTop : offset.top}, 500);
    });
    
    $('#fine-dust-info-btn').click(function() {
    	var offset = $('#fine-dust-info-box').offset();
    	$('html, body').animate({scrollTop : offset.top}, 500);
    });
    
</script>
</body>
</html>