/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bilisimegitim.course.dao.entity.dao;

import com.bilisimegitim.course.dao.entity.entity.Users;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ridvan
 */
public class UsersDAO {

    public Users getUsers(String email) throws Exception {
        Connection con = null;
        Users users = null;
        try {
/*
            String url = "jdbc:postgresql://localhost:5432/CustomersDB";
            String username = "postgres";
            String password = "";

            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, username, password);
*/
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerdb?zeroDateTimeBehavior=convertToNull", "root", "");
            String sqlStr = "select * from user where email=?";
//            String sqlStr = "select * from public.user where email=?";
            PreparedStatement pstmt = con.prepareStatement(sqlStr);
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                users = new Users();
                users.setUserEmail(rs.getString("email"));
                users.setUserPassword(rs.getString("password"));
                users.setUserName(rs.getString("ad"));
                users.setUserFamily(rs.getString("soyad"));
            }
        } catch (ClassNotFoundException ex) {
            throw new Exception(ex);
        } catch (SQLException ex) {
            throw new Exception(ex);
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    throw new Exception(ex);
                }
            }
        }
        return users;
    }

    public void createUsers() {

    }

    public void updateUsers() {

    }

    public void deleteUsers() {

    }
}
