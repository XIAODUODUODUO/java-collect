<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/18
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="dao.ShopDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Shop" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>111$</title>
</head>
<body>

<%
    ShopDAO shopDAO = new ShopDAO();
    ArrayList<Shop> list = shopDAO.getAllShop();
    if (list != null && list.size() > 0) {
        for (int i = 0; i < list.size(); i++) {
            Shop shop = list.get(i);

%>
<div style="border: 1px solid #eeee">
    <a href="details.jsp?id=<%=shop.getId()%>">
        商品名称：<%=shop.getName()%><br>
        商品价格：<%=shop.getPrice()%><br>
    </a>
</div>
<%
        }
    }%>
</body>
</html>
