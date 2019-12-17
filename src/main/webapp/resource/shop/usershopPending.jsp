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
    <title>用户未发货</title>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
</head>
<body>
<div>
    <h3>用户管理页面</h3>
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
            <th>商品介绍</th>
            <th>操作</th>
        </tr>
    </table>
</div>
<script type="text/javascript">
    $(function(){
        $.ajax({
            url:"<%=basePath%>unshipped",
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
                        "            <td>未发货</td>" +//商品状态
                        "            <td>"+data[i].ordertime+"</td>" +//下单时间
                        "            <td>"+data[i].intro+"</td>" +//介绍
                        "            <td><button class=\"btn\" pid="+data[i].oId+">退款</button></td>" +
                        "        </tr>"
                    $("#ta").append(str);
                }
            }
        })
    })
</script>
</body>
</html>
