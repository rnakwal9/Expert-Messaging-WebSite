<%-- 
    Document   : index
    Created on : Jun 4, 2020, 3:55:08 PM
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Hello, world!</title>
    <style type="text/css">
        
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

        .grad1 {
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
            
        }
        
        .clear{
            
            clear: both;
            
        }
        
        .grad1 h3{
            
            font-size: 50px;
        }
        
        .grad1 p{
            
            font-size: 20px;
            
        }
        
        #btn-search{
            
            position: relative;
            left: 278px;
            top: 25px;
            
        }
/*        #btn-search input :hover {
            
            background-color: #ABDCE3;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
            
        }*/

        
        .card{
            
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        
        }
        
        #card-sec{
            
            margin-left: 250px;
            margin-right: 250px;
            margin-bottom: 100px;
        
        }
        
        .grad2{
            height: 270px;
            width: 100%;
            background-color: #1fc8db; /* For browsers that do not support gradients */        
            background-image: linear-gradient(141deg, #9fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
            color:white;
            opacity:0.95;
            
            position: relative;
            
            top: -30px;
            text-align: center;
            
        }
        
        .grad2 p{
            margin : 65px 130px 40px 130px;
        }
        
        #carousel{
            width: 60%;
            
        }
        
        #adminDetails{
            
            background-color: black;
            height: 270px;
            width: 400px;
            margin-left: 900px;
            margin-top: -225px;
            
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
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#card-sec" style="border-right: 1px solid white;">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#card-sec" style="margin-right: 20px">Sign Up</a>
                    </li>
                  </ul>
                </div>
        </nav>
    </div>
      <div style="height: 80px;" >
          
          <input type="image" src="images/gini.jpeg" id="gini">     
          <div id="button-bg">
              
              <a class="btn btn-primary btn-lg" id="btn-welcome" role ="button">Welcome to Expert Messaging</a>
              
          </div>
      </div>
      <div class="clear"></div>
      
      
<!--      jumotron starts from here-->
      <div class="jumbotron grad1">
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
<div id="card-sec">
<div class="card-deck">
  <div class="card">
    <img height=250px class="card-img-top" src="images/Customer-img.jpg" alt="Card image cap">
    <div class="card-body">
        <a href="customer_login.jsp"><h5 style="text-align:center;" class="card-title">Customer Login</h5></a>
      <p class="card-text">If you want the answer just ask the question.</p>
    </div>
<!--    <div class="card-footer">
        <input type="submit" class="btn btn-primary" value="Customer Login"></input>
    </div>-->
  </div>
  <div class="card">
    <img height=250px class="card-img-top" src="images/Expert-img.png" alt="Card image cap">
    <div class="card-body">
        <a href="expert_login.jsp"><h5 style="text-align:center;" class="card-title">Expert Login</h5></a>
<!--      <h5 class="card-title">Expert Login</h5>-->
      <p class="card-text">Questions open a space in your mind that allow better answers to breathe.</p>
    </div>
<!--    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>-->
  </div>
  <div class="card">
    <img height=250px class="card-img-top" src="images/Admin.jpeg" alt="Card image cap">
    <div class="card-body">
        <a href="admin_login.jsp"><h5 style="text-align:center;" class="card-title">Admin Login</h5></a>
<!--      <h5 class="card-title">Admin Login</h5>-->
      <p class="card-text">I know nothing but i am the boss</p>
    </div>
<!--    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>-->
  </div>
</div>
</div>

<div class="clear"></div>

<div class="grad2 myFont">
    <div id="carousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <p>Expert Messaging System is a question and answer site for professional and enthusiasts. It features questions and answers on a wide variety of topics ranging from music , sports , business , art , cookery , health etc. The website serves as a platform for users to ask questions and assigned experts for the topics to answer those questions.</p>
        </div>
        <div class="carousel-item">
            <p>Expert Messaging System is a question and answer site for professional and enthusiasts. It features questions and answers on a wide variety of topics ranging from music , sports , business , art , cookery , health etc. The website serves as a platform for users to ask questions and assigned experts for the topics to answer those questions.</p>
        </div>

      <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
        
    </div>
    <div id="adminDetails">
        <div id="adminContent">
            <h4 style="padding-top: 80px"> Admin Details</h4>
            <pre style="color: white; padding-top: 10px;">Email-rohitnakwal333@gmail.com</pre>
            <pre style="color: white">Contact-8871310554</pre>
        </div>
    </div>
    
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>