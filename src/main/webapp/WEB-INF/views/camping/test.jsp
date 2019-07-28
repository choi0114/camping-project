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
	<script type="text/javascript" src="/camping/resources/js/jquery.ajax-cross-origin.min.js"></script>
</head>
<body>
<div class="container">
<script>
$(document).ready(function(){    
    $.ajax({
        crossOrigin: true,    // 크로스도메인 해결 플러그인
        url: 'http://www.kma.go.kr/wid/queryDFS.jsp?gridx=59&gridy=127',
        dataType: 'xml',
        success: function(response){
            console.log('response : ', response);
            
        }
    })
})
</script>
</div>
</body>
</html>