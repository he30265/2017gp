<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>账号设置（用户）</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet"
	href="lib/font-awesome-4.7.0/css/font-awesome.css">
<script src="js/jquery.js"></script>
<style>
.nav1, .nav2 {
	font-family: 微软雅黑;
}

.nav1, .nav2 a {
	text-decoration: none;
}

.nav2 .nav2-right ul li a {
	font-family: 微软雅黑;
}

.nav2 .nav2-right ul li a:hover {
	color: #00B38A;
}

.nav1 {
	height: 30px;
	background-color: #333;
}

.nav1 ul {
	margin-left: 20px;
}

.nav1 ul li {
	float: left;
	color: #f5f5f5;
	margin-top: 8px;
	margin-left: 10px;
	font-size: 12px;
	cursor: pointer;
}

.nav1 ul li .fa-mobile {
	margin-top: -6px;
}

.nav1 ul li .app {
	color: white;
}

.nav1 ul li .app:hover {
	color: green;
}

.nav1 ul li .admin {
	color: white;
}

.nav1 ul li .admin:hover {
	color: orange;
}

.nav1 .user {
	margin-right: 50px;
	font-size: 15px;
}

.nav1 .user:hover {
	color: white;
}

.nav2 {
	height: 60px;
	background-color: #efefef;
	border-bottom: 3px solid #C9C5C5;
}

.nav2 .nav2-left {
	width: 350px;
	height: 60px;
	float: left;
}

.nav2 .nav2-left ul li {
	float: left;
	margin-right: 10px;
}

.nav2 .nav2-left ul li p {
	font-size: 20px;
	font-weight: 900;
	color: black;
	margin-top: 22px;
}

.nav2 .nav2-left ul li img {
	margin-left: 100px;
	margin-top: 13px;
}

.nav2 .nav2-right ul li {
	float: left;
	font-size: 20px;
	margin-right: 40px;
	margin-top: 18px;
}

.nav2 .nav2-right ul li a {
	text-decoration: none;
}

.container {
	width: 1024px;
	height: 800px;
	margin: 0 auto;
	margin-top: 10px;
}

.container_left {
	width: 700px;
	height: 100%;
	background-color: #FAFAFA;
	float: left;
}

.container_left_top {
	width: 700px;
	height: 60px;
	border-bottom: 1px dashed gray;
}

.container_left_top p {
	font-family: 微软雅黑;
	font-size: 25px;
	font-weight: 900;
	margin-left: 20px;
	margin-top: 13px;
	display: inline-block;
}

.container_left_top img {
	float: right;
}

.container_right {
	width: 280px;
	height: 500px;
	background-color: #fafafa;
	float: right;
}

.myinfo {
	width: 100%;
	height: 125px;
	border-bottom: 20px solid white;
}

.myinfo p {
	font-size: 20px;
	font-weight: 900;
	margin-top: 10px;
	margin-left: 20px;
	margin-bottom: 10px;
	display: inline-block;
}

.myinfo a {
	font-size: 15px;
	margin-left: 20px;
	display: inline-block;
	margin-top: 5px;
}

.wechat {
	width: 100%;
	height: 320px;
	margin-top: 30px;
}

.wechat img {
	width: 240px;
	height: 240px;
	margin-top: 15px;
	margin-left: 20px;
}

.wechat span {
	font-size: 15px;
	margin-left: 43px;
	display: inline-block;
	margin-top: 20px;
	color: gray;
}

.footer {
	width: 100%;
	height: 100px;
	float: left;
	background-color: #f5f5f5;
}

.footer .footer_left {
	width: 60%;
	height: 100px;
	float: left;
	color: #434141;
}

.footer .footer_left p {
	font-size: 15px;
	margin-left: 150px;
}

.footer .footer_right {
	width: 40%;
	height: 100px;
	float: left;
}

.footer .footer_right p a {
	text-decoration: none;
}

.footer .footer_right p i {
	font-size: 3em;
	color: #434141;
	margin-left: 50px;
	margin-top: 10px;
}

.footer .footer_right ul li {
	float: left;
	margin-top: 10px;
	font-size: 15px;
	color: #434141;
}
.nav2-right ul li{
    line-height: 18px;
}

</style>
</head>
<body>
	<script type="text/javascript">
	function checkoldpwd(){
			var oldpwd = $("#oldpassword").val()
		if(oldpwd == '${sessionScope.userinfo.user_pwd }'){
			$("#msg").text("密码正确")
			}else{
				$("#msg").text("密码错误")
				$("#oldpassword").focus()
				}
		}
