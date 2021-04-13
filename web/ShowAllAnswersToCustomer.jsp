<%-- 
    Document   : ShowAllAnswersToCustomer
    Created on : Jun 6, 2020, 6:16:45 PM
    Author     : HP
--%>
<%@page import="dto.Answer"%>
<%@page import="dao.AnswerDAO"%>
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
      /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      padding-top: 100px; /* Location of the box */
      left: 0;
      top: 0;
     width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
      background-color: #fefefe;
      margin: auto;
      padding: 20px;
      border: 1px solid #888;
      width: 30%;
    }

    /* The Close Button */
    .close {
      color: #aaaaaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: #000;
      text-decoration: none;
      cursor: pointer;
    }
    
    #btnRaise{
        background-color: transparent;
        border-color: #ABDCE3;
        font-family: 'Architects Daughter' , cursive;
        color: black;
    }
    
    #btnH button:hover{

            background-color: #ABDCE3;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);

        }
      
  </style>
      
</head>
<body>

<div class="container">
  <h2>Answers For Your Question</h2>
      
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Question Title</th>
        <th>Question Description</th>
        <th>Answer for you</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        <%
            AnswerDAO ado = new AnswerDAO();
            ArrayList<Answer> anslist = ado.getAllAnswersForCustomerQuestions(
                                        (String)session.getAttribute("customerid"));
            
            if(anslist != null){
            
                for(Answer ans : anslist){
                    
                    QuestionDAO qd = new QuestionDAO();
                    int questionid = ans.getQuestionID();
        %>
      <tr>
          <td><%= qd.getQuestionById(questionid).getQuestionTitle() %></td>
          <td><%= qd.getQuestionById(questionid).getQuestionDesc() %></td>
          <td><%= ans.getAnsDesc() %><br><%= ans.getPostedDate() %></td>
          <input type="hidden" id="hid_ques_id<%=ans.getId()%>" value="<%=ans.getId()%>"/>
          <td> <button id="myBtn<%=ans.getId()%>" onclick="openMyDialog(<%=ans.getId()%>)">Raise Complaint</button></td> 
      </tr>
      <%}}%>
    </tbody>
  </table>
</div>

<!--The Modal    -->

<center>
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <table>
        <tr>
            <td> <center><b>Enter Complaint Description : </b></center></td>
        </tr>
        <tr class="blank_row">
            <td bgcolor="#FFFFFF" >&nbsp;</td>
        </tr>
        <tr>
            <td>
                <textarea id="incDesc" name="incDesc" cols="40" rows="5"></textarea>
            </td>
        </tr>
        <tr class="blank_row">
            <td bgcolor="#FFFFFF" >&nbsp;</td>
        </tr>
        <tr>
            <td id="btnH"><center><button id="btnRaise" class="btn btn-danger" onclick="addComplaint()">Post Complaint</button></center></td>
        </tr>
    </table>
  </div>

</div>
</center>
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that posts complaint
var btnRaise = document.getElementById("btnRaise");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

var questionid = 0;

// When the user clicks the button, open the modal 
function openMyDialog(id)
{
  modal.style.display = "block";
  questionid = id;
}

function addComplaint(){
    
    var incDesc = document.getElementById("incDesc").value;
    
    var url="AddComplaintByCustomer.jsp?questionid="+questionid+"&incDesc="+incDesc;

    modal.style.display = "none";
    
            if(window.XMLHttpRequest){
            request=new XMLHttpRequest();
            }
            else if(window.ActiveXObject){
            request=new ActiveXObject("Microsoft.XMLHTTP");
            }

            try
            {
            request.onreadystatechange=getComplainResponse;
            request.open("GET",url,true);
            request.send();
            }
            catch(e)
            {
            alert("Unable to connect to server");
            }
}


function getComplainResponse()
{
    if(request.readyState==4){
            var val=request.responseText;
                if(val.trim() == "success")
                {
                    alert("Your complaint has been raised");
                    window.location.reload(true);
                }
                else
                {
                    alert("Your complaint has not been raised");
                }
            }
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
  alert(questionid);
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

</script>
</body>
</html>

