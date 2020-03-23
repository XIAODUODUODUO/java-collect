<%@ page import="dao.ShopDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Shop" %><%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/19
  Time: 0:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ShopDAO shopDAO = new ShopDAO();
    Shop shop = shopDAO.getShopID(Integer.parseInt(request.getParameter("id")));

%>
商品名称：<%=shop.getName()%><br>
商品价格：<%=shop.getPrice()%><br>
城市：<%=shop.getCity()%><br>


<%

    String list = "";
    Cookie[] cookies = request.getCookies();
    if(cookies!=null && cookies.length>0){
        for (Cookie c:cookies) {
            if(c.getName().equals("aaa")){
                list = c.getValue();
            }
        }
        list+=request.getParameter("id")+"]";

    }
    String[] arr = list.split("]");
    if(arr!=null&&arr.length>0){
        if(arr.length>1000){
            list = "";
        }
    }
   
   Cookie cookiess = new Cookie("aaa",list);
   response.addCookie(cookiess);

%>
<%
    ArrayList<Shop> shopList = shopDAO.getShopIdList(list);
    if (shopList != null && shopList.size() > 0) {
        for (int i = 0; i < shopList.size(); i++) {
            Shop shopLists = shopList.get(i);

%>
<div style="border: 1px solid #eeee">
    <a href="details.jsp?id=<%=shopLists.getId()%>">
        cookie商品名称：<%=shopLists.getName()%><br>
        cookie商品价格：<%=shopLists.getPrice()%><br>
    </a>
</div>
<%
        }
    }%>
</body>
</html>
