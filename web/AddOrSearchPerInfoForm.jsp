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
        background-image:url("CustomerOperation/adipromohdpi_1440.png");
    }
</style>            

<body>

<input type="text" name="tckn" id="tckn" value=""/>
<br>
<input type="button" value="Yeni Kayıt" onclick="yeniKayit();" />
</br>
<input type="button" value="Kayıt Görme" onclick="kayitGorme();" />
</br>
<input type="button" value="Kayıt Güncelleme" onclick="kayitYenileme();"/>
</br>
<input type="button" value="Kayıt Silme" onclick="kayitSilme();" />
</body>
<script type="text/javascript">
    function yeniKayit() {
        var tckn = document.getElementById("tckn").value;
        var islem = "1";
        var url = "CustomerOperation/ShowInsertCustomerForm.jsp?tckn=" + tckn;
        alert(url);
        document.location.href = url;
    }
    
    function kayitGorme() {
        var tckn = document.getElementById("tckn").value;
        var islem = "2";
        var url = "CustomerOperation/ShowInfoCustomerForm.jsp?tckn=" + tckn;
        alert(url);
        document.location.href = url;
    }
    
    function kayitYenileme() {
        var tckn = document.getElementById("tckn").value;
        var islem = "3";
        var url = "CustomerOperation/ShowUpdateCustomerForm.jsp?tckn=" + tckn;
        alert(url);
        document.location.href = url;
    }
    
    function kayitSilme() {
        var tckn = document.getElementById("tckn").value;
        var islem = "4";
        var url = "CustomerOperation/ShowDeleteCustomerForm.jsp?tckn=" + tckn;
        alert(url);
        document.location.href = url;
    }
</script>
</html>
