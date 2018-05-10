<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>商城头部</title>
<style>
.top{
	height:125px;
	width:100%;
}

.span{
	float:right;
	margin-top:15px;
	font-size:14px;
}

.span a{
	color:#696969;
}
.span1{
	margin-left:50px;
}

a{
	text-decoration:none;
}

.topul{
	background-color:#ffcccc;
    height:40px;  
    opacity:0.5;
}

.topul li{
	float:left;
	padding-top: 8px;
	margin-left: 20px;
	width:100px; 
    display:block;   
    text-align: center;  
    line-height: 30px; 
}
</style>
</head>
<body>
	<div class="top">
    		<img src="images/logo00.jpg" />
    		<img src="images/logo.jpg" />
    		<img src="images/header.jpg" />
    		<div class="span">
			<span class="span1">
			<a href="#">登录</a>
			</span> 
			<span class="span2">| <a href="#">注册</a></span>
			<br><br>
			<input type="text" />
			<input type="submit" value="搜索" />
			</div>
			<ul class="topul">
				<li><a href="#">首页 </a></li>
				<li><a href="#">婚礼服饰</a></li>
				<li><a href="#">婚礼首饰</a></li>
				<li><a href="#">婚礼用花</a></li>
				<li><a href="#">婚礼配饰</a></li>
				<li><a href="#">婚礼食品</a></li>
				<li><a href="#">婚庆用品</a></li>
				<li><a href="#">婚庆家纺</a> </li>
				<li><a href="#">传统婚礼</a></li>
			</ul>
			</div>
</body>
</html>