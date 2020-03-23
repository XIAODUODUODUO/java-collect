<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/18
  Time: 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = "";
    String password = "";
    String email = "";
    if (request.getParameter("username") != null) {
        username = request.getParameter("username");
    }
    if (request.getParameter("password") != null) {
        password = request.getParameter("password");
    }
    if (request.getParameter("email") != null) {
        email = request.getParameter("email");
    }
%>
用户名：<%=username%><br>
密码：：<%=password%><br>
邮箱：<%=email%><br>
</body>
</html>
