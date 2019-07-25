<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
            <span>커뮤니티 > 전체: 최신순</span>
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
                   <img class="id-img " src="/camping/resources/images/blogging.png" width="50" border-radius=50% height="50" alt=""/>
                </div>
                <div class="col-sm-7 boot ">
                   <div class="row nick" >
                        닉네임
                   </div>
                   <div class="row date" >
                       2019/01/07 10:38
                   </div>
                </div>
                <div class="col-sm-4 location">
                    <div class="row">
                        <div class="col-sm-1">
                            <img class="id-img " src="/camping/resources/images/map.png" width="25"  height="25" alt=""/>
                        </div>
                        <div class="col-sm-9">
                            위치위치위치위치위치우치입니다
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2 sort">
                    여행기
                </div>
                <div class="col-sm-10 title">
                    제목입니당 제목이예용 제목ㄱ곡목목목목몸고
                </div>
            </div>
            <div class="row bottom-line">
                <div class="col-sm-12 contents">
                   Lorem ipsum dolor <strong>english</strong>sit amet, consectetur adipisicing elit. Neque eveniet est ipsum fugiat quo asperiores nihil ab, fuga. Libero aliquam laudantium mollitia incidunt dignissimos voluptate molestias quibusdam nulla laborum culpa quisquam, eaque similique accusantium. Fuga odio nisi magnam! Minima repudiandae aliquam adipisci necessitatibus dolores eius optio voluptatem natus doloribus in, quo maxime vero, harum nisi repellat totam dolor ex, magnam quas ducimus quod? Saepe praesentium consequuntur, fuga deleniti optio iusto deserunt, maiores voluptates eaque, quam nesciunt! Totam voluptatem molestiae sunt culpa explicabo obcaecati nostrum laborum reiciendis iste quo inventore eius nihil quam suscipit in, rerum, temporibus maxime libero eaque numquam, accusamus deserunt mollitia aliquid, nesciunt! Itaque mollitia id repudiandae eveniet quas nisi ex consequuntur saepe voluptas iste, tempore delectus modi ut voluptatibus ea labore minima sequi culpa quod recusandae commodi natus molestiae, ullam laboriosam dolorem! Praesentium molestias cumque repudiandae inventore nostrum necessitatibus harum quam et blanditiis, quo consequatur quasi odio, laborum, esse pariatur dicta similique at perferendis. Quod unde veniam, animi, at repellat sequi omnis tempore tempora vitae illum quas! Atque dolorum dicta eligendi beatae? Minima ducimus ipsam, molestiae deserunt. Eaque commodi voluptatibus optio iure, similique suscipit asperiores placeat consectetur eveniet eum et qui, consequatur soluta. Consequatur, ipsum aperiam nam!
                   <img class="contents-img " src="/camping/resources/images/blogging.png" width="500"  height="500" alt=""/>
                   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus adipisci ab a aperiam at, similique dolorum, temporibus praesentium ipsam perspiciatis rem. Aspernatur odio veritatis hic fugit vitae delectus quam corrupti. A ratione accusantium, odio quidem maxime alias iusto dolore eligendi fuga ea, itaque quis placeat optio at similique nostrum asperiores deleniti, quia numquam assumenda blanditiis et. Iure perspiciatis non dolore quos itaque et distinctio, minima eos, delectus sint rem possimus. Praesentium tempora debitis natus officiis fuga quis, necessitatibus quae excepturi assumenda sint odit molestias ex ducimus placeat maxime cupiditate aliquid. Cupiditate aliquam natus repellendus itaque, eos laboriosam ad dicta vel doloribus modi commodi laudantium explicabo dolore, consequuntur numquam mollitia quaerat minus sed incidunt laborum. Sunt, omnis explicabo veniam autem, maiores consequuntur iure id iste delectus qui maxime ab eligendi rerum amet dolore asperiores distinctio, eos modi alias nisi vitae est quis corrupti officiis. Eligendi iste odit quibusdam, velit atque veritatis dolor earum pariatur ad quas, deserunt tenetur iure praesentium, corporis ut nostrum maxime voluptatum magni consequatur voluptate repellendus quisquam. Quisquam, molestias veritatis sequi eaque debitis incidunt in, illum repellendus dignissimos accusantium repudiandae, officia facere quas harum tempora aut animi atque esse magnam deserunt hic modi nulla ipsum voluptatem? Officia, nostrum?
                </div>
            </div>
            <div class="row like-comment  bottom-line">
                <div class="col-sm-6">
                    <span class="glyphicon glyphicon-thumbs-up btn-lg" aria-hidden="true"></span>
                    <span class="like">1</span>
                    <img class="icon-img" src="/camping/resources/images/blogging.png" width="18" height="18" alt="코알라 사진" align="top" />
                    <span class="comment">12</span>
                    <img class="icon-img" src="/camping/resources/images/share.png" width="18" height="18" alt="코알라 사진" align="top" />
                    <span>공유하기</span>
                    
                </div>
            </div>
            <div class="row bottom-line">
                <div class="col-sm-1">
                     <img class="id-img2 " src="/camping/resources/images/share.png" width="60" border-radius=50% height="60" alt=""/>
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
                     <img class="id-img3" src="/camping/resources/images/share.png" width="55" border-radius=50% height="55" alt=""/>
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
                     <img class="share-img" src="/camping/resources/images/share.png"  alts=""/>
                </div>

            </div>
            
            
       </div>
       <div class="col-sm-3"></div>
   </div>
</body>
</html>