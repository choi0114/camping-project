<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>5g 캠핑(###국내 No.1###)</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.container-top {
	padding-top: 30px;
}

.title-box {
	cursor: pointer;
}
</style>
</head>
<body style="background-color:#f7f7f9">
	<%@ include file="../common/adminNavi.jsp"%>
	<div class="col-xs-1">
		<c:set var="menu" value="manage" />
		<%@ include file="../common/adminSidebar.jsp"%>
	</div>
		<div class="container" >
		<div class="col-xs-11">	
			<div class="row">
			    <div class="col-sm-11">
			           <div class="form-group pull-right"  style="margin-top:15px">
			                <label>공지사항 내용</label>
			            	<input type="text" id="keyword" name="keyword">
			            	<button type="submit" class="btn btn-default" id="btn_header_search">검색</button>
			           </div>
			    </div>
			</div>
        <table class="table">
            <colgroup>
                <col width="10%">
                <col width="10%">
                <col width="60%">
                <col width="20%">
            </colgroup>
            <thead>
                <tr>
                    <th></th>
                    <th>번호</th>
                    <th>제목</th>
                    <th>등록일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>1</td>
                    <td class="title-box">2019년 새해 해돋이 대비하여 일출, 일몰시간 표기</td>
                    <td>2019-01-07</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        각 캠핑장 위치별로 일출시간, 일몰시간을 표기하였습니다. 지역별 일출 일몰 시간은 어플에서 지도로 보신 후 원하는 위치 캠핑장을 선택하면 
                        오늘 부터 1주일간 일출 일몰 시간 확인 가능합니다. 모바일웹에서도 캠핑장별로 확인이 가능합니다.
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>2</td>
                    <td class="title-box">오지캠핑 웹 및 어플 장애 사과드립니다.</td>
                    <td>2019-03-02</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        안녕하세요. 오지캠핑 운영자입니다. 약 2주전부터 웹 및 어플이 접속지연 또는 접속 장애 문제가 있었습니다. 전 단순히 방문자가 많아 생기는 문제인줄 알았는데 최근 며칠간은 아예 초기 접속이 되지 않는 문제가 확인되었습니다. 
                        IP로 위치를 확인하는 서비스 딜레이 현상이 있는걸 확인 후 해당 서비스를 삭제 조치하여 해결하였습니다. 며칠동안 빠른 해결하지 못하고 방치하게 되서 송구스럽게 생각합니다. 현재 지속적으로 모니터링 하면서 개선중에 있사오니 
                        불편하신점이나 이상한점은 자유게시판에 글 남겨주셨으면 합니다. 불편드려 죄송합니다.
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>3</td>
                    <td class="title-box">캠핑장 위치별 미세먼지 농도 적용</td>
                    <td>2019-05-08</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        캠핑장 별로 상세 페이지 중간만큼 보시면 아래 그림처럼 해당 위치 주변 미세먼지 및 초미세먼지 농도값을 확인 할 수 있습니다.
                        외부활동 계획 세우는데 캠핑장 정보도 찾고 미세먼지도 찾고 일기예보도 찾아야 하고 이 모든 불편함을 오지캠핑에서 해결해 드렸습니다.
                        오지캠핑을 찾아주시는 캠퍼님들의 폐는 소중하니깐요..
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>4</td>
                    <td class="title-box">상세 페이지 조회시 딜레이 현상</td>
                    <td>2019-05-18</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        캠핑장 상세페이지 조회시 많이 느려진듯한 느낌이 들어서 정밀 분석을 해보니 기상청 중기날씨씨API에서 딜레이 현상이 발생됨을 확인하였습니다.
						기상정보 통신중에 hang이 발생되어 화면이 하얗게 정지된 상태로 보이는 현상도 간헐적으로 발견되고 있습니다. 현재 가장 최적의 방법을 찾고 있습니다. 불편드려 죄송합니다.
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>5</td>
                    <td class="title-box">캠핑장 기본 정렬 방식 변경되었습니다.</td>
                    <td>2019-06-02</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        최초 접속시 거리순(접속위치와 가까운)에서 -> 업데이트 순(최근 등록 및 정보 업데이트)으로 기본 정렬이 변경되었습니다.
						5gcamp는 수시로 캠핑장 정보를 업데이트 하고 있으나 거리순으로 정렬이 되다 보니 업데이트 되는 캠핑장 노출이 잘 안되고 있었습니다.
						그래서 업데이트 정렬이 기본으로 출력되게 변경되었습니다. 접속위치에서 가장 가까운 목록순으로 보고자 한다면..상단의 정렬 방식을 거리순 클릭해주세요.
						감사합니다.
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>6</td>
                    <td class="title-box">위치정보는 오지캠핑 서버에 저장되지 않습니다.</td>
                    <td>2019-06-14</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td class="content-box">
                        오지캠핑에서는 접속자 위치 기준 캠핑장 정렬 기능을 위해 PC,모바일웹 에서는 IP기준, 어플에서는 스마트폰 GPS 정보를 이용하여 접속자 위치 정보를 확인합니다.
						해당 위치 정보는 오지캠핑 서버에 저장되지 않으며, 접속자의 어떠한 정보 또한 수집하지 않습니다.
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>7</td>
                    <td class="title-box">PC기반 위치정보 업데이트</td>
                    <td>2019-06-24</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                  <td class="content-box">
                        보안인증서 설치로 PC에서 접속 위치 기반 캠핑장 위치를 확인할 수 있습니다. 최초 접속시 크롬브라우저는 상단에 내 위치 확인을 허용해 주시기 바랍니다.
						위치정보는 접속위치별 캠핑장 위치 정렬기능에만 사용되며 위치정보는 저장되지 않습니다.
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>8</td>
                    <td class="title-box">익스플로어11 PC버전 장애</td>
                    <td>2019-07-10</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                   <td class="content-box">
                        익스플로어11을 이용하여 PC버전 오지캠핑 접속시 세부 버전에 따라 페이지가 정상작동하지 않는 버그를 발견하였습니다.
						이는 다음 카카오 좌표 변환에서 리턴이 제대로 안되서 생기는 문제로 보입니다.
						아직 원만한 해결책은 찾지 못했습니다. 익스플로어 11을 사용하시는 분은 익스플로어 11 최신버전으로 업데이트 또는 
						익스플로어 edge를 사용하시길 권장합니다.
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>9</td>
                    <td class="title-box">오지/노지 정보는 단계적 회원서비스로 변경합니다.</td>
                    <td>2019-07-18</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td class="content-box">
                       오지/노지 정보는 단계적으로 회원제/회원레벨 시스템을 적용하고자 합니다.
						우선 회원로그인 하지 않으면 오지/노지 카테고리 정보는 이용함에 있어 약간 불편할 수 있습니다.
						유료캠핑장, 글램핑/카라반 정보는 비회원도 아무 제약없이 정보 열람 가능합니다.
                    </td>
                    <td></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>10</td>
                    <td class="title-box">서버 이전 공지 08.10(토) 새벽3시</td>
                    <td>2019-08-10</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td class="content-box">
                        2019년 8월 10일 새벽 3시 부터 약 1시간 정도 서버 이전 작업을 실행합니다. 해당 시간동안 접속장애가 발생할 수 있습니다.
                        많은 양해부탁드립니다.
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4"></div>
			<div class="col-sm-4">  	
				<button type="button"  class="btn btn-default" id="btn-yes-campingsite">수정</button>
				<button type="button"  class="btn btn-default" id="btn-no-campingsite">등록</button>
				<button type="button"  class="btn btn-default" id="btn-no-campingsite">삭제</button>
			</div>
		</div>
    </div>
    <script type="text/javascript">
    	$('tbody tr:odd').hide();
    
    	$('tbody tr:even').click(function() {
    		$(this).next().toggle();
    	});
    </script>
</body>
</html>