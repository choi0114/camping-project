<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>5gCamping :: 1박 2일</title>
	<link rel="shortcut icon" href="/camping/resources/images/campinglogo.png">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/camping/resources/css/theme/theme.css">
</head>
<body>
<div class="container" style="background-color: #f7f7f9;">
	
	<!-- Modal -->
	<div id="theme-search-modal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
		    <!-- Modal content-->
		    <div class="modal-content">
		      	<div class="modal-body">
		        	<button type="button" class="close" data-dismiss="modal" onclick="history.back();">&times;</button>
		        	<div class="row">
		        		<div class="col-sm-2">
		        			<h3 style="color: #25a5f0;">테마검색</h3>
		        		</div>
		        		<div class="col-sm-8" style="color: #aaa; margin-top: 18px;">
		        			<p>원하는 캠핑 스타일을 선택 후 상단우측 또는 하단 검색버튼을 클릭하세요.
		        			<br/>많은 옵션을 선택하면 검색 결과를 기대할 수 없습니다.</p>
		        		</div>
		        		<div class="col-sm-2 hidden-box">
		        			<form method="post" action="themelist.camp">
		        				<input type="hidden" name="themes">
			        			<button type="submit" class="theme-search-btn">
			        				<span class="glyphicon glyphicon-search" style="color: #fff;"></span>
			        				테마검색
			        			</button>
		        			</form>
		        		</div>
		        	</div>
		        	<div class="row">
		        		<div class="col-sm-12">
		        			<table class="table" id="theme-table">
		        				<tbody>
		        					<tr>
		        						<th>
	        								<p style="display: inline-block; font-size: 20px; margin-top: 5px;">자연환경</p>
	        								<p class="pull-right" style="font-size: 12px; color: #ff6000; font-weight: 400; margin-top: 10px;">자연환경은 3개 까지 선택 가능합니다.</p>
		        						</th>
		        					</tr>
		        					<tr>
		        						<td>
		        							<div style="margin-top: 10px; text-align: center;">
		        							<c:forEach var="theme" items="${natureThemes }">
		        								<div class="facbox">
		        									<button data-theme-no="${theme.no }">
		        										<img src="/camping/resources/images/themes/${theme.imageName }" class="svg"/>
		        										<p>${theme.name }</p>
		        									</button>
		        								</div>
		        							</c:forEach>
		        							</div>
		        						</td>
		        					</tr>
		        					<tr>
		        						<th>
	        								<p style="display: inline-block; font-size: 20px; margin-top: 5px;">편의시설 및 환경</p>
	        								<p class="pull-right" style="font-size: 12px; color: #ff6000; font-weight: 400; margin-top: 10px;">편의시설 및 환경은 7개 까지 선택 가능합니다.</p>
		        						</th>
		        					</tr>
		        					<tr>
		        						<td>
		        							<div style="margin-top: 10px; text-align: center;">
		        							<c:forEach var="theme" items="${convenientThemes }">
		        								<div class="facbox">
		        									<button data-theme-no="${theme.no }">
		        										<img src="/camping/resources/images/themes/${theme.imageName }" class="svg"/>
		        										<p>${theme.name }</p>
		        									</button>
		        								</div>
		        							</c:forEach>
		        							</div>
		        						</td>
		        					</tr>
		        					<tr>
		        						<th>
	        								<p style="display: inline-block; font-size: 18px; margin-top: 5px;">즐길거리</p>
	        								<p class="pull-right" style="font-size: 12px; color: #ff6000; font-weight: 400; margin-top: 10px;">즐길거리는 5개 까지 선택 가능합니다.</p>
		        						</th>
		        					</tr>
		        					<tr>
		        						<td>
		        							<div style="margin-top: 10px; text-align: center;">
		        							<c:forEach var="theme" items="${funThemes }">
		        								<div class="facbox">
		        									<button data-theme-no="${theme.no }">
		        										<img src="/camping/resources/images/themes/${theme.imageName }" class="svg"/>
		        										<p>${theme.name }</p>
		        									</button>
		        								</div>
		        							</c:forEach>
		        							</div>
		        						</td>
		        					</tr>
		        				</tbody>
		        			</table>
		        		</div>
		        	</div>
		        	<div class="row">
		        		<div class="col-sm-12 text-center hidden-box">
		        			<form method="post" action="themelist.camp">
				        		<input type="hidden" name="themes">
			        			<button type="submit" class="theme-search-btn">
			        				<span class="glyphicon glyphicon-search" style="color: #fff;"></span>
			        				테마검색
			        			</button>
				        	</form>
		        		</div>
		        	</div>
		      	</div>
		    </div>
	  	</div>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		$('#theme-search-modal').modal();
		
		/*
		 * Replace all SVG images with inline SVG
		 */
		$('img.svg').each(function(){
		    var $img = $(this);
		    // var imgID = $img.attr('id');
		    var imgClass = $img.attr('class');
		    var imgURL = $img.attr('src');

		    $.get(imgURL, function(data) {
		    	
		        // Get the SVG tag, ignore the rest
		        var $svg = $(data).find('svg');
		        
		        $svg.attr('height', '40px');
		        $svg.attr('width', '40px');
		        $svg.attr('fill', '#555555');

		        // Add replaced image's ID to the new SVG
		        if(typeof imgID !== 'undefined') {
		            $svg = $svg.attr('id', imgID);
		        }
		        // Add replaced image's classes to the new SVG
		        if(typeof imgClass !== 'undefined') {
		            $svg = $svg.attr('class', imgClass+' replaced-svg');
		        }

		        // Remove any invalid XML tags as per http://validator.w3.org
		        $svg = $svg.removeAttr('xmlns:a');

		        // Check if the viewport is set, if the viewport is not set the SVG wont't scale.
		        if(!$svg.attr('viewBox') && $svg.attr('height') && $svg.attr('width')) {
		            $svg.attr('viewBox', '0 0 ' + $svg.attr('height') + ' ' + $svg.attr('width'))
		        }

		        // Replace image with new SVG
		        $img.replaceWith($svg);

		    }, 'xml');

		});
	});
	
    var countEnvironment = 0;
    var countConvenient = 0;
    var countFun = 0;
    var checkedThemes = [];
	$('.facbox button').click(function() {
		var fillColor = $(this).find('.svg').attr('fill');
		var imgNo = $(this).attr('data-theme-no');
		
		if(imgNo < 16) {			// 자연환경
			if(fillColor == '#555555') {
				if(countEnvironment == 3) {
					alert('3개만 선택 가능합니다.');
					return false;
				}
				
				$(this).find('.svg path, .svg rect, .svg polygon').attr('fill', '#25a5f0');
				$(this).find('.svg').attr('fill', '#25a5f0');
				$(this).find('p').css('color', '#25a5f0');
				
				checkedThemes.push(imgNo);
				
				countEnvironment++;
			} else {
				$(this).find('.svg path, .svg rect, .svg polygon').attr('fill', '#555555');
				$(this).find('.svg').attr('fill', '#555555');
				$(this).find('p').css('color', '#333333');
				
				var deleteTheme = checkedThemes.indexOf(imgNo);
				checkedThemes.splice(deleteTheme, 1);
				
				countEnvironment--;
			}
		} else if(imgNo < 42) {		// 즐길거리
			if(fillColor == '#555555') {
				if(countFun == 5) {
					alert('5개만 선택 가능합니다.');
					return false;
				}
				
				$(this).find('.svg path, .svg rect, .svg polygon').attr('fill', '#25a5f0');
				$(this).find('.svg').attr('fill', '#25a5f0');
				$(this).find('p').css('color', '#25a5f0');
				
				checkedThemes.push(imgNo);
				
				countFun++;
			} else {
				$(this).find('.svg path, .svg rect, .svg polygon').attr('fill', '#555555');
				$(this).find('.svg').attr('fill', '#555555');
				$(this).find('p').css('color', '#333333');
				
				var deleteTheme = checkedThemes.indexOf(imgNo);
				checkedThemes.splice(deleteTheme, 1);
				
				countFun--;
			}
		} else {					// 편의시설 및 환경
			if(fillColor == '#555555') {
				if(countConvenient == 7) {
					alert('7개만 선택 가능합니다.');
					return false;
				}
				
				if(imgNo == 56) {	// 오토캠핑
					$(this).find('.svg path').each(function(index, item) {
						var fillColor = $(item).css('fill');
						console.log(fillColor);
						if(fillColor != 'none') {
							$(item).css('fill', '#25a5f0');
						}
					});
					$(this).find('.svg polygon').each(function(index, item) {
						var fillColor = $(item).css('fill');
						console.log(fillColor);
						if(fillColor != 'none') {
							$(item).css('fill', '#25a5f0');
						}
					});
					$(this).find('.svg rect').each(function(index, item) {
						var fillColor = $(item).css('fill');
						console.log(fillColor);
						if(fillColor != 'none') {
							$(item).css('fill', '#25a5f0');
						}
					});
				} else {
					$(this).find('.svg path, .svg rect, .svg polygon').attr('fill', '#25a5f0');
				}
				$(this).find('.svg').attr('fill', '#25a5f0');
				$(this).find('p').css('color', '#25a5f0');
				
				checkedThemes.push(imgNo);
				
				countConvenient++;
			} else {
				if(imgNo == 56) {
					$(this).find('.svg path').each(function(index, item) {
						var fillColor = $(item).css('fill');
						console.log(fillColor);
						if(fillColor != 'none') {
							$(item).css('fill', '#555555');
						}
					});
					$(this).find('.svg polygon').each(function(index, item) {
						var fillColor = $(item).css('fill');
						console.log(fillColor);
						if(fillColor != 'none') {
							$(item).css('fill', '#555555');
						}
					});
					$(this).find('.svg rect').each(function(index, item) {
						var fillColor = $(item).css('fill');
						console.log(fillColor);
						if(fillColor != 'none') {
							$(item).css('fill', '#555555');
						}
					});
				} else {
					$(this).find('.svg path, .svg rect, .svg polygon').attr('fill', '#555555');
				}
				$(this).find('.svg').attr('fill', '#555555');
				$(this).find('p').css('color', '#333333');
				
				var deleteTheme = checkedThemes.indexOf(imgNo);
				checkedThemes.splice(deleteTheme, 1);
				
				countConvenient--;
			}
		}
		
		console.log(checkedThemes);
	});
	
	$('.theme-search-btn').click(function() {
		var themes = checkedThemes.join(',');
		$('form input').val(themes);
	});
</script>
</body>
</html>