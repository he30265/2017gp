<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>管理员登录</title>
<link rel="stylesheet" href="css/common.css">
<script src="js/jquery.js"></script>
<style>
body {
	background: url(images/adminbgc.jpg);
}

.title p {
	font-size: 50px;
	font-weight: 900;
	font-family: 微软雅黑;
	text-align: center;
	padding-top: 50px;
	color: white;
}

.login {
	width: 500px;
	height: 80px;
	background-color: #E2E6E9;
	margin: 0 auto;
	margin-top: 50px;
	border-radius: 5px;
}

.login input {
	display: inline-block;
	width: 200px;
	height: 35px;
	margin-left: 30px;
	margin-top: 20px;
	float: left;
	border-radius: 5px;
	border: none;
}

.login .btn {
	margin-left: 200px;
	margin-top: 120px;
	width: 100px;
	height: 50px;
	font-size: 25px;
	background-color: orange;
	color: white;
	font-family: 微软雅黑;
	cursor: pointer;
}
.gohome{
	width:80px;
	height:40px;
	background:orange;
	position: fixed;
	right:40px;
	bottom:20px;
	border-radius: 5px;
	line-height:40px;
	text-align:center;
	font-size:15px;
	font-family:微软雅黑;
	font-weight:900;
	 
}
.gohome a{
color:white;
}
</style>
</head>
<body>
	<script type="text/javascript">
		if("${requestScope.loginerror}"){
				alert("用户名或密码错误")
			}
		if("${requestScope.loginerror2}"){
			alert("用户名密码不能为空")
			}
    </script>
	<div class="title">
		<p>后台管理系统</p>
	</div>
	<div class="login">
		<form action="adminlogin">
			<input type="text" placeholder="用户名" name="admin_name"> <input type="text"
				placeholder="密码" name="admin_pwd"> <input class="btn" type="submit"
				value="go">
		</form>

	</div>
	
	<div class="gohome">
	<a href="index.jsp">去首页</a>
	</div>
</body>
</html>
