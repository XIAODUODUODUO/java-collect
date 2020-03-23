package com.dao;

import com.po.Users;

//用户业务逻辑类
public class UsersDAO {

    public boolean usersLogin(Users u) {
        if ("admin".equals(u.getUsername()) && "11111".equals(u.getPassword())) {
            return true;
        } else {
            return false;
        }
    }
}
