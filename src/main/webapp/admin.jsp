<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>后台管理</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/common.css">
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
      .navbar-brand {
  font-weight:900;
  font-family:微软雅黑;
  font-size:20px;
}
.container {
 
  height:500px;
  float:right;
}
#con {
  border:1px solid #ddd;
}
#con li {
  /*display:none;
  */
}
.select {
  background:#f2f2f2;
  cursor:pointer;
}
#con li.show {
  display:block;
}
#con .user {
  width:100%;
  height:450px;
}
#con .company {
  width:100%;
  height:450px;
}
.navbar-form {
  margin-top:-10px;
  margin-left:890px;
}
.table-responsive i {
  font-size:20px;
  margin-right:12px;
  cursor:pointer;
}
.checkbox {
  width:20px;
  height:20px;
}
.del a {
  line-height:28px;
  margin-left:20px;
  font-family:微软雅黑;
  font-weight:900;
}

    </style>
    </head>
  
  <body>
  	<script type="text/javascript">
		function deleteuser(data){
			$.ajax({
				url : "deleteuser",
				data:{"user_id":data},
				type : "POST",
				success:function(data){
					alert(data)
					history.go(0) 
						}
			});
			}
		function deletecompany(data){
			$.ajax({
				url : "deletecompany",
				data:{"company_id":data},
				type : "POST",
				success:function(data){
					alert(data)
					history.go(0) 
						}
			});
			}
  	</script>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <a class="navbar-brand" href="javascript:void(0)">后台管理系统</a></div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li>
              <a href="#">${sessionScope.admininfo.get(0).admin_name }</a></li>
            
            <li>
              <a href="adminlayout">注销</a></li>
              <li>
              <a href="index.jsp">首页</a></li>
          </ul>
        </div>
        <!-- /.navbar-collapse --></div>
      <!-- /.container-fluid --></nav>
    <style></style>
    <!-- 左侧分类菜单 B-->
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" style="width: 160px;float: left">
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
          <h4 class="panel-title">
            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">管理中心</a></h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
          <div class="panel-body" id="tit">
            <ul class="nav">
              <li class="select">
                <a href="">用户管理</a></li>
              <li>
                <a href="">企业管理</a></li>
                <li>
                <a href="">公告管理</a></li>
            </ul>
          </div>
        </div>
      </div>
      
    </div>
    <!-- 左侧分类菜单 E-->
    <!-- 搜索框 -->
    <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder=""></div>
      <button type="submit" class="btn btn-default">查询</button></form>
    <!-- 内容部分 B -->
    <div class="container">
      <ul id="con">
      	<!-- 用户管理 -->
        <li class="user">
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  
                  <th>#</th>
                  <th>姓名</th>
                  <th>性别</th>
                  <th>帐号（手机号）</th>
                  <th>邮箱</th>
                  <th>所在地</th>
                  <th>操作</th></tr>
              </thead>
              <tbody>
              <c:forEach begin="0" end="5" items="${sessionScope.userinfoo }" var="ui" step="1" varStatus="vs">
                <tr>
                  
                  <td>${vs.index+1 }</td>
                  <td>${ui.user_name }</td>
                  <td><%-- ${ui.getResume().resume_sex} --%>男</td>
                  <td>${ui.user_phone }</td>
                  <td><%-- ${ui.getResume().resume_email} --%>18104860443@163.com</td>
                  <td>北京</td>
                  <td>
                    
                    <a href="javascript:deleteuser('${ui.user_id }')"><i class="fa fa-trash" aria-hidden="true"></i></a>
                  </td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
          
        </li>
        <!-- 公司 管理-->
        <li class="company" style="display: none;">
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  
                  <th>#</th>
                  <th>公司名</th>
                  <th>邮箱</th>
                  <th>所在城市</th>
                  <th>公司网址</th>
                  <th>操作</th></tr>
              </thead>
              <tbody>
              <c:forEach begin="0" end="5" items="${sessionScope.companyinfo }" var="cpy" step="1" varStatus="sss">
                <tr>
                  <td>${sss.index+1}</td>
                  <td>${cpy.company_name }</td>
                  <td>${cpy.company_email }</td>
                  <td>${cpy.company_city }</td>
                  <td>${cpy.company_url }</td>
                  <td>
                    
                    <a href="javascript:deletecompany('${cpy.company_id }')"><i class="fa fa-trash" aria-hidden="true"></i></a>
                  </td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
          
        </li>
        
        <!-- 公告管理 -->
        <li class="company" style="display: none;">
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>内容</th>
                  <th>操作</th></tr>
              </thead>
              <tbody>
                <tr>
                  <td>${sessionScope.notice.ncontent }</td>
                  <td>
                    <a href="adminAd.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          
        </li>
      </ul>
      
    </div>
    <script src="lib/jquery/jquery.js"></script>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script>
      // tab切换
$("#tit li").click(function(e) {
    e.preventDefault(); //阻止a链接的跳转行为
    var i = $(this).index();
    $(this).addClass("select").siblings().removeClass("select");
    $("#con li").eq(i).show().siblings().hide();
})

// 全选
$(function() {
    $("#checkAll").bind("click",
    function() {
        $("[name=chkItem]:checkbox").prop("checked", this.checked);
    });
    $("#checkAll2").bind("click",
    function() {
        $("[name=chkItem]:checkbox").prop("checked", this.checked);
    });
});
    </script>
  </body>

</html>
