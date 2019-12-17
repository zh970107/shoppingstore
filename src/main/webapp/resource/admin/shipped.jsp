<%--
  Created by IntelliJ IDEA.
  User: 张焕
  Date: 2019/12/12
  Time: 9:42
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
    <base href="<%=basePath%>">
    <title>Title</title>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
</head>
<body>
<div>
    <h3>商家已发货管理后台页面</h3>
    <table id="ta" border="2">
        <tr>
            <th>商品品牌</th>
            <th>商品名</th>
            <th>类别</th>
            <th>价格</th>
            <th>下单数量</th>
            <th>库存</th>
            <th>订单编号</th>
            <th>商品状态</th>
            <th>下单时间</th>
            <th>购买用户</th>
            <th>商品介绍</th>
            <th>操作</th>
            <th></th>
        </tr>
    </table>
</div>
<script type="text/javascript">
    $(function(){
        $.ajax({
            url:"<%=basePath%>shipped",
            type:"post",
            success:function(data){
                for(var i=0;i<data.length;i++){
                    var str="<tr>" +
                        "            <td>"+data[i].brand+"</td>" +//商品品牌
                        "            <td>"+data[i].pName+"</td>" +//商品名
                        "            <td>"+data[i].pType+"</td>" +//商品类别
                        "            <td>"+data[i].price+"</td>" +//商品价格
                        "            <td>"+data[i].odNum+"</td>" +//下单数量
                        "            <td>"+data[i].pNum+"</td>" +//库存
                        "            <td>"+data[i].odId+"</td>" +//订单编号
                        "            <td>已发货</td>" +//商品状态
                        "            <td>"+data[i].ordertime+"</td>" +//下单时间
                        "            <td>${cookie.username.value}</td>" +//下单时间
                        "            <td>"+data[i].intro+"</td>" +//介绍
                        "            <td><button class=\"btn\" pid="+data[i].oId+">撤销发货</button></td>" +
                        "            <td>退款</td>" +
                        "        </tr>"
                    $("#ta").append(str);
                }
            }
        })


        $("#ta").on("click",".btn",function(){
            var oid = $(this).attr("pid");
            //alert(oid)
            $.ajax({
                url:"revocation",
                type:"post",
                data:{
                    "oid":oid
                },
                success:function(data){
                    if(data>0){
                        //alert("成功")
                        window.location.reload();//刷新当前页面.
                    }else{
                        alert("成功")
                    }
                }
            })
        })
    })
</script>
</body>
</html>
