<!-- <%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>企业注册</title>
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
  .formtips{
  float: right;
  margin-top: -12px;
}
</style>
  <script type="text/javascript" src="lib/jquery/jquery.js"></script>
</head>
<body>
<script type="text/javascript">
	function sendEmail(){
		//开始发送邮件
	$.ajax({
		url:"sendemail",
		type:"POST",
		data:{"youremail":$("#youremail").val()},
		success:function(data){
			$("#codeha").val(data);
			alert("邮件发送成功")
		}
	});
			}
	function checkCode(){
	//alert("进入检查验证码是否正确")
		var inCode = $("#inCode").val()
		var	reCode = $("#codeha").val()
		if(inCode==reCode){
				$("#error").text("验证码正确");
			}else{
				$("#error").text("验证码错误");
				return false;
				}
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
            <a href="companyhome.jsp">企业首页</a></li>
        </ul>
      </div>
    </div>
    <!--nav2 E-->
      
    <div class="container">
      <div class="container_top">
        <h1>Open recruitment service</h1>
        <h2>开通招聘服务</h2>
      </div>
      <div class="container_bottom">
        <form action="complayReg">
          <ul>
            <li>
              <input type="text" placeholder="请输入公司全称" name="company_name" id="company_name">
              <span>(请输入公司全称)</span>
            </li>
            
            <li>
              <input type="text" placeholder="请输入邮箱" name="company_email" id="youremail">
              <input type="hidden" id="codeha" />
              <br>
              <span>(需要该邮箱接受验证码)</span>
            </li>
            <li>
              <input class="btn" type="button" value="获取验证码" style="float: left;" onclick="sendEmail()">
              <input type="text" placeholder="请输入邮箱验证码" name="company_emailcode" style="width: 200px;margin-left: 78px;" onblur="checkCode()" id="inCode">
              <span style="margin-left: 245px;">(请输入邮箱接收的验证码)</span>
              <div id="error" style="display:inline;color: red"></div>
            </li>
            <li>
              <input type="text" placeholder="请输入密码" name="company_pwd">
              <span>(用于企业登录)</span>
            </li>
            <input class="btn" type="submit" value="立即注册" style="margin-left: 165px;">
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
 // 表单验证
  $(function(){
     //文本框失去焦点后
        $('form :input').blur(function(){
             var $parent = $(this).parent();
             $parent.find(".formtips").remove();
             
             if( $(this).is('#company_name') ){
                if( this.value=="" || ( this.value!="" && !/^([\u4e00-\u9fa5]){2,15}$/.test(this.value) ) ){
                      var errorMsg = '请输入2位以上汉字';
                      $parent.append('<p class="formtips onError">'+errorMsg+'</p>');
                }else{
                      var okMsg = '格式正确';
                      $parent.append('<p class="formtips onSuccess">'+okMsg+'</p>');
                }
             }
             //验证邮件
             if( $(this).is('#youremail') ){
                if( this.value=="" || ( this.value!="" && !/.+@.+\.[a-zA-Z]{2,4}$/.test(this.value) ) ){
                      var errorMsg = '请输入正确的E-Mail地址';
                      $parent.append('<p class="formtips onError">'+errorMsg+'</p>');
                }else{
                      var okMsg = '格式正确';
                      $parent.append('<p class="formtips onSuccess">'+okMsg+'</p>');
                }
             }
        }).keyup(function(){
           $(this).triggerHandler("blur");
        }).focus(function(){
             $(this).triggerHandler("blur");
        });//end blur
  })
</script>
</html>

