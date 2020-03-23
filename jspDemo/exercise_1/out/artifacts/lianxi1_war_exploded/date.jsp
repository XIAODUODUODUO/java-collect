<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/18
  Time: 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Date d = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
    String s =sdf.format(d);
    out.println(s);

%>
</body>
</html>
