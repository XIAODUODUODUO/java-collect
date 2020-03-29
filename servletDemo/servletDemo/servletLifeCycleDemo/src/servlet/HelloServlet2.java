package servlet;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HelloServlet2 extends HttpServlet {

    public HelloServlet2() {
        System.out.println("HelloServlet2构造方法。。。");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("HelloServlet2 doGet。。。");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("HelloServlet2 doPost。。。");
    }

    @Override
    public void destroy() {
        System.out.println("HelloServlet2 销毁方法被执行。。。");
    }

    @Override
    public void init() throws ServletException {
        System.out.println("HelloServlet2 初始化方法被执行。。。");
    }
}
