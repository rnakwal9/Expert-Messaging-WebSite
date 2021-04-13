<%-- 
    Document   : index_admin
    Created on : Jun 11, 2020, 3:47:49 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- Bootstrap CSS -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap-dropdownhover.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
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

        #grad1 {
            height: 400px;
            width: 100%;
            background-color: #1fc8db; /* For browsers that do not support gradients */
            background-image: linear-gradient(141deg, #9fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
            color:white;
            opacity:0.95;

            position: relative;

            top: -30px;
            text-align: center;

        }

        #searchArea{

            width: 100%;
            text-align: center;

        }

        body{

            padding: 0 auto;
            margin: 0 auto;
            font-family: 'Architects Daughter' , cursive;

        }

        .clear{

            clear: both;

        }

        #grad1 h3{

            font-size: 50px;
        }

        #grad1 p{

            font-size: 20px;

        }

        #btn-search{

            position: relative;
            left: 278px;
            top: 25px;

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
                  </ul>
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="registerexpert.jsp" style="border-right: 1px solid white;">EXPERT REGISTER</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a style="margin-right: 30px;" class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">MORE OPTION</a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="margin-right: 20px;">
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

              <a class="btn btn-primary btn-lg" id="btn-welcome" role ="button">ADMIN HOME</a>

          </div>
      </div>
      <div class="clear"></div>


<!--      jumotron starts from here-->
      <div id="grad1" class="jumbotron">
          <div class="myFont" id="searchArea">

              <h3>Have a Question?</h3>

              <p>If you have search any question you can write or enter what you are looking for!</p>


             <form class="col-lg-6 offset-lg-3 ">
   <div class="row justify-content-center">
       <input class="form-control" type="text" placeholder="Type your search terms here">
     <span class="input-group-btn">
         <button class="btn btn-outline-dark" type="submit" style="margin-top: 5px;" >Search</button>
     </span>
   </div>
 </form>

          </div>

      </div>

<!--      jumbotron ends here-->

<!--tabs area answered unanswered and icident section-->

<div>
    <div class="container">
        
        <div class="row">
            
            <div class="col md-12 col-sm-12 col-xs-12">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active content-section-c" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Show Customer List</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link content-section-c" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Show Expert List</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link content-section-c" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Show All Expert Incidents</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link content-section-c" id="incident-tab" data-toggle="tab" href="#incident" role="tab" aria-controls="incident" aria-selected="false">Show All Customer Incidents</a>
                  </li>
                </ul>
                <div class="tab-content" id="myTabContent" style="margin-top: 80px">
                  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                      <jsp:include page="ShowAllCustomers.jsp"/>

                  </div>
                      <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                      <jsp:include page="ShowAllExperts.jsp"/>

                      </div>
                      <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">

                          <jsp:include page="ShowAllExpertsIncident.jsp"/>

                      </div>
                      <div class="tab-pane fade" id="incident" role="tabpanel" aria-labelledby="incident-tab">

                          <jsp:include page="ShowAllCustomerIncident.jsp"/>

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
