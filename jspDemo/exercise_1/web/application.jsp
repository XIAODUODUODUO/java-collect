<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/11
  Time: 0:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    application.setAttribute("name", "啦啦啦");
%>
打印name：<%=application.getAttribute("name")%><br>
打印application中的所有属性:<br>
<%
    Enumeration attributes = application.getAttributeNames();
    while (attributes.hasMoreElements()) {
        out.println(attributes.nextElement() + "<br>");
    }
%>
<br>
打印JSP(servlet)引擎以及版本号：<%=application.getServerInfo()%><br>
</body>
</html>
