<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>编辑公司信息</title>
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
    #industrySector{
              width: 480px;
              height: 205px;
              margin-top: 10px;
              display: none;
              background-color: white;
              position: absolute;
              z-index: 99;
            }
            
            #industrySector li{
                width: 85px;
                height: 50px;
                background-color: #f8f8f8;
                list-style: none;
                float: left;
                margin-right: 10px;
                line-height: 50px;
                text-align: center;
                font-size: 13px;
                cursor: pointer;
              }
              #industrySector li:hover{
                background-color: #00B38A;
                color: white;
              }
              #stage{
              width: 480px;
              height: 130px;
              margin-top: 10px;
              display: none;
              background-color: white;
              position: absolute;
              z-index: 999;
              
            }
            
            #stage li{
                width: 85px;
                height: 50px;
                background-color: #f8f8f8;
                list-style: none;
                float: left;
                margin-right: 10px;
                line-height: 50px;
                text-align: center;
                font-size: 13px;
                cursor: pointer;
              }
              #stage li:hover{
                background-color: #00B38A;
                color: white;
              }
              #people{
              width: 480px;
              height: 110px;
              margin-left: 8px;
              margin-top: 10px;
              display: none;
              
            }
            
            #people li{
                width: 85px;
                height: 50px;
                background-color: #f8f8f8;
                list-style: none;
                float: left;
                margin-right: 10px;
                line-height: 50px;
                text-align: center;
                font-size: 13px;
                cursor: pointer;
              }
              #people li:hover{
                background-color: #00B38A;
                color: white;
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
      
    <div class="container" style="height: 1250px;">
      <div class="container_top">
        <h1>edit company information</h1>
        <h2>编辑公司信息</h2>

      </div>
      <div class="container_bottom"">
        <form action="editMyInfo" style="width: 600px;">
          <ul>
            <li>
              <h1>公司全称
                <span style="display: inline-block;width: 400px;font-size: 20px;margin-left: 20px;position: absolute;">${sessionScope.compan.get(0).company_name }
                </span>
              </h1>
            </li>
            <li>
              <h1>公司logo</h1>
              <img id="pic" src="" style="width: 100px;height: 100px;margin-top: 20px;">
              <input id="upload" type="file" style="display: none;"/>
              <span style="float: right;margin-top: 60px;">点击图片上传logo</span>
            </li>
            <li>
              <h1>公司网址</h1>
              <input type="hidden" value="${sessionScope.compan.get(0).company_id }" name="company_id" />
              <input type="text" name="company_url" placeholder="请输入公司网址">
            </li>
            <li>
              <h1>所在城市</h1>
              <input type="text" name="company_city" placeholder="请输入公司所在城市 例：北京">
            </li>
            
            <li>
            <style>
            
            </style>
              <h1>行业领域</h1>
              <input type="text" id="ipt" placeholder="点击选择行业领域" name="company_lingyu">
                <ul id="industrySector">
                  <li>移动互联网</li>
                  <li>电子商务</li>
                  <li>社交</li>
                  <li>企业服务</li>
                  <li>教育</li>
                  <li>生活服务</li>
                  <li>云计算\大数据</li>
                  <li>移动广告</li>
                  <li>社会化营销</li>
                  <li>媒体</li>
                  <li>视频多媒体</li>
                  <li>智能家居</li>
                  <li>只能电视</li>
                  <li>分类信息</li>
                  <li>招聘</li>
                </ul>
            </li>
            <li>
              <h1>发展阶段</h1>
              <input type="text" id="ipt2" placeholder="点击选择发展阶段" name="company_jieduan">
                <ul id="stage">
                  <li>未融资</li>
                  <li>天使轮</li>
                  <li>A轮</li>
                  <li>B轮</li>
                  <li>C轮</li>
                  <li>D轮及以上</li>
                  <li>上市公司</li>
                </ul>
            </li>
            <li>
              <h1>公司规模</h1>
              <input type="text" id="ipt3" placeholder="请选择公司规模" name="company_guimo">
              <ul id="people">
                <li>少于15人</li>
                <li>15-50人</li>
                <li>50-150人</li>
                <li>150-500人</li>
                <li>500-2000人</li>
                <li>2000人以上</li>
              </ul>
            </li>
            <li>
              <input class="btn" type="submit" value="完成" style="margin-left: 165px;margin-top: 120px">
            </li>
            
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
<script src="js/jquery.js"></script>
<script>
// 上传logo部分 B
 $(function() {
$("#pic").click(function () {
$("#upload").click(); //隐藏了input:file样式后，点击头像就可以本地上传
$("#upload").on("change",function(){
var objUrl = getObjectURL(this.files[0]) ; //获取图片的路径，该路径不是图片在本地的路径
if (objUrl) {
$("#pic").attr("src", objUrl) ; //将图片路径存入src中，显示出图片
}
});
});
});
 
//建立一个可存取到该file的url
function getObjectURL(file) {
var url = null ;
if (window.createObjectURL!=undefined) { // basic
url = window.createObjectURL(file) ;
} else if (window.URL!=undefined) { // mozilla(firefox)
url = window.URL.createObjectURL(file) ;
} else if (window.webkitURL!=undefined) { // webkit or chrome
url = window.webkitURL.createObjectURL(file) ;
}
return url ;
}
// 上传logo部分 E




//选择行业领域 
$("#ipt").click(function(){
  $("#industrySector").show();
});

$(function () {
    $("#industrySector>li").click(function () {
      var val = $(this).text();
      $("#ipt").val(val);
      $("#industrySector").hide();
    });
});

//选择发展阶段
$("#ipt2").click(function(){
  $("#stage").show();
});

$(function () {
    $("#stage>li").click(function () {
      var val = $(this).text();
      $("#ipt2").val(val);
        $("#stage").hide();
    });
});
 
 //公司规模
 $("#ipt3").click(function(){
  $("#people").show();
});

$(function () {
    $("#people>li").click(function () {
      var val = $(this).text();
      $("#ipt3").val(val);
        $("#people").hide();
    });
});
</script>
</html>

