<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/11
  Time: 0:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");

    Date d = new Date(session.getCreationTime());


    String[] values = session.getValueNames();

    for (int i = 0; i < values.length; i++) {
        out.print("返回此会话中所有可用属性的数组，小标"+i+"："+values[i]+"<br>");
    }

%>
session创建时间：<%=sdf.format(d)%><br>
session的ID编号：<%=session.getId()%><br>
session获取参数：<%=session.getAttribute("name")%><br>
返回两次请求间间隔多长时间此session被取消（单位秒)：<%=session.getMaxInactiveInterval()%>
</body>
</html>
