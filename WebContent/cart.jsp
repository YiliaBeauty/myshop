<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	.main{
	margin:20px 50px;
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
.sum{
	margin-left: 1000px;
	margin-top: 50px;
}
.sumtext{
	color: #5B5B5B;
	font-size: 16px;
	font-family: 微软雅黑;
}
.number{
	color: red;
	font-size: 18px;
	font-weight: bold;
}
.bottom{
	margin-left: 950px;
	margin-top: 10px;
	width: 30%;
}
.empty{
	height: 30px;
	width: 110px;
	border: 1px solid #696969;
	border-radius: 5px;
	background-color: 	#F0F0F0;
	cursor: pointer;
}
.clear{
	font-weight:bold;
	color: #696969;
	line-height:30px;
	margin-left: 15px;
}
.submit{
	float: right;
	width: 60%;
	margin-top: -30px;
}
#sub{
	width: 110px;
	height: 30px;
	background-color: red;
	border: none;
	color: white;
}
.last{
	text-decoration: none;
}


</style>
<title>购物车</title>
</head>
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
	
	

	
		<div class="table">
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
						 <c:forEach var="entry" items="${cart.cartItems}"> 
							<tr>
								<!-- 商品图片 -->
								<td width="60">
								<input type="hidden" name="id" value="22">
										<img src="${ pageContext.request.contextPath }/${entry.product.image}"></td>
								<!-- 商品名称 -->
								<td><a target="_blank">${entry.product.pname}</a></td>
								<!-- 商品单价 -->
								<td>${entry.product.shopPrice }</td>
								<!-- 商品数量 -->
								<td  width="60"> ${entry.count }</td>
								<!-- 小计 -->
								<td  width="60">${entry.subtotal} </td>
								 <td><a href=" ${ pageContext.request.contextPath }/delProFromCart.action?pid=${entry.product.pid}"
							 		class="delete" onclick="return checkDel();">删除</a>
								</td> 
							</tr>
						 </c:forEach>
					</tbody>
				</table>
		</div>
		<div class="sum">
			<span class="sumtext">商品金额：</span>
			<span class="number">  <strong
						id="effectivePrice">${cart.totale}</strong> </span>
		</div>
		<div class="bottom">
			<div class="empty"><a class="clear" href="${ pageContext.request.contextPath }/clearCart.do"
						id="clear"  onclick="return checkClear();" >清空购物车</a></div>
						
			<div class="submit">
				<a href="${ pageContext.request.contextPath }/toOrder.do" class="last">
				<input id="sub" class="dian" type="submit" value="提交订单"/>
				</a>
			</div>
						
		</div>
		
	
</div>	
	
		
</body>
</html>