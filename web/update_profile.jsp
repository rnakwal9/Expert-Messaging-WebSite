<%-- 
    Document   : update_profile
    Created on : Jun 16, 2020, 6:47:14 PM
    Author     : HP
--%>
<%@page import="dto.Customer"%>
<%@page import="dao.CustomerDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
            String id = session.getAttribute("customerid").toString();
            String pass = request.getParameter("password");
            String fName = request.getParameter("firstName");
            String lName = request.getParameter("lastName");
            String mNumber = request.getParameter("mobileNumber");
            
            Customer c = new Customer();
            
            c.setPassword(pass);
            c.setFirstName(fName);
            c.setLastName(lName);
            c.setMobileNumber(mNumber);
            c.setId(id);
            
            CustomerDAO obj = new CustomerDAO();
            
            boolean i = obj.updateCustomer(c);
                
                if(i)
                {
//                   out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
//                   out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
//                   out.println("<script>");
//                   out.println("$(document).ready(function(){");
//                   out.println("swal ( 'Verification Message' ,  'You have been successfully updated with ExpertMessaging' ,"
//                           + "  'warning' );");
//                   out.println("}).then(function() {");
//                   out.println("window.location = 'index_customer.jsp'");
//                   out.println("});");
//                   out.println("</script>");
%>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="sweetalert2.all.min.js"></script>
<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
        <script type="text/javascript">
            swal.fire({
      title: 'Verification Message',
      text : 'You have been successfully updated with ExpertMessaging',
      icon : 'success',
  showClass: {
    popup: 'animate__animated animate__fadeInDown'
  },
  hideClass: {
    popup: 'animate__animated animate__fadeOutUp'
  }
}).then(function() {
    window.location = "index_customer.jsp";
});

            
        </script>
        
        <%
                   
                }
                else 
                {

//                    out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
//                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
//                    out.println("<script>");
//                    out.println("$(document).ready(function(){");
//                    out.println("swal ( 'Warning' ,  'Not updated,something is wrong!!!' ,"
//                            + "  'warning' );");
//                    out.println("});");
//                    out.println("</script>");
//
%> 
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="sweetalert2.all.min.js"></script>
<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
        <script type="text/javascript">
            swal.fire({
      title: 'Warning',
      text : 'Not updated , something is wrong!!!',
      icon : 'warning',
  showClass: {
    popup: 'animate__animated animate__fadeInDown'
  },
  hideClass: {
    popup: 'animate__animated animate__fadeOutUp'
  }
}).then(function() {
    window.location = "index_customer.jsp";
});
</script>
       
        
        <%

                }
        
        %>
    </body>
</html>
