<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>resource/css/login.css" type="text/css" media="all">
    <style>
        #msg{
            color: white;
        }
    </style>
</head>
<body>
<h1>商家登录</h1>
<div class="container w3layouts agileits">
    <div class="login w3layouts agileits">
        <h2>商 家 登 录</h2>
        <input type="text"      id="username1"  placeholder="用户名" >
        <input type="password"  id="password1" placeholder="密码"   >

        <div class="send-button w3layouts agileits">
            <input type="button" value="登 录" id="btnLogin">
            <div id="msg"></div>
        </div>
    </div>
</div>

<script type="text/javascript">
        $(function(){
            $("#btnLogin").click(function(){
                $.ajax({
                    url:"adminlogin",
                    type:"post",
                    data:{
                        "username":$("#username1").val(),
                        "password":$("#password1").val()
                    },
                    success:function(data){
                        if(data=="empty"){
                            $("#msg").html("用户不存在")
                        }else if(data=="yes"){
                            $("#msg").html("成功")
                            window.location="<%=basePath%>resource/admin/adminBack.jsp"
                        }else{
                            $("#msg").html("密码错误")
                        }
                    }
                })
            })
        })
</script>
</body>
</html>
