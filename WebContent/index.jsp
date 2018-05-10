<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<script type="text/javascript" src="/myshop/jquery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/myshop/galleria/galleria-1.5.7.min.js"></script>
<script type="text/javascript" src="/myshop/galleria/galleria.classic.min.js"></script>
<link rel="stylesheet" type="text/css" href="/myshop/galleria/galleria.classic.css">
<style>
	.picBox{
		width: 100%;
		height:650px; 
		margin: 0 auto;	
	}
	.top{
		height: 80px;
		width: 100%;
	}
	.welcome{
		margin-top:30px;
		float: right;
		}
	.menu{
		font-size: 18px;
		color: #696969;
		font-family: 微软雅黑；
	}
	#dian{
		text-decoration: none;
		cursor: pointer;
	}
	#dian:hover{ 
		color: black;
		font-size: 22px; 
		}
		
</style>
</head>
<body>
	<div class="top">
		<img src="/myshop/images/logo00.jpg"/>
		<div class="welcome">
		<span id="zi" class="menu">欢迎进入</span>
		<a class="menu" id="dian" href="menu.jsp">主页</a></div>
	 	
	</div>
	
	
	<div class="picBox">

    <img src="/myshop/images/pic2.jpg" />
    <img src="/myshop/images/pic3.jpg" />
    <img src="/myshop/images/pic4.jpg" />
    </div>
     <script>
	
    	$(document).ready(function(){
			Galleria.run(".picBox",{autoplay:2000,transition:'slide'});
	
		});
    </script>
    
</body>
</html>