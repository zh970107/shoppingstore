<%--
  Created by IntelliJ IDEA.
  User: 张焕
  Date: 2019/12/12
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>待发货订单</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>

<table class="table">
    <thead>
    <tr>
        <th>订单编号</th>
        <th>商品数量</th>
        <th>用户id</th>
        <th>下单时间</th>
        <th>订单状态</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody id="tbody">

    </tbody>
</table>

<script type="text/javascript">
    $(function () {
       $.ajax({
           url:"getUndeliverOrders",
           type:"post",
           success:function (data) {
               alert(data);
               for(var i=0;i<data.length;i++){
                data[i].status='待发货';
                var tr="<tr class='ac'>"+
                    "<td>"+data[i].oId+"</td>"+
                    "<td>"+data[i].uId+"</td>"+
                    "<td>"+data[i].odNum+"</td>"+
                    "<td>"+data[i].ordertime+"</td>"+
                    "<td>"+data[i].status+"</td>"+
                    "<td><button class='cancle'>发货</button> </td>"+
                    "<tr>";
                $("#tbody").append(tr);
                }
           }
       });

        $("#tbody").on("click","button",function () {
            var oId = $(this).parent().parent().find("td").eq(0).text();
            //alert(oId);
            $.ajax({
                url: "deliverOrders",
                type: "post",
                data: {
                    "oId": oId
                },
                success: function (data) {
                if(data>0){
                //alert("成功");
                location.reload();
                }else{
                    alert("失败");
                }
                }
            })
        })

    })


</script>







</body>
</html>
