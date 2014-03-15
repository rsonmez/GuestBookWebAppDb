<%-- 
    Document   : login_control
    Created on : Feb 23, 2014, 9:01:55 PM
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.bilisimegitim.course.dao.entity.dao.UsersDAO" %>
<%@page import="com.bilisimegitim.course.dao.entity.entity.Users" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Control</title>
    </head>
    <%
        String email = request.getParameter("email");
        String passw = request.getParameter("password");
        String em = null;

        UsersDAO usersDao = new UsersDAO();
        Users users = usersDao.getUsers(email);

        if (email == "" || passw == "" || users == null) {
//            request.getRequestDispatcher("index.jsp").forward(request, response);            
            request.getRequestDispatcher("login_rep.jsp").forward(request, response);
//            out.write("E-mail veya şifre yanlış");
        } else {
//            if (users == null) {
//                out.write("E-mail veya şifre yanlış");
//                request.getRequestDispatcher("login_rep.jsp").forward(request, response);
//            }

            if (users.getUserEmail().equals(email) && users.getUserPassword().equals(passw)) {
                request.getRequestDispatcher("AddOrSearchPerInfoForm.jsp").forward(request, response);
            }

        }
    %>
</html>
