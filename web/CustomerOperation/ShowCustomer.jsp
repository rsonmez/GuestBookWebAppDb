<%-- 
    Document   : ShowCustomer
    Created on : Mar 16, 2014, 8:43:14 PM
    Author     : Cısco
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.bilisimegitim.course.dao.entity.dao.CustomerDAO"%>
<%@page import="com.bilisimegitim.course.dao.entity.entity.Customer"%>

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
            String isim = null;String soyad = null;
            
            CustomerDAO customerDAO = new CustomerDAO();
            Customer customer = customerDAO.getCustomer(tckn);

            request.getSession(true).setAttribute("customerInfo", customer);
//            request.getRequestDispatcher("/main_page.jsp").forward(request, response);

//            Customer customer = (Customer) request.getSession(false).getAttribute("customerInfo");
//                        Customer customer = customersDao.updateCustomer(tckn,isim,soyad);
            tckn = null;
            tckn = customer.getTckn();
            isim = customer.getIsim();
            soyad = customer.getSoyad();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            System.out.println("tarih:" + request.getParameter("dogum"));
 //           Date dogum = sdf.parse(request.getParameter("dogum"));
            String cinsiyet = customer.getCinsiyet();
            String evli = customer.getEvli();
            String evadresi = customer.getEvadresi();
            String isadresi = customer.getIsadresi();
            String email = customer.getEmail();
            String tel1 = customer.getTel1();
            String tel2 = customer.getTel2();
            String fax = customer.getFax();
            String aciklamalar = customer.getAciklamalar();

//            session.setAttribute( "Tckn", customer.getTckn());
            //           session.setAttribute( "İsim", customer.getIsim());
              request.getRequestDispatcher("/ShowInsertPersonInfoForm.jsp").forward(request, response);
//            request.getRequestDispatcher("ShowInfoCustomerForm.jsp").forward(request, response);
//            request.getRequestDispatcher("/ShowInfo.jsp").forward(request, response);
        }
    %>
</body>
</html>
