<%-- 
    Document   : GetCustomersInfo
    Created on : Mar 13, 2014, 6:36:54 PM
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
        <title>Get Customer Info from DB Page</title>
    </head>
    <%
        String tckn = request.getParameter("Tckn");
//        String tckn = "11111111111"; // Yalniz deneme için !!
//        String isim;
        CustomerDAO customerDao = new CustomerDAO();
        Customer customer = customerDao.getCustomer(tckn);

//       session.setAttribute( "Tckn", customers.getTckn());
//       session.setAttribute( "İsim", customers.getIsim());
        request.getSession(true).setAttribute("customerInfo", customer);
//        request.getRequestDispatcher("/ShowPersonInfoForm.jsp").forward(request, response);        
        request.getRequestDispatcher("/ShowInfo.jsp").forward(request, response);
    %>
</html>
