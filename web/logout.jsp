<%-- 
    Document   : logout.jsp
    Created on : Jun 12, 2020, 10:54:45 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           session.invalidate();
response.setHeader("Cache-Control","no-cache ,no-store ,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");


//out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
//        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
//        out.println("<script>");
//        out.println("$(document).ready(function(){");
//        out.println("swal ( 'Verification Message' ,  'Logout successfully' ,"
//                + "  'warning' );");
//        out.println("});");
//        out.println("</script>");
//        
//response.sendRedirect("index.jsp");
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
      text : 'Logout Successfully',
      icon : 'success',
  showClass: {
    popup: 'animate__animated animate__fadeInDown'
  },
  hideClass: {
    popup: 'animate__animated animate__fadeOutUp'
  }
}).then(function() {
    window.location = "index.jsp";
});
</script>
    </body>
</html>
