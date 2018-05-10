<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/adminlogin.css" type="text/css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<img src="${pageContext.request.contextPath}/images/black.jpg" >
<div>

<form class="c1" name="userlogin" action="${pageContext.request.contextPath }/jsp/backstage/BackstageMain.jsp" method="post">
        <table class="c2">
        <div class="c3"><h2 style="margin-left:110px;margin-top:10px;";>管理员登录</h2>
        <tr>
        	<td></td>
        </tr>
        <tr>
                <td><div class="c4">&nbsp;用户：<input type="text" name="username" size="30"/></div></td>
            </tr>
            <tr>
                
                <td><div class="c4">&nbsp;密码：<input type="password" name="password"  size="30"/></div></td>
            </tr>
            <tr>
                <td colspan="2"><input class="c4" type="submit" value="登录" style="border-radius:10px;background-color: #7EC0EE;height:40px;opacity: 1;"/></div></td>
            </tr>
        </div>
            
        </table>
    </form>
</div>
</body>
</html>