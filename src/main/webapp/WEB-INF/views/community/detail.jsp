<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <title>커뮤니티 상세페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/camping/resources/css/community/detail.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="row">
        <div class="col-sm-1">
        </div>
        <div class="col-sm-6 page-head-left">
            <span>커뮤니티 > </span>
        </div>
        <div class="col-sm-4  page-head-right">
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
        <div class="col-sm-1">
        </div>
    </div>
    <hr/>
   <div class="row">
       <div class="col-sm-3"></div>
       <div class="col-sm-6">
            <div class="row bottom-line">
                <div class="col-sm-1 boot">
                   <img class="id-img " src="/camping/resources/images/community/유저프로필" width="50" border-radius=50% height="50" alt=""/>
                </div>
                <div class="col-sm-7 boot ">
                   <div class="row nick" >
                        ${board.userId }
                   </div>
                   <div class="row date" >
                       <fmt:formatDate value="${board.createDate }"/>
                   </div>
                </div>
                <div class="col-sm-4 location">
                    <div class="row">
                        <div class="col-sm-1">
                            <img class="id-img " src="/camping/resources/images/community/map.png" width="25"  height="25" alt=""/>
                        </div>
                        <div class="col-sm-9">
                            위치위치위치위치위치우치입니다
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2 sort">
                    ${sort }
                </div>
                <div class="col-sm-10 title">
                    ${board.title }
                </div>
            </div>
            <div class="row bottom-line">
                <div class="col-sm-12 contents">
                	${board.contents }
                </div>
            </div>
            <div class="row like-comment  bottom-line">
                <div class="col-sm-6">
                    <span class="glyphicon glyphicon-thumbs-up btn-lg" aria-hidden="true"></span>
                    <span class="like">${board.likes }</span>
                    <img class="icon-img" src="/camping/resources/images/community/blogging.png" width="18" height="18"  align="top" />
                    <span class="comment">${board.commentCnt }</span>
                    <img class="icon-img" src="/camping/resources/images/community/share.png" width="18" height="18"  align="top" />
                    <span>공유하기</span>
                    
                </div>
            </div>
            <div class="row bottom-line">
                <div class="col-sm-1">
                     <img class="id-img2 " src="/camping/resources/images/community/로그인유저프로필" width="60" border-radius=50% height="60" alt=""/>
                </div>
                <div class="col-sm-10">
                    <textarea class="write-comment" id="" >  댓글을 남겨주세요
                    </textarea>
                </div>
                <div class="col-sm-1">
                    <button type="button" class="btn btn-default write-button" >등록</button>
                </div>
            </div>
            <div class="row bottom-line">
                <div class="col-sm-1">
                     <img class="id-img3" src="/camping/resources/images/community/유저프로필" width="55" border-radius=50% height="55" alt=""/>
                </div>
                <div class="col-sm-10">
                    <div class="row comment-top">
                        <div class="col-sm-2 comment-nick">수정이다요</div>
                        <div class="col-sm-3 comment-date">2018-11-12 13:32:36</div>
                    </div>
                    <div class="row comment-bottom">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius quis blanditiis asperiores nisi! Tempore, ab, quibusdam? Aspernatur omnis rerum commodi quas quis architecto nostrum mollitia reprehenderit facilis dolores officia quo quisquam repellat odio, voluptate sed fugiat similique doloremque labore ipsum tempore libero! Quo cum quaerat consequuntur nulla magnam quas, maxime nihil, quibusdam laudantium facere error tenetur laborum modi qui odit vitae, maiores culpa earum nobis. Ad vero eveniet, cupiditate et deserunt consectetur non necessitatibus nulla magni repellendus deleniti minima, inventore, vel fugiat? Cumque officia nisi praesentium, minima quibusdam odio minus, vel aperiam rem reprehenderit commodi, voluptatibus a aspernatur impedit quod.
                    </div>
                </div>
                <div class="col-sm-1 img_container">
                     <img class="share-img" src="/camping/resources/images/community/share.png"  alts=""/>
                </div>

            </div>
            
            
       </div>
       <div class="col-sm-3"></div>
   </div>
</body>
</html>