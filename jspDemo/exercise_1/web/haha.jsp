<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/7
  Time: 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
132312323<br>
<!--注释可见-->
<%--注释不可见--%>
<%
    out.print("这是java代码输出");
%>
<br>
这是jsp声明：
<br>
<%!
    String s = "本宝宝";

    int add(int x, int y) {
        return x + y;
    }
%>
输出s：<%=s %><br>
5+6：<%=add(5, 6) %><br>

打印99乘法表:<br>
<%
    for (int i = 1; i <= 9; i++) {
        for (int j = 1; j <= 9; j++) {
            if (i <= j) {
                out.print(i + "*" + j + "=" + i * j);
            }

        }
        out.print("<br>");
    }
%>
<%

    for (int i = 1; i <= 9; i++) {

        for (int j = 1; j <= i; j++) {
            out.print( i + "*" + j + "=" + i * j + "&nbsp;&nbsp;&nbsp;&nbsp;");

        }
        out.print("<br>");
    }


%>
</body>
</html>
