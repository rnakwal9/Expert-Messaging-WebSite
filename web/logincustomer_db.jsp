<%-- 
    Document   : logincustomer_db
    Created on : Jun 10, 2020, 5:50:53 PM
    Author     : HP
--%>
<%@page import="dto.Customer" %>
<%@page import="dao.CustomerDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            
            String id = request.getParameter("id");
            String password = request.getParameter("password");
            Customer c = new Customer(id,password);
            CustomerDAO obj = new CustomerDAO();
                boolean i = obj.checkCustomerCredentials(c);
                    if(i){
                    
                        session.setAttribute("customerid", c.getId());
        %>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="sweetalert2.all.min.js"></script>
<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
        <script type="text/javascript">
            swal.fire({
  
  icon: 'success',
  title: 'You have Succesfully Logged In',
  showConfirmButton: false,
  timer: 1500
}).then(function() {
    window.location = "index_customer.jsp";
});
</script>
        
        
        <% 
        
                        }
                        else {
                            
                            out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Warning' ,  'Either you have been blocked or you have entered invalid user-id or password !!!' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");
%> 

     <jsp:include page="customer_login.jsp"/>
        <%
            }
            %>
            
    </body>
</html>
