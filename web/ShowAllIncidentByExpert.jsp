<%-- 
    Document   : ShowAllIncidentByExpert
    Created on : Jun 10, 2020, 10:37:18 PM
    Author     : HP
--%>
<%@page import="dto.Question"%>
<%@page import="dao.QuestionDAO"%>
<%@page import="dto.ReportedIncidentsByExpert"%>
<%@page import="dao.ReportedIncidentsByExpertDAO"%>
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
  <h2>Answers For Your Question</h2>
      
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Customer ID</th>
        <th>Question Title</th>
        <th>Question Description</th>
        <th>Description of Incident</th>
        <th>Posted Date of Incident</th>
      </tr>
    </thead>
    <tbody>
        <% try {
            QuestionDAO qd = new QuestionDAO();
                ReportedIncidentsByExpertDAO dao = new ReportedIncidentsByExpertDAO();

                ArrayList<ReportedIncidentsByExpert> lst = dao.getAllIncidentsByExpertID((String)
                session.getAttribute("expertid"));

                for (ReportedIncidentsByExpert rs : lst) {
                Question qs = qd.getQuestionById(rs.getQuestionID());
        %>

        <tr>

            <td><%=qs.getCustomerID()%></td>

            <td><%=qs.getQuestionTitle()%></td>

            <td><%=qs.getQuestionDesc()%></td>

            <td><%=rs.getIncDesc()%></td>

            <td><%=rs.getPostedDate()%></td>

        </tr>

    <%
            }
        } catch (Exception e) {

        }
    %>

    </tbody>
  </table>
</div>

</body>
</html>
