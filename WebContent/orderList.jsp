<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>我的订单</title>
<style>
.main {
	margin: 20px 100px;
}
.top{
	height:160px;
	width:80%;	
}
.username{
	color: #696969;
	font-family: 微软雅黑;
	font-size: 12px;
	width: 20%;
	float: right;
}
.tou{
	float: right;
	margin-left: 450px;
} 
.dian{
	text-decoration: none;
	color:#d3a4ff;
	font-family: 微软雅黑;
	font-size: 16px;
	cursor: pointer;
}
 a{
	text-decoration:none;
}
 
.topul{
	background-color:#ffcccc;
    height:40px;  
    opacity:0.5;
    margin-top: -50px;
}

.topul li{
	float:left;
	padding-top: 8px;
	margin-left: 20px;
	width:100px; 
    display:block;   
    text-align: center;  
    line-height: 30px; 
    font-family: 微软雅黑;

}
.zhong{
	height: 50px;
}
.body{
	height:700px;
	margin-left: 200px;
}
.my{
	color: #696969;
	font-size: 18px;
	margin-left: 200px;
}
.ttext{
	color: #696969;
	font-size: 14px;
}
.table{
	height: 400px;
	width: 800px;
	margin: 0 auto;
}
.first{
	background-color:	#FFE6FF;
}
.second{
	height: 50px;
}
.order{
	color: #696969;
	font-size: 14px;
	font-family: 微软雅黑;
}
.num{
	color: red;
	font-size: 16px;
	font-family: 微软雅黑;
}
</style>
</head>
<body>
	<div class="main">
		
       <div class="top">
    		<img src="images/logo00.jpg" />
    		<img src="images/logo.jpg" />
    		<img src="images/header.jpg" />
			<span class="username">您好，${user.username}</span>
			<div class="tou">
				<span><a class="dian" href="#">返回首页</a>|</span>
				<span><a class="dian" href="#">退出</a></span>
			</div>	
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
		
		
		
		
		<div class="body">
			<div class="zhong">
				<span class="my">我的订单</span>
			</div>
			<div class="second">
				<span class="order">订单编号:</span>
				<span class="num">${order.oid}</span>&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="order">订单金额：</span>
				<span class="num">${order.money}</span>
			</div>
			
			<table frame="border">
					<tbody>
						<tr class="first">
							<th class="ttext">图片</th>
							<th class="ttext">商品</th>
							<th class="ttext">价格</th>
							<th class="ttext">数量</th>
							<th class="ttext">小计</th>
						</tr>
						 <c:forEach var="orderItem" items="${orders.oiList}">
							<tr>
								<!-- 商品图片 -->
								<td width="60">
								<input type="hidden" name="id" value="22">
										<img  src="${pageContext.request.contextPath}/${orderItem.product.image}" ></td>
								<!-- 商品名称 -->
								<td>${orderItem.product.pname}</td>
								<!-- 商品单价 -->
								<td>${orderItem.product.shopPrice}</td>
								<!-- 商品数量 -->
								<td  width="60">${orderItem.count} </td>
								<!-- 小计 -->
								<td width="140">￥ ${orderItem.subtotal}</td>
							</tr>
						 </c:forEach>
					</tbody>
				</table>
		</div>
		<%-- <div>
			<%@ include file="footer.jsp" %>
		</div> --%>
	</div>

</body>
</html>