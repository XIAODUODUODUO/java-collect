<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/11
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page isThreadSafe="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
返回此Object的类:<%=page.getClass()%><br>
返回此Objectt的hash码:<%=page.hashCode()%><br>
判断此Object是否与指定的Object对象相同:<br>
<%
    boolean b = page.equals(page);
    out.print(b);


%>
<br>
把此Object对象转换成String类的对象:<%=page.toString()%><br>

</body>
</html>
