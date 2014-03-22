<%-- 
    Document   : InsertCustomersInfo
    Created on : Mar 15, 2014, 4:00:30 PM
    Author     : ridvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.bilisimegitim.course.dao.entity.dao.CustomerDAO" %>
<%@page import="com.bilisimegitim.course.dao.entity.entity.Customer" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String tckn = request.getParameter("Tckn");
        String isim = request.getParameter("Isim");
        String soyad = request.getParameter("Soyad");

        CustomerDAO customerDao = new CustomerDAO();
        Customer customer = customerDao.createCustomer(tckn);

        request.getSession(true).setAttribute("customerInfo", customer);
        request.getRequestDispatcher("/ShowInfo.jsp").forward(request, response);
    %>
</html>
