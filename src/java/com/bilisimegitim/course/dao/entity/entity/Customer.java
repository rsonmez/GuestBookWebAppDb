/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bilisimegitim.course.dao.entity.entity;

import java.util.Date;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author ridvan
 */
public class Customer {
    private String tckn;
    private String isim;
    private String soyad;
    private Date dogum;
    private String cinsiyet;
    private String evli;
    private String evadresi;
    private String isadresi;
    private String email;
    private String tel1;
    private String tel2;
    private String fax;
    private String aciklamalar;
    private String deleted;

    public Customer() {
        
    }

    public void setTckn(String tckn) {
        this.tckn = tckn;
    }

    public void setIsim(String isim) {
        this.isim = isim;
    }

    public void setSoyad(String soyad) {
        this.soyad = soyad;
    }

    public void setDogum(Date dogum) {
        this.dogum = dogum;
    }

    public void setCinsiyet(String cinsiyet) {
        this.cinsiyet = cinsiyet;
    }

    public void setEvli(String evli) {
        this.evli = evli;
    }

    public void setEvadresi(String evadresi) {
        this.evadresi = evadresi;
    }

    public void setIsadresi(String isadresi) {
        this.isadresi = isadresi;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTel1(String tel1) {
        this.tel1 = tel1;
    }

    public void setTel2(String tel2) {
        this.tel2 = tel2;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public void setAciklamalar(String aciklamalar) {
        this.aciklamalar = aciklamalar;
    }

    public String getTckn() {
        return tckn;
    }

    public String getIsim() {
        return isim;
    }

    public String getSoyad() {
        return soyad;
    }

    public Date getDogum() {
        return dogum;
    }

    public String getCinsiyet() {
        return cinsiyet;
    }

    public String getEvli() {
        return evli;
    }

    public String getEvadresi() {
        return evadresi;
    }

    public String getIsadresi() {
        return isadresi;
    }

    public String getEmail() {
        return email;
    }

    public String getTel1() {
        return tel1;
    }

    public String getTel2() {
        return tel2;
    }

    public String getFax() {
        return fax;
    }

    public String getAciklamalar() {
        return aciklamalar;
    }
    public String deleteCustomer(String deleted) {
        return this.deleted;
    }
            
}
