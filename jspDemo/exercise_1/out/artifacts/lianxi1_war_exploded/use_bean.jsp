<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/13
  Time: 0:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="com.po.Users" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:useBean id="myUsers" class="com.po.Users" scope="application"/>

<%--根据表单匹配所有的属性--%>
<%--<jsp:setProperty name="myUsers" property="*"/>--%>
<%--根据表单匹配所有部分的属性--%>
<%--<jsp:setProperty name="myUsers" property="username"/>--%>
<%--跟表单无关，通过手工赋值给属性--%>
<%--
<jsp:setProperty name="myUsers" property="password" value="122222"/>
--%>


姓名：<%=((Users)application.getAttribute("myUsers")).getUsername()%>
年龄：<%=((Users)application.getAttribute("myUsers")).getPassword()%>

</body>
</html>
