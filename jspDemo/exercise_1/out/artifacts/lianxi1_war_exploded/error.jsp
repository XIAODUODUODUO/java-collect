<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/12
  Time: 0:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
返回描述异常的信息：<%=exception.getMessage()%><br>
返回关于异常的简短描述信息：<%=exception.toString()%>
</body>
</html>
