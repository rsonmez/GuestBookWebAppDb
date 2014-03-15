<%-- 
    Document   : DeleteCustomersInfo
    Created on : Mar 15, 2014, 4:01:33 PM
    Author     : ridvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.bilisimegitim.course.dao.entity.dao.CustomersDAO" %>
<%@page import="com.bilisimegitim.course.dao.entity.entity.Customers" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
        String tckn = request.getParameter("Tckn");
//        String tckn = "11111111111"; // Yalniz deneme için !!
//        String isim;
        CustomersDAO customersDao = new CustomersDAO();
        Customers customers = customersDao.deleteCustomers(tckn);
        
//       session.setAttribute( "Tckn", customers.getTckn());
//       session.setAttribute( "İsim", customers.getIsim());
        
        request.getSession(true).setAttribute("customerInfo", customers);
//        request.getRequestDispatcher("/ShowPersonInfoForm.jsp").forward(request, response);        
        request.getRequestDispatcher("/ShowInfo.jsp").forward(request, response);
    %>
    </body>
</html>
