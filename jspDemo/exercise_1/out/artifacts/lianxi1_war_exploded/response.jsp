<%@ page import="java.io.PrintWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/9
  Time: 1:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setContentType("text/html;charset=UTF-8");//设置响应的MIME类型
    out.print("返回响应用的是何种字符编码:" + response.getCharacterEncoding() + "<br>");
    out.println("<h1>response内置对象</h1>");
    out.println("<hr>");
    // out.flush();//清空缓存区，保证out对象提前输出
    PrintWriter outer = response.getWriter();
    outer.println("response对象生成的输出流outer对象，response输出流在out之前");
    // response.sendRedirect("login.jsp");//请求重定向，url有变化
    request.getRequestDispatcher("out.jsp");//请求转发，url无变化

%>
