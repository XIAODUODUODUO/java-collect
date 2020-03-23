<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/3/7
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String zhanghao = request.getParameter("zhanghao");
    out.print(zhanghao + "<br>");
    if (request.getParameterValues("aihao") != null) {
        for (int i = 0; i < request.getParameterValues("aihao").length; i++) {
            out.print(request.getParameterValues("aihao")[i] + "<br>");
        }
    }

    request.setCharacterEncoding("UTF-8");//解决中文乱码问题，无法解决URL乱码问题
    request.setAttribute("password", "123456");//存储此请求中的属性
    out.print("返回指定属性的属性值:" + request.getAttribute("password") + "<br>");//返回指定属性的属性值
    out.print("得到请求体的MIME类型:" + request.getContentType() + "<br>");//
    out.print("返回请求用的协议类型以及版本号:" + request.getProtocol() + "<br>");
    out.print("返回接受请求的服务器主机号:" + request.getServerName() + "<br>");
    out.print("返回服务器接受此请求所用的端口号:" + request.getServerPort() + "<br>");
    out.print("返回字符串编码方式:" + request.getCharacterEncoding() + "<br>");
    out.print("返回请求体的长度（以字节数):"+request.getContentLength()+ "<br>");
    out.print("返回发送此请求的客户端IP地址:"+request.getRemoteAddr()+"<br>");
    out.print("返回一虚拟路径的真实路径:"+request.getRealPath("")+"<br>");
    out.print("返回一虚拟路径的真实路径:"+request.getContextPath()+"<br>");



%>
</body>
</html>
