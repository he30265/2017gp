<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <title>企业信息编辑完成</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.css">
  <style>
  .nav1, .nav2{
		font-family:微软雅黑;
	}
	.nav2 .nav2-right ul li a{
         font-family: 微软雅黑;
     }
    .nav2 .nav2-right ul li a:hover{
		color:#00B38A;
	}
.nav1 {
  height:30px;
  background-color:#333;
}
.nav1 ul {
  margin-left:20px;
}
.nav1 ul li {
  float:left;
  color:#f5f5f5;
  margin-top:8px;
  margin-left:10px;
  font-size:12px;
  cursor:pointer;
}
.nav1 ul li .fa-mobile {
  margin-top:-6px;
}
.nav1 ul li .app {
  color:white;
}
.nav1 ul li .app:hover {
  color:green;
}
.nav1 ul li .users {
  color:white;
}
.nav1 ul li .users:hover {
  color:orange;
}
.nav1 .user a {
  color:white;
}
.nav2 {
  height:60px;
  background-color:#efefef;
  border-bottom:3px solid #C9C5C5;
}
.nav2 .nav2-left {
  width:350px;
  height:60px;
  float:left;
}
.nav2 .nav2-left ul li {
  float:left;
  margin-right:10px;
}
.nav2 .nav2-left ul li p {
  font-size:20px;
  font-weight:900;
  color:black;
  margin-top:22px;
}
.nav2 .nav2-left ul li img {
  margin-left:100px;
  margin-top:13px;
}
.nav2 .nav2-right ul li {
  float:left;
  font-size:20px;
  margin-right:40px;
  margin-top:18px;
}
.nav2 .nav2-right ul li a {
  text-decoration:none;
}
      .container{
    width: 100%;
    height: 600px;
    margin: 0 auto;
  }
  .container_top{
    width: 100%;
    min-width: 640px;
    height: 164px;
    background-image: url(images/container_top.jpg);
    text-align: center;
    color: #fff;
    padding: 10px 0;
  }
  .container_top h1{
    font-size: 36px;
    font-weight: 600;
    margin: 33px 0 0;
  }
  .container_top h2{
    font-size: 24px;
    font-weight: 300;
  }
  .container_bottom{
    width: 700px;
    height: 200px;
    background-color: #fafafa;
    margin: 0 auto;
  }
  .container_bottom h1{
    text-align: center;
    font-family: 微软雅黑;
    padding-top: 20px;
  }
  .container_bottom ul{
margin-top: 50px;
    
  }
  .container_bottom ul li{
    float: left;
    margin-left: 75px;
    margin-right: 50px;
    font-size: 20px;
    font-weight: 900;
    text-decoration:underline;
  }
  .container_bottom ul li a:hover{
    color: #00B38A;
  }
/*页面底部 */
.footer {
  width:100%;
  height:100px;
  float:left;
  background-color:#f5f5f5;
}
.footer .footer_left {
  width:60%;
  height:100px;
  float:left;
  color:#434141;
}
.footer .footer_left p {
  font-size:15px;
  margin-left:150px;
}
.footer .footer_right {
  width:40%;
  height:100px;
  float:left;
}
.footer .footer_right p a {
  text-decoration:none;
}
.footer .footer_right p i {
  font-size:3em;
  color:#434141;
  margin-left:50px;
  margin-top:10px;
}
.footer .footer_right ul li {
  float:left;
  margin-top:10px;
  font-size:15px;
  color:#434141;
}
  </style>
</head>
<body>
      <!--nav1 B-->
    <div class="nav1">
      <ul>
        <li>
          <i class="fa fa-mobile fa-2x"></i>
        </li>
        <li>
          <a href="#" class="app">APP</a></li>
        <li>|</li>
        <li>
          <a href="index.jsp" class="users">用户版</a></li>
      </ul>
      <ul style="float:right;margin-right: 30px;">
        <li class="user">
          <a href="companyLogin.jsp">登录</a></li>
        <li>|</li>
        <li class="user">
          <a href="companyRegister.jsp">注册</a></li>
      </ul>
    </div>
    <!--nav1 E-->
    <!--nav2 B-->
    <div class="nav2">
      <div class="nav2-left ">
        <ul>
          <li>
            <a href="#">
              <img src="images/logo.png" alt=""></a>
          </li>
          <li>
            <a href="#">
              <p style="line-height: 15px">企业版</p>
            </a>
          </li>
        </ul>
      </div>
      <div class="nav2-right">
        <ul>
          <li>
            <a href="index.jsp">首页</a></li>
          <li>
            <a href="manageResume.jsp">简历管理</a></li>
            <li>
            <a href="manageJob.jsp">职位管理</a></li>
          <li>
            <a href="create.jsp">发布职位</a></li>
          <li>
            <a href="updatePwd2.jsp">账号设置</a></li>
        </ul>
      </div>
    </div>
    <!--nav2 E-->
    <style>

    </style>
    <div class="container">
      <div class="container_top">
        <h1>edit company information</h1>
        <h2>编辑公司信息</h2>
      </div>
      <div class="container_bottom">
        <h1>恭喜你，公司信息已填写完善，你可以发布职位啦！</h1>
        <ul>
          <li><a href="create.jsp">发布新职位</a></li>
          <li><a href="companyhome.jsp">进入公司首页</a></li>
        </ul>
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
          <a href="#">
            <i class="fa fa-weibo" aria-hidden="true"></i>
          </a>
          <a href="#">
            <i class="fa fa-weixin" aria-hidden="true"></i>
          </a>
          <a href="#">
            <i class="fa " aria-hidden="true">APP</i></a>
        </p>
        <ul>
          <li>
            <a href="#" style="color:black;margin-left: 45px;margin-right: 30px;font-weight: 900 ;text-decoration:none;">关于我们</a></li>
          <li>企业服务热线&nbsp;
            <b>400 065 5799</b>
          </li>
        </ul>
      </div>
    </div>
    <!--页面底部E-->
</body>
</html>
