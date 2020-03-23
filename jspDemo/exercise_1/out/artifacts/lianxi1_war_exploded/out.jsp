<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/7
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    out.print("向客户端打印字符串1");
    out.print("<br>");
    out.flush();//将缓存区内容输出到客户端
    out.clear();//清除缓存区的内容，如果在flush之后调用会抛出异常
    out.clearBuffer();//清除缓存区的内容，如果在flush之后调用不会抛出异常
    out.print("返回缓存区已使用字节:" + out.getBufferSize());
    out.print("<br>");
    out.print("返回缓存区剩余可用字节:" + out.getRemaining());
    out.print("<br>");
    out.print("缓冲区满时，是自动清空还是抛出异常:" + out.isAutoFlush());
    out.print("<br>");
    out.print("向客户端打印字符串2");
    out.print("<br>");
    out.close();
%>
</body>
</html>
