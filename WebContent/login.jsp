<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>
</head>
<body>
	<body>				<!-- http://localhost:8080/myshop/login.do -->
	<form action="${pageContext.request.contextPath }/login.do" method="post">
		<table align="center" border="1" cellspacing="0" >
			<tr>
				<td>用户名：<input type="text" name="username"/></td>
			</tr>
			<tr>
				<td>密    码：<input type="text" name="password"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"/></td>
			</tr>
		</table>
	</form>
	
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/Ajax.js"></script>
	<input type="radio" id="ok1" value="ok1" checked="checked" onclick="check1()"/>显示A
	<input type="radio" id="ok2" value="ok2" onclick="check2()"/>显示B
	<span id="span1" style="display:block"> 我是A</span>
	<span id="span2" style="display:none"> 我是B</span>
</body>
</body>
</html>