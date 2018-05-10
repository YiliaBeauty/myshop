<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<style>
	.main{
	margin:20px 50px;
}

.propic{
	margin-top:50px;
	float:left;
	width:40%;
}
.proname{
     margin-top:50px;
	 float: right;
     width:60%;
} 
.spanname{
	font-size: 18px;
	font-weight: bold;
}
.proid{
	line-height: 55px;
}
.spanid{
	 font-family: 微软雅黑; 
	 color: #696969; 
}
.spanprice{
	color: red;
	font-size: 22px;
	font-weight: bold;
}
#probuy{
	padding:15px;
	line-height:60px;
	border: 1px solid #E0E0E0;	
	width:350px; 
	margin-left:37%;
	position: absolute;
	background-color:#FFFFDF; 
}
.addCart{
	background-color:#FF9224;
	height: 30px;
	width: 110px;
	border: none;
	cursor: pointer;
}
.title{
	width: 100%;
	height:50px;
	float: left;
	margin-top: 100px;
	border: 1px solid #d0d0d0;
	background: #F0F0F0;
	border-radius: 8px;
}
.spandesc{
	font-size: 16px;
	font-family: 微软雅黑;
	margin-left: 60px;
	line-height: 50px;
}
.descpic{
	margin-left: 200px;
}
.pdesc{
	color: #696969;
	font-size: 18px;
	font-family: 微软雅黑;
}
	
</style>
</head>
<body>
	<div class="main">
		
		<div>
			<%@include file="top2.jsp" %>
		</div>
	
		<div> 	
 	  	<div class="propic">
 	  		<img src="${pageContext.request.contextPath}/${product.image}"/>
 	  	</div>
 	  	
 	  	<div class="proname">
 	  		<span class="spanname">${product.pname}</span>
 	  	</div>
 	  		
 	  	<div class="proid">
 	  		<span class="spanid">${product.pid}</span>
 	  	</div>
 	  	<div class="proprice">
 	  		<span class="spanid">促销价：</span>
 	  		<span class="spanprice">${product.price}</span>
 	  	</div>
 	  	
 	  	<form id="cartForm" action="${pageContext.request.contextPath }/addCart.do" method="post" >
 	  		<div id="probuy">
				<span class="spanid">购买数量：</span>
				<input type="number" id="count" name="count" value="1" min="1" max="50"/> 
				<span class="spanid">件</span>
				<div class="buy">
						<input id="addCart" class="addCart" value="加入购物车" type="submit" title="点击加入购物车"
						style="color: white; font-weight: bold; font-family: 微软雅黑;"/>	
				</div>	
			</div>
		</form>
		
	</div>
	
			
			<div class="title">
				<span class="spandesc">商品详情</span>
			</div>
			<div id="introduction" name="introduction" class="introduction">
				<div class="prodesc">
					<span class="pdesc">${product.pdesc}</span>
				</div>
				<div class="descpic">
					<img
						src="${pageContext.request.contextPath}/${product.image}"/>
		
				
	</div>
	
	
</body>
</html>