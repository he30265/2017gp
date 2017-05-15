 <%@page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<!--如果是ie浏览器使用最新的ie渲染引擎来解析页面-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--设置视口-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/index.css">

<!--字体-->
<link rel="stylesheet"
  href="lib/font-awesome-4.7.0/css/font-awesome.css">
<!--让版本浏览器支持h5标签和媒体查询-->
<!--[if lt IE 9]>
      <script src="lib/html5shiv/html5shiv.js"></script>
      <script src="lib/respond/respond.js"></script>
    <![endif]-->
<style>
.nav1,.nav2 {
  font-family:微软雅黑;
}
.nav1,.nav2 a {
  text-decoration:none;
}
.container .container_left .bd {
  font-family:微软雅黑;
}
.bd .item .title {
  overflow:inherit;
}
.carousels {
  width:700px;
  height:160px;
  margin:0 auto;
  position:relative;
  margin-top:25px;
}
.carousels a {
  position:absolute;
}
.carousels a img {
  width:612px;
  height:160px;
}
.carousels ul li.selected {
  background:#00B38A;
  color:white;
}
.carousels ul {
  position:absolute;
  z-index:999;
  top:25px;
  right:40px;
}
.carousels ul li {
  width:25px;
  height:25px;
  border-radius:50%;
  background:white;
  cursor:pointer;
  text-align:center;
  margin-bottom:5px;
  line-height:25px;
  font-weight:900;
  border:1px solid #C0C0C0;
}
.nav2 .nav2-right ul li a {
  font-family:微软雅黑;
}
.nav2 .nav2-right ul li a:hover {
  color:#00B38A;
}
.nav2-right ul li {
  line-height:18px;
}
.ad {
  width:162px;
  height:300px;
  position:fixed;
  right:0;
  top:200px;
  border:1px solid #00B38A;
  z-index:9999;
  background-color:white;
}
.ad .adtop {
  width:100%;
  height:50px;
  font-size:20px;
  line-height:50px;
  color:white;
  font-family:微软雅黑;
  text-align:center;
  font-weight:900;
  position:relative;
  /*background-color:#00B38A;
  */
}
.ad .adtop i {
  position:absolute;
  right:5px;
  top:5px;
  cursor:pointer;
}
.ad .adbottom {
  width:100%;
  height:260px;
  
  padding:5px;
  font-family:微软雅黑;
}

  
</style>
<title>招聘信息网</title>
</head>

<body>
<script type="text/javascript">
  function person(){
    if("${sessionScope.userinfo}"==''){
      alert("请先登录")
      location.href="login.jsp"
      }else{
        location.href="iresume.jsp "
        }
    }
</script>
<style>
  .open{
    width: 30px;
    height: 30px;
    position: absolute;
    top: 269px;
    right: 160px;
  }
  .open .fa-chevron-left{
    position: absolute;
    left: 8px;
    top: 8px;
    color: white;
    font-size: 15px;
    cursor: pointer;
  }
</style>

<!-- 公告部分 -->
<div class="ad">
  <div class="adtop bgc">
    <p>公告
    <i id="adclose" class="fa fa-window-close" aria-hidden="true"></i>
    </p>
  </div>
  <div class="adbottom">
    <p>${sessionScope.allnotice.ncontent }</p>
    <div class="open bgc">
      <i class="fa fa-chevron-left" aria-hidden="true"></i>
    </div>
  </div>
