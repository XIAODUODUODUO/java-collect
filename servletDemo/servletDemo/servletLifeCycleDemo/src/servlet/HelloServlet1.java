package servlet;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloServlet1 extends HttpServlet {

    public HelloServlet1() {
       System.out.println("HelloServlet1构造方法。。。");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        resp.setContentType("text/html;charset=utf-8");//必须往前放，不然不会执行！！！
        System.out.println("HelloServlet1 doGet。。。");
        PrintWriter out = resp.getWriter();

        out.println("<h1>doGet方法</h1>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("HelloServlet1 doPost。。。");
    }

    @Override
    public void destroy() {
        System.out.println("HelloServlet1 销毁方法被执行。。。");
    }

    @Override
    public void init() throws ServletException {
        System.out.println("HelloServlet1 初始化方法被执行。。。");
    }
}
