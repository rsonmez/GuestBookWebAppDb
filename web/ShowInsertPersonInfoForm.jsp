<%-- 
    Document   : ShowInsertPersonalInfoForm
    Created on : Mar 15, 2014, 3:55:29 PM
    Author     : ridvan
--%>
<%@page import="com.bilisimegitim.course.dao.entity.entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Customer customer = (Customer) request.getAttribute("customerInfo");


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body bgcolor="red">
    <form method="POST" action="ShowInsertPersonInfoForm.jsp">
        <h2>Kişisel Bilgi Girme Formu </h2>
        <tr>
        <table style="margin-left">
            <tr>
                <td>* Tckn: </td>
                <td><input type="text" name="Tckn" value ="<%=customer.getTckn()%>"/></td>
            </tr>
            <td>* İsim : </td>
            <td><input type="text" name="Isim" value = "<%=customer.getIsim()%>"/></td>
            </tr>
            <tr>
                <td>* Soyad : </td>
                <td><input type="text" name="Soyad" value = "<%=customer.getSoyad()%>"/></td>
            </tr>     
            <tr>
                <td>* Doğum : </td>
                <td><input type="date" name="Dogum" value = "<%=customer.getDogum()%>"/></td>
            </tr>
            <tr>
                <td>Cinsiyet : </td>
                <td>
                    <form action="">
                        <select name="Cinsiyet" value = "<%=customer.getCinsiyet()%>">
                            <option value="K">Kadın</option>
                            <option value="E">Erkek</option>
                            <option value="D">Diğer</option>
                        </select>
                    </form>
                </td>
            </tr>
            <tr>
                <td>Medeni durum :</td>
                <td><input type=radio name="Medeni_durum" value="E"><i>Evli</i>
                <input type=radio name="Medeni_durum" value="B"><i>Bekar</i><br>    
                    </tr>
                    <tr>
                        <td>* Ev Adresi : </td>
                        <td><textarea rows="4" cols="17"><%=customer.getEvadresi()%></textarea></td></td>
                    </tr>
                    <tr>
                        <td> İş Adresi : </td>
                        <td><textarea rows="4" cols="17"><%=customer.getIsadresi()%></textarea></td> 
                    </tr>
                    <tr>
                        <td>E-mail : </td>
                        <td><input type="text" name="Email" value = "<%=customer.getEmail()%>"/></td>
                    </tr>
                    <tr>
                        <td>* Telefon1 : </td>
                        <td><input type="text" name="Telefon1" value = "<%=customer.getTel1()%>" /></td>
                    </tr>
                    <tr>
                        <td>Telefon2 : </td>
                        <td><input type="text" name="Telefon2" value = "<%=customer.getTel2()%>" /></td>
                    </tr>
                    <tr>
                        <td>Fax : </td>
                        <td><input type="text" name="Fax" value = "<%=customer.getFax()%>" /></td>
                    </tr>
                    <tr>
                        <td>Açıklamalar : </td>
                        <td><textarea rows="4" cols="17"><%=customer.getAciklamalar()%></textarea></td>
                    </td><br>
                    </tr>
                    <tr>
                        <td>
                            <pre>* bu alanlarda bilgi yoksa </br>  hatalı giriş yapılmıştır !</pre>
                        </td>
                        <td><input type="submit" value="Giriş yap" style="float:right;" /></td>
                    </tr>
                    </table>
                    </form>
                    </body>
                    </html>
