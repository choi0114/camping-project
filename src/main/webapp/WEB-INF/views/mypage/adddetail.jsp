<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>5gCamping :: 1박 2일</title>
	<link rel="shortcut icon" href="/camping/resources/images/campinglogo.png">
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/camping/resources/css/mypage/sys.css">
	<link rel="stylesheet" href="/camping/resources/css/mypage/mypage.css">
	<link rel="stylesheet" href="/camping/resources/css/main.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
function addr_search() {
	var inp = document.getElementById("address");
	var xmlhttp = new XMLHttpRequest();
	var url = "https://nominatim.openstreetmap.org/search?format=json&limit=3&q=" + inp.value;
	xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
   			var myArr = JSON.parse(this.responseText);
   			console.log(myArr)
   			if (myArr.length > 0) {
   				var lat = myArr[0].lat;
   				var lon = myArr[0].lon;
   				
   				$('#latitude').val(lat);
   				$('#longitude').val(lon);
   			}
  		}
	};
	xmlhttp.open("GET", url, true);
	xmlhttp.send();
}
</script>
<style>
	#foo {
		float: inherit;
		margin-right: 0 1%;
	}
	.pac-container{ z-index: 1500 !important; }
	#container{position: relative !important;}
</style>
</head>
<body>
<%@ include file="../common/detailNav.jsp" %>
<div class="container">
<h1>캠핑장 추가</h1>
	<div class="well">
		<form method="post" action="detail.camp" enctype="multipart/form-data">
			<table class="table">
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>
				<tr>
					<td>
						<label>캠핑장 이름</label>
					</td>
					<td>
						<input name="name" type="text" width="250px;" >
					</td>
				</tr>
				<tr>
					<td>
						<label>캠핑장 구분</label>
					</td>
					<td>
						<select name="sort">
							<option value="" selected="selected" disabled="disabled">선택하세요</option>
							<option value="NOMAL">일반캠핑장</option>
							<option value="CAR">카라반</option>
							<option value="CAMP">글램핑</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<label>캠핑장 연락처</label>
					</td>
					<td>
						<input name="tel" type="text" >
					</td>
				</tr>
				<tr>
					<td>
						<label>캠핑장 주소</label>
					</td>
					<td id="location-button">
						<input type="text" name="address" id="address" style="width: 500px;"placeholder="예) 서울특별시 종로구 율곡로10길 105" /> <button class="btn btn-primary" type="button" onclick="addr_search()">조회</button>
					</td>
				</tr>
				<tr>
					<td>위도</td>
					<td>
						<input id="latitude" name="latitude" readonly="readonly" />
					</td>
				</tr>
				<tr>
					<td>경도</td>
					<td>
						<input id="longitude" name="longitude" readonly="readonly" /> 
					</td>
				</tr>
				<tr>
					<td>
						<label>사이트 갯수</label>
					</td>
					<td>
						<input name="sites" type="number" >
					</td>
				</tr>
				<tr>
					<td>
						<label>가격</label>
					</td>
					<td>
						<input name="price" type="number" >
					</td>
				</tr>
				<tr>
					<td>
						<label>이미지첨부</label>
					</td>
					<td>
						<div class="upload">
							<span id="filename"></span>
							<label for="upFile"><em class="btn btn-info">사진선택</em>
								<input type="file" name="photo" class="upfile" id="upFile" style=" position: absolute; left: -9999px;" >
							</label>
							<img id="foo" src="/camping/resources/images/mypage/icons8-no-image-100.png" width="100px;">
						</div>
					</td>
				</tr>
			</table>
			
			<div class="text-right">
				<button class="btn btn-primary" type="submit">등록</button> 
				<button class="btn btn-danger" id="btn-cancel" type="button">취소</button>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	$('#upFile').change(function() {
	    var filepath = this.value;
	    var m = filepath.match(/([^\/\\]+)$/);
	    var filename = m[1];
		var filesize = Math.ceil( this.files[0].size/1048576);
	    $('#filename').html(filename);
		if(filesize > 21) {
			alert("첨부파일 용량이 21MB 보다 더 큽니다.");
			$('#filename').html('');
			return false;
		}
		var file = $(this).val();
		if(file != '') {
			var fileExt = file.substring(file.lastIndexOf(".") +1);
			var reg = /zip|gif|jpg|jpeg|png/i;
			if(reg.test(fileExt) == false) {
				alert("첨부파일은 zip, gif, jpg, png 파일만 등록 가능합니다.");
				$('#filename').html('');
				return false;
			}
		}
	});
	function submitCheck(f)
	{
		if (f.a.value == '')
		{
			return false;
		}
	}

	function saveCheck(f)
	{
		if (f.upfile.value == '')
		{
			alert('사진파일을 선택해 주세요.');
			f.upfile.focus();
			return false;
		}
		var extarr = f.upfile.value.split('.');
		var filext = extarr[extarr.length-1].toLowerCase();
		var permxt = '[gif][jpg][jpeg][png]';

		if (permxt.indexOf(filext) == -1)
		{
			alert('gif/jpg/png 파일만 등록할 수 있습니다.    ');
			f.upfile.focus();
			return false;
		}
		return confirm('정말로 등록하시겠습니까?       ');
	}
	
	
	  function readURL(input) {
	        if (input.files && input.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function(e) {
	                $('#foo').attr('src', e.target.result);
	            }
	            reader.readAsDataURL(input.files[0]);
	        }
	    }

	    $("#upFile").change(function() {
	        readURL(this);
	    });
	
	    $(function(){

	        $(".dropdown-menu").on('click', 'li a', function(){
	          $(".drop-btn:first-child").text($(this).text());
	          $(".drop-btn:first-child").val($(this).text());
	       });

	    });
		
	    
	    $('#btn-cancel').click(function() {
	    	history.back();
		})

	</script>
</body>
</html>