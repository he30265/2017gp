<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  
  <head>
    <meta charset="UTF-8">
    <title>企业首页</title>
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
  line-height: 55px;
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

.container {
  width:1024px;
  height:1024px;
  margin:0 auto;
}
.container_left {
  width:70%;
  height:100%;
  float:left;
}
.container .container_left  img {
  margin-top:40px;
  float:left;
  border:3px solid #00B38A;
}
.container .container_left h1 {
  font-weight:900;
  font-family:微软雅黑;
  margin-top:60px;
  margin-left:20px;
  display:inline-block;
}
.container .container_left p a {
  font-weight:900;
  font-family:微软雅黑;
  margin-top:50px;
  margin-left:20px;
  display:inline-block;
  font-size:20px;
}
.container .container_left .job {
  width:100%;
  height:700px;
  margin-top:100px;
}
.title {
  width:120px;
  height:50px;
}
.title p {
  color:white;
  font-size:20px;
  font-family:微软雅黑;
  font-weight:900;
  text-align:center;
  line-height:50px;
}
.title b {
  width: 200px;
  margin-top:20px;
  border-left:5px solid #00B38A;
  display:inline-block;
  font-size:20px;
}
.recommendjob {
  width:100%;
  height:100px;
  border-bottom:1px dashed #E1E1E1;
  position:relative;
  margin-top:20px;
}
.recommendjob a {
  font-size:20px;
  font-weight:900;
  color:#00B38A;
  text-decoration:none;
  position:absolute;
}
.recommendjob p {
  font-weight:900;
  font-size:14px;
  position:absolute;
}

.create {
  font-size:20px;
  font-family:微软雅黑;
  font-weight:900;
  text-align:center;
  margin-top:50px;
}
.create a{
  margin-right: 50px;
}
.create a:hover{
  color: #00B38A;
  
}
.container_right {
  width:30%;
  height:100%;
  float:left;
}
.infolist {
  width:100%;
  height:120px;
  background-color:#fafafa;
  margin-top:40px;
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
.nav2-right ul li{
    line-height: 18px;
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
        <c:choose>
        	<c:when test="${sessionScope.compan.get(0).company_name !=null}">
        		<a href="#">${sessionScope.compan.get(0).company_name }</a>
        		<li>|</li>
        		<li class="user">
          <a href="companylout">注销</a></li>
        	</c:when>
        	<c:otherwise>
        		<a href="companyLogin.jsp">登录</a></li>
        		<li>|</li>
        		<li class="user">
          <a href="companyRegister.jsp">注册</a></li>
        	</c:otherwise>
        </c:choose>
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
              <p>企业版</p>
            </a>
          </li>
        </ul>
      </div>
      <div class="nav2-right">
        <ul>
          <li>
            <a href="companyhome.jsp">首页</a></li>
          <li><a href="manageResume?company_name=${sessionScope.compan.get(0).company_name }">简历管理</a></li>
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
    <!-- 内容部分 B -->
    <div class="container">
      <div class="container_left">
        <img src="images/1pei.jpg" alt="">
        <h1>${sessionScope.compan.get(0).company_name }</h1>
        <br>
        <p>
          <a href="https://www.baidu.com">${sessionScope.compan.get(0).company_url }</a></p>
        <div class="job">
          <div class="title bgc">
            <p>招聘职位</p>
          </div>
          <c:forEach items="${sessionScope.companyInfo}" var="ci">
          <div class="recommendjob">
            <a href="companyEmployment.jsp">${ci.need_name}&nbsp;[${ci.need_city}]</a>
            <a href="#" style="left: 400px">${sessionScope.compan.get(0).company_name }</a>
            <br>
            <br>
            <p style="color: #FB8E41">${ci.need_money}</p>
            <p style="left: 60px;">${ci.need_jingyan}/${ci.need_xueli}</p>
            <p style="left: 400px">${ci.need_xingzhi}</p>
            <br>
            <br>
            <p style="width: 400px">“${ci.need_youhuo}”</p>
            <p class="fc" style="left: 400px">${sessionScope.compan.get(0).company_jieduan}</p>
            </div>
            </c:forEach>
          <div class="create">
            <a href="create.jsp"><i class="fa fa-plus" aria-hidden="true"></i> 发布新职位</a>
            <a href="manageJob.jsp"><i class="fa fa-wrench" aria-hidden="true"></i> 管理职位</a></div>
        </div>
      </div>
      <div class="container_right">
        <div class="infolist">
          <div class="title bgc">
            <p>地点</p>
            <b>&nbsp;${sessionScope.compan.get(0).company_city }</b>
          </div>
        </div>
        <div class="infolist">
          <div class="title bgc">
            <p>行业领域</p>
            <b>&nbsp;${sessionScope.compan.get(0).company_lingyu }</b>
          </div>
        </div>
        <div class="infolist">
          <div class="title bgc">
            <p>发展阶段</p>
            <b>&nbsp;${sessionScope.compan.get(0).company_jieduan }</b>
          </div>
        </div>
        <div class="infolist">
          <div class="title bgc">
            <p>公司规模</p>
            <b>&nbsp;${sessionScope.compan.get(0).company_guimo }</b>
          </div>
        </div>
      </div>
    </div>
    <!-- 内容部分 E -->
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
    <!--页面底部E--></body>

</html>
