<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<style>
.main {
	margin: 20px 100px;
}

.top {
	height: 125px;
	width: 100%;
}

.span {
	float: right;
	margin-top: 15px;
	font-size: 14px;
}

.span a {
	color: #696969;
}

.span1 {
	margin-left: 50px;
}

a {
	text-decoration: none;
}

.topul {
	background-color: #ffcccc;
	height: 40px;
	opacity: 0.5;
}

.topul li {
	float: left;
	padding-top: 8px;
	margin-left: 20px;
	width: 100px;
	display: block;
	text-align: center;
	line-height: 30px;
}
.left{
	float:left;
	width:25%;
	height:700px;
	background-color:#fffff0;
}


.leftul {
	display: block;
	list-style: none;
	width:25%;
	border-width:1px;
}

.leftul li {
	display: block;
	list-style: none;
	width:200px;
	font-size:16px;
}
.leftul li a{
	text-decoration:none;
	color:#33ccff;
}
.leftul li ul {
	width:200px;
}

.leftul li ul li{
	float:left;
	width:80px;
	font-size:14px;
	margin-left:20px;
	margin-top:10px;
}

.leftul li ul li a{
	text-decoration:none;
	color:black;
}

.right {
	float: right;
	width: 75%;
	margin: 0 auto;
}



.span01 {
	height: 25px;
	opacity: 0.5;
	font-size: 15px;
	font-weight: bold;
	float: left;
	width: 100%;
}

.span02 {
	font-size: 15px;
	color: black;
}

.span03 {
	color: green;
	font-family: STXinwei;
	font-size: 17px;
	font-weight: bold;
	opacity: 0.7;
	margin-left: 25px;
	margin-top: 10px;
}

.img00 {
	height: 270px;
	float: left;
	width: 180px;
	margin-left: 20px;
}
</style>
</head>
<body>
	<div class="main">
		<div class="top">
			<img src="images/logo00.jpg" /> <img src="images/logo.jpg" />
			<img src="images/header.jpg" />
			<div class="span">
				<span class="span1"> <a
					href="${pageContext.request.contextPath}/login.do">登录</a>
				</span> <span class="span2">| <a
					href="${pageContext.request.contextPath}/regist.do">注册</a></span> <br>
				<br>
				<form method="post"
					action="${pageContext.request.contextPath}/searchProduct.do">
					<input type="text" /> <input type="submit" value="搜索" />
				</form>
			</div>
			<ul class="topul">
				<li><a href="${pageContext.request.contextPath}/index.action">首页
				</a></li>
				<c:forEach var="c" items="${cList}">
					<li><a
						href="${pageContext.request.contextPath}/findCategorySecond.do?cid=${c.cid}&page=1">${c.cname}</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="foot">
			<div class="left">
				<ul class="leftul">
					<li><a href="#">婚礼服饰</a><br />
						<ul>
							<li><a href="#">中式新娘服</a></li>
							<li><a href="#">西式新娘服</a></li>
							<li><a href="#">中式新郎服</a></li>
							<li><a href="#">西式新郎服</a></li>
						</ul></li>
					<br />
					<li><a href="#">婚礼首饰 </a><br />
						<ul>
							<li><a href="#">项链</a></li>
							<li><a href="#">手表</a></li>
							<li><a href="#">戒指</a></li>
							<li><a href="#">耳环</a></li>
						</ul></li>
					<br />
					<li><a href="#">婚礼用花</a> <br />
						<ul>
							<li><a href="#">手捧花</a></li>
							<li><a href="#">手腕花</a></li>
							<li><a href="#">胸花</a></li>
							<li><a href="#">花门</a></li>
						</ul></li>
					<br />
					<li><a href="#">婚礼配饰 </a><br />
						<ul>
							<li><a href="#">新娘头纱</a></li>
							<li><a href="#">新娘头饰</a></li>
							<li><a href="#">新郎领带</a></li>
							<li><a href="#">新郎袖扣</a></li>
						</ul></li>
					<br />
					<li><a href="#">婚礼食品 </a><br />
						<ul>
							<li><a href="#">婚礼蛋糕</a></li>
							<li><a href="#">婚宴酒水</a></li>
							<li><a href="#">喜糖</a></li>
							<li><a href="#">喜饼</a></li>
						</ul></li>
					<br />
					<li><a href="#">婚庆用品 </a><br />
						<ul>
							<li><a href="#">请柬</a></li>
							<li><a href="#">喜糖盒</a></li>
							<li><a href="#">礼金簿册</a></li>
							<li><a href="#">婚礼纸巾</a></li>
						</ul></li>
					<br />
					<li><a href="#">婚庆家纺 </a><br />
						<ul>
							<li><a href="#">婚鞋</a></li>
							<li><a href="#">喜袜</a></li>
							<li><a href="#">情侣拖鞋</a></li>
							<li><a href="#">婚房窗帘</a></li>
						</ul></li>
					<br />
					<li><a href="#">传统婚礼 </a><br />
						<ul>
							<li><a href="#">同心锁</a></li>
							<li><a href="#">红盖头</a></li>
							<li><a href="#">扇子</a></li>
							<li><a href="#">婚礼秤杆</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="right">
				<div class="righter">
					<span class="span01">热卖单品</span><br />
					<div>
						<div class="img00">
							<a href="#"><img src="images/p01.jpg"><br /> <span
								class="span02">森系婚纱女</span><br /> <span class="span03">价格：</span></a>
						</div>
						<div class="img00">
							<a href="#"><img src="images/p02.jpg"><br /> <span
								class="span02">森系婚纱女</span><br /> <span class="span03">价格：</span></a>
						</div>
						<div class="img00">
							<a href="#"><img src="images/p05.jpg"><br /> <span
								class="span02">森系婚纱女</span><br /> <span class="span03">价格：</span></a>
						</div>
						<div class="img00">
							<a href="#"><img src="images/p09.jpg"><br /> <span
								class="span02">森系婚纱女</span><br /> <span class="span03">价格：</span></a>
						</div>
					</div>
					<br /> <span class="span01">最新上市</span><br />
					<div>
						<div class="img00">
							<a href="#"><img src="images/p11.jpg"><br /> <span
								class="span02">森系婚纱女</span><br /> <span class="span03">价格：</span></a>
						</div>
						<div class="img00">
							<a href="#"><img src="images/p13.jpg"><br /> <span
								class="span02">森系婚纱女</span><br /> <span class="span03">价格：</span></a>
						</div>
						<div class="img00">
							<a href="#"><img src="images/p15.jpg"><br /> <span
								class="span02">森系婚纱女</span><br /> <span class="span03">价格：</span></a>
						</div>
						<div class="img00">
							<a href="#"><img src="images/p08.jpg"><br /> <span
								class="span02">森系婚纱女</span><br /> <span class="span03">价格：</span></a>
						</div>
					</div>
				</div>
			</div>
</body>
</html>