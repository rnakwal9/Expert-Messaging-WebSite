<%-- 
    Document   : registerexpert_db
    Created on : Jun 18, 2020, 4:45:55 PM
    Author     : HP
--%>

<%@page import="dao.ExpertDAO"%>
<jsp:useBean id="u"  class="dto.Expert" scope="request"></jsp:useBean>
<jsp:setProperty name="u" property="*"></jsp:setProperty>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
                <%             
         ExpertDAO obj=new ExpertDAO();
         boolean i=obj.registerExpert(u);
         if(i)
         {
             out.println("<script src='js/sweetalert2.all.js' type='text/javascript'></script>");
        out.println("<script src='js/jquery.min.js' type='text/javascript'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal('Verification Message', 'You have been successfully done registration of expert in ExpertMessaging , and password is send to expert's email Id. ', 'success');");
        out.println("});");
        out.println("</script>");
        %>
        <p>if block</p> 
       
        <%
         }
         else 
         {
            
             out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Warning' ,  'Not registered,try again' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");
        %>
         
        <p>else block</p>
         
        <%
         }
         %>

    </body>
</html>