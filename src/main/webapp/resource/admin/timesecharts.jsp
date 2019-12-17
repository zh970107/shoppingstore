<%--
  Created by IntelliJ IDEA.
  User: 张焕
  Date: 2019/12/10
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <meta charset="utf-8">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/world.js"></script>
 <%--   <script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=xfhhaTThl11qYVrqLZii6w8qE5ggnhrY&__ec_v__=20190126"></script>--%>
</head>
<body style="height: 100%; margin: 0">
<div id="container" style="height: 100%"></div>

<script type="text/javascript">

    $(function(){
        var datax=[];
        var datay=[];


        $.ajax({
            url:"getWebData",
            type:"post",
            success:function(data){
                for(var i=0;i<data.length;i++){
                    datax.push(data[i].visittime);
                    datay.push(data[i].visittimes);
                }
                var dom = document.getElementById("container");
                var myChart = echarts.init(dom);
                option = null;
                option = {
                    xAxis: {
                        type: 'category',
                        boundaryGap: false,
                        data: datax,
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: datay,
                        type: 'line',
                        areaStyle: {}
                    }]
                };
                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }
            }
        })
    })
</script>
</body>
</html>
