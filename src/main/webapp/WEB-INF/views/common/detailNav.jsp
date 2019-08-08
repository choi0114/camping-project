<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
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
<div class="detail-Nav" id="container">
    <div class="gnb">
        <ul class="">
            <li><a href="#">HOME</a></li>
            <li><a href="#">공지사항</a></li>
            <li><a href="#">회원가입</a></li>
            <li><a href="#">로그인</a></li>
            <li><a href="#">마이페이지</a></li>
            <li><a href="#"><span style="color: #25a5f0">안녕하세요!#님</span></a></li>
            <li><a href="#">로그아웃</a></li>
            <li><a href="#">고객센터</a></li>
        </ul>
    </div>
    <div class="header-wrap">
        <div class="logo">
            <h1><a href="#"><img src="/camping/resources/images/5g_logo1.png" alt="오지캠핑"/></a></h1>
        </div>
        <div class="topmenu">
            <ul>
                <li><a href="#">전체</a></li>
                <li><a href="#">일반캠핑</a></li>
                <li><a href="#">유료캠핑장</a></li>
                <li><a href="#">카라반</a></li>
                <li><a href="#">테마검색</a></li>
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
                       <form action="" method="get" id="layout-search-border"> <!--onsubmit-->
                           <fieldset>
                                <legend>통합검색 폼</legend>
                                <input autocomplete="off" type="text" id="totalsearch" class="search-input" name="keyword" placeholder="캠핑장 검색" onfocus="this.placeholder = ''" onblur="this.placeholder = '캠핑장 검색'" value="">
                                <button type="submit" class="btn-search">
                                    <i class="glyphicon glyphicon-search" aria-hidden="true"></i>
                                </button>
                           </fieldset>
                       </form>
                    </div>
                    <div class="rewult-wrap" style="display: none;">
                        <img src="image/t_arr_blue.png" class="t-arr-blue">
                        <i class="fa fa-window-close-o hand" aria-hidden="true"></i> <!--onclick 안내창 숨기기-->
                        <h3 id="bot">
                            <span class="fblack">''</span>
                            <span>100건</span>
                            검색결과가 없습니다, 이 검색되었네요
                        </h3>
                        <div id="resulttop" style="display: none;">
                            <div class="sitem">
                                <img src="image/slide15.jpg" width="80" height="45" class="img-thumbnail">
                                <div class="fl cright hand">
                                    <p class="cpath">충남 > 태안군 > 남면</p>
                                    <p class="sbjval"><span class="highlight">몽산포 홀리데이파크</span></p>
                                </div>
                                <div class="fr clink">
                                    <a href="#" class="cdirectlink">
                                        <img src="image/direct.svg" width="26" height="26" title="#">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
