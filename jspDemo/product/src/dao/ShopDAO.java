package dao;

import entity.Shop;
import util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ShopDAO {

    //获取所有商品
    public ArrayList<Shop> getAllShop() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Shop> list = new ArrayList<Shop>();
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from shop limit 10";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {

                Shop shop = new Shop();

                shop.setId(rs.getInt("id"));
                shop.setName(rs.getString("name"));
                shop.setCity(rs.getString("city"));
                shop.setNumber(rs.getInt("number"));
                shop.setPrice(rs.getInt("price"));
                shop.setPicture(rs.getString("picture"));

                list.add(shop);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
            return list;
        } finally {
            //释放资源
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }

    }

    //根据ID获取商品信息
    public Shop getShopID(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBHelper.getConnection();
            String sql = "select * from shop where id =?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                Shop shops = new Shop();

                shops.setId(rs.getInt("id"));
                shops.setName(rs.getString("name"));
                shops.setCity(rs.getString("city"));
                shops.setNumber(rs.getInt("number"));
                shops.setPrice(rs.getInt("price"));
                shops.setPicture(rs.getString("picture"));
                return shops;
            } else {
                return null;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        } finally {
            //释放资源
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }


    }


    public ArrayList<Shop> getShopIdList(String list) {
        ArrayList<Shop> shopList = new ArrayList<Shop>();
        if(list!=null&& list.length()>0){
            String [] arr = list.split("]");
            if(arr.length>=5){
                for (int i = arr.length-1; i >arr.length-5; i--) {
                    shopList.add(getShopID(Integer.parseInt(arr[i])));
                }
            }else{
                for (int i = arr.length-1; i >arr.length; i--) {
                    shopList.add(getShopID(Integer.parseInt(arr[i])));
                }
            }

            return  shopList;
        }else{
            return null;
        }
    }
}
