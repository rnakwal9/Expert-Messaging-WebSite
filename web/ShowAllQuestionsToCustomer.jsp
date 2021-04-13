<%-- 
    Document   : ShowAllQuestionsToCustomer
    Created on : Jun 6, 2020, 6:38:30 PM
    Author     : HP
--%>
<%@page import="dto.Question"%>
<%@page import="dao.QuestionDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap-dropdownhover.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style type="text/css">
      
      body{
          
          font-family: 'Architects Daughter' , cursive;
          
      }
      
  </style>
      
</head>
<body>

<div class="container">
  <h2>Questions By You</h2>
      
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Question Title</th>
        <th>Description</th>
        <th>Posted Date</th>
        
      </tr>
    </thead>
    <tbody>
        <%
            QuestionDAO qd = new QuestionDAO();
            ArrayList<Question> lst = qd.getAllUnAnsweredQuestionsForCustomer(
                                (String)session.getAttribute("customerid"));
            
            if(lst != null){
                
                for(Question q : lst){
                    
        %>
        
      <tr>
        <td><%= q.getQuestionTitle() %></td>
        <td><%= q.getQuestionDesc() %></td>
        <td><%= q.getPostedDate() %></td>
      </tr>
      <%}}%>
    </tbody>
  </table>
</div>

</body>
</html>

