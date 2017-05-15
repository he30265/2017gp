<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>编辑职位</title>
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
    #money{
              width: 480px;
              height: 140px;
              margin-top: 25px;
              display: none;
              background-color: #fff;
              position: absolute;
              z-index: 99;
            }
            
            #money li{
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
              #money li:hover{
                background-color: #00B38A;
                color: white;
              }
              
               #exps{
              width: 480px;
              height: 140px;
              margin-top: 10px;
              display: none;
              background-color: #fff;
              position: absolute;
              z-index: 999;
              
            }
            
            #exps li{
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
              #exps li:hover{
                background-color: #00B38A;
                color: white;
              }
            #edus{
              width: 480px;
              height: 100px;
              margin-top: 10px;
              display: none;
              background-color: #fff;
              position: absolute;
              z-index: 99;
            }
            
            #edus li{
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
              #edus li:hover{
                background-color: #00B38A;
                color: white;
              }
               #workstyles{
              width: 480px;
              height: 65px;
              margin-top: 10px;
              display: none;
              background-color: #fff;
              position: absolute;
              z-index: 99;
            }
            #workstyles li{
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
              #workstyles li:hover{
                background-color: #00B38A;
                color: white;
              }
              .nav2-right ul li{
    line-height: 18px;
}
              
  </style>
</head>
<body>
<script type="text/javascript">
	
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
      <ul style="float:right;margin-right:60px;">
        <li class="user" style="">企业</li>
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

    <div class="container" style="height: 1500px;">
      <div class="container_top">
        <h1>Release the new jobs</h1>
        <h2>编辑职位</h2>
      </div>
      <div class="container_bottom">
        <form action="editoffer" style="width: 600px;">
        <input type="hidden" value="${sessionScope.compan.get(0).company_id}" name="company_id" />
        <input type="hidden" value="${requestScope.needoffer.need_id }" name="need_id" />
          <ul>
            <li>
              <h1>职位名称</h1>
               <input type="hidden" value="${sessionScope.compan.get(0).company_name }" name="need_comname" /> 
              <input type="text" placeholder="请输入职位名称，如：web前端开发" name="need_name" value="${requestScope.needoffer.need_name }">
            </li>
            <li>
              <h1 style="float: left;margin-top: 10px">工作城市</h1>
              <input type="text" placeholder="例：北京" style="width: 200px; margin-left:148px" name="need_city" value="${requestScope.needoffer.need_city }">
            </li>
            <li style="border-bottom: 1px dashed gray;width: 478px"></li>
            <li>
              <h1>月薪范围</h1>
              <input type="text" id="ipt" placeholder="请选择月薪范围" name="need_money" value="${requestScope.needoffer.need_money }">
              <ul id="money">
                <li>2k以下</li>
                <li>2k-5k</li>
                <li>5k-10k</li>
                <li>10k-15k</li>
                <li>15k-25k</li>
                <li>25k-50k</li>
                <li>50k以上</li>
              </ul>
            </li>
            <li>
              <h1>工作经验</h1>
              <input type="text" id="exp" placeholder="请选择工作经验" name="need_jingyan" value="${requestScope.needoffer.need_jingyan }">
              <ul id="exps">
                <li>不限</li>
                <li>应届毕业生</li>
                <li>1年以下</li>
                <li>1-3年</li>
                <li>3-5年</li>
                <li>5-10年</li>
              </ul>
            </li>
            <li>
              <h1>学历要求</h1>
              <input type="text" id="edu" placeholder="请选择学历要求" name="need_xueli" value="${requestScope.needoffer.need_xueli }">
              <ul id="edus">
                <li>不限</li>
                <li>大专</li>
                <li>本科</li>
                <li>硕士</li>
                <li>博士</li>
              </ul>
            </li>
            <li>
              <h1>工作性质</h1>
              <input type="text" id="workstyle" placeholder="请选择工作性质" name="need_xingzhi" value="${requestScope.needoffer.need_xingzhi }"> 
              <ul id="workstyles">
                <li>全职</li>
                <li>兼职</li>
                <li>实习</li>
              </ul>
            </li>
            <li style="border-bottom: 1px dashed gray;width: 478px"></li>
            <li>
              <h1>职位诱惑</h1>
              <input type="text" id="describe" placeholder="一句话描述该职位的吸引力（不超过20字）" name="need_youhuo" value="${requestScope.needoffer.need_youhuo }">
            </li>
            
            <li>
              <h1>职位描述</h1>
              <textarea  id="" cols="65" rows="10" placeholder="分条描述工作职责......" name="need_miaoshu" value="${requestScope.needoffer.need_miaoshu }"></textarea>
            </li>
            <li>
              <h1>工作地址</h1>
              <input type="text" placeholder="请输入详细的工作地址" name="need_address" value="${requestScope.needoffer.need_address }">
            </li>
            <li>
              <input class="btn" type="submit" value="提交" style="margin-left: 165px;margin-top: 120px" >
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
 // 薪资
 $("#ipt").click(function(){
  $("#money").show();
});

$(function () {
    $("#money>li").click(function () {
      var val = $(this).text();
      $("#ipt").val(val);
      $("#money").hide();
    });
});
 // 工作经验
 $("#exp").click(function(){
  $("#exps").show();
});

$(function () {
    $("#exps>li").click(function () {
      var val = $(this).text();
      $("#exp").val(val);
      $("#exps").hide();
    });
});
 // 学历要求
 $("#edu").click(function(){
  $("#edus").show();
});

$(function () {
    $("#edus>li").click(function () {
      var val = $(this).text();
      $("#edu").val(val);
      $("#edus").hide();
    });
});

//工作性质
$("#workstyle").click(function(){
 $("#workstyles").show();
});

$(function () {
   $("#workstyles>li").click(function () {
     var val = $(this).text();
     $("#workstyle").val(val);
     $("#workstyles").hide();
   });
});
</script>
</html>

