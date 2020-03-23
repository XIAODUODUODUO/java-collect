<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/17
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String username = "";
    String password = "";
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
        for (Cookie c : cookies) {
            if (c.getName().equals("username")) {
                username = URLDecoder.decode(c.getValue(),"utf-8");
            }
            if (c.getName().equals("password")) {
                password = URLDecoder.decode(c.getValue(),"utf-8");
            }
        }
    }

%>
用户名：<%=username%><br>
密码：：<%=password%><br>
</body>
</html>
