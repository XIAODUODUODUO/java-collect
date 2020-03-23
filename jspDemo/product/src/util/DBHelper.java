package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
    private static final String driver = "com.mysql.cj.jdbc.Driver";//数据驱动
    //链接数据库的URL地址
    private static final String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=GMT%2B8";
    private static final String username = "root";
    private static final String password = "root";

    private static Connection conn = null;

    //静态代码块负责加载驱动
    static {
        try {
            Class.forName(driver);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    //单例模式返回数据库链接对象
    public static Connection getConnection() throws Exception {
        if (conn == null) {
            conn = DriverManager.getConnection(url, username, password);
            return conn;
        }
        return conn;
    }

    public static void main(String[] args) {
        try {
            Connection conn = DBHelper.getConnection();
            if(conn!= null){
                System.out.println("数据库链接正常");
            }else{
                System.out.println("数据库链接异常");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {

        }
    }
}
