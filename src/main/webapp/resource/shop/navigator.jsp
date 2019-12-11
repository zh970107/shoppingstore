<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>商城主页</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=basePath%>resource/css/style.css">
    <link rel="stylesheet" href="<%=basePath%>resource/css/search.css">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

   <style>

       #myframe{
           display: none;
           width: 100%;
           height: 1000px;
           border:0;
           scrolling: no;
           margin-top: 0;
       }

       #topImg{
           display: none;
           position: fixed;
           right:10px;
           bottom:200px;
           background-color: white;
       }
       #carImg{
           display: none;
           position: fixed;
           right:10px;
           bottom:250px;
           background-color: white;
       }

   </style>

</head>
<body>
<div class='intro'>

    <div class='center'>

        <div class='core'></div>
        <div class='outer_one'>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
        </div>
        <div class='outer_two'>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
        </div>
        <div class='outer_three'>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
        </div>
        <div class='outer_four'>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
        </div>
        <div class='outer_five'>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>

        </div>

        <div class='pieces'>








            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>

        </div>
    </div>
</div>
<iframe  id="myframe"></iframe>
<img src="<%=basePath%>resource/images/top.png" id="topImg"/>
<img src="<%=basePath%>resource/images/cart.png" id="carImg"/>
<script>
$(function(){
/*一进页面就发请求查询所有的类别*/
   $.ajax({
      url:"selectAllP_type",
       type:"post",
       success:function(data){

         for(var i=0;i<data.length;i++){
             var str="<div class='future_ui__piece'><span><a ><font color ='white' size='7'>"+data[i]+"</font></a></span>" +
                 "<div class='line'></div>" +
                 "<div class='tip'></div>" +
                 "</div>";
             $(".pieces").prepend(str);
         }
       }
   });



   $(".pieces").on("click",".future_ui__piece",function(){
       var type=$(this).children().children().children().text();
       $.ajax({
           url: "selectAllProductsByPtype",
           type: "post",
           data: {
               "p_type": type,
           },
           success: function (data) {
               $("#myframe").attr("src","<%=basePath%>resource/shop/showProducts .jsp?p_type="+type+"&username="+getQueryString("username")+"&length="+data);
           }
       })
       //$("#myframe").attr("src","<%=basePath%>resource/shop/showProducts .jsp?p_type="+type+"&username="+getQueryString("username")+"&length="+length);
       $(".intro").hide();
       $("#myframe").show();
       $("#topImg").show();
       $("#carImg").show();
   });

   $("#topImg").click(function(){
       $(".intro").show();
       $("#myframe").hide(1000);
       $("#topImg").hide();
       $("#carImg").hide();
   });
   $("#carImg").click(function(){

       var username ="${cookie.username.value}";
       if(username=="null"||username==""||username==undefined){
           location.href="<%=basePath%>resource/login/login.jsp";
       }else {
           window.open("<%=basePath%>resource/shop/carItems.jsp")
       }
   });
});

function getQueryString(name){
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if(r!=null)
        return  decodeURI(r[2]);
    return null;
}

</script>
<div class="search d1">
    <form>
        <input type="text" placeholder="搜索从这里开始...">
        <button type="submit"></button>
    </form>
</div>
</body>
</html>
