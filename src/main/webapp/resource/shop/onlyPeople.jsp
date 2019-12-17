<%--
  Created by IntelliJ IDEA.
  User: 张焕
  Date: 2019/12/13
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>商城购物个人中心页面模板</title>
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport" />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta content="telephone=no" name="format-detection" />
    <link href="<%=basePath%>resource/css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<section class="jq22-flexView">
    <section class="jq22-scrollView">
        <div class="jq22-head-read">
            <div class="jq22-flex">
                <div class="jq22-read-img">
                    <img src="<%=basePath%>resource/images/user.png" alt="">
                </div>
                <div class="jq22-flex-box">
                    <h2>popok008</h2>
                </div>
                <div class="jq22-arrow jq22-arrow-one">
                    <span>去赚钱</span>
                </div>
            </div>
        </div>
        <div class="jq22-white-box">
            <div class="jq22-palace jq22-palace-one">
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-text">
                        <h1>398 <em>元</em></h1>
                        <h2>可提金额</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-text">
                        <h1>598 <em>元</em></h1>
                        <h2>即将到账</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-text">
                        <h1>689 <em>元</em></h1>
                        <h2>累计到账</h2>
                    </div>
                </a>
            </div>
        </div>
        <div class="jq22-white-box jq22-white-box-clear">
            <div class="jq22-flex b-line">
                <div class="jq22-flex-box">
                    <h3>我的订单</h3>
                </div>
                <div class="jq22-arrow">
                    <span>查看全部</span>
                </div>
            </div>
            <div class="jq22-palace jq22-palace-two jq22-palace-line">
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-001.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>返现订单</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-002.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>待付款</h2>
                    </div>
                </a>
                <a href="<%=basePath%>resource/shop/usershopPending.jsp" class="jq22-palace-grid" target="_blank">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-003.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>待发货</h2>
                    </div>
                </a>
                <a href="<%=basePath%>resource/shop/usershipped.jsp" class="jq22-palace-grid" target="_blank">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-004.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>待收货</h2>
                    </div>
                </a>
            </div>
        </div>
        <div class="jq22-white-box jq22-white-box-clear">
            <div class="jq22-palace jq22-palace-two jq22-palace-line">
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-005.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>任务奖励</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-006.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>任务提现</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-007.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>邀请好友</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-008.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>好友列表</h2>
                    </div>
                </a>
            </div>
        </div>
        <div class="jq22-white-box jq22-white-box-clear">
            <div class="jq22-flex b-line">
                <div class="jq22-flex-box">
                    <h3>常用功能</h3>
                </div>
            </div>
            <div class="jq22-palace jq22-palace-two jq22-palace-line">
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-009.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>我的订单</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-010.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>领优惠券</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-011.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>我的收藏</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-012.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>浏览记录</h2>
                    </div>
                </a>
            </div>
        </div>
        <div class="jq22-white-box jq22-white-box-clear">
            <div class="jq22-flex b-line">
                <div class="jq22-flex-box">
                    <h3>福利中心</h3>
                </div>
            </div>
            <div class="jq22-palace jq22-palace-two ">
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-013.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>任务中心</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-014.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>签到赚钱</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-015.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>阅读赚钱</h2>
                    </div>
                </a>
                <a href="#" class="jq22-palace-grid">
                    <div class="jq22-palace-grid-icon">
                        <img src="<%=basePath%>resource/images/nav-016.png" alt="">
                    </div>
                    <div class="jq22-palace-grid-text">
                        <h2>每日抽奖</h2>
                    </div>
                </a>
            </div>
        </div>
    </section>
</section>
</body>
</html>
