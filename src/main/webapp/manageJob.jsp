<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  
  <head>
    <meta charset="UTF-8">
    <title>企业管理职位</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.css"></head>
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
.container {
  width:1024px;
  height:1000px;
  margin:0 auto;
  margin-top:20px;
  padding-bottom:20px;
}
.container_left {
  width:250px;
  height:400px;
  background-color:#fafafa;
  float:left;
}
.container_left p {
  width:100%;
  height:45px;
  border-radius:8px;
  font-size:25px;
  color:white;
  text-align:center;
  line-height:45px;
  font-family:微软雅黑；
}
.container_left dl {
  width:100%;
  height:250px;
  background-color:#fafafa;
}
.container_left dt {
  font-size:20px;
  line-height:28px;
  color:#777;
  font-family:微软雅黑;
  padding:10px;
  border-bottom:1px dashed gray;
}
.container_left dd {
  padding:20px;
  font-size:18px;
  font-family:微软雅黑;
}
.container_left dd a:hover {
  color:orange;
}
.container_right {
  width:750px;
  height:100%;
  float:right;
  background-color:#fafafa;
  position:relative;
  margin-top:15px;
}
#tit {
  width:250px;
  height:100px;
}
#tit span {
  font-size:20px;
  font-family:微软雅黑;
  padding:15px;
  line-height:50px;
  width:220px;
  height:50px;
  display:inline-block;
  border-bottom:1px dashed gray;
}
#tit li.select {
  background:#f2f2f2;
  color:#00B38A;
  cursor:pointer;
}
#tit li {
  padding:20px;
  font-size:15px;
  font-family:微软雅黑;
  background:#fafafa;
  border-bottom:1px dashed gray;
  cursor:pointer;
}
#tit li:hover{
  background-color: #f1f1f1;
  color:#00B38A;;
}
#con li {
  display:none;
  height:600px;
  width:100%;
}
#con .angle img {
  position:absolute;
  top:-15px;
  left:25px;
}
#con li.show {
  display:block;
}
#con .show h1 {
  width:200px;
  height:50px;
  background-color:#00B38A;
  margin-left:40px;
  color:white;
  text-align:center;
  line-height:50px;
  display:inline-block;
  margin-top:-15px;
  position:relative;
}

#con .show2 h1 {
  width:200px;
  height:50px;
  background-color:#00B38A;
  margin-left:40px;
  color:white;
  text-align:center;
  line-height:50px;
  display:inline-block;
  margin-top:-15px;
  position:relative;
}


/*页面底部 */
.footer {
  width:100%;
  height:120px;
  float:left;
  background-color:#A8ACB7;
}
.footer .footer_left {
  width:60%;
  height:90px;
  float:left;
  color:#434141;
  margin-top:20px;
}
.footer .footer_left p {
  font-size:15px;
  margin-left:150px;
}
.footer .footer_right {
  width:40%;
  height:90px;
  float:left;
  margin-top:30px;
}
.footer .footer_right p i {
  font-size:3em;
  color:#434141;
  margin-left:50px;
}
.footer .footer_right ul li {
  float:left;
  font-size:15px;
  color:#434141;
}
.jobshow{
  width: 600px;
  height: 100px;
  background-color: white;
  margin: 0 auto;
  margin-top: 30px;
  border-left: 3px solid #00B38A;
  padding:10px;
}
.jobshow a{
  font-size: 18px;
  color: #00B38A;
}
.jobshow .info{
  font-size: 15px;
  margin-top: 13px;
  font-weight: 600;
}
.jobshow .info span{
  color: gray;
  display: inline-block;
  margin-top: 17px;
}
.links{
  float: right;
  font-size: 12px;
}
.links a:hover{
  border-bottom: 2px solid #00B38A;
}
    </style>
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
              <p style="line-height: 15px">企业版</p>
            </a>
          </li>
        </ul>
      </div>
      <div class="nav2-right">
        <ul>
          <li>
            <a href="companyhome.jsp">首页</a></li>
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
    <!-- 内容部分 B -->
    <div class="container">
      <div class="container_left">
        <p class="bgc">职位管理
          <i class="fa fa-pencil-square" aria-hidden="true"></i></p>
        <div id="tit">
          <span>我发布的职位</span>
          <ul>
            <li class="select">有效职位</li>
            <li>已下线职位</li>
          </ul>
        </div>
      </div>
      <style>
        
      </style>
      <div class="container_right">
        <ul id="con">
          <li class="show">
            <div class="angle">
              <img src="images/angle2.png" alt=""></div>
            <h1>有效职位</h1>
            <form action="">
              <!-- 显示职位的盒子 B-->
               <c:forEach begin="0" end="5" items="${sessionScope.companyInfo}" var="ci">
              <div class="jobshow">
                <h3>
                  <a href="#">${ci.need_name}</a>
                  <span>[${ci.need_city}]</span>
                </h3>
                <div class="info">
                  ${ci.need_xingzhi} / ${ci.need_money} / ${ci.need_jingyan} / ${ci.need_xueli}
                  <br>
                  <span>发布时间:2017-4-9 12:12</span>
                </div>
                <div class="links">
                  <a href="javascript:history.go(0) ">刷新</a>
                  <a href="lookeditoffer?need_id=${ci.need_id}">编辑</a>
                  <a href="downoffer?need_id=${ci.need_id}&company_name=${sessionScope.compan.get(0).company_name }">下线</a>
                  <a href="deleteoffer?need_id=${ci.need_id}&company_name=${sessionScope.compan.get(0).company_name }">删除</a>
                </div>
              </div>
              </c:forEach>
            </form>
          </li>
          <li class="show2">
            <div class="angle">
              <img src="images/angle2.png" alt=""></div>
            <h1>已下线职位</h1>
            <c:forEach begin="0" end="5" items="${sessionScope.dowmcomneed}" var="dc">
            <div class="jobshow">
                <h3>
                  <a href="#">${dc.need_name}</a>
                  <span>[${dc.need_city}]</span>
                </h3>
                <div class="info">
                 ${dc.need_xingzhi} / ${dc.need_money} / ${dc.need_jingyan} / ${dc.need_xueli}
                  <br>
                  <span>发布时间:2017-4-9 12:12</span>
                </div>
                <div class="links">
                  <a href="deleteoffer?need_id=${dc.need_id}&company_name=${sessionScope.compan.get(0).company_name }">删除</a>
                </div>
              </div>
              </c:forEach>
          </li>
          
        </ul>
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
            <a href="#" style="color: black; margin-left: 45px; margin-right: 30px; font-weight: 900; text-decoration: none;">关于我们</a></li>
          <li>企业服务热线&nbsp;
            <b>400 065 5799</b>
          </li>
        </ul>
      </div>
    </div>
    <!--页面底部E-->
    </body>
<script src="js/jquery.js"></script>
<script>// tab 切换 B
  $("#tit li").click(function() {
    var i = $(this).index();
    $(this).addClass("select").siblings().removeClass("select");
    $("#con li").eq(i).show().siblings().hide();
  })
  // tab 切换 E
  
  </script>
</html>
