<%-- 
    Document   : post_question_db
    Created on : Jun 19, 2020, 5:50:37 PM
    Author     : HP
--%>
<%@page import="dao.ExpertDAO"%>
<%@page import="dto.Question"%>
<%@page import="dao.QuestionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expert Messaging</title>
    </head>
    <body>
       <%
    Question q = new Question();
    
    q.setQuestionTitle(request.getParameter("questionTitle"));
    q.setCategoryID(Integer.parseInt(request.getParameter("categoryID")));
    q.setSubCategoryID(Integer.parseInt(request.getParameter("subCategoryID")));
    q.setQuestionDesc(request.getParameter("questionDesc"));
    
    String visibility = request.getParameter("visibility");
    
    if(visibility != null)
        q.setVisibility(false);
    else
        q.setVisibility(true);
    
    q.setCustomerID((String)session.getAttribute("customerid"));
 
    
    ExpertDAO edao = new ExpertDAO();
    
    q.setExpertID(edao.getExpertByCatSubCat(q.getCategoryID(), q.getSubCategoryID()));
    
    QuestionDAO qd = new QuestionDAO();
    
    boolean b = qd.addQuestion(q);
    
    if(b)
    {
//         out.println("<script src='js/sweetalert2.all.js' type='text/javascript'></script>");
//        out.println("<script src='js/jquery.min.js' type='text/javascript'></script>");
//        out.println("<script>");
//        out.println("$(document).ready(function(){");
//        out.println("swal ( 'Verification Message' ,  'Your question will be posted successfully' ,"
//                + "  'warning' );");
//        out.println("});");
//        out.println("</script>");
//        %>
         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="sweetalert2.all.min.js"></script>
<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
        <script type="text/javascript">
            swal.fire({
      title: 'Verification Message',
      text : 'Your question will be posted successfully',
      icon : 'success',
  showClass: {
    popup: 'animate__animated animate__fadeInDown'
  },
  hideClass: {
    popup: 'animate__animated animate__fadeOutUp'
  }
}).then(function() {
    window.location = "post-question.jsp";
});
</script>
        
        
        <%
    }
    else
    {
    out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Verification Message' ,  'Your question will not be posted' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");
        %>
        <jsp:include page="post-question.jsp"/>
        <%
    }
%>
    </body>
</html>
