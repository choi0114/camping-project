<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/camping/resources/css/community/home.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
    
    <div class="col-sm-5 col-sm-offset-2 page-head-left">
        <span>커뮤니티 > 전체: 최신순</span>
    </div>
    <div class="col-sm-3 page-head-right">
       <form class="form-inline">
           <div class="form-group pull-right">
                <select class="form-control">
                    <option>전체</option>
                </select> 
                <select class="form-control">
                    <option>제목</option>
                </select>
            <input class="form-control" type="text" title="통합검색" id="header_keyword" name="header_keyword" minlength="2" maxlength="10">
            <button class="form-control" type="button" class="btn btn-default" id="btn_header_search">검색</button>
           </div>
      </form>
    </div>
</div>
<hr/>
<div class="row bottom">
    <div class="col-sm-2 col-sm-offset-2">
        <div class="left-box">
            <div class="menu-box">
                <span class="select-orange">
                    전체: 최신순 
                </span>
            </div>

            <div class="menu-box">
                <span>
                    가입인사 게시판
                </span>
            </div>
            <div class="menu-box">
                <span>
                    캠핑장 리뷰 게시판    
                </span>
            </div>
            <div class="menu-box">
                <span>
                    캠핑장 의견 게시판
                </span>
            </div>
            <div class="last-menu-box">
                <span>
                    자유 게시판
                </span>
            </div>
        </div>
        <div class="ad">

        </div>
    </div>
    <div class="col-sm-5">
        <!-- right-box 시작 -->
        <div class="row right-box">
            <div class="col-sm-3 right-box-img">
                <img src="/camping/resources/images/blogging.png" width="154" height="154" >
            </div>
            <div class="col-sm-9 in-contents">
                <div class="row">
                    
                    <div class="col-sm-7 title">
                        <span>제목제목제목젬고</span>
                    </div>
                    <div class="col-sm-5 date text-right">
                       <span>2019.12.12</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 contents">
                        내요ㅇ내sdkljflkdjflkjdsfjsdlkfjsdjfklsdjflksdjflkj요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내요내
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-7 trace">
                        <span class="id-emphasis">수정</span>님이 <span class="location-emphasis">시애틀</span>에서 남긴포스트입니다
                    </div>
                    <div class="col-sm-5 text-right">
                        <span class="glyphicon glyphicon-thumbs-up btn-lg" aria-hidden="true"></span>
                        <span class="like">1</span>
                        <img class="icon-img" src="/camping/resources/images/community/blogging.png" width="18" height="18"  align="top" />
                        <span class="comment">12</span>
                    </div>
                </div>
            </div>
        </div>
       
        <!-- 끝 -->
        <div class="row">
            <div class="text-right col-sm-8">
                <nav aria-label="Page navigation example">
                  <ul class="pagination">
                    <li class="page-item">
                      <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                      </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                      <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                      </a>
                    </li>
                  </ul>
                </nav>
            </div>
            <div class="col-sm-4 text-right">
                <button type="button" onclick="location.href='write.camp'" class="btn btn-default write-button" >글쓰기</button>
            </div>
        </div>
    </div>
</div>
    
    
</body>
</html>