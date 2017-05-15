<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>搜索</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.css">
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
    .nav1 ul li .admin {
        color:white;
    }
    .nav1 ul li .admin:hover {
        color:orange;
    }
    .nav1 .user{
      margin-right: 50px; 
      font-size: 15px;
    }
    .nav1 .user:hover{
      color: white;
    }
    .nav2 {
        height:60px;
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
    .nav2 .nav2-right ul li a{
      text-decoration:none;
    }
    
   
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
.footer .footer_right p a{
  text-decoration:none;
}
.footer .footer_right p i {
    font-size:3em;
    color:#434141;
    margin-left:50px;
    margin-top: 10px;
}
.footer .footer_right ul li {
    float:left;
    margin-top:10px;
    font-size:15px;
    color:#434141;
}
.container{
    width: 100%;
    height: 1024px;
    background-color: #fff;

  }
  .search{
    width: 100%;
    height: 220px;
    background-color: #EFEFEF;
  }
   .search_wrapper{
    width: 900px;
    height: 180px;
    background-color: #EFEFEF;
    margin-left: 170px;
    font-size: 16px;
    line-height: 16px;
    padding-top: 40px;
  }
  .search_wrapper .tab_wrapper{
    width: 100%;
    height: 30px;
    margin-bottom: 15px;
  }
  .search_wrapper .tab_wrapper a{
    display: inline-block;
    margin-right: 7px;
    padding: 7px 10px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    -moz-background-clip: padding;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
  }
  .search_wrapper .tab_wrapper .active{
    background-color: #00b38a;
    color: #fff;
  }
  .search_box{
    width: 100%;
    height: 50px;
    
  }
  .search_box .ipt1{
    width: 770px;
    height: 100%;
    position: relative;
    border: none;
    margin-right: 30px;
    font-family: 微软雅黑;
    font-size: 18px;
    color: black;
    padding-left: 15px;
  }
  .search_box .ipt2{
    width: 145px;
    height: 50px;
    border: none;
    position: absolute;
    font-family: 微软雅黑;
    font-size: 18px;
    color: white;
    cursor: pointer;
  }
  .correlation{
    width: 100%;
    height: 30px;
    margin-top: 15px;
  }
  .correlation span{
    float: left;
    font-size: 14px;
    font-family: 微软雅黑;
    display: inline-block;
    margin-right: 10px;
    color: #555;
    line-height: 30px;
  }
  .correlation ul li{
    float: left;
    font-size: 15px;
    font-family: 微软雅黑;
    margin-right: 20px;
    line-height: 30px;

  }
  .correlation ul li a{
    color: #999;
  }
  .correlation ul li a:hover{
    color: #00B38A
  }
    .joblist{
    width: 1200px;
    height: 500px;
    margin-left: 170px;
    padding-top: 20px;
  }
  .joblist ul li{
    width: 960px;
    height: 120px;

    margin-bottom: 20px;
    color: #555;
    border: 1px solid #ededed;
  }
  .joblist ul li .info{
    width: 800px;
    height: 100%;

    float: left;
    position: relative;
  }
  .joblist ul li .info .info_top{
    width: 100%;
    height: 90px;

  }
  .joblist ul li .info .info_bottom{
    width: 960px;
    height: 30px;
    background-color: #fafafa;
  } 
 .joblist ul li .info a {
    font-size:14px;
    font-weight:900;
    color:#00B38A;
    text-decoration:none;
    position: absolute;
    margin-top: 10px;
    margin-left: 10px;
}
 .joblist ul li .info p {
    font-weight:900;
    font-size:15px;
    position: absolute;
    margin-top: 10px;
    margin-left: 10px;
    
}
.joblist ul li .logo{
  width: 70px;
  height: 70px;
  background-color: gray;
  float: right;
  margin-right: 40px;
  margin-top: 10px;
}
  .recommend{
    width: 960px;
    height: 50px;
    margin-left: 150px;
    position: relative;
  }
  .recommend p{
    position: absolute;
    line-height: 50px;
    top: 10px;
    right: 20px;
    cursor: pointer;
  }
  .show{
    width: 960px;
    height: 150px;
    margin-left: 150px;
    display: none;
  }
  #close{
    display: none; 
  }
  .r_com{
    font-size: 18px ;
    font-family: 微软雅黑;
    margin-top: 20px;
  }
  .recommend ul li{
    margin-right: 40px; 
    line-height: 20px;
    font-size: 15px;
    font-family: 微软雅黑;
    text-decoration: underline;
    float: left;

  }
  .recommend ul li a{
    color: #00B38A;
  }
  .show ul li{
    margin-right: 40px; 
    line-height: 20px;
    font-size: 15px;
    font-family: 微软雅黑;
    text-decoration: underline;
    float: left;

  }
  .show ul li a{
    color: #00B38A;
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
          <a href="#" class="admin">企业版</a></li>
      </ul>
      <ul style="float:right;margin-right:20px;">
        <li class="click_login">登录</li>
        <li>|</li>
        <li class="click_register">注册</li>
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
          <li style="font-size: 25px;font-weight: 900;font-family: 微软雅黑;line-height: 55px">招聘信息网</li>
          
        </ul>
      </div>
      <div class="nav2-right">
        <ul>
          <li>
            <a href="index.jsp">首页</a></li>
          <li>
          <a href="search.jsp">职位搜索</a>
          </li>
          <li><a href="iresume.jsp">个人中心</a></li>
        </ul>
      </div>
    </div>
    <!--nav2 E-->

<!-- 内容部分 B -->
<div class="container">
  <!-- 搜索部分 B -->
  <div class="search">
    <div class="search_wrapper">
    <div class="tab_wrapper">
      <a href="#" class="active">职位</a>
    </div>
    <div class="search_box">
     <form action="searchoffer" >
          <input type="text" placeholder="&nbsp;${requestScope.offername }" class="input" style="position: relative;width: 800px;height: 36px;" name="offername";>
          <input type="submit" value="搜索" class="ipt bgc" style="width: 150px;height: 
          40px;border: none;position: absolute;font-size: 18px;color: #fff;font-family: 微软雅黑;">
        </form>
    </div>
      <div class="correlation">
        <span>相关搜索 : </span>
        <ul>
          <li><a href="searchoffer?offername=java后端">java后端</a></li>
          <li><a href="searchoffer?offername=java+web">java+web</a></li>
          <li><a href="searchoffer?offername=java架构师">java架构师</a></li>
          <li><a href="searchoffer?offername=java实习">java实习</a></li>
          <li><a href="searchoffer?offername=后端">后端</a></li>
          <li><a href="searchoffer?offername=java分布式">java分布式</a></li>
          <li><a href="searchoffer?offername=android">android</a></li>
          <li><a href="searchoffer?offername=hadoop">hadoop</a></li>
          <li><a href="searchoffer?offername=java大数据">java大数据</a></li>
        </ul>
      </div>
  </div>
  </div>
  <!-- 搜索部分 E -->


  <!-- 职位信息部分 B -->
  <div class="joblist">
    <ul>
        <c:forEach items="${requestScope.searchresult}" var="sc">
      <li>
        <div class="info">
        <div class="info_top">
          <a href="lookZixi?company_id=${sc.getCompany().company_id}&need_id=${sc.need_id}">${sc.need_name}&nbsp;[${sc.need_city}]</a> 
          <a href="#" style="left:550px">${sc_company_name}</a> <br> <br>
          <p style="color: #FB8E41">${sc.need_money}</p>
          <p style="left: 80px;">${sc.need_jingyan}/${sc.need_xueli}</p>
          <p style="top:50px">${sc.getCompany().company_lingyu}</p>
          <br><br>
          <p class="fc" style="left:550px;">${sc.getCompany().company_jieduan}</p>
          <br>
          
        </div>
        <div class="info_bottom">
          <p style="width: 400px">${sc.need_youhuo}</p>
        </div>
        </div>
        <div class="logo">logo
          <img src="" alt="">
        </div>
      </li>
          </c:forEach>
    </ul>
        </div>
  </div>
  <!-- 职位信息部分 E -->
  





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

$("#open").click(function(){ 
  $("#open").hide();
  $("#close").show();
  $(".show").slideDown("slow"); 
}); 

$("#close").click(function(){
  $(".show").slideUp("slow"); 
  $("#open").show();
  $("#close").hide();

})



</script>
</html>
