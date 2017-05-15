<%@page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
  
  <head>
    <meta charset="UTF-8">
    <!--如果是ie浏览器使用最新的ie渲染引擎来解析页面-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/employment.css">
    <link rel="stylesheet" href="css/animate.css">
    <!--字体-->
    <link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.css">
    <!--让版本浏览器支持h5标签和媒体查询-->
    <!--[if lt IE 9]>
      <script src="lib/html5shiv/html5shiv.js"></script>
      <script src="lib/respond/respond.js"></script>
    <![endif]-->
    <style>
    
    .nav1, .nav2{
    font-family:微软雅黑;
  }
  .nav1, .nav2 a{
    text-decoration: none;
    
  }
  .nav2 .nav2-right ul li a{
         font-family: 微软雅黑;
     }
    .nav2 .nav2-right ul li a:hover{
    color:#00B38A;
  }
  .nav2-right ul li{
    line-height: 18px;
}
    </style>
    <title>招聘信息（用户）</title></head>
  
  <body>
    <!--nav1 B-->
    <div class="nav1">
      <ul>
        <li>
          <i class="fa fa-mobile fa-2x"></i>
        </li>
        <li>
          <a href="#" class="app" style="text-decoration: none">APP</a></li>
        <li>|</li>
        <li>
          <a href="index.jsp" class="admin" style="text-decoration: none">用户版</a></li>
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
         <li style="font-size: 25px;font-weight: 900;font-family: 微软雅黑;line-height: 55px">企业版</li>

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
    <!--页面主体B-->
    <div class="container">
      <div class="container_top">
        <div class="container_top_left">
          <ul>
            <li>${requestScope.zixicom.get(0).company_name }</li>
            <li>${requestScope.zixioff.get(0).need_name}</li>
            <li> ${requestScope.zixioff.get(0).need_money} /${requestScope.zixioff.get(0).need_city} / ${requestScope.zixioff.get(0).need_jingyan} / ${requestScope.zixioff.get(0).need_xueli} / ${requestScope.zixioff.get(0).need_xingzhi} </li>
            <li><span>${requestScope.zixioff.get(0).need_xingzhi}</span><span>${requestScope.zixioff.get(0).need_name}</span></li>
            <li>${requestScope.zixioff.get(0).need_time}  发布于招聘网</li>
          </ul>
        </div>
      <!--   <div class="container_top_right">
          <a href="#"  onclick="addcollect(${requestScope.zixioff.get(0).need_id});return false"><span><i class="fa fa-star-o" aria-hidden="true" style="margin-right: 5px;"></i>收藏</span></a>
          <a href="javascript:touyiixa('${requestScope.zixicom.get(0).company_id }','${requestScope.zixioff.get(0).need_city}','${requestScope.zixioff.get(0).need_money}','${requestScope.zixioff.get(0).need_id}','${requestScope.zixicom.get(0).company_name }','${requestScope.zixioff.get(0).need_name}','${sessionScope.userinfo.user_name }','${sessionScope.userinfo.user_id }')"><span style="background-color:#00B38A;color: white ">投个简历</span></a>
        </div> -->
      </div>
      <div class="container_bottom">
        <div class="container_bottom_left">
          <p>职位描述：</p>
          <ul>
            <li>${requestScope.zixioff.get(0).need_miaoshu}</li>
          </ul>
          <p>工作地址：</p>
          <span><b style="color:#00B38A">${requestScope.zixioff.get(0).need_address} </b></span>
          
        </div>
        <div class="container_bottom_right">
          <img src="images/1pei.jpg" alt="">
          <span style="margin-top: 120px;margin-left: 20px">${requestScope.zixicom.get(0).company_name }</span>
          <ul>
            <li><i class="fa fa-th-large" aria-hidden="true"></i>${requestScope.zixicom.get(0).company_lingyu } </li>
            <li><i class="fa fa-line-chart" aria-hidden="true"></i>${requestScope.zixicom.get(0).company_jieduan } </li>
            <li><i class="fa fa-user-o" aria-hidden="true"></i>${requestScope.zixicom.get(0).company_guimo } </li>
            <li><i class="fa fa-home" aria-hidden="true"></i><a href="#">${requestScope.zixicom.get(0).company_url }</a></li>
          </ul>
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
      <!--登录弹出窗口B-->
    <div class="login" id="login">
      <div class="login_top" id="login_top">
        <span>登录帐号</span>
        <a class="close"></a>
      </div>
      <div class="login_min" id="login_min">
        <div class="min_left">
          <h4>手机扫描</h4>
          <img src="images/erweima .png" alt="">
          <h5>二维码登录</h5></div>
        <div class="min_right">
        <form action="">
            <a href="#">短信快捷登录</a>
            <div align="center">
              <input type="text" name="name" id="name" placeholder="用户名" style="margin-left: 7px">
              <br>
              <input type="password" name="password" id="password" placeholder="密码"></div>
            <a href="#" style="color: red">登录遇到问题</a>
            <div align="center">
              <input type="submit" class="submit" value="登录"></div>
            <a class="goregister" style="font-weight: 900;color: black">立即注册</a></form>
        </div>
      </div>
    </div>

    <!--登录弹出窗口E-->
     <!--注册弹出窗口B-->
    <div class="register">
      <div class="register_top" id="register_top">
        <span>注册帐号</span>
        <a class="close"></a>
      </div>
      <div class="register_min" id="register_min">
        <div class="min_left">
            <form action="">
              <div align="center" style="margin-top: 20px; margin-bottom: 20px;">
                <input type="text" name="tel" id="tel" placeholder="请输入手机号">
              </div>
              <div align="center" style="margin-bottom: 20px">
                <input type="text" name="password" id="password" placeholder="请输入密码">
              </div>
              <div align="center">
                <input type="submit" class="submit" value="注册" style="background-color: #00B38A;color: white;font-size: 20px;">
              </div>
            </form>
        </div>
        <div class="min_right">
            <div align="center">
              <p>使用以下账号直接登录</p>
            <ul>
              <a href="#" class="fa fa-weibo fa-3x" style="color: red"></a>
              <a href="#" class="fa fa-weixin fa-3x" style="color: green;margin: 5px;"></a>
              <a href="#" class="fa fa-qq fa-3x" style="color: blue"></a>
            </ul>
            <img src="images/erweima .png" alt="">
            <br>
            <span>[ 扫码下载APP ]</span>
            <br><br><br><br>
            <a class="gologin" >已有帐号 直接登录</a>
            </div>
        </div>
      </div>
    </div>
      </body> 
    <!--注册弹出窗口E-->
    <script src="js/jquery.js"></script>
    <script>
   
    function addcollect(need_id){
    var user_name = '${sessionScope.userinfo.user_name }'
      $.ajax({
        url : "addCollect",
        data:{"user_name":user_name,"need_id":need_id},
        type : "POST",
        success:function(data){
          alert(data)
            }
      });
        }
    function touyiixa(a,b,c,d,e,f,g,h){
      $.ajax({
      url : "savatoudi",
      data:{"tcid":a,"tcity":b,"tmoney":c,"tneedid":d,"tneedname":e,"toffername":f,"tusername":g,"tuserid":h},
      type : "POST",
      success:function(data){
        alert(data)
          }
    });
  }
// 注册弹出窗口 E
    </script>



</html>
