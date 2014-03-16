<%-- 
    Document   : AddOrSearchPerInfoForm
    Created on : Mar 9, 2014, 4:01:27 PM
    Author     : ridvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add or Search Per Info Form</title>
    </head>
    <style>
        body{
            background-image:url("adipromohdpi_1440.png");
        }
    </style>            
    <script type="text/javascript">
        function yeniKayit(){
            var tckn = document.getElementById("tckn").value;
            var url = "CustomerOperation/UpdateCustomer.jsp?tckn="+tckn;
            alert(url);
            document.location.href = url;
        }
        function kayitGorme(){
            var tckn = document.getElementById("tckn").value;
            var url = "CustomerOperation/ShowCustomer.jsp?tckn="+tckn;
            alert(url);
            document.location.href = url;
        }
        function kayitSilme(){
            var tckn = document.getElementById("tckn").value;
            var url = "CustomerOperation/DeleteCustomer.jsp?tckn="+tckn;
            alert(url);
            document.location.href = url;
        }
    </script>
    <body>
        
        <input type="text" name="tckn" id="tckn" value=""/>
        
        <br>
        <input type="button" value="Yeni Kayıt" onclick="yeniKayit();" />
        </br>
        <input type="button" value="Kayıt Görme" onclick="kayitGorme();" />
        </br>
        <input type="button" value="Kayıt Güncelleme" onclick="yeniKayit();"/>
        </br>
        <input type="button" value="Kayıt Silme" onclick="kayitSilme();" />
    </body>
</html>
