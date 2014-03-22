<%-- 
    Document   : index
    Created on : Mar 11, 2014, 4:32:57 PM
    Author     : ridvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
    </head>

    <style>
        body{
            background-image:url("CustomerOperation/adipromohdpi_1440.png");}
        </style> 
        <form method="POST" action="login_control.jsp">
            <table style="margin: 0 auto;">
            <tr>
                <td>E-mail : </td>
                <td><input type="text" name="email" /></td>
            </tr>
            <tr>
                <td>Password : </td>
                <td><input type="password" name="password" /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Login" style="float:right;" /></td>
            </tr>
        </table>
    </form>    
</body>
</html>
