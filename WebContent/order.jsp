<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri=http://java.sun.com/jstl/core_rt prefix="c"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>付款</title>
<style>
	.main{
	margin:20px 50px;
}
.text1{
	color: 	#7B7B7B;
	font-family: 微软雅黑;
	margin-left: 400px;

}
.receive{
	margin-top: 50px;
}
.submit{
	margin-left: 400px;

	
}
.text2{
	width: 100px;
	height: 30px;
	background-color: #FF9224;
	border: none;
	color: white;
	font-family: 微软雅黑;
	cursor: pointer;
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
.body{
	margin-left: 200px;
	height: 300px;
	margin-top: 50px;
}
</style>
</head>
<!-- 参考order -->
<body>
	<div class="main">
		<div class="top">
    		<img src="images/logo00.jpg" />
    		<img src="images/logo.jpg" />
    		<img src="images/header.jpg" />
			<span class="username">您好，${user.username}</span>
			<div class="tou">
			<span><a class="dian" href="#">我的订单</a>|</span>
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
	
	
		

		<span class="text1">生成订单成功！</span>
		
	<div class="body">
		<div class="second">
				<span class="order">订单编号:</span>
				<span class="num">${orders.oid}</span>&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="order">商品金额:</span>
				<span class="num">${orders.money}</span>
		</div>
		
		<table frame="border">
					<tbody>
						<tr class="first">
							<th class="ttext">图片</th>
							<th class="ttext">商品</th>
							<th class="ttext">价格</th>
							<th class="ttext">数量</th>
							<th class="ttext">小计</th>
							<th class="ttext">操作</th>
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
		
		
	<form action="${pageContext.request.contextPath }/payOrder.do" method="post">
	<input type="hidden" name="oid" value="${orders.oid}"/>
		<div class="receive">
			<span class="text1" name="accepter">收货人&nbsp;：</span>
			<input type="text"/><br/><br/><br/>
			<span class="text1" name="receiveInfo">收货地址：</span>
			<input type="text"/><br/><br/><br/>
			<span class="text1" name="phoNum">联系方式：</span>
			<input type="text"/><br/><br/><br/>
			<div class="submit"><input class="text2"  type="submit" value="点击支付"/></div>
		</div>
		
   </form>
	
	</div>
	
</body>
</html>