<%@page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>用户注册</title>
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
    .nav2 .nav2-right ul li a{
      text-decoration:none;
    }
    
    .container{
    width: 1024px;
    height: 800px;
    margin: 0 auto;
    margin-top: 10px;
  }
  .container_left{
    width: 700px;
    height: 100%;
    background-color: #FAFAFA;
    float: left;
  }
  .container_left_top{
    width: 700px;
    height: 60px;
    border-bottom:1px dashed gray;
  }
  .container_left_top p{
    font-family: 微软雅黑;
    font-size: 25px;
    font-weight: 900;
    margin-left: 20px;
    margin-top: 13px;
    display: inline-block;
  }  
  .container_left_top img{
    float: right;
  }
      .container_right{
      width: 280px;
      height: 500px;
      background-color: #fafafa;
      float: right;
    }
    .myinfo{
      width: 100%;
      height: 125px;
      border-bottom:20px solid white;
    }
    .myinfo p{
      font-size: 20px;
      font-weight: 900;
      margin-top: 10px;
      margin-left: 20px;
      margin-bottom: 10px;
      display: inline-block;
    }
    .myinfo a{
      font-size:15px;
      margin-left: 20px;
      display: inline-block;
      margin-top: 5px;
    }
    .wechat{
      width: 100%;
      height: 320px;
      margin-top: 30px;

    }
    .wechat img{
      width: 240px;
      height: 240px;
      margin-top: 15px;
      margin-left: 20px;
    }
    .wechat span{
      font-size: 15px;
      margin-left: 43px;
      display: inline-block;
      margin-top: 20px;
      color: gray;
    }
      .container{
    width: 100%;
    height: 1000px;
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
    width: 480px;
    margin: 56px auto 62px;
    
  }
  .container_bottom ul li{
    margin-bottom: 25px;

  }
  .container_bottom  input{
    width: 446px;
    height: 20px;
    padding: 12px 16px;
    border: 1px solid #f8f8f8;
    border-radius: 2px;
    background-color: #f8f8f8;
    font-size: 14px;
    line-height: 20px;
    font-family: inherit;
  }
 /* .container_bottom  span{
    display: block;
    width: 488px;
    margin-top: 20px;
    font-size: 14px;
    color: #999;
  }*/
  .container_bottom .btn{
    display: block;
    width: 168px;
    height: 48px;
    border: 0;
    border-radius: 3px;
    background-color: #00b38a;
    text-align: center;
    
    font-size: 16px;
    font-weight: 700;
    color: #fff;
    cursor: pointer;
  }
  .container_left{
    width: 700px;
    height: 100%;
    background-color: #FAFAFA;
    background-color: gray;
    float: left;
  }
  .container_left h1{
    width: 130px;
    height: 50px;
    background-color: #00B38A;
    font-family: 微软雅黑; 
    color: white;
    margin-left:50px;
    padding-left: 15px;
    padding-top: 13px;
    border-radius: 5px;
  }
  .container_right{
      width: 280px;
      height: 500px;
      background-color: #fafafa;
      background-color: gray;
      float: right;
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
.container_bottom .stake{
          display: block;
          width: 488px;
          margin-top: 20px;
          margin-bottom: 20px;
          font-size: 14px;
          color: #999;
        }
        .right {
        color: green;
    }
.formtips{
  float: right;
  margin-top: 20px;
}
.nav2-right ul li{
    line-height: 18px;
}
  </style>

</head>
<body>
<script type="text/javascript">
	function checkphone(data){
		$.ajax({
			url:"checkphone",
			data:{"phone":data},
			success:function(data){
				alert(data);
			}
		})
		return false
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
          <a href="companyLogin.jsp" class="admin">企业版</a></li>
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
          <li><a href="search.jsp">职位搜索</a></li>
          <li><a href="iresume.jsp">个人中心</a></li>
        </ul>
      </div>
    </div>
    <!--nav2 E-->

<div class="container">
      <div class="container_top">
        <h1>user register</h1>
        <h2>用户注册</h2>
      </div>
      <div class="container_bottom">
        <form action="userreg">
           <div align="center" style="margin-top: 20px; margin-bottom: 20px;">
            <input type="text" name="user_name" id="username" placeholder="请输入姓名">
          </div> 
          <span class="stake">（请输入姓名）</span>

          <div align="center" style="margin-bottom: 20px">
            <input type="text" name="user_phone" id="tel" placeholder="请输入手机号" onblur="checkphone(this.value)">
            
          </div>
          <span class="stake">（该帐号为登录帐号）</span>
          <div align="center" style="margin-bottom: 20px">
          <input type="password" name="user_pwd" id="password" placeholder="请输入密码">
          
          </div>
          <span class="stake">(请输入密码)</span>
          
          <div align="center">
            <input type="submit" class="submit" value="注册"
              style="background-color: #00B38A; color: white; font-size: 20px;background-color: #00B38A;width: 160px;height: 48px;font-family: 微软雅黑;cursor: pointer;margin-left: 140px" >
              <span style="float: right;font-size: 15px;margin-top: 15px;">已有帐号:<a class="fc"
             href="login.jsp" style="font-weight:900">立即登录</a></span>
          </div>
        </form>
      </div>
    </div>
<a href="" style="color: white"></a>

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


<script src="lib/jquery/jquery.js"></script>
<script>
  // 表单验证
  $(function(){
     //文本框失去焦点后
        $('form :input').blur(function(){
             var $parent = $(this).parent();
             $parent.find(".formtips").remove();
             
             if( $(this).is('#username') ){
                if( this.value=="" || ( this.value!="" && !/^([\u4e00-\u9fa5]){2,7}$/.test(this.value) ) ){
                      var errorMsg = '请输入2-7位汉字';
                      $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
                }else{
                      var okMsg = '格式正确';
                      $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
                }
             }
             //验证手机号
             if( $(this).is('#tel') ){
                if( this.value=="" || ( this.value!="" && !/^(((13|14|15|18|17)\d{9}))$/.test(this.value) ) ){
                      var errorMsg = '请输入11位手机号';
                      $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
                }else{
                      var okMsg = '格式正确';
                      $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
                }
             }

             //验证密码强度
             //
            
            
             
        })/* .keyup(function(){
           $(this).triggerHandler("blur");
        }).focus(function(){
             $(this).triggerHandler("blur");
        });//end blur */
  })
</script>
</body>
</html>
