<%-- 
    Document   : AddSearchPersonInFile
    Created on : Mar 9, 2014, 3:37:40 PM
    Author     : ridvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Personal Information Form</title>
    </head>
    <body bgcolor="red">
        <h2>Kişisel Bilgileri Gösterme Formu </h2>
        <form method="POST" action="RegisterToFile.jsp">
            <table style="margin-left">
                <tr>
                    <td>* Tckn: </td>
                    <td><input type="text" name="Tckn" /></td>
                </tr>
                <tr>
                    <td>* İsim : </td>
                    <td><input type="text" name="Isim" /></td>
                </tr>
                <tr>
                    <td>* Soyad : </td>
                    <td><input type="text" name="Soyad" /></td>
                </tr>     
                <tr>
                    <td>* Doğum : </td>
                    <td><input type="date" name="Dogum" /></td>
                </tr>
                <tr>
                    <td>Cinsiyet : </td>
                    <td>
                        <form action="">
                            <select name="Cinsiyet">
                                <option value="K">Kadın</option>
                                <option value="E">Erkek</option>
                                <option value="D">Diğer</option>
                            </select>
                        </form>
                    </td> <!--<input type="text" name="Cinsiyet" /></td> -->
                </tr>
                <tr>
                    <!--input type=checkbox name=java value=java> <i>Java How to Program</i><br> -->
                    <td>Medeni durum :</td>
                    <td><input type=radio name="Medeni_durum" value="E"><i>Evli</i>
                        <input type=radio name="Medeni_durum" value="B"><i>Bekar</i><br>    
                </tr>
                <tr>
                    <td>* Ev Adresi : </td>
                    <td><textarea rows="4" cols="17">
                    </textarea></td></td>
                </tr>
                <td> İş Adresi : </td>

                <td><textarea rows="4" cols="17">
                    </textarea></td> 
                </tr>
                <tr>
                    <td>E-mail : </td>
                    <td><input type="text" name="Email" /></td>
                </tr>
                <tr>
                    <td>* Telefon1 : </td>
                    <td><input type="text" name="Telefon1" /></td>
                </tr>
                <tr>
                    <td>Telefon2 : </td>
                    <td><input type="text" name="Telefon2" /></td>
                </tr>
                <tr>
                    <td>Fax : </td>
                    <td><input type="text" name="Fax" /></td>
                </tr>
                <tr>
                    <td>Açıklamalar : </td>
                    <td><textarea rows="4" cols="17">
                    </textarea></td>
                </td><br>
                </tr>
                <tr>
                    <td>
                        <pre>* bu alanlarda bilgi yoksa hatalı giriş yapılmıştır !</pre>
                    </td>
                    <td><input type="submit" value="Göster" style="float:right;"/>
                        <input type="button" onclick="document.location.href = 'GetPersonInfoForm.jsp'" value="Vazgeç" style="float:right;" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
