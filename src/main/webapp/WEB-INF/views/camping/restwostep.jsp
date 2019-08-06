<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Bootstrap Example</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<style>
	</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="page-header">
				<h3>resTWOSTEP 예약하기</h3>
			</div>
		</div>
	</div>
	<div class="row" style="margin-bottom: 40px;">
		<div class="col-sm-6">
			<div class="row">
				<div class="col-sm-12">
					<img src="/camping/resources/images/mypage/camp1.jpg"/>			
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 text-center">
					<p>장호 비치 캠핑장</p>
					<p>입실/퇴실일을 선택하세요.</p>
					<p> 8.13.(화) ~ 8.17.(토)</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6" id="res-change-box">
			<div class="row">
				<div class="col-sm-12">
					<h3>달력구간-오늘이 디폴트값으로 선택되어있어야 함</h3>				
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6"> 
					<p>600,000 원</p>
					<p>정상가 4박</p>
				</div>
				<div class="col-sm-6" style="vertical-align: middle;">					
					<div class="pull-right" style="margin-top: 20px;">
						<div style="display: inline-block;"><button>-</button></div>
						<div style="display: inline-block;">1</div>
						<div style="display: inline-block;"><button>+</button></div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<p style="color: red;">알립니다.</p>
					<p>*2인조식미포함</p>
					<p>*36개월미만아동 1명 무료입실</p>
					<p>*2인기준 1명 추가시 20,000원</p>
					<p>*3시부터입실 익일11시퇴실</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<button>다음단계</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- ajax로 이용해서 가져오는 html 코드 -->
	<div class="row">
		<div class="col-sm-6">
			<div class="row">
				<div class="col-sm-6">
					<h4>예약자 정보</h4>
				</div>
				<div class="col-sm-6">
					<p class="pull-right" style="color: #00c73c;">v 필수입력</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<form class="well">
						<div class="form-group">
							<label>v 예약자</label>
							<input type="text">
						</div>
						<div class="form-group">
							<label>v 연락처</label>
							<input type="text">
						</div>
						<div class="form-group">
							<label>이메일</label>
							<input type="text">
						</div>
						<div class="form-group">
							<label>요청사항</label>
							<textarea rows="5" cols="40">업체에 요청하실 내용을 적어주세요.</textarea>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8">
					<button>v</button>이용자 약관 전체동의
				</div>
				<div class="col-sm-4">
					<h6>필수동의</h6>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8">
					ㄴ 이용약관 동의
				</div>
				<div class="col-sm-4">
					보기 v
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8">
					ㄴ 개인정보 수집 동의
				</div>
				<div class="col-sm-4">
					보기 v
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8">
					ㄴ 개인정보 제공 동의
				</div>
				<div class="col-sm-4">
					보기 v
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8">
					<h4>알림 수신 설정</h4>
				</div>
				<div class="col-sm-4">
					<h6>필수선택</h6>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<button>v</button>이메일로 알림 받기
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<h4>선택내역</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3">
					기본요금
				</div>
				<div class="col-sm-5">
					VVIP 히노끼스파(1)
				</div>
				<div class="col-sm-4">
					570,000원
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8">
					합계
				</div>
				<div class="col-sm-4">
					570,000원
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8">
					<button>v</button>취소/환불 규정에 대한 동의
				</div>
				<div class="col-sm-4">
					<h6>필수동의</h6>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<table class="table">
						<tbody>
							<tr>
								<td>이용 8일 전까지</td>
								<td>취소 수수료 없음</td>
							</tr>
							<tr>
								<td>이용 7일 전</td>
								<td>총 결제금액의 10% 차감</td>
							</tr>
							<tr>
								<td>이용 6~4일 전</td>
								<td>총 결제금액의 50% 차감</td>
							</tr>
							<tr>
								<td>이용 3일 전</td>
								<td>총 결제금액의 70% 차감</td>
							</tr>
							<tr>
								<td>이용 2일 전~이용 당일</td>
								<td>총 결제금액의 100% 차감</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-10">
					<h4>판매자 정보</h4>
				</div>
				<div class="col-sm-2">
					<button>v</button>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3">
					상호
				</div>
				<div class="col-sm-9">
					노벰버리조트
				</div>
				<div class="col-sm-3">
					대표자명
				</div>
				<div class="col-sm-9">
					이한나
				</div>
				<div class="col-sm-3">
					소재지
				</div>
				<div class="col-sm-9">
					경상북도 경주시 감포읍 오류리 595(경상북도 경주시 감포읍 감포로 226-4)<br/>
					경주IC를 빠져나와 4번국도를 타고 감포방향으로 오세요<br/>
					양북면 어일삼서리 - 좌측으로 진입 - 전촌삼거리 좌측진입 후 감포읍내<br/>
					감포읍내에서 구룡포 방향 1KM 좌측코너 맞은편 노벰버리조트
				</div>
				<div class="col-sm-3">
					소재지
				</div>
				<div class="col-sm-9">
					341-42-00726
				</div>
				<div class="col-sm-3">
					연락처
				</div>
				<div class="col-sm-9">
					054-774-3347
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<button>결제하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>