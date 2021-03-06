<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<title>5gCamping :: 1박 2일</title>
	<link rel="shortcut icon" href="/camping/resources/images/campinglogo.png">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  	<style>
        #page-wrapper {
            padding-left: 200px;
           
        }
  
        #sidebar-wrapper {
            position: static;
            width: 180px;
            height: 100vh;
            margin-left: -250px;
            background: #666;
            overflow-x: hidden;    
            overflow-y: auto;    
        }
        
      
        .sidebar-nav {
            width: 100%;
            margin: 0;
            list-style: none; 
            color: black;
        }
      
        .sidebar-nav li {
            line-height: 60px;
        }
  
        .sidebar-nav li a {
            display: block;
            text-decoration: none;   
            color: #ccc;
            text-align:center;
        }
      
        .sidebar-nav li a:hover {
            color: black;
            background: #fff;
        }
      
        .sidebar-nav > .sidebar-brand {
            font-size: 1.3em;
            line-height: 6em;
        }
    	.sidebar-active {
            background: #fff;
            color: black !important;
    	}
        #admin-contents {margin-top: 60px;} 
    </style>
</head>
<script type="text/javascript">
	var link = document.location.href;
	console.log(link);
</script>
	<div id="page-wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
              <li><a href="/camping/admin/list.camp?sort=LIST&pno=1" class=${param.sort eq 'LIST'?'sidebar-active':'' }>캠핑장 관리</a></li>
              <li><a href="/camping/admin/approve.camp?sort=Approve" class=${param.sort eq 'Approve'?'sidebar-active':'' }>승인 관리</a></li>
              <li><a href="/camping/product/adminProduct.camp?sort=Product" class=${param.sort eq 'Product'?'sidebar-active':'' }>캠핑용품 관리</a></li>
              <li><a href="/camping/admin/noticeList.camp?sort=Notice" class=${param.sort eq 'Notice'?'sidebar-active':'' }>공지 사항</a></li>
              <li><a href="/camping/admin/statistics.camp?sort=Statistics2" class=${param.sort eq 'Statistics2'?'sidebar-active':'' }>통  계</a></li>
            </ul>
        </div>
    </div>
