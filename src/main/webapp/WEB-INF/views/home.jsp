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
            padding: 0 0 20px 0;
            margin: 0;
            text-align: center;
            font-size: 25px;
        }

        .main-wrap {width: 1200px;}
        .main-wrap #form-box{position: relative; left: 134px;}
        .main-wrap .inkey{font-size: 17px; text-align: center; padding-top: 15px;}
        .main-wrap .inkey .link-inkey{color: #fff; margin: 0px 10px; opacity: .7; font-weight: bold;}
        .main-wrap .search-form {
            background: #fff;
            border-radius: 60px;
            width: 650px;
            height: 60px;
        }

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

        .main-wrap .search-form .keyword-del {
            padding: 20PX 20PX;
            margin-left: 30px;
        }

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

        .btn-sido {
            display: inline-block;
            height: 60px;
            border-radius: 60px;
            overflow: hidden;
            box-shadow: 0px 0px 30px rgba(0, 0, 0, .4);
            width: 115px;
            line-height: 60px;
            margin-right: 10px;
            font-weight: 700;
            background: #25a5f0;
            color: #fff;
            text-align: center;
            cursor: pointer;
        }

        .btn-sido i {
            margin-left: 5px
        }

        .btn-sido hover {
            color: #000;
            background-color: #ccc;
        }

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
        .keyword{box-shadow: none !important;}

        legend {
            display: none;
        }
        .container .maincamp{width: 1200px;}
        .container .maincamp .large-12{width: 1200px;}
        .container .maincamp h2 {font-size: 23px; color: #fff;}
        .container .maincamp h2 span {color: #ff4000; font-weight: 600;}
        .container .maincamp .owl-carousel{height: 186px;}
        .container .maincamp .maincols{width: 225px; margin: 0; float: left; position: relative;}
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
        .text{position: absolute; bottom: -50px; left: 50%; transform: translateX(-50%);}
        .text p:first-child{margin: 0; font-size: 12px; text-align: center; font-weight: bold;}
        .text p:last-child{color: #fff; margin: 0; font-size: 14px; text-align: center; white-space: nowrap; font-weight: bold;}
        .owl-carousel .owl-dots .disabled, .owl-carousel .owl-nav.disabled {display: block;}
        .owl-carousel .owl-nav button.owl-prev, .owl-carousel .owl-nav button.owl-next{width: 36px; height: 36px; background: #fff; 
                            font-size: 30px; border-radius: 100%; line-height: 30px; position: absolute; top: 50px; z-index: 100;}
        .owl-carousel .owl-nav button.owl-prev{left: -23px;}
        .owl-carousel .owl-nav button.owl-next{right: -23px;}
        .wrap{width: 100%;}
        .inner-wrap{width: 100%; height: 100vh; overflow: hidden}
        .container .flex-wrapper .text-center{width: 18%}
        .container .flex-wrapper .circles-text{font-size: 45px !important; color: #fff;}
    </style>
</head>

<body>
   <div class="wrap">
       
   <div class="inner-wrap">
    <div class="main-full-image" style="height: 937px; background: url('/camping/resources/images/1.jpg')">
        <div class="container">
            <div class="row main-wrap">
                <div class="col-sm-12">
                    <div class="main-search">
                        <h2>오늘은 어디로 가볼까?</h2>
                    </div>
                    <div id="form-box" >
                        <div class="col-sm-3 btn-sido hand">
                            지역별
                            <i class="glyphicon glyphicon-chevron-down" aria-hidden="true"></i>
                        </div>
                        <div class="col-sm-9 search-form" style="box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 30px;">
                            <form method="" action="" id="">
                                <fieldset>
                                    <legend>통합검색 폼</legend>
                                    <input autocomplete="off" type="text" id="" name="" maxlength="14" placeholder="캠핑장 검색" onfocus="this.placeholder = ''" onblur="this.placeholder = '캠핑장 검색'" class="search-input keyword " value="">
                                    <a class="keyword-del hand">
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
                        <a href="#" class="link-inkey">#무료</a>
                        <a href="#" class="link-inkey">#숲속</a>
                        <a href="#" class="link-inkey">#무료야영장</a>
                        <a href="#" class="link-inkey">#가평</a>
                        <a href="#" class="link-inkey">#그늘</a>
                        <a href="#" class="link-inkey">#양양</a>
                    </div>
                </div>
            </div>
            <div class="row flex-wrapper">
				<div class="col-sm-3 text-center">
					<div class="circle" id="circles-1"></div>
				</div>
				<div class="col-sm-3 text-center">
					<div class="circle" id="circles-2"></div>
				</div>
				<div class="col-sm-3 text-center">
					<div class="circle" id="circles-3"></div>
				</div>
				<div class="col-sm-3 text-center">
					<div class="circle" id="circles-4"></div>
				</div>
            </div>
            <div class="maincamp">
                <h2><span>New</span> &amp; Update</h2>
                <div class="large-12 columns">
                    <div class="owl-carousel">	
                        <div class="item">
                            <div class="maincols">
                                <div class="twrap">
                                    <div class="thumb hand">
                                        <div class="border"></div>
                                        <span class="nwt">U</span>
                                        <img src="/camping/resources/images/slide1.jpg" alt="##캠핑장" width="450" class="tm">
                                        <p class="distance">334.9km</p>
                                        <a href="#" class="link-scrap" id="chk-scrap-2659">
                                            <i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="text">
                                    <p style="color: #f5ad22">유료캠핑장</p>
                                    <p>백미리 희망 캠핑장</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="maincols">
                                <div class="twrap">
                                    <div class="thumb hand">
                                        <div class="border"></div>
                                        <span class="nwt">U</span>
                                        <img src="/camping/resources/images/slide1.jpg" alt="##캠핑장" width="450" class="tm">
                                        <p class="distance">334.9km</p>
                                        <a href="#" class="link-scrap" id="chk-scrap-2659">
                                            <i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="maincols">
                                <div class="twrap">
                                    <div class="thumb hand">
                                        <div class="border"></div>
                                        <span class="nwt">U</span>
                                        <img src="/camping/resources/images/slide2.jpg" alt="##캠핑장" width="450" class="tm">
                                        <p class="distance">334.9km</p>
                                        <a href="#" class="link-scrap" id="chk-scrap-2659">
                                            <i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="maincols">
                                <div class="twrap">
                                    <div class="thumb hand">
                                        <div class="border"></div>
                                        <span class="nwt">U</span>
                                        <img src="/camping/resources/images/slide3.jpg" alt="##캠핑장" width="450" class="tm">
                                        <p class="distance">334.9km</p>
                                        <a href="#" class="link-scrap" id="chk-scrap-2659">
                                            <i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="maincols">
                                <div class="twrap">
                                    <div class="thumb hand">
                                        <div class="border"></div>
                                        <span class="nwt">U</span>
                                        <img src="/camping/resources/images/slide4.jpg" alt="##캠핑장" width="450" class="tm">
                                        <p class="distance">334.9km</p>
                                        <a href="#" class="link-scrap" id="chk-scrap-2659">
                                            <i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="maincols">
                                <div class="twrap">
                                    <div class="thumb hand">
                                        <div class="border"></div>
                                        <span class="nwt">U</span>
                                        <img src="/camping/resources/images/slide5.jpg" alt="##캠핑장" width="450" class="tm">
                                        <p class="distance">334.9km</p>
                                        <a href="#" class="link-scrap" id="chk-scrap-2659">
                                            <i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="maincols">
                                <div class="twrap">
                                    <div class="thumb hand">
                                        <div class="border"></div>
                                        <span class="nwt">U</span>
                                        <img src="/camping/resources/images/slide6.jpg" alt="##캠핑장" width="450" class="tm">
                                        <p class="distance">334.9km</p>
                                        <a href="#" class="link-scrap" id="chk-scrap-2659">
                                            <i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="maincols">
                                <div class="twrap">
                                    <div class="thumb hand">
                                        <div class="border"></div>
                                        <span class="nwt">U</span>
                                        <img src="/camping/resources/images/slide7.jpg" alt="##캠핑장" width="450" class="tm">
                                        <p class="distance">334.9km</p>
                                        <a href="#" class="link-scrap" id="chk-scrap-2659">
                                            <i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="container">
        <div><p>dfasfdsfa</p></div>
    </div>
    </div>
</body>
<script type="text/javascript">
	
	/* 차트 */
	var myCircle = Circles.create({
		  id:                  'circles-1',
		  radius:              75,
		  value:               2388,
		  maxValue:            2388,
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
		  value:               282,
		  maxValue:            2388,
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
		  value:               1587,
		  maxValue:            2388,
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
		  value:               519,
		  maxValue:            2388,
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