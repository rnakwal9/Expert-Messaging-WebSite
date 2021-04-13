<%-- 
    Document   : ShowAllCustomerIncident
    Created on : Jun 11, 2020, 4:22:04 PM
    Author     : HP
--%>

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
    <h2><b>Incident Raised By Customer to Expert</b></h2>
      
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Customer ID</th>
        <th>Expert ID</th>
        <th>Question<br>Title</th>
        <th>Question<br>Description</th>
        <th>Description<br>of Incident</th>
        <th>Posted Date<br>of Incident</th>
        <th>Blocked</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
        <td>yes</td>
        <td>X</td>
        <td>2019-05-07 13:52:05.0</td>
        <td>X</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
        <td>no</td>
        <td>X</td>
        <td>2019-05-07 13:52:05.0</td>
        <td>X</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
        <td>yes</td>
        <td>X</td>
        <td>2019-05-07 13:52:05.0</td>
        <td>X</td>
      </tr>
    </tbody>
  </table>
</div>

</body>
</html>
