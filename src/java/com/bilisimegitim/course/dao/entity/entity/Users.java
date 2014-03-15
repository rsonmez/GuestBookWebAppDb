package com.bilisimegitim.course.dao.entity.entity;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ridvan
 */
public class Users {
    private String userName;  
    private String userFamily;
    private String userEmail;
    private String userPassword;
    
    public Users(){
    
    }
    
    public String getUserName() {
        return userName;
    }
    
    public void setUserName (String name) {
        this.userName = name;
    }
    
    public String getUserFamily() {
        return userFamily;
    }
    
    public void setUserFamily (String family) {
        this.userFamily = family;
    }
    
    public String getUserEmail () {
        return userEmail;
    }
    
    public void setUserEmail (String email) {
        this.userEmail = email;
    }
    
    public String getUserPassword () {
        return userPassword;
    }
    
    public void setUserPassword (String password) {
        this.userPassword = password;
    }
}
