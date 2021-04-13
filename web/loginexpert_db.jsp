<%-- 
    Document   : loginexpert_db
    Created on : Jun 10, 2020, 11:11:30 PM
    Author     : HP
--%>
<%@page import="dto.Expert" %>
<%@page import="dao.ExpertDAO" %>
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
            
            Expert e= new Expert();
            e.setId(id);
            e.setPassword(password);
            ExpertDAO obj = new ExpertDAO();
                boolean i = obj.checkExpertCredentials(e);
                
                    if(i){
                        session.setAttribute("expertid", e.getId());
                    
            
        %>
        <jsp:include page="index_expert.jsp"></jsp:include>
        <%
            
                        }
                        else{
                        
                            out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Warning' ,  'invalid user-id or password !!!' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");
                        
                        

        %>
        <jsp:include page="expert_login.jsp"></jsp:include>
        <%
            
                        }

        %>
    </body>
</html>
