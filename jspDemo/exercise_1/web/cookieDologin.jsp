<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/15
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ page import="java.net.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    //判断用户是否选择记住登录状态
    String[] isUserCookies = request.getParameterValues("isUserCookies");

    if (isUserCookies != null && isUserCookies.length > 0) {
        //保存数据
        String username = URLEncoder.encode(request.getParameter("username"),"utf-8");
        String password =  URLEncoder.encode(request.getParameter("password"),"utf-8");

        Cookie usernameCookie = new Cookie("username", username);
        Cookie passwordCookie = new Cookie("password", password);


        //最大生成期
        usernameCookie.setMaxAge(60 * 60*60);
        passwordCookie.setMaxAge(60 * 60*60);

        //保存数据
        response.addCookie(usernameCookie);
        response.addCookie(passwordCookie);

    } else {
        Cookie[] cookies = request.getCookies();
        if(cookies!=null && cookies.length>0){
            for (Cookie c:cookies){
                if(c.getName().equals("username") || c.getName().equals("password")){
                    c.setMaxAge(0);
                    response.addCookie(c);//重新保存
                }
            }
        }
    }
%>
<a href="cookieUser.jsp">戳这里</a>
</body>
</html>
