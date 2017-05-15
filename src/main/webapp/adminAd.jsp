<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>编辑公告</title>
    <style>
      .navbar-brand {
  font-weight:900;
  font-family:微软雅黑;
  font-size:20px;
}
    </style>
    <!-- Bootstrap -->
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
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
              <a href="#">个人中心</a></li>
            <li>
              <a href="#">注销</a></li>
          </ul>
        </div>
        <!-- /.navbar-collapse --></div>
      <!-- /.container-fluid --></nav>

      <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron" style="width: 1024px;margin: 0 auto">
        <h2>修改公告</h2>
        <form action="updatenotice">
        <input type="text" style="width: 800px;height: 40px;border:none;border-radius: 5px;margin-top: 20px;" value="${sessionScope.notice.ncontent }" name="ncontent"><br>
        <input type="submit" value="修改" style="width: 100px;height: 40px;font-size: 20px;margin-top: 20px;margin-left: 700px;">
        <input type="hidden" value="1" name="nid">
        </form>
      </div>

    </div> <!-- /container -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="lib/bootstrap/js/"></script>
  </body>
</html>
