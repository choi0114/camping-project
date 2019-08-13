<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/camping/resources/owlcarousel/docs.theme.min.css">
    <link rel="stylesheet" href="/camping/resources/owlcarousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="/camping/resources/owlcarousel/owl.carousel.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="/camping/resources/owlcarousel/owl.carousel.min.js"></script>
    <script src="/camping/resources/js/circles.min.js"></script>
    <style>
        /*.tse-scrollable {position: relative; overflow: hidden;}
        .tse-scrollbar {z-index: 99; position: absolute; top: 0; right: 0; bottom: 0; width: 4px;}
        .tse-scrollbar .drag-handle {position: absolute; right: 0px; min-height: 10px; width: 4px; opacity: 0; 
                                    transition: opacity 0.2s linear; background: #0066cc;}
        
        .tse-scrollable .tse-scroll-content {overflow: hidden; overflow-y: scroll; width: calc(100% + 21px) !important;}*/
        .main-full-image {
            padding: 0;
            width: 100%;
            height: 100%;
            position: relative;
            background: #383943;
            min-height: 900px;
        }

        .main-search h2 {
            font-size: 1.65rem;
            color: #fff;
            font-weight: 400;
            padding: 175px 0 20px 145px;
            margin: 0;
            text-align: center;
            font-size: 25px;
        }

        .main-wrap {width: 1200px;}
        .main-wrap #form-box{position: relative; left: 115px;}
        .main-wrap .inkey{font-size: 17px; text-align: center; padding-top: 15px; margin-left: 60px;}
        .main-wrap .inkey .link-inkey{color: #fff; margin: 0px 10px; opacity: .7; font-weight: bold;}
        .main-wrap .inkey .link-inkey:hover{opacity: 1;}
        .main-wrap .search-form {
            background: #fff;
            border-radius: 60px;
            width: 650px;
            height: 60px;
        }

        .main-wrap .search-form .glyphicon-search{right: 7px; top: 0px;}
        .main-wrap .search-form .search-input {
            width: 460px;
            height: 56px;
            border: none;
            background: transparent;
            font-size: 23px;
            font-weight: 600;
            font-family: 'noto sans kr';
            padding-left: 20px;
            line-height: 56px;
            outline: 0;
            letter-spacing: -0.03em;
            display: inline-block;
            
        }

        .main-wrap .search-form .keyword-del {position: absolute; top: 0; right: 80px; width: 60px;
    											text-align: center; padding-top: 17px;}

        .main-wrap .search-form .btn-search {
            border: none;
            background: none;
            font-size: 30px;
            position: absolute;
            top: 0;
            right: 0;
            outline: 0;
            cursor: pointer;
            background: #f0f0f0;
            color: #555;
            height: 60px;
            width: 80px;
            border-radius: 0 60px 60px 0px;
        }
        
        .main-wrap .search-form .btn-search:hover {color: #fff; background-color: #0099ff;}

        .btn-sido {
            display: inline-block;
            height: 60px;
            border-radius: 60px;
            overflow: hidden;
            width: 115px;
            line-height: 60px;
            margin-right: 10px;
            font-weight: 700;
            background: #25a5f0;
            color: #fff;
            text-align: center;
            cursor: pointer;
            font-size: 15px;
        }
        .btn-sido:hover {background: #fff; color: black;}

        .btn-sido i {margin-left: 5px}

        .twrap .hand {
            height: 135px;
            cursor: pointer
        }
        fieldset{
            border: none;
             margin: 0; 
             padding: 0; 
        }
        form {
            display: inline;
            margin: 0;
            padding: 0;
        }
        .container a {text-decoration: none;}
        .keyword{box-shadow: none !important;}

        legend {
            display: none;
        }
        .container .maincamp{width: 1200px;}
        .container .maincamp .large-12{width: 1200px;}
        .container .maincamp h2 {font-size: 23px; color: #fff; margin: 35px 0px 20px 0px !important;}
        .container .maincamp h2 span {color: #ff4000; font-weight: 600;}
        .container .maincamp .owl-carousel{height: 186px;}
        .container .maincamp .maincols{width: 225px; margin: 0; float: left; position: relative;}
        .container .maincamp .maincols .twrap{position: relative; width: 225px; height: 135px; overflow: hidden;}
        .container .maincamp .maincols .twrap .border{box-sizing: border-box; border: 4px rgba(255,255,255,.2) solid; position: absolute;                                                 top: 4px; left: 4px; width: calc(100% - 8px); height: calc(100% - 8px);
                                                        transition: transform .2s; z-index: 0;}
        .container .maincamp .cont{color: #fff; text-align: center;}
        .nwt{background: #ff6000;}
        .update{background: #25a5f0;}
        .nwt, .update{position: absolute; top: 0; left: 0; width: 14px; height: 14px; line-height: 15px; text-align: center; color: #fff;
                        font-size: 11px; z-index: 2;}
        .link-scrap{position: absolute; bottom: 5px; right: 8px;}
        .distance{position: absolute; bottom: 3px; left: 9px; color: #efe03e; margin: 0; font-size: 12px; opacity: .8; font-weight: 700;}
        .search-input::placeholder{color: #ccc;}
        .text{bottom: -50px; left: 50%; margin: 10px !important;}
        .text p:first-child{margin: 0; font-size: 12px; text-align: center; font-weight: bold;}
        .text p:last-child{color: #fff; margin: 0; font-size: 14px; text-align: center; white-space: nowrap; font-weight: bold;}
        .owl-carousel .owl-dots .disabled, .owl-carousel .owl-nav.disabled {display: block;}
        .owl-carousel .owl-nav button.owl-prev, .owl-carousel .owl-nav button.owl-next{width: 36px; height: 36px; background: #fff; 
                            font-size: 30px; border-radius: 100%; line-height: 30px; position: absolute; top: 50px; z-index: 100;}
        .owl-carousel .owl-nav button.owl-prev{left: -17px;}
        .owl-carousel .owl-nav button.owl-next{right: -17px;}
        .wrap{width: 100%;}
        .inner-wrap{width: 100%; height: 100%; overflow: hidden}
        .inner-wrap .mainwrap{position: absolute; top: 0; left: 0; right: 0; bottom: 0; z-index: 0;}
        .container .flex-wrapper {margin-top: 110px; margin-left: 236px;;}
        .container .flex-wrapper .text-center{width: 18%}
        .container .flex-wrapper .text-center .sitename{color: #fff; text-align: center; font-weight: 600; line-height: 2; padding-left: 9px; font-size: 17px;}
        .container .flex-wrapper .circles-text{font-size: 45px !important; color: #fff;}
        
        #banner-area{background: #eceef6; padding: 40px 0; height: 189px;}
        #banner-area .m-wrap{width: 1200px; margin: 0 auto;}
        #banner-area .lb{width: 400px;}
        #banner-area .rb {width: 800px; text-align: right; padding-top: 6px;}
        .fl{float: left;}
        .fr {float: right;}
        #banner-area .lb .notice_title {display: inline-block; width: 100%; margin-bottom: 10px;}
        #banner-area .lb .notice_title a{float: right;}
        #banner-area .lb h2 {background: url("/camping/resources/images/two_speech_bubbles.svg") no-repeat;
        					padding: 0 0 15px 40px; margin: 0; font-size: 20px; font-weight: bold;}
        #banner-area .lb .notice {width: 400px; height: 28px; line-height: 28px; font-size: .9rem;
        							padding-left: 40px; display: inline-block;overflow: hidden;
    								white-space: nowrap; text-overflow: ellipsis; }
        #banner-area .lb .notice-title .more {margin-top: 5px; float: right; color: #999; font-size: small;}
        #banner-area .notice .date {font-size: 11px; display: inline-block; height: 20px; line-height: 21px;
        		 					background: #9c9eac; color: #fff; width: 50px; text-align: center;
        		 					border-radius: 3px; vertical-align: top; margin: 4px 6px 0 0;}
       	#banner-area a {text-decoration: none; color: #000;}
       	#camping-map {width: 1500px; margin: 0 auto;}
       	#camping-map.maininfo .campinfo-wrap{width: 1300px; margin-left: 125px; max-width: 100%;}
       	#camping-map.maininfo .campinfo-wrap .kmap {width: 230px; border-right: 1px #e0e0e0 solid;
   													 height: 600px; padding: 50px 30px 0 0;}
   		#camping-map.maininfo .campinfo-wrap .kmap .mapwrap{width: 200px; height: 323px;}
   		#camping-map .campinfo-wrap .kmap h2 {margin: 0; padding: 0; font-size: 1.7rem; font-weight: bold;
    										text-align: center; letter-spacing: -0.03em;}
        #camping-map .campinfo-wrap .kmap p.csub-head {margin: 3px 0 20px; text-align: center; font-size: 0.9rem; font-weight: bold;}
    	#camping-map.maininfo .campinfo-wrap .kmapright {margin-left: 40px; padding: 50px 0px 0px 0px; width: 1000px;}
    	#camping-map.maininfo .head {display: inline-block; width: 100%; margin-bottom: 20px;}
    	#camping-map.maininfo .head .total-cnt {background: #25a5f0; color: #fff; height: 36px; width: 66px;
    										    line-height: 36px; font-size: .9rem; text-align: center;}
  		#camping-map.maininfo .head .page-ui {border: 1px #ccc solid; height: 36px; line-height: 34px; margin: 0 10px;}
    	#camping-map.maininfo .head .page-ui .btn-page {width: 34px; height: 34px; color: #ccc;
    											text-align: center; font-size: 15px; pointer-events: none;}
    	#camping-map.maininfo .head .page-ui .btn-page.on {color: #555; background: #f0f0f0; pointer-events: auto;}
    	#camping-map.maininfo .head .page-ui .pagestat {padding: 0; width: 70px; text-align: center;}
    	#camping-map.maininfo .head .page-ui .pagestat .blue{color: #32a1ff;}
    	#camping-map.maininfo .head .page-ui .pagestat .b{font-weight: bold;}
    	.searchSelect:focus, .searchSelect:active, .searchSelect:hover {border: 1px solid #25a5f0;}
    	#camping-map.maininfo .head .selectsido .searchSelect{width: 80px;}
    	#camping-map.maininfo .head .selectsido .subselect{width: 125px;}
    	#camping-map.maininfo .campinfo-wrap .kmapright .items {width: 283px; margin: 7px 40px 30px 0; float: left;}
		#camping-map.maininfo .campinfo-wrap .kmapright .items .photo {width: 283px; height: 168px;
																position: relative; overflow: hidden;}
		#camping-map.maininfo .campinfo-wrap .kmapright .items img.tm {transition: transform .2s;
    																	width: 100%; height: 100%;}
    	#camping-map.maininfo .campinfo-wrap .kmapright .items .photo span.distance {position: absolute;
   				 left: 0; bottom: 0; display: inline-block; background: #000; background: rgba(0,0,0,.1);
    				padding: 4px 5px; color: #efe03e; z-index: 10; font-size: 11px;}
    	#camping-map.maininfo .campinfo-wrap .kmapright .items .photo span.cat {position: absolute; right: 0;
					    bottom: 0; display: inline-block; background: #000; background: rgba(0,0,0,.1);
					    padding: 4px 5px; color: #efe03e; z-index: 10; font-size: 11px; font-weight: bold;}
    	#camping-map.maininfo .campinfo-wrap .kmapright .items .cont {padding-top: 7px;}
    	#camping-map.maininfo .campinfo-wrap .kmapright .items .cont .tt {padding: 0; font-size: 1rem; 
    														color: #000; font-weight: bold; margin: 5px 0;}
    	#camping-map.maininfo .campinfo-wrap .kmapright .items .cont .mcont {color: #008ab8; font-size: 12px;
    																		font-weight: 500; margin-bottom: 0px;}
    	#comm {background: #f1f3f9; padding: 50px 0 60px 0;}
    	.m-wrap {width: 1200px; margin: 0 auto;}
    	#comm a{text-decoration: none;}
    	#comm dl {float: left; padding: 0; margin: 0 40px 0 0; width: 270px;}
    	#comm dt {font-size: 1.3rem; font-weight: bold; margin-bottom: 16px; color: #393b46; line-height: 1.7;}
    	#comm .more {margin-right: 20px; margin-top: 5px; float: right; color: #999; font-size: small;}
    	#comm dd {padding: 3px 0px; margin: 0; font-size: 14px; width: 251px;}
    	#comm dd a {color: #5f6273; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;
    				display: inline-block; width: 244px;}
    	#comm .comment {font-size: 11px; color: #ff6000; float: right;}
    	
    	/* 모달 */
    	#search-result {width: 635px; max-height: 390px; overflow: hidden; overflow-y: auto; margin: 70px; position: absolute;
    					right: 37px; border-radius: 10px; z-index: 10;}
   		#search-result li {padding: 13px; border-bottom: 1px #eee solid; line-height: 1.2;}
   		#search-result .list-image {width: auto;}
   		#search-result li img {float: left; border-radius: 4px;}
   		#search-result li div.cright {font-size: 1rem; float: left; width: 410px; height: 45px; padding: 0px;}
   		#search-result li div.cright .cpath {font-size: 12px; color: #3EA9CD; margin: 3px 0 0 0; font-weight: bold;}
   		.highlight {background-color: yellow; border-radius: .125em;}
   		#search-result li div.cright .sbjval {font-weight: 500; font-weight: bold;}
   		#search-result li div.clink {float: right; width: 10%;}
   		#search-result li div.clink img {margin-top: 9px;}
    	.outlight{box-shadow: 0 0 60px rgba(51,195,255,.6);}
    	.blue{color: #32a1ff; font-weight: bold;}
    	
    	#btn-more{width: 100%; height: 40px; font-weight: bold;}
   		#search-result .more-button{text-align: center;}
   		#bookmark{width: 17px;}
   		
   		/* 탑버튼 */
   		#move-top-btn {position: fixed; bottom: 70px; right: 70px;display: none; z-index: 999; width: 50px; height: 50px;
   						background: #333; line-height: 60px;}
   		#move-top-btn i {font-size: x-large; margin-left: 11px;}

    </style>
</head>

<body>
<%@ include file="common/homeNav.jsp" %>
   <div class="wrap">
       
   <div class="inner-wrap">
    <div class="main-full-image" style="height: 937px; background: url('/camping/resources/images/1.jpg');">
    	<div class="mainwrap" style="background: rgba(0, 0, 0, 0.45) url('/camping/resources/images/dot2.png')">
	        <div class="container">
	            <div class="row main-wrap">
	                <div class="col-sm-12">
	                    <div class="main-search">
	                        <h2 id="random-massage">오늘은 어디로 가볼까?</h2>
	                    </div>
	                    <div id="form-box" >
	                        <div class="col-sm-3 btn-sido hand">
	                            	지역별
	                            <i class="glyphicon glyphicon-chevron-down" aria-hidden="true"></i>
	                        </div>
	                        <div class="col-sm-9 search-form">
	                            <form method="" action="" id="">
	                                <fieldset>
	                                    <legend>통합검색 폼</legend>
	                                    <input autocomplete="off" type="text" id="search-box" name="" maxlength="14"
	                                    placeholder="캠핑장 검색"  onfocus="this.placeholder = ''"
	                                    onblur="this.placeholder = '캠핑장 검색'" class="search-input keyword ">
	                                    <a class="keyword-del hand" style="display: none;">
	                                        <img src="/camping/resources/images/x.svg" width="26px" height="26px">
	                                    </a>
	                                    <button type="submit" class="btn-search">
	                                        <i class="glyphicon glyphicon-search" aria-hidden="true"></i>
	                                    </button>
	                                </fieldset>
	                            </form>
	                        </div>
	                    </div>
	                    <div class="col-sm-12 inkey">
	                        <a class="link-inkey">#무료</a>
	                        <a class="link-inkey">#숲속</a>
	                        <a class="link-inkey">#무료야영장</a>
	                        <a class="link-inkey">#가평</a>
	                        <a class="link-inkey">#그늘</a>
	                        <a class="link-inkey">#양양</a>
	                    </div>
	                    <ul id="search-result" class="list-group results" >
	                    	
	                    </ul>
	                </div>
	            </div>
	            <div class="row flex-wrapper">
					<div class="col-sm-3 text-center">
						<a>
							<div class="circle" id="circles-1"></div>
							<div class="sitename">전체</div>
						</a>
					</div>
					<div class="col-sm-3 text-center">
						<a>
							<div class="circle" id="circles-2"></div>
							<div class="sitename">글램핑</div>
						</a>
					</div>
					<div class="col-sm-3 text-center">
						<a>
							<div class="circle" id="circles-3"></div>
							<div class="sitename">카라반</div>
						</a>
					</div>
					<div class="col-sm-3 text-center">
						<a>
							<div class="circle" id="circles-4"></div>
							<div class="sitename">캠핑장</div>
						</a>
					</div>
	            </div>
	            <div class="maincamp">
	                <h2><span>New</span> &amp; Update</h2>
	                <div class="owl-carousel">
	                <c:forEach var="item" items="${items }">
	                    <div class="maincols">
	                        <div class="twrap">
	                            <div class="thumb hand">
	                                <div class="border"></div>
	                                <span class="nwt">U</span>
	                                <img src="/camping/resources/images/campsite/${item.photo }" alt="##캠핑장" width="450" class="tm">
	                                <a href="#" class="link-scrap" id="chk-scrap-2659">
	                                    <img alt="" src="/camping/resources/images/bookmark.png" id="bookmark" aria-hidden="true">
	                                    <img alt="" src="/camping/resources/images/bookmark2.png" id="bookmark" aria-hidden="true">
	                                </a>
	                            </div>
	                        </div>
	                        <div class="text">
	                            <p style="color: #f5ad22">일반캠핑장</p>
	                            <p>${item.name }</p>
	                        </div>
	                    </div>
	                </c:forEach>	
	                </div>
	            </div>
	        </div>
        </div>
    </div>
    </div>
    <div id="banner-area">
    	<div class="m-wrap">
    		<div class="fl lb">
    			<div class="notice-title">
    				<h2 class="fl">알려드립니다</h2>
    				<a href="#" class="glyphicon glyphicon-plus more"></a>
    			</div>
    			<c:forEach var="notice" items="${notices }">
    			<div class="notice">
    				<span class="date">1개월 전</span>
    				<a href="#">${notice.title }</a>
    			</div>
    			</c:forEach>
    		</div>
    		<div class="fr rb">
    			<a href="#" ><img src="/camping/resources/images/ㅎㅎㅎ.png" alt="안전한캠핑" style="width: 700px; height:100px; background-color: red"></a>
    		</div>
    	</div>
    </div>
    <div id="camping-map" class="container vrrooms maininfo">
    	<div class="row campinfo-wrap">
    		<div class="kmap fl col-sm-3">
    			<h2>Camping <span style="color: #25a5f0;">Map</span></h2>
    			<p class="csub-head">대한민국 캠핑 지도</p>
    			<div class="mapwrap">
    				<img alt="" src="/camping/resources/images/kmap.gif" usemap="#campMap"   id="Map"> <!-- 마우스오버시 그림바뀌기 -->
    				<map name="campMap" id="campMap">
					<area shape="poly" coords="49,59,51,58,56,55,69,46,78,75,66,75,49,74,51,68,48,59" alt="서울" class="kmap-seoul">
					<area shape="poly" coords="47,45,47,45,47,39,51,36,51,29,65,14,80,28,89,34,96,41,93,45,95,59,105,71,102,82,103,88,101,95,85,100,75,105,52,99,45,91,42,83,46,74,79,74,68,46,49,59,43,55,43,47" alt="경기" class="kmap-gyeonggi">
					<area shape="poly" coords="15,53,28,41,42,51,44,58,47,63,51,71,46,73,34,73,22,60,22,54" alt="인천" class="kmap-inchoen">
					<area shape="poly" coords="66,17,92,16,103,17,110,9,128,15,140,1,137,10,159,43,189,91,161,92,142,105,136,93,133,89,125,85,104,93,105,72,98,63,113,59,95,64,91,49,100,40,83,32,78,25,86,27" alt="강원" class="kmap-gangwon">
					<area shape="poly" coords="40,84,26,101,14,116,26,125,23,131,29,138,34,137,38,145,37,148,37,158,49,164,61,159,62,152,76,154,74,146,72,132,76,126,71,118,78,106,56,100,48,100" alt="충남" class="kmap-chungnam">
					<area shape="poly" coords="90,133,72,146,74,153,97,165,91,145,93,133" alt="대전" class="kmap-daejeon">
					<area shape="poly" coords="139,97,130,122,121,124,108,134,110,141,114,145,116,153,110,168,99,168,96,160,94,152,92,141,94,125,82,104,91,100,117,84,133,90" alt="충북" class="kmap-chungbuk">
					<area shape="poly" coords="185,93,169,90,153,94,145,105,135,105,124,118,118,126,111,133,109,142,118,154,109,170,120,175,130,180,140,152,162,164,149,190,154,194,178,179,195,183,189,140,192,109,189,98,179,87" alt="경북" class="kmap-gyeongbuk">
					<area shape="poly" coords="147,189,127,188,131,185,132,166,138,149,164,164,145,191" alt="대구" class="kmap-daegu">
					<area shape="poly" coords="167,187,155,195,185,210,195,181,175,181,166,186" alt="울산" class="kmap-ulsan">
					<area shape="poly" coords="177,201,135,226,137,230,155,243,183,220,182,211" alt="부산" class="kmap-busan">
					<area shape="poly" coords="106,172,97,179,93,200,99,218,102,226,110,249,139,247,155,244,139,233,137,223,174,202,159,196,148,188,124,180,107,171" alt="경남" class="kmap-gyeongnam">
					<area shape="poly" coords="42,160,49,164,59,154,74,152,85,160,109,169,95,182,93,208,76,210,55,198,45,199,33,203,35,189,41,176,45,171,41,168,41,161" alt="전북" class="kmap-jeonbuk">
					<area shape="poly" coords="1,274,9,284,26,274,33,268,47,275,64,275,77,271,91,262,92,255,107,252,104,230,96,209,76,211,55,198,26,205,38,217,63,210,69,221,65,230,53,230,44,228,43,221,29,206,7,217,8,233,3,252,1,269" alt="전남" class="kmap-jeonnam">
					<area shape="poly" coords="44,214,40,218,41,224,47,227,65,230,69,218,58,208,43,213" alt="광주" class="kmap-gwanju">
					<area shape="poly" coords="17,306,26,296,46,289,61,292,52,308,42,312,23,313,17,307" alt="제주" class="kmap-jeju">
					<area shape="poly" coords="80,101,73,118,77,125,73,135,74,144,93,136,93,124" alt="세종" class="kmap-sejong">
					</map>
    			</div>
    		</div>
    		<div class="fl kmapright col-sm-9">
    			<div class="head">
    				<div class="fl total-cnt countbox"><span id="total-cnt">0</span>개</div>
    				<div class="fl page-ui">
	    				<a href="#" class="fl btn-page prev-page" id="btn-prev">
	    					<i class="glyphicon glyphicon-chevron-left" aria-hidden="true"></i>
	    				</a>	<!-- 클릭시 클래스 on 추가 -->
	    				<div class="fl pagestat">
	    					<span id="nowpage" class="b blue">1</span> / <span id="totalpage">1</span>
	    				</div>
	    				<a href="#" class="fl btn-page next-page on" id="btn-next">
	    					<i class="glyphicon glyphicon-chevron-right" aria-hidden="true"></i>
	    				</a>
    				</div>
    				<div class="fl selectsido">
    					<select name="cate1" id="cate1" class="searchSelect">	<!-- onchange때 select박스 추가 -->
    						<option class="all" value="all" selected>전국</option>
    						<option class="seoul" value="서울특별시">서울</option>
    						<option class="gyeonggi" value="경기도">경기</option>
    						<option class="inchoen" value="인천광역시">인천</option>
    						<option class="gangwon" value="강원도">강원</option>
    						<option class="chungnam" value="충청남도">충남</option>
    						<option class="daejeon" value="대전광역시">대전</option>
    						<option class="chungbuk" value="충청북도">충북</option>
    						<option class="sejong" value="세종특별자치시">세종</option>
    						<option class="busan" value="부산광역시">부산</option>
    						<option class="ulsan" value="울산광역시">울산</option>
    						<option class="daegu" value="대구광역시">대구</option>
    						<option class="gyeongbuk" value="경상북도">경북</option>
    						<option class="gyeongnam" value="경상남도">경남</option>
    						<option class="jeonnam" value="전라남도">전남</option>
    						<option class="gwanju" value="광주광역시">광주</option>
    						<option class="jeonbuk" value="전라북도">전북</option>
    						<option class="jeju" value="제주특별자치시">제주</option>
    						
    					</select>
    					<select name="cate2" id="cate2" class="searchSelect subselect" style="display: none;">	<!-- onchange때 select박스 추가 -->
    						<option value selected>시군구 전체</option>
    					</select>
    				</div>
    			</div>
    			
    		</div>
    	</div>
    </div>
    <div id="comm" class="maininfo">
    	<div class="row m-wrap">
    		<dl class="col-sm-6">
    			<dt class="sbj">
    				<img alt="" src="/camping/resources/images/review.svg" style="width: 50px; height: 50px;">
    				<br>캠핑리뷰
    				<a href="#" class="glyphicon glyphicon-plus fr more"></a>
    			</dt>
    			<c:forEach var="review" items="${reviews }">
    			<dd>
    				<a href="#">&gt;  ${review.title }</a>
    				<c:if test="${review.cnt > 1}">
    				<span class="comment">${review.cnt }</span>
    				</c:if>
    			</dd>
    			</c:forEach>
    		</dl>
    		<dl class="col-sm-6 nomargin">
    			<dt class="sbj">
    				<img alt="" src="/camping/resources/images/board.svg" style="width: 50px; height: 50px;">
    				<br>자유게시판
    				<a href="#" class="glyphicon glyphicon-plus fr more"></a>
    			</dt>
    			<c:forEach var="free" items="${frees }">
    			<dd>
    				<a href="#">&gt;  ${free.title }</a>
    				<c:if test="${free.cnt > 1}">
    				<span class="comment">${free.cnt }</span>
    				</c:if>
    			</dd>
    			</c:forEach>
    		</dl>
    	</div>
    </div>
    </div>
    
    <a id="move-top-btn" href="#"><i class="glyphicon glyphicon-arrow-up" aria-hidden="true"></i></a>

</body>
<script type="text/javascript">

	/* 지역별 버튼 눌렀을 때 스크롤 내려가기 */
		$('.btn-sido').click(function() {
			$('html, body').animate({
	        	scrollTop: 1010
	   	 	}, 600);
		});
 	
 	/* top버튼 */
 	$(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 200) {
                $('#move-top-btn').fadeIn();
            } else {
                $('#move-top-btn').fadeOut();
            }
        });
        
        $("#move-top-btn").click(function() {
            $('html, body').animate({
                scrollTop : 0
            }, 400);
            return false;
        });
    });
 	
 	
 	/* 검색창 */
 	var pno = 1;
 	var dt = new Date();
 	var massage = ['추천검색 결과와 실제 결과는 다를수 있어요','검색어 입력 후 엔터 또는 버튼 클릭하세요', '행정구역 검색시 두글자만 입력(예: 부산)','읍면동 이름으로 검색 가능합니다',
			'저는 구글이 아닙니다. 살살 검색해주세요','하단 검색 추천과 실제 검색결과는 다를수 있어요','다음에 또 만나요','우리 같이 캠핑갈까요?','응수쌤 천재입니다',
			'검색만 하지 말고 댓글도 좀 써주세요','오늘은 어디로 가볼까?','오늘은 '+(dt.getMonth()+1)+'월 '+(dt.getDay()+4)+'일 입니다.','JHTA로 오세요~',
			'현재 시간은 '+dt.getHours()+'시 '+dt.getMinutes()+'분 입니다.','찾는 캠핑장이 없으면 관리자를 조르세요', '만든이: 지민, 은정, 동건, 수정, 혜인, 본경'];

 	
	$("#search-box").focus(function() {
		$(".search-form").addClass('outlight');
		$("#random-massage").text(massage[Math.round(Math.random()*massage.length)]);
	}).blur(function() {
		$(".search-form").removeClass('outlight');
		$("#random-massage").text(massage[Math.round(Math.random()*massage.length)]);
	})
	
	$("#search-box").keyup(function() {
		$("#search-result").empty();
		if ($("#search-box").val().length == 0) {
			$(".keyword-del").hide();
			$("random-massage").html('').hide();
			$("#random-massage").text(massage[Math.round(Math.random()*massage.length)]);
			return;
		}
		
		$(".keyword-del").show();
		var keyword = $("#search-box").val();
		
		searchFind(keyword, 1);
		
	})
	
	$("#btn-more").click(function() {
		var keyword = $("#search-box").val();
		pno++;
		searchFind(keyword, pno);
	})
	
	/* 검색결과 */
	function searchFind(keyword, pno) {
		$.ajax ({
			type:"get",
			url:"search.camp",
			data:{keyword:keyword, pno:pno, size:100},
			dataType:"json",
			success:function(result) {
				$("#random-massage").html('<span class="b blue">'+"'"+keyword+"'"+'</span> <span class="b">'+result.count+'건</span> 이 검색되었네요');
				
				$.each(result.items, function(index,camp) {
					
					var html = '<li class="list-group-item" id="keyword-item" keyword-name="'+camp.name+'">';
            		html += '<div class="row">';
            		html += '<div class="col-xs-3 list-image">';
            		html += '<img alt="" src="/camping/resources/images/slide1.jpg" width="80" height="45">';
            		html += '</div>';
            		html += '<a href="#" class="cdirectlink">';
            		html += '<div class="col-xs-7 cright hand">';
            		if (camp.name.indexOf(keyword) >= 0){
            			address = camp.address.replace(keyword, '<span  class="highlight">'+keyword+'</span>')
            			name = camp.name.replace(keyword, '<span  class="highlight">'+keyword+'</span>')
	            		html += '<p class="cpath">'+camp.sido+'>'+camp.gugun+'</p>';
	            		html += '<p class="sbjval">'+name+'</p>';            			
            		} else {
	            		html += '<p class="cpath">'+camp.sido+'>'+camp.gugun+'</p>';
	            		html += '<p class="sbjval">'+camp.name+'</p>';            			
            		}
            		html += '</div>';
            		html += '</a>';
            		html += '<div class="col-xs-2 clink">';
            		html += '<a href="#" class="cdirectlink">';
            		html += '<img alt="" src="/camping/resources/images/direct.svg" width="26" height="26" title='+camp.name+'>';
            		html += '</a>';
            		html += '</div>';
            		html += '</div>';
            		html += '</li>';
            		
            		$("#search-result").append(html);
            		
				})				
				var html2 = '<li class="list-group-item more-button"><button type="button" id="btn-more" class="btn btn-info">더보기</button></li>';
								
           		$("#search-result li:last").after(html2);
			
           		$("#btn-more").hide();
           		if(result.count >= 100) {
           			$("#btn-more").show();
           		}
			}
		})
	}
	
	$(".btn-search").click(function() {
		var keyword = $("#search-box").val();
		location.href = "map.camp?keyword=" + keyword;
	})
	$("#search-result").on('click', '#keyword-item', function() {
		var keyword = $("#search-box").val();
		location.href = "map.camp?keyword=" + $(this).attr('keyword-name');
	})
	
	$(".keyword-del").click(function() {
		$("#search-box").val('');
		$(".keyword-del").hide();
		$(".list-group-item").hide();
	})
	
	/* 해시태그 */
	$('.link-inkey').click(function() {
		var key = $(this).text();
			key = key.replace("#", "");
		$("#search-box").val(key);
		$("#search-box").focus();
		searchFind(key);
		
		$(".keyword-del").show();
	});
	
	/* 맵 */
	function xxx() {
	}
	$(".kmap-seoul").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Seoul.gif');
	});
	$(".kmap-gyeonggi").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Gyeonggi.gif');
	});
	$(".kmap-inchoen").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Inchoen.gif');
	});
	$(".kmap-gangwon").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Gangwon.gif');
	});
	$(".kmap-chungnam").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Chungnam.gif');
	});
	$(".kmap-chungbuk").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Chungbuk.gif');
	});
	$(".kmap-sejong").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Sejong.gif');
	});
	$(".kmap-busan").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Busan.gif');
	});
	$(".kmap-ulsan").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Ulsan.gif');
	});
	$(".kmap-daegu").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Daegu.gif');
	});
	$(".kmap-gyeongbuk").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Gyeongbuk.gif');
	});
	$(".kmap-gyeongnam").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Gyeongnam.gif');
	});
	$(".kmap-gwanju").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Gwangju.gif');
	});
	$(".kmap-jeonnam").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Jeonnam.gif');
	});
	$(".kmap-jeonbuk").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Jeonbuk.gif');
	});
	$(".kmap-jeju").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Jeju.gif');
	});
	$(".kmap-daejeon").mouseover(function(event) {
		$("#Map").attr('src','/camping/resources/images/kmap_Daejeon.gif');
	});
	
	
	$(".kmap-seoul").click(function(event) {
		$("#cate1 .seoul").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .seoul").prop('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "서울특별시", 1, 6);
	})
	
	$(".kmap-gyeonggi").click(function(event) {
		$("#cate1 .gyeonggi").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .gyeonggi").prop('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "경기도", 1, 6);
	})
	
	$(".kmap-inchoen").click(function(event) {
		$("#cate1 .inchoen").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .inchoen").prop('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "인천광역시", 1, 6);
	})
	
	$(".kmap-gangwon").click(function(event) {
		$("#cate1 .gangwon").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .gangwon").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "강원도", 1, 6);
	})
	
	$(".kmap-chungnam").click(function(event) {
		$("#cate1 .chungnam").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .chungnam").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "충청남도", 1, 6);
	})
	
	$(".kmap-daejeon").click(function(event) {
		$("#cate1 .daejeon").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .daejeon").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "대전광역시", 1, 6);
	})
	
	$(".kmap-chungbuk").click(function(event) {
		$("#cate1 .chungbuk").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .chungbuk").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "충청북도", 1, 6);
	})
	
	$(".kmap-sejong").click(function(event) {
		$("#cate1 .sejong").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .sejong").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "세종특별자치시", 1, 6);
	})
	
	$(".kmap-busan").click(function(event) {
		$("#cate1 .busan").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .busan").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "부산광역시", 1, 6);
	})
	
	$(".kmap-ulsan").click(function(event) {
		$("#cate1 .ulsan").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .ulsan").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "울산광역시", 1, 6);
	})
	
	$(".kmap-daegu").click(function(event) {
		$("#cate1 .daegu").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .daegu").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "대구광역시", 1, 6);
	})
	
	$(".kmap-gyeongbuk").click(function(event) {
		$("#cate1 .gyeongbuk").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .gyeongbuk").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "경상북도", 1, 6);
	})
	
	$(".kmap-gyeongnam").click(function(event) {
		$("#cate1 .gyeongnam").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .gyeongnam").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "경상남도", 1, 6);
	})
	
	$(".kmap-jeonnam").click(function(event) {
		$("#cate1 .jeonnam").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .jeonnam").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "전라남도", 1, 6);
	})
	
	$(".kmap-gwanju").click(function(event) {
		$("#cate1 .gwanju").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .gwanju").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "광주광역시", 1, 6);
	})
	
	$(".kmap-jeonbuk").click(function(event) {
		$("#cate1 .jeonbuk").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .jeonbuk").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "전라북도", 1, 6);
	})
	
	$(".kmap-jeju").click(function(event) {
		$("#cate1 .jeju").prop('selected', 'disabled');
		event.preventDefault();
		$("#cate1 .jeju").attr('selected', 'selected');
		$("#cate2").attr('style', 'display: inline-block');
		searchCampSites("sido", "제주특별자치시", 1, 6);
	})
	

	/* 지역별 */
	$("#btn-prev").click(function(event) {
		event.preventDefault();
		var city1 = $("#cate1").val();
		var city2 = $("#cate2").val();
		var totalpage = parseInt($("#totalpage").text());
		var nowpage = parseInt($("#nowpage").text());
		
		if(nowpage > 1) {
			nowpage--;
			$("#nowpage").text(nowpage);
			$("#btn-prev").addClass('on');
		}
		
		if(nowpage == 1) {
			$("#btn-prev").removeClass('on');
		}
		
		if(totalpage == nowpage) {
			$("#btn-next").removeClass('on');
		}
		
		if (city1 == 'all') {
			searchCampSites("all", '', nowpage, 6);
			return;
		}
		
		if(city2 != "") {
			searchCampSites("gugun", city2, nowpage, 6);
		} else {
			searchCampSites("sido", city1, nowpage, 6);
		}
	})
	
	$('#btn-next').click(function(event) {
		event.preventDefault();
		var city1 = $("#cate1").val();
		var city2 = $("#cate2").val();
		var totalpage = parseInt($("#totalpage").text());
		var nowpage = parseInt($("#nowpage").text());
		
		if(totalpage > nowpage) {
			nowpage++;
			$("#nowpage").text(nowpage);
		}
		
		if(nowpage > 1) {
			$("#btn-prev").addClass('on');
		}
		
		if(totalpage == nowpage) {
			$("#btn-next").removeClass('on');
		}
		
		if (city1 == 'all') {
			searchCampSites("all", '', nowpage, 6);
			return;
		}
		
		if(city2 != "") {
			searchCampSites("gugun", city2, nowpage, 6);
		} else {
			searchCampSites("sido", city1, nowpage, 6);
		}
	});
	
	$("#cate1").change(function() {
		var city = $(this).val();
		$("#nowpage").text("1");
		searchCampSites("sido", city, 1, 6);
	})
	
	$("#cate2").change(function() {
		var city = $(this).val();
		$("#nowpage").text("1");
		searchCampSites("gugun", city, 1, 6);
	})
	
	searchCampSites("all", '', 1, 6);
	
	function searchCampSites(a, b, c, d) {
		console.log(a,b,c,d);
		$(".camp-right-content").remove();
		$("#cate2 .gugun-list").remove();
		$.ajax({
			url: "search.camp",
			data:{gubun:a, city:b, pno:c, size:d},
			dataType:"json",
			success: function(data) {
				
				console.log(data);
				$("#total-cnt").text(data.count);
				$("#totalpage").text(data.pagination.totalPages);
				
				$.each(data.items, function(index, camp) {
					var html = '<div class="camp-right-content" data-no="'+camp.no+'">';
					html += '<div class="items hand col-sm-4" id="location-items" style="cursor:pointer">';
					html += '<div class="photo">';
					html += '<img src="/camping/resources/images/campsite/'+camp.photo+'" class="tm">';
					if(camp.sort == 'CAMP') {
						html += '<span class="cat" style="color: #91ee6c">'+camp.sort+'</span>';
					} else if(camp.sort == 'CAR') {
						html += '<span class="cat" style="color: #60b7ee">'+camp.sort+'</span>';
					} else if(camp.sort == 'NORMAL') {
						html += '<span class="cat" style="color: #f5ad22">'+camp.sort+'</span>';
					}
					html += '</div>';
					html += '<div class="cont">';
					html += '<p class="tt">'+camp.name+'</p>';
					html += '<p class="mcont">'+camp.sido+'>'+camp.gugun+'</p>';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					
					$(".kmapright .head").after(html);
					
				})
				
				$.each(data.gugun, function(index, camp) {
					var html = '<option class="gugun-list" value='+camp.gugun+'>'+camp.gugun+'</option>';
					
					$("#cate2").append(html);
				})
			}
		})
		
	}
	
	$("#cate1").change(function() {
		$("#cate2").attr('style', 'display: inline-block');
	})
	
	
    $('.kmapright').on('click', '.camp-right-content', function() {
    	location.href = "detail.camp?no=" + $(this).attr('data-no');
    });

	/* 차트링크이동 */
	$("#circles-1").click(function() {
		location.href = "map.camp?";
	})
	$("#circles-2").click(function() {
		location.href = "map.camp?sort=CAMP";
	})
	$("#circles-3").click(function() {
		location.href = "map.camp?sort=CAR";
	})
	$("#circles-4").click(function() {
		location.href = "map.camp?sort=NORMAL";
	})
	
	/* 차트 */
	var myCircle = Circles.create({
		  id:                  'circles-1',
		  radius:              75,
		  value:               parseInt('${total}'),
		  maxValue:            parseInt('${total}'),
		  width:               5,
		  text:                function(value){return value;},
		  colors:              ['#fff', '#fff'],
		  duration:            400,
		  wrpClass:            'circles-wrp',
		  textClass:           'circles-text',
		  valueStrokeClass:    'circles-valueStroke',
		  maxValueStrokeClass: 'circles-maxValueStroke',
		  styleWrapper:        true,
		  styleText:           true
	});
	
	var myCircle = Circles.create({
		  id:                  'circles-2',
		  radius:              75,
		  value:               parseInt('${car}'),
		  maxValue:            parseInt('${total}'),
		  width:               5,
		  text:                function(value){return value;},
		  colors:              ['#fff', '#ff5000'],
		  duration:            400,
		  wrpClass:            'circles-wrp',
		  textClass:           'circles-text',
		  valueStrokeClass:    'circles-valueStroke',
		  maxValueStrokeClass: 'circles-maxValueStroke',
		  styleWrapper:        true,
		  styleText:           true
	});
	
	var myCircle = Circles.create({
		  id:                  'circles-3',
		  radius:              75,
		  value:               parseInt('${normal}'),
		  maxValue:            parseInt('${total}'),
		  width:               5,
		  text:                function(value){return value;},
		  colors:              ['#fff', '#33cc33'],
		  duration:            400,
		  wrpClass:            'circles-wrp',
		  textClass:           'circles-text',
		  valueStrokeClass:    'circles-valueStroke',
		  maxValueStrokeClass: 'circles-maxValueStroke',
		  styleWrapper:        true,
		  styleText:           true
	});
	
	var myCircle = Circles.create({
		  id:                  'circles-4',
		  radius:              75,
		  value:               parseInt('${camp}'),
		  maxValue:				parseInt('${total}'),
		  width:               5,
		  text:                function(value){return value;},
		  colors:              ['#fff', '#0099ff'],
		  duration:            400,
		  wrpClass:            'circles-wrp',
		  textClass:           'circles-text',
		  valueStrokeClass:    'circles-valueStroke',
		  maxValueStrokeClass: 'circles-maxValueStroke',
		  styleWrapper:        true,
		  styleText:           true
	});
	$(".circles-maxValueStroke").attr('stroke-width', 1);

    /* 슬라이드 */
    $(document).ready(function() {
      var owl = $('.owl-carousel');
      owl.owlCarousel({
        items: 5,
        loop: true,
        margin: 10,
        autoplay: false,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
      });
      $('.play').on('click', function() {
        owl.trigger('play.owl.autoplay', [1000])
      })
      $('.stop').on('click', function() {
        owl.trigger('stop.owl.autoplay')
      })
    })
    
    /* 스크롤 */
    var scrollarea = $('.scrollarea');
    

    //function layoutsize () {
    //    var reheight = $(window).height();
    //    $('.scrollarea,.scrollwrapbox').height(reheight);
   // }

   // scrollarea.TrackpadScrollEmulator({
   //     wrapContent: false,
   // });

    //$(document).ready(layoutsize);
    //$(window).resize(layoutsize);
    
    //zingchart.THEME="classic";
 
    /* 차트 */
     
</script>

</html>