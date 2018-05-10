<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link href="../css/userlogin.css" type="text/css" rel="stylesheet"/> -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>歡迎登陸</title>
<style>
.c1 {
	height: 500px;
	width: 600px;
	margin-left: 40%;
}

.c2 {
	height: 160px;
	width: 220px;
	margin-top: 220px;
	position: absolute;
}

.c4 {
	width: 250px;
	height: 28px;
	border: 1px solid #1874CD;
	font-size: 20px;
	margin-left: 30px;
	color: white;
}

input {
	width: 184px;
	height: 25px;
	/* background-color: #FFB6C1; */
	border-color: transparent;
	border: 1px solid transparent;
	opacity: 0.5;
	position: absolute;
}

img {
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 100%;
	position: absolute;
}
</style>
</head>

<body>
	<img src="${pageContext.request.contextPath}/images/black.jpg">
	<div>

		<form class="c1" name="userlogin" method="post" action="${pageContext.request.contextPath}/login.do">
			<table class="c2">
				<div class="c3">
					<img
						style="width: 560px; height: 290px; margin-top: 160px; margin-left: -200px;"
						src="${pageContext.request.contextPath}/images/logininfo.png">
					<tr>
						<td colspan="2"><scan
								style="margin-left:45%;margin-top:0px;color:white;font-size:20px";>
							</scan></td>
					</tr>
					<tr>
						<td><img
							style="width: 230px; height: 32px; margin-top: -40px; margin-left: 50px;"
							src="${pageContext.request.contextPath}/images/loginuser.png" />
						</td>
						<td><input type="text" name="username" size="30"
							style="border: 0px solid transparent; outline: none; position: absolute; margin-top: -39px; margin-left: -23px; width: 190px; opacity: 0.3;" />
						</td>
					</tr>
					<tr>
						<td><img
							style="width: 230px; height: 32px; margin-top: -20px; margin-left: 50px;"
							src="${pageContext.request.contextPath}/images/loginpassword.png" />
						</td>
						<td><input type="password" name="password" size="30"
							style="border: 0px solid transparent; outline: none; position: absolute; margin-top: -19px; margin-left: -23px; width: 190px; opacity: 0.3;" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							${message }
						</td>
					</tr>
					<tr>
						<td colspan="2"><input class="c4" type="submit" id="loginId"
							value="登录"
							style="margin-left: 50px; border-radius: 10px; background-color: #1874CD; width: 130px; height: 40px; opacity: 1;" />
							<input class="c4" type="submit" id="registId" value="注册"
							style="border-radius: 10px; background-color: #1874CD; width: 70px; height: 40px; margin-left: 200px; opacity: 1;" />
						</td>
					</tr>
				</div>
			</table>
		</form>
	</div>
</body>
</html>