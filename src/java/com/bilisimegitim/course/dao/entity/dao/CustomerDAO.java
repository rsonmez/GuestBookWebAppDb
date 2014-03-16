/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bilisimegitim.course.dao.entity.dao;

import com.bilisimegitim.course.dao.entity.entity.Customer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author ridvan
 */
public class CustomerDAO {

    public Customer getCustomer(String tckn) throws Exception {
        Connection con = null;
        Customer customer = null;
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
            String sqlStr = "select * from customer where tckn=?";
//            String sqlStr = "select * from public.customer where tckn=?";

            PreparedStatement pstmt = con.prepareStatement(sqlStr);
            pstmt.setString(1, tckn);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                customer = new Customer();
                customer.setTckn(rs.getString("tckn"));
                customer.setIsim(rs.getString("isim"));
                customer.setSoyad(rs.getString("soyad"));
                customer.setDogum(new Date(rs.getDate("dogum").getTime()));
                customer.setCinsiyet(rs.getString("cinsiyet"));
                customer.setEvli(rs.getString("evli"));
                customer.setEvadresi(rs.getString("evadresi"));
                customer.setIsadresi(rs.getString("isadresi"));
                customer.setEmail(rs.getString("email"));
                customer.setTel1(rs.getString("tel1"));
                customer.setTel2(rs.getString("tel2"));
                customer.setFax(rs.getString("fax"));
                customer.setAciklamalar(rs.getString("aciklama"));
                customer.setCase("1");
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
        return customer;
    }

    public int createCustomer(String tckn) throws Exception {
        Connection con = null;
        Customer customer = null;
        int updateCount = -1;
        try {
  //          String url = "jdbc:postgresql://localhost:5432/CustomersDB";
//            String username = "postgres";
//            String password = "";

//            Class.forName("org.postgresql.Driver");
//            con = DriverManager.getConnection(url, username, password);
            String sqlStr = "INSERT INTO customer(tckn,isim,soyad,dogum,cinsiyet,evli,evadresi,isadresi,email,tel1,tel2,fax,aciklama) value (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerdb?zeroDateTimeBehavior=convertToNull", "root", "");
//            String sqlStr = "select * from public.customer where tckn=?";

            PreparedStatement pstmt = con.prepareStatement(sqlStr);
            pstmt.setString(1, tckn);

            updateCount = pstmt.executeUpdate();

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
        return updateCount;
    }

    public Customer updateCustomer(String tckn) throws Exception {
        Connection con = null;
        Customer customer = null;

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
            String sqlStr = "update * from customer where tckn=?,isim=?,soyad=?,dogum=?,cinsiyet=?,evli=?,evadresi=?,isadresi=?,email=?,tel1=?,tel2=?,fax=?,aciklama=?";
//tckn=?,isim=?,soyad=?,dogum=?,cinsiyet=?,evli=?,evadresi=?,isadresi=?,email=?,tel1=?,tel2=?,fax=?,aciklama=?            
//            String sqlStr = "select * from public.customer where tckn=?";

            PreparedStatement pstmt = con.prepareStatement(sqlStr);
            pstmt.setString(1, tckn);
            pstmt.executeUpdate();
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
        return customer;
    }
    /*
     updateRow(); rs.next()
     Statement statement = connection.createStatement();
     String    sql       = "update people set name='John' where id=123";
     int rowsAffected    = statement.executeUpdate(sql);
        
     String sql = "update people set firstname=? , lastname=? where id=?";

     PreparedStatement preparedStatement =
     connection.prepareStatement(sql);

     preparedStatement.setString(1, "Gary");
     preparedStatement.setString(2, "Larson");
     preparedStatement.setLong  (3, 123);

     int rowsAffected = preparedStatement.executeUpdate();
        
     result.updateString     ("name"       , "Alex");
     result.updateInt        ("age"        , 55);
     result.updateBigDecimal ("coefficient", new BigDecimal("0.1323");
     result.updateRow();        
     */

    public Customer deleteCustomer(String tckn) throws Exception {
        Connection con = null;
        Customer customers = null;
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
            String sqlStr = "delete from customer where tckn=?";

            PreparedStatement pstmt = con.prepareStatement(sqlStr);
            pstmt.setString(1, tckn);
            pstmt.executeUpdate();
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
        return customers;
        /*
         Statement statement = connection.createStatement();
         String    sql       = "delete from people where id=123";
         int rowsAffected    = statement.executeUpdate(sql);
        
         */
    }
}
