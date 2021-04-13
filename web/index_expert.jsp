<%-- 
    Document   : index_expert
    Created on : Jun 10, 2020, 10:11:10 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>JSP Page</title>
    <style type="text/css">
        
        .navbar-nav {
          flex-direction: row;
        }

        .nav-link {
          padding-right: .5rem !important;
          padding-left: .5rem !important;
        }

        /* Fixes dropdown menus placed on the right side */
        .ml-auto .dropdown-menu {
          left: auto !important;
          right: 0px;
        }
        #navbarNav{

            background-color: #63ACE5;
            height: 50px;


        }

        #gini{

            width: 60px;
            position: relative;
            left: 50px;
        }

        #btn-welcome{

            background-color: transparent;
            border-color: #ABDCE3;
            font-family: 'Architects Daughter' , cursive;
            color: black;
            float: right;
            position: relative;
            bottom: 60px;
            right: 15px;
        }

        .myFont{

            font-family: 'Architects Daughter' , cursive;

        }

        #button-bg a:hover{

            background-color: #ABDCE3;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);

        }
        
        .content-section-c{
            
            padding-left: 103px;
            text-align: center;
            padding-right: 103px;
            font-weight: bold;
            
        }
        
    </style>
  </head>
  <body>
    <div style="margin-top: 10px;" >
          <nav class="navbar navbar-expand-lg navbar-light bg-light" id="navbar">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav ">
                      <li class="nav-item" style="margin-left: 30px;">
                      <a class="nav-link text-white" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-white" href="#">Contact Us</a>
                    </li>
                  </ul>
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a style="margin-right: 30px;" class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span style="text-transform: lowercase" class="hidden-xs small-padding">
                                         <%
                                                                    String name=(String)session.getAttribute("expertid");
                                                                    out.print(name);
                                                               %>
                                    </span>
                            
                            
                        </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item " href="#">CUSTOMER PROFILE SETTING</a>
                          <a class="dropdown-item" href="logout.jsp">LOGOUT</a>
                      </div>
                    </li>
                  </ul>
                </div>

        </nav>
    </div>
      <div style="height: 80px;" >

          <input type="image" src="images/gini.jpeg" id="gini">
          <div id="button-bg">

              <a class="btn btn-primary btn-lg" id="btn-welcome" role ="button">Post Questions</a>

          </div>
      </div>
      <div class="clear"></div>
      <!--tabs area answered unanswered and icident section-->

<div>
    <div class="container">
        
        <div class="row">
            
            <div class="col md-12 col-sm-12 col-xs-12">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active content-section-c" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Unanswered Questions</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link content-section-c" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Answered Questions</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link content-section-c" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Incident Raised</a>
                  </li>
                </ul>
                <div class="tab-content" id="myTabContent" style="margin-top: 70px;">
                  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                      <jsp:include page="ShowAllQuestionsToExpert.jsp"/>

                  </div>
                      <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                      <jsp:include page="ShowAllAnswersToExpert.jsp"/>

                      </div>
                      <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">

                          <jsp:include page="ShowAllIncidentByExpert.jsp"/>

                      </div>
                </div>
                          
            </div>
        </div>          
    </div>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
