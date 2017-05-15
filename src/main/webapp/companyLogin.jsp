<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>企业登录</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/company.css">
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
</style>
</head>
<body>
<script type="text/javascript">
	if("${requestScope.qiyezhuangtai}"){
		alert("登录失败，请检查用户名或密码");
		}
</script>
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
        <li class="user"><a href="companyLogin.jsp">登录</a></li>
        <li>|</li>
        <li class="user"><a href="companyRegister.jsp">注册</a></li>
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
          
        </ul>
      </div>
    </div>
    <!--nav2 E-->
      
    <div class="container">
      <div class="container_top">
        <h1>company login</h1>
        <h2>企业登录</h2>
      </div>
      <div class="container_bottom">
        <form action="complayLogin">
          <ul>
            
            <li>
              <input type="text" placeholder="请输入帐号" name="company_email">
              <span>(该帐号为您注册时的邮箱)</span>
            </li>
            <li>
              <input type="password" placeholder="请输入密码" name="company_pwd">
              <span>(请输入密码)</span>
            </li>
            <input class="btn" type="submit" value="立即登录" style="margin-left: 165px;">
            <span style="float: right;font-size: 15px;margin-top: -30px;">没有帐号？<a class="fc"
             href="companyRegister.jsp" style="font-weight:900">立即注册</a></span>
          </ul>
        </form>
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
<script src="js/jquery.js"></script>
<script>
 
</script>
</html>

