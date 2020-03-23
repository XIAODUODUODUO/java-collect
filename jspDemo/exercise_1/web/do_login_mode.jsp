<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/14
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="myUser" class="com.po.Users" scope="page"/>
<jsp:useBean id="userLogin" class="com.dao.UsersDAO" scope="page"/>
<jsp:setProperty name="myUser" property="*"/>
<%
    if (userLogin.usersLogin(myUser)){
        session.setAttribute("username",myUser.getUsername());
        out.print("成功");
        request.getRequestDispatcher("dologin.jps");
    }else{
        response.sendRedirect("out.jsp");
    }
%>