</div>
  <!--nav1 B-->
  <div class="nav1">
    <ul>
      <li><i class="fa fa-mobile fa-2x"></i></li>
      <li><a href="#" class="app">APP</a></li>
      <li>|</li>
      <li><a href="companyLogin.jsp" class="admin">企业版</a></li>
    </ul>
    <s:if test="#session.userinfo==null">
      <ul style="float: right; margin-right: 20px;">
        <!-- <li class="click_login">登录</li>
        <li>|</li>
        <li class="click_register">注册</li> -->
        <li><a href="login.jsp" style="color: white">登录</a></li>
        <li>|</li>
        <li><a href="register.jsp" style="color: white">注册</a></li>
      </ul>
    </s:if>
    <s:else>
      <ul style="float: right; margin-right: 20px;">
        <li>${sessionScope.userinfo.user_name }</li>
        <li><a href="userlogout" style="color: white">注销</a></li>
      </ul>
    </s:else>
  </div>
  <!--nav1 E-->
  <!--nav2 B-->
  <style>
    
  </style>
  <div class="nav2">
    <div class="nav2-left ">
      <ul>
        <li><a href="#"> <img src="images/logo.png" alt=""></a></li>
        <li style="font-size: 25px;font-weight: 900;font-family: 微软雅黑;line-height: 55px">招聘信息网</li>
      </ul>
    </div>
    <style>
        
    </style>
    <div class="nav2-right">
      <ul>
        <li><a href="index.jsp">首页</a></li>
        <li><a href="search.jsp">职位搜索</a></li>
        <li><a href="javascript:person()">个人中心</a></li>
        <!--  <li><a href="iresume.jsp">简历中心</a></li>
        <li><a href="lookmycollects?user_name=${sessionScope.userinfo.user_name }">收藏夹</a> --></li> 
      </ul>
    </div>
  </div>
  <!--nav2 E-->
  <!--页面主体B-->
  <div class="container">
    <div class="container_left">
      <div class="bd">
        <div class="item">
          <div class="title" >
            <a href="searchoffer?offername=技术"><i></i>技术</a>
          </div>
          <div class="list">
            <a href="searchoffer?offername=Java">Java</a> <a href="searchoffer?offername=PHP">PHP</a> <a href="searchoffer?offername=C++">C++</a> <a
              href="searchoffer?offername=Android">Android</a>
          </div>
          <div class="arrow">></div>
          <div class="subitem">
            <div class="inner">
              <div class="tit tit1">
                <ul>
                  <li><a href="searchoffer?offername=java">java</a></li>
                  <li><a href="searchoffer?offername=Python">Python</a></li>
                  <li><a href="searchoffer?offername=PHP">PHP</a></li>
                  <li><a href="searchoffer?offername=.NET">.NET</a></li>
                  <li><a href="searchoffer?offername=C++">C++</a></li>
                  <li><a href="searchoffer?offername=C">C</a></li>
                  <li><a href="searchoffer?offername=HTML5">HTML5</a></li>
                  <li><a href="searchoffer?offername=Android">Android</a></li>
                  <li><a href="searchoffer?offername=iOS">iOS</a></li>
                  <li><a href="searchoffer?offername=web前端">web前端</a></li>
                  <li><a href="searchoffer?offername=JavaScript">JavaScript</a></li>
                  <li><a href="searchoffer?offername=U3d">U3d</a></li>
                  <li><a href="searchoffer?offername=测试工程师">测试工程师</a></li>
                  <li><a href="searchoffer?offername=自动化测试">自动化测试</a></li>
                  <li><a href="searchoffer?offername=功能测试">功能测试</a></li>
                  <li><a href="searchoffer?offername=性能测试">性能测试</a></li>
                  <li><a href="searchoffer?offername=游戏测试">游戏测试</a></li>
                  <li><a href="searchoffer?offername=白盒测试">白盒测试</a></li>
                  <li><a href="searchoffer?offername=手机测试">手机测试</a></li>
                  <li><a href="searchoffer?offername=硬件测试">硬件测试</a></li>
                  <li><a href="searchoffer?offername=测试其他">测试其他</a></li>
                </ul>
              </div>
              <div class="tit"></div>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="title">
            <a href="searchoffer?offername=产品"><i></i>产品</a>
          </div>
          <div class="list">
            <a href="searchoffer?offername=产品总监">产品总监</a> <a href="searchoffer?offername=产品经理">产品经理</a> <a href="searchoffer?offername=游戏策划">游戏策划</a>
          </div>
          <div class="arrow">></div>
          <div class="line"></div>
          <div class="subitem">
            <div class="inner">
              <div class="tit">
                <ul>
                  <li><a href="searchoffer?offername=产品经理">产品经理</a></li>
                  <li><a href="searchoffer?offername=网页产品经理">网页产品经理</a></li>
                  <li><a href="searchoffer?offername=移动产品经历">移动产品经历</a></li>
                  <li><a href="searchoffer?offername=产品助理">产品助理</a></li>
                  <li><a href="searchoffer?offername=数据产品经理">数据产品经理</a></li>
                  <li><a href="searchoffer?offername=电商产品经理">电商产品经理</a></li>
                  <li><a href="searchoffer?offername=游戏策划">游戏策划</a></li>
                  <li><a href="searchoffer?offername=产品实习生">产品实习生</a></li>
                  <li><a href="searchoffer?offername=网页产品设计师">网页产品设计师</a></li>
                  <li><a href="searchoffer?offername=无线产品设计师">无线产品设计师</a></li>
                  <li><a href="searchoffer?offername=产品部经理">产品部经理</a></li>
                  <li><a href="searchoffer?offername=产品总监">产品总监</a></li>
                  <li><a href="searchoffer?offername=游戏制作人">游戏制作人</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="title">
            <a href="searchoffer?offername=设计"><i></i>设计</a>
          </div>
          <div class="list">
            <a href="searchoffer?offername=UI设计师">UI设计师</a> <a href="searchoffer?offername=交互设计">交互设计</a> <a href="searchoffer?offername=网页设计师">网页设计师</a>
          </div>
          <div class="arrow">></div>
          <div class="line"></div>
          <div class="subitem">
            <div class="inner">
              <div class="tit">
                <ul>
                  <li><a href="searchoffer?offername=网页设计师">网页设计师</a></li>
                  <li><a href="searchoffer?offername=Flash设计师">Flash设计师</a></li>
                  <li><a href="searchoffer?offername=APP设计师">APP设计师</a></li>
                  <li><a href="searchoffer?offername=UI设计师">UI设计师</a></li>
                  <li><a href="searchoffer?offername=平面设计师">平面设计师</a></li>
                  <li><a href="searchoffer?offername=广告设计师">广告设计师</a></li>
                  <li><a href="searchoffer?offername=多媒体设计师">多媒体设计师</a></li>
                  <li><a href="searchoffer?offername=数据分析师">数据分析师</a></li>
                  <li><a href="searchoffer?offername=用户研究员">用户研究员</a></li>
                  <li><a href="searchoffer?offername=游戏数值策划">游戏数值策划</a></li>
                  <li><a href="searchoffer?offername=设计经理/主管">设计经理/主管</a></li>
                  <li><a href="searchoffer?offername=设计总监">设计总监</a></li>
                  <li><a href="searchoffer?offername=网页交互设计师">网页交互设计师</a></li>
                  <li><a href="searchoffer?offername=无线交互设计师">无线交互设计师</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="title">
            <a href="searchoffer?offername=运营"><i></i>运营</a>
          </div>
          <div class="list">
            <a href="searchoffer?offername=新媒体运营">新媒体运营</a> <a href="searchoffer?offername=编辑">编辑</a> <a href="searchoffer?offername=数据运营">数据运营</a>
          </div>
          <div class="arrow">></div>
          <div class="line"></div>
          <div class="subitem">
            <div class="inner">
              <div class="tit">
                <ul>
                  <li><a href="searchoffer?offername=内容运营">内容运营</a></li>
                  <li><a href="searchoffer?offername=产品运营">产品运营</a></li>
                  <li><a href="searchoffer?offername=数据运营">数据运营</a></li>
                  <li><a href="searchoffer?offername=用户运营">用户运营</a></li>
                  <li><a href="searchoffer?offername=活动运营">活动运营</a></li>
                  <li><a href="searchoffer?offername=商家运营">商家运营</a></li>
                  <li><a href="searchoffer?offername=品类运营">品类运营</a></li>
                  <li><a href="searchoffer?offername=游戏运营">游戏运营</a></li>
                  <li><a href="searchoffer?offername=网络推广">网络推广</a></li>
                  <li><a href="searchoffer?offername=副主编">副主编</a></li>
                  <li><a href="searchoffer?offername=内容编辑">内容编辑</a></li>
                  <li><a href="searchoffer?offername=文案策划">文案策划</a></li>
                  <li><a href="searchoffer?offername=记者">记者</a></li>
                  <li><a href="searchoffer?offername=售前咨询">售前咨询</a></li>
                  <li><a href="searchoffer?offername=售后服务">售后服务</a></li>
                  <li><a href="searchoffer?offername=主编">主编</a></li>
                  <li><a href="searchoffer?offername=运营总监">运营总监</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="title">
            <a href="searchoffer?offername=市场销售"><i></i>市场销售</a>
          </div>
          <div class="list">
            <a href="searchoffer?offername=市场推广">市场推广</a> <a href="searchoffer?offername=市场总监">市场总监</a> <a href="市场策划">市场策划</a>
          </div>
          <div class="arrow">></div>
          <div class="line"></div>
          <div class="subitem">
            <div class="inner">
              <div class="tit">
                <ul>
                  <li><a href="searchoffer?offername=市场策划">市场策划</a></li>
                  <li><a href="searchoffer?offername=市场顾问">市场顾问</a></li>
                  <li><a href="searchoffer?offername=市场营销">市场营销</a></li>
                  <li><a href="searchoffer?offername=市场推广">市场推广</a></li>
                  <li><a href="searchoffer?offername=SEO">SEO</a></li>
                  <li><a href="searchoffer?offername=SEM">SEM</a></li>
                  <li><a href="searchoffer?offername=媒介经理">媒介经理</a></li>
                  <li><a href="searchoffer?offername=广告协调">广告协调</a></li>
                  <li><a href="searchoffer?offername=品牌公关">品牌公关</a></li>
                  <li><a href="searchoffer?offername=销售专员">销售专员</a></li>
                  <li><a href="searchoffer?offername=销售经理">销售经理</a></li>
                  <li><a href="searchoffer?offername=客户代表">客户代表</a></li>
                  <li><a href="searchoffer?offername=市场总监">市场总监</a></li>
                  <li><a href="searchoffer?offername=销售总监">销售总监</a></li>
                  <li><a href="searchoffer?offername=物流">物流</a></li>
                  <li><a href="searchoffer?offername=仓储">仓储</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="title">
            <a href="searchoffer?offername=职能"><i></i>职能</a>
          </div>
          <div class="list">
            <a href="searchoffer?offername=HR">HR</a> <a href="searchoffer?offername=行政">行政</a> <a href="searchoffer?offername=财务">财务</a> <a
              href="searchoffer?offername=审计">审计</a>
          </div>
          <div class="arrow">></div>
          <div class="line"></div>
          <div class="subitem">
            <div class="inner">
              <div class="tit">
                <ul>
                  <li><a href="searchoffer?offername=人事HR">人事HR</a></li>
                  <li><a href="searchoffer?offername=培训经理">培训经理</a></li>
                  <li><a href="searchoffer?offername=薪资福利经理">薪资福利经理</a></li>
                  <li><a href="searchoffer?offername=绩效考核经理">绩效考核经理</a></li>
                  <li><a href="searchoffer?offername=人力资源">人力资源</a></li>
                  <li><a href="searchoffer?offername=招聘">招聘</a></li>
                  <li><a href="searchoffer?offername=助理">助理</a></li>
                  <li><a href="searchoffer?offername=前台">前台</a></li>
                  <li><a href="searchoffer?offername=行政">行政</a></li>
                  <li><a href="searchoffer?offername=总助">总助</a></li>
                  <li><a href="searchoffer?offername=文秘">文秘</a></li>
                  <li><a href="searchoffer?offername=会计">会计</a></li>
                  <li><a href="searchoffer?offername=出纳">出纳</a></li>
                  <li><a href="searchoffer?offername=财务">财务</a></li>
                  <li><a href="searchoffer?offername=法务">法务</a></li>
                  <li><a href="searchoffer?offername=律师">律师</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="title">
            <a href="searchoffer?offername=金融"><i></i>金融</a>
          </div>
          <div class="list">
            <a href="searchoffer?offername=投资">投资</a> <a href="searchoffer?offername=融资">融资</a> <a href="searchoffer?offername=并购">并购</a> <a
              href="searchoffer?offername=风控">风控</a>
          </div>
          <div class="arrow">></div>
          <div class="line"></div>
          <div class="subitem">
            <div class="inner">
              <div class="tit">
                <ul>
                  <li><a href="searchoffer?offername=投资经理">投资经理</a></li>
                  <li><a href="searchoffer?offername=分析师">分析师</a></li>
                  <li><a href="searchoffer?offername=投资助理">投资助理</a></li>
                  <li><a href="searchoffer?offername=融资">融资</a></li>
                  <li><a href="searchoffer?offername=并购">并购</a></li>
                  <li><a href="searchoffer?offername=行业研究">行业研究</a></li>
                  <li><a href="searchoffer?offername=投资者关系">投资者关系</a></li>
                  <li><a href="searchoffer?offername=资产管理">资产管理</a></li>
                  <li><a href="searchoffer?offername=风控">风控</a></li>
                  <li><a href="searchoffer?offername=资信评估">资信评估</a></li>
                  <li><a href="searchoffer?offername=合规稽查">合规稽查</a></li>
                  <li><a href="searchoffer?offername=律师">律师</a></li>
                  <li><a href="searchoffer?offername=审计">审计</a></li>
                  <li><a href="searchoffer?offername=法务">法务</a></li>
                  <li><a href="searchoffer?offername=会计">会计</a></li>
                  <li><a href="searchoffer?offername=清算">清算</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container_right">
      <div class="search_box">
        <form action="searchoffer">
          <input type="text" placeholder="&nbsp;web前端与移动开发" class="input" style="position: relative;" name="offername">
          <input type="submit" value="搜索" class="ipt bgc" style="width: 150px;height: 
          40px;border: none;position: absolute;font-size: 18px;color: #fff;font-family: 微软雅黑;">
        </form>
      </div>
      <div class="hot_search">
        <dl>
          <dt>热门搜索：</dt>
          <a href="searchoffer?offername=JAVA">
            <dd>JAVA</dd>
          </a>
          <a href="searchoffer?offername=web前端">
            <dd>web前端</dd>
          </a>
          <a href="searchoffer?offername=PHP">
            <dd>PHP</dd>
          </a>
          <a href="searchoffer?offername=IOS">
            <dd>IOS</dd>
          </a>
          <a href="searchoffer?offername=C++">
            <dd>C++</dd>
          </a>
          <a href="searchoffer?offername=HTML5">
            <dd>HTML5</dd>
          </a>
          <a href="searchoffer?offername=运维">
            <dd>运维</dd>
          </a>
          <a href="searchoffer?offername=产品经理">
            <dd>产品经理</dd>
          </a>
        </dl>
      </div>
      <!-- 轮播图 B -->
      
      <div class="carousels">
        <a href=""><img src="images/timg1.jpg" alt=""></a>
        <a href=""><img src="images/timg2.jpg" alt=""></a>
        <a href=""><img src="images/timg3.jpg" alt=""></a>
        <a href=""><img src="images/timg4.jpg" alt=""></a>
        <ul>
          <li class="selected">1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
          </ul>
      </div>
      <!-- 轮播图 E -->
      <div class="tab-contain" style="top: 340px;">
        <!-- tab栏 -->
        <ul id="tabs">
          <li class="current"><a href="#" title="tab1">最新职位</a></li>
          
        </ul>
        <!-- 对应显示内容 -->
        <div id="content" box-shadow: 2px -1px 10px 0px rgba(0, 0, 0, 0.5);>
          <div id="tab1" class="item show">
          <c:forEach items="${sessionScope.alloffer }" var="ao" begin="0" end="5">
            <div class="recommendjob">
              <a href="lookZixi?company_id=${ao.getCompany().company_id}&need_id=${ao.need_id}">${ao.need_comname}&nbsp;[${ao.need_city }]</a> <%-- <a href="#"
                style="left: 400px">${ao.need_comname }</a>  --%><br> <br>
              <p style="color: #FB8E41">${ao.need_money }</p>
              <p style="left: 60px">${ao.need_jingyan }/${ao.need_xueli }</p>
              <p style="left: 400px">${ao.need_name }</p>
              <br> <br>
              <p style="width: 400px">“${ao.need_youhuo }”</p>
              <p class="fc" style="left: 400px">${ao.need_xingzhi }</p>
            </div>
            </c:forEach>
            <div class="more">
              <a href="search.jsp"><p>
                  查看更多<i class="fa fa-hand-o-right" aria-hidden="true"></i>
                </p></a>
            </div>
          </div>
          
        </div>

      </div>
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
        <li>企业服务热线&nbsp; <b>400 065 5799</b>&nbsp;<a href="adminLogin.jsp" style="font-weight:900;color:orange">管理员入口  <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        </li>
      </ul>
    </div>
  </div>
  <!--页面底部E-->
  <!--页面主体E-->
  <!--登录弹出窗口B-->
  <div class="login" id="login">
    <div class="login_top" id="login_top">
      <span>登录帐号</span> <a class="close"></a>
    </div>
    <div class="login_min" id="login_min">
      <div class="min_left">
        <h4>手机扫描</h4>
        <img src="images/erweima .png" alt="">
        <h5>二维码登录</h5>
      </div>
      <div class="min_right">
        <form action="userlogin">
          <a href="#">短信快捷登录</a>
          <div align="center">
            <input type="text" name="user_name" id="name" placeholder="用户名"
              style="margin-left: 7px"> <br> <input
              type="password" name="user_pwd" id="password" placeholder="密码">
          </div>
          <a href="#" style="color: red">登录遇到问题</a>
          <div align="center">
            <input type="submit" class="submit" value="登录">
          </div>
          <a class="goregister" style="font-weight: 900; color: black">立即注册</a>
        </form>
      </div>
    </div>
  </div>

  <!--登录弹出窗口E-->
  <!--注册弹出窗口B-->
  <div class="register">
    <div class="register_top" id="register_top">
      <span>注册帐号</span> <a class="close"></a>
    </div>
    <div class="register_min" id="register_min">
      <div class="min_left">
        <form action="userreg">
          <div align="center" style="margin-top: 20px; margin-bottom: 20px;">
            <input type="text" name="user_name" id="tel" placeholder="请输入用户名">
          </div>
          <div align="center" style="margin-bottom: 20px">
            <input type="text" name="user_phone" placeholder="请输入手机号">
          </div>
          <div align="center" style="margin-bottom: 20px">
            <input type="text" name="user_pwd" id="password"
              placeholder="请输入密码">
          </div>
          <div align="center">
            <input type="submit" class="submit" value="注册"
              style="background-color: #00B38A; color: white; font-size: 20px;">
          </div>
        </form>
      </div>
      <div class="min_right">
        <div align="center">
          <p>使用以下账号直接登录</p>
          <ul>
            <a href="#" class="fa fa-weibo fa-3x" style="color: red"></a>
            <a href="#" class="fa fa-weixin fa-3x"
              style="color: green; margin: 5px;"></a>
            <a href="#" class="fa fa-qq fa-3x" style="color: blue"></a>
          </ul>
          <img src="images/erweima .png" alt=""> <br> <span>[
            扫码下载APP ]</span> <br> <br> <br> <br> <a
            class="gologin">已有帐号 直接登录</a>
        </div>
      </div>
    </div>
  </div>
  <!--注册弹出窗口E-->
  </div>
  <script src="js/jquery.js"></script>
  <script src="js/index2.js"></script>
  <!-- <script src="lib/bootstrap/js/bootstrap.js"></script> -->
  <script type="text/javascript">
  //alert("进入了主页的js")
    if ('${sessionScope.alloffer}' != "") {
      //alert("不刷新")
      //alert('${sessionScope.alloffer}')
    } else {
      //alert("刷新");
      $.ajax({
        url : "lookalloffer",
        type : "POST",
        success:function(data){
          if(data!=""){
        location.href="index.jsp"
            }
        }
      });
    }
  
$(".fa-window-close").click(function(){
  $(".ad").animate({right:"-162px"},'slow')
   
})

$(".open").click(function(){
  $(".ad").animate({right:"0"},'slow')
})

  </script>
</body>

</html>
