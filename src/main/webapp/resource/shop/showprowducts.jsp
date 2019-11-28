<%--
  Created by IntelliJ IDEA.
  User: 张焕
  Date: 2019/11/27
  Time: 14:31
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
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>商品页</title>
    <script src="<%=basePath%>resource/js/sHover.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>resource/css/example.css">

</head>
<body id="body">

    <div id="part3" class="part" style="height: 100%;">
        <div class="container" >

            </div>
        </div><!-- /container -->
    </div><!-- /part3 -->
<script>
    window.onload=function(){

        $.ajax({
            url:"selectAllProducts",
            type:"post",
            data:{
                "p_type":getQueryString("p_type"),
            },
            success:function(data){
                   for(var i = 0; i <data.length;i++){
                       var str = " <div class='sHoverItem'>" +
                           "<img id='item'"+(i+2)+"'src="+data[i].pic+">" +
                           "<span id='intro''"+(i+2)+"' class='sIntro'>" +
                           "<h2>"+data[i].pName+"</h2>" +
                           "<p>"+data[i].intro+"</p>" +
                           "<p>$"+data[i].price+"</p>" +
                           "<button>立即购买</button>" +
                           "<button>加入购物车</button>" +
                           "</span>" +
                           "</div>"
                    $(".container").append(str);
                   }
            }
        })

        var b=new sHover('head','headIntro');
        var a=new sHover("sHoverItem","sIntro");
        a.set({
            slideSpeed:5,
            opacityChange:true,
            opacity:80
        });

        var example1Btn=document.getElementById('example1Btn');
        var part1arrow=document.getElementById('part1arrow');
        var example1=document.getElementById('example1');

        var example2=new sHover('example2','intro2');
        example2.set({
            slideSpeed:7,
            opacity:80,
            opacityChange:true
        });
        var example2prev=new sHover('example2prev','intro2prev');
        example2prev.set({
        });
    }
    function scrollToBottom(a){
        if(windowHeight()){
            clearInterval(a.scrollTimer);
            var scrollSpeed=100;
            a.scrollTimer=setInterval(function(){
                document.documentElement.scrollTop+=scrollSpeed;
                document.body.scrollTop+=scrollSpeed;
                if((document.documentElement.scrollTop>=(document.documentElement.scrollHeight-windowHeight()))||(document.body.scrollTop>=(document.documentElement.scrollHeight-windowHeight()))){
                    clearInterval(a.scrollTimer);
                }
            },13);
        }else{
            //a.setAttribute('href', 'http://www.baidu.com');
        }
    }
    function windowHeight(){
        if(document.documentElement){

            return document.documentElement.clientHeight;
        }else{
            return document.body.clientHeight;
        }
    }
    function getQueryString(name){
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if(r!=null)
            return  decodeURI(r[2]);
        return null;
    }
</script>

</body>
</html>
