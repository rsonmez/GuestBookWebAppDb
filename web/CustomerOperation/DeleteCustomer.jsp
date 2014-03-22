<%-- 
    Document   : DeleteCustomer
    Created on : Mar 16, 2014, 8:41:25 PM
    Author     : Cısco
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
            customerDAO.deleteCustomer(tckn);
            request.getRequestDispatcher("/ShowPersonInfoForm").forward(request, response);
            }
    %>
</body>
</html>
