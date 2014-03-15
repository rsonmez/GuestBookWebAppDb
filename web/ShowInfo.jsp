<%-- 
    Document   : ShowInfo
    Created on : Mar 14, 2014, 4:07:41 PM
    Author     : ridvan
--%>

<%@page import="com.bilisimegitim.course.dao.entity.entity.Customers" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Info Page</title>
    </head>
    <body>
        <form method="POST" action="ShowPersonInfoForm.jsp">
            <table style="margin: 0 auto;">
            Müşterinin adı ve soyadı: </br>
            <%
                Customers customers = (Customers) request.getSession(false).getAttribute("customerInfo");
                out.write(customers.getIsim() + " " + customers.getSoyad());
    //        String isimIs = customers.getIsim()+ "" + customers.getSoyad();
                //        request.getRequestDispatcher("ShowPersonInfoForm.jsp").forward(request, response);
                // Kullanici kullanici = (Kullanici)request.getSession(false).getAttribute("kullaniciBilgisi");         
%>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Göster" style="float:left;" /></td>
                </tr>
        </table>
    </form>    
</body>
</html>
