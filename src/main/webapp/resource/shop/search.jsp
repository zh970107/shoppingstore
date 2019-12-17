<%--
  Created by IntelliJ IDEA.
  User: 张焕
  Date: 2019/12/16
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
<table border="1">
    <tr>
        <th>商品名</th>
        <th>类别</th>
        <th>品牌</th>
        <th>库存</th>
        <th>价格</th>
        <th>介绍</th>
    </tr>
    <c:forEach items="${list}" var="pi">
            <tr>
                <td>${pi.pName}</td>
                <td>${pi.pType}</td>
                <td>${pi.brand}</td>
                <td>${pi.pNum}</td>
                <td>${pi.price}</td>
                <td>${pi.intro}</td>
                <td><button>立即购买</button></td>
                <td><button>加入购物车</button></td>
            </tr>
    </c:forEach>

</table>
</body>
</html>