</script>
	<!--nav1 B-->
	<div class="nav1">
		<ul>
			<li><i class="fa fa-mobile fa-2x"></i></li>
			<li><a href="#" class="app">APP</a></li>
			<li>|</li>
			<li><a href="#" class="admin">企业版</a></li>
		</ul>
		<ul style="float: right; margin-right: 20px;">
			<s:if test="#session.userinfo==null">
      <ul style="float: right; margin-right: 20px;">
        <!-- <li class="click_login">登录</li>
        <li>|</li>
        <li class="click_register">注册</li> -->
        <li><a href="login.jsp" style="color: white">登录</a></li>
        <li>|</li>
        <li><a href="register.jsp" style="color: white">注册</a></li>
      </ul>
    </s:if>
    <s:else>
      <ul style="float: right; margin-right: 20px;">
        <li>${sessionScope.userinfo.user_name }</li>
        <li><a href="userlogout" style="color: white">注销</a></li>
      </ul>
    </s:else>

		</ul>

	</div>

	<!--nav1 E-->
	<!--nav2 B-->
	<div class="nav2">
		<div class="nav2-left ">
			<ul>
				<li><a href="#"> <img src="images/logo.png" alt=""></a></li>
				<li style="font-size: 25px;font-weight: 900;font-family: 微软雅黑;line-height: 55px">招聘信息网</li>
			</ul>
		</div>
		<div class="nav2-right">
			<ul>
				<li><a href="index.jsp">首页</a></li>
				<li><a href="search.jsp">职位搜索</a></li>
				<li><a href="iresume.jsp">个人中心</a></li>
			</ul>
		</div>
	</div>
	<!--nav2 E-->
	<style>
.container_left_bottom {
	width: 700px;
	height: 500px;
}

table {
	border: none;
	font-size: 20px;
	margin-left: 40px;
}

td {
	width: 200px;
	height: 50px;
	border: none;
}

td input {
	width: 250px;
	height: 50px;
	border: 2px solid #00B38A;
	font-size: 20px;
	margin-top: 20px;
}

.container_left_bottom .save {
	width: 120px;
	height: 50px;
	background-color: #00B38A;
	border: 1px solid #00B38A;
	border-radius: 5px;
	font-size: 20px;
	color: white;
	cursor: pointer;
	margin-left: 247px;
	margin-top: 40px;
}
</style>

	<div class="container">
		<div class="container_left">
			<div class="container_left_top">
				<p>修改密码</p>
				<img src="images/angle.png" alt="">
			</div>
			<div class="container_left_bottom">
				<form action="changepwd">
					<table border="1">
						<tr>
							<td>登录帐号（手机号）</td>
							<td>${sessionScope.userinfo.user_phone }</td>
						</tr>
						<tr>
							<td>当前密码</td>
							<td><input type="password"  id="oldpassword"
								onblur="checkoldpwd()"><span style="margin-left:174px;color:red" id="msg"></span></td>
						</tr>
						<input type="hidden" value="${sessionScope.userinfo.user_id }" name="user_id">
						<tr>
							<td>新密码</td>
							<td><input type="password" name="user_pwd" id="newpassword"></td>
						</tr>
						<tr>
							<td>确认密码</td>
							<td><input type="password"  id="newpassword2" onblur="checkall()"></td>
						</tr>
					</table>
					<input type="submit" class="save" value="保存" id="tijiao">
				</form>
			</div>
		</div>
		<div class="container_right">
			<div class="myinfo">
				<p>我的帐号</p>
				<br> <a href="collections.jsp">修改密码</a>


			</div>
			<div class="wechat">
				<img src="images/erweima .png" alt=""> <br> <span>扫描二维码，微信轻松搜工作</span>
			</div>
		</div>
	</div>


	<!--页面底部B-->
	<div class="footer">
		<div class="footer_left">
			<br>
			<p>Copyright©2017 zhaopin.com内蒙古网络技术有限公司</p>
			<br>
			<p>联系地址：内蒙古师范大学网路技术学院</p>
		</div>
		<div class="footer_right">
			<p>
				<a href="#"> <i class="fa fa-weibo" aria-hidden="true"></i>
				</a> <a href="#"> <i class="fa fa-weixin" aria-hidden="true"></i>
				</a> <a href="#"> <i class="fa " aria-hidden="true">APP</i></a>
			</p>
			<ul>
				<li><a href="#"
					style="color: black; margin-left: 45px; margin-right: 30px; font-weight: 900; text-decoration: none;">关于我们</a></li>
				<li>企业服务热线&nbsp; <b>400 065 5799</b>
				</li>
			</ul>
		</div>
	</div>
	<!--页面底部E-->

</body>
</html>
