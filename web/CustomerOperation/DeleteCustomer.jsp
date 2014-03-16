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
            String tckn = request.getParameter("tckn");
            CustomerDAO customerDAO = new CustomerDAO();
            customerDAO.deleteCustomer(tckn);
            request.getRequestDispatcher("/AddOrSearchPerInfoForm").forward(request, response);
        %>
    </body>
</html>
