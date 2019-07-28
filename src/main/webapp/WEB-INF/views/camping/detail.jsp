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
				<button class="btn btn-default" style="margin-left: 20px;">
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
                <button style="background-color: #00c73c; color: #fff; display: inline-block; padding: 5px 10px; border-radius: 10px;">
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
    <div class="row" style="margin-top: 30px;">
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
            <table class="table">
                <thead>
                    <tr style="background-color: #f5f5f5;">
                        <th colspan="2">오늘</th>
                        <th colspan="8">내일 (07.19)</th>
                        <th colspan="8">모레 (07.20)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <p>21시</p>
                            <p style="color: #06f;">23.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/pm_MostlyCloudy.png" width="40"/>
                            </p>
                            <p><strong>구름 많음</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">20%</strong>
                            </p>
                            <p>SE 1.3m/s</p>
                            <p>90%</p>
                        </td>
                        <td>
                            <p>24시</p>
                            <p style="color: #06f;">23.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/pm_MostlyCloudy.png" width="40"/>
                            </p>
                            <p><strong>구름 많음</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">20%</strong>
                            </p>
                            <p>S 0.9m/s</p>
                            <p>90%</p>
                        </td>
                        <td>
                            <p>3시</p>
                            <p style="color: #06f;">22.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/pm_Clear.png" width="40"/>
                            </p>
                            <p><strong>맑음</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">0%</strong>
                            </p>
                            <p>S 0.8m/s</p>
                            <p>85%</p>
                        </td>
                        <td>
                            <p>6시</p>
                            <p style="color: #06f;">23.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/am_MostlyCloudy.png" width="40"/>
                            </p>
                            <p><strong>구름 많음</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">20%</strong>
                            </p>
                            <p>SE 1m/s</p>
                            <p>85%</p>
                        </td>
                        <td>
                            <p>9시</p>
                            <p style="color: #06f;">27.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/am_MostlyCloudy.png" width="40"/>
                            </p>
                            <p><strong>구름 많음</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">20%</strong>
                            </p>
                            <p>E 1.5m/s</p>
                            <p>80%</p>
                        </td>
                        <td>
                            <p>12시</p>
                            <p style="color: #06f;">28.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/am_MostlyCloudy.png" width="40"/>
                            </p>
                            <p><strong>구름 많음</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">20%</strong>
                            </p>
                            <p>E 2.5m/s</p>
                            <p>85%</p>
                        </td>
                        <td>
                            <p>15시</p>
                            <p style="color: #06f;">27.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/am_MostlyCloudy.png" width="40"/>
                            </p>
                            <p><strong>구름 많음</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">20%</strong>
                            </p>
                            <p>E 2.6m/s</p>
                            <p>90%</p>
                        </td>
                        <td>
                            <p>18시</p>
                            <p style="color: #06f;">25.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/am_MostlyCloudy.png" width="40"/>
                            </p>
                            <p><strong>구름 많음</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">20%</strong>
                            </p>
                            <p>E 1.8m/s</p>
                            <p>95%</p>
                        </td>
                        <td>
                            <p>21시</p>
                            <p style="color: #06f;">23.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/pm_Cloudy.png" width="40"/>
                            </p>
                            <p><strong>흐림</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">30%</strong>
                            </p>
                            <p>E 1.1m/s</p>
                            <p>95%</p>
                        </td>
                        <td>
                            <p>24시</p>
                            <p style="color: #06f;">23.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/pm_Cloudy.png" width="40"/>
                            </p>
                            <p><strong>흐림</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">30%</strong>
                            </p>
                            <p>E 3.9m/s</p>
                            <p>95%</p>
                        </td>
                        <td>
                            <p>3시</p>
                            <p style="color: #06f;">23.0℃</p>
                            <p>
                                <img src="/camping/resources/images/weathers/pm_Rain.png" width="40"/>
                            </p>
                            <p><strong>비</strong></p>
                            <p>
                                <img src="/camping/resources/images/weathers/drop.svg" width="15"/>
                                <strong style="color: #069;">60%</strong>
                            </p>
                            <p>E 4.1m/s</p>
                            <p>95%</p>
                        </td>
                    </tr>
                </tbody>
            </table>
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
                    <a href="#"><img src="/camping/resources/images/camp1.jpg" width="180"/></a>
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
                    <a href="#"><img src="/camping/resources/images/camp2.jpg" width="180"/></a>
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
                    <a href="#"><img src="/camping/resources/images/camp3.jpg" width="180"/></a>
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
                    <a href="#"><img src="/camping/resources/images/camp4.jpg" width="180"/></a>
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
                    <a href="#"><img src="/camping/resources/images/camp3.jpg" width="180"/></a>
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
                <li class="active"><a>의견</a></li>
                <li><a>리뷰</a></li>
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
            <button class="btn btn-default">
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
</script>
</body>
</html>