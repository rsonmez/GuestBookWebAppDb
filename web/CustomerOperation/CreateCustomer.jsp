<%-- 
    Document   : CreateCustomer
    Created on : 21.Mar.2014, 16:54:18
    Author     : Packard-Bell
--%>
<%@page import="com.bilisimegitim.course.dao.entity.dao.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
        if (!request.getParameter("Tckn").equals("")) {
            String tckn = request.getParameter("Tckn");
            CustomerDAO customerDAO = new CustomerDAO();
            customerDAO.createCustomer(tckn);
            request.getRequestDispatcher("/ShowPersonInfoForm").forward(request, response);
        }
    %>
</body>
</html>
