<%--
  Created by IntelliJ IDEA.
  User: 张焕
  Date: 2019/12/10
  Time: 17:54
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
    <title>上下架商品</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <style type="text/css">
        .td{
            width:160px;
            height:30px;
            font-size: 30px;
        }
        .td1{
            width:160px;
            height:30px;
            font-size: 10px;
        }
        button{
            width:160px;
            height:30px;
        }

    </style>
</head>
<body id="bo">
<div id="" style=" height: 100%; width: 100%;">
        <table border="1">
            <tr class="type">

            </tr>
            <tr id="ta">
                <td class="td">商品名称</td>
                <td class="td">商品品牌</td>
                <td class="td">商品类型</td>
                <td class="td">商品价格￥</td>
                <td class="td">商品介绍</td>
                <td class="td">商品状态</td>
                <td class="td" ></td>
                <td class="td"></td>
            </tr>
        </table>
        <table id="tab" border="1">

        </table>
</div>
<script type="text/javascript">
    $(function(){

        $.ajax({
            url:"<%=basePath%>selectAllP_type",
            type:"post",
            success:function(data){
               for(var i=0;i<data.length;i++){
                    var str = "<td class='btn td'><a >"+data[i]+"</a></td>";
                    $(".type").append(str);
                }
            }
        })
        $("#tab").on("click",".btn1",function(){
            var status = $(this).attr("status");
            $.ajax({
                url:"upanddown",
                type:"post",
                data:{
                    "pid":$(this).attr("pid"),
                    "status":status
                },
                success:function(data){
                    if(data>0){
                        //alert("成功")
                        //window.location.reload();//刷新当前页面.
                    }else{
                        alert("失败")
                    }
                }
            })
        })


        $(".type").on("click",".btn",function(){
                var type = $(this).children().text();
                //alert(type)
                $("#tab").html("");
                $.ajax({
                    url:"<%=basePath%>selectAllProductsPtype",
                    type:"post",
                    data:{
                        "p_type":type
                    },
                    success:function(data){
                        for(var i=0;i<data.length;i++){
                            var str;
                            if(data[i].status==0){
                                str = "未上架"
                            }else if(data[i].status==1){
                                str = "已上架"
                            }else{
                                str = "未知状态"
                            }

                            var str1="<tr width=\"10px\" height=\"1px\"><td class=\"td\">"+data[i].pName+"</td>" +
                                "<td class=\"td\">"+data[i].brand+"</td>" +
                                "<td class=\"td\">"+data[i].pType+"</td>" +
                                "<td class=\"td\">"+data[i].price+"</td>" +
                                "<td class=\"td1\">"+data[i].intro+"</td>" +
                                "<td class=\"td str "+data[i].pId+"\">"+str+"</td>" +
                                "<td class=\"td\"><button class=\"btn1\" id=\"btn1\" pid="+data[i].pId+" status="+data[i].status+">上架&下架</button></td>" +
                                "<td class=\"td\"><a>修改</a></td></tr>"
                            $("#tab").append(str1);
                        }
                    }
            })
        })
    })
</script>
</body>
</html>
