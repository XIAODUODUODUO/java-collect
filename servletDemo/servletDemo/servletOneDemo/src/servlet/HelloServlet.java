package servlet;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet方法");
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");//设置页面输出类型
        out.println("<I>1111</I>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost方法");
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");//设置页面输出类型
        out.println("<I>1111</I>");
    }
}
