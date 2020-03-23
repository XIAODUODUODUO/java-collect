<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/7
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String username = "";
    String password = "";
    Cookie[] cookies = request.getCookies();

    if (cookies != null && cookies.length > 0) {
        for (Cookie c : cookies) {
            if (c.getName().equals("username")) {

                username = URLDecoder.decode(c.getValue(),"utf-8");
            }
            if (c.getName().equals("password")) {
                password = URLDecoder.decode(c.getValue(),"utf-8");
            }
        }
    }

%>
<form action="param.jsp" method="post">
    <table>

        <%-- 账号:<input value="" type="text" name="zhanghao"><br>
         密码:<input value="" type="password" name="mima"><br>
         爱好：<input type="checkbox" value="游戏" name="aihao">游戏
         <input type="checkbox" value="看书" name="aihao">看书
         <input type="checkbox" value="旅行" name="aihao">旅行<br>
         <input type="submit" value="login">--%>
        姓名:<input type="text" name="username" value="<%=username%>"><br>
        年龄:<input type="number" name="password" value="<%=password%>"><br>
        是否记住登录状态： <input type="checkbox" name="isUserCookies" checked="checked">
        <input type="submit" value="login">
    </table>
</form>
</body>
</html>
