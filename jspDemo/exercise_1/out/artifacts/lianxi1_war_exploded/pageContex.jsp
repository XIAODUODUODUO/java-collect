<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/11
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String str="52352";

    request.getSession().setAttribute("222", str);  //对name对象赋值
    //pageContext.forward("login.jsp");//跳转页面URL不改变
    pageContext.include("include.jsp");
%>
用户名：<%=pageContext.getSession().getAttribute("222")%>
</body>
</html>
