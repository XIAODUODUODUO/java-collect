<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/18
  Time: 1:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:forward page="forward_param.jsp" >
    <jsp:param name="email" value="111@qq.com" />
</jsp:forward>
</body>
</html>
