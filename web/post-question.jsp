<%-- 
    Document   : post-question
    Created on : Jun 19, 2020, 4:07:12 PM
    Author     : HP
--%>
<%@page import="dto.QuestionCategory"%>
<%@page import="java.util.ArrayList" %>
<%@page import="dao.QuestionCategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- Bootstrap CSS -->
<!--    <link type="text/css" rel="stylesheet" href="css/bootstrap-dropdownhover.min.css" />-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

    <title>Expert Messaging</title>
    <script type="text/javascript">
            $(document).ready(function(){

// detect change of dropdown
	$("#qcat").change(function(){

// get id of selected team
		var catid=$(this).find(':selected').val();

                // set json url
		var json_url="GetSubCategoryJson.jsp?catid="+catid;

                $("#subcat").empty();
		
                // get json data
		jQuery.getJSON(json_url, function(data){

			// put new dropdown values to players dropdown
			jQuery.each(data, function(key, val){
				console.log(val[0]);
                                
                                for(var i = 0 ; i < val.length ; i++)
                                {    
                                var obj = val[i];
                                console.log(obj.id);
                                console.log(obj.subCategoryName);
        $("#subcat").append("<option value='" + obj.id + "'>" + obj.subCategoryName + "</option>")
                                }
				});
		});
                
            });        
});
        </script>
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
        
        #postQuestion{
            
            border: 1px solid #EFEFEF;
            text-align: center;
            width: 700px;
            margin: 0px auto 40px auto;
            padding: 20px;
        }
        
        #postContent{
            
            text-align: left;
            
        }
        
        #myForm{
            
            
            
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
                            <span style="text-transform: lowercase;" class="hidden">
                                
                                <%
                                    String name = (String)session.getAttribute("customerid");
                                    out.print(name);
                                %>
                                
                            </span>
                            
                            
                        </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item " href="profile-setting.jsp">CUSTOMER PROFILE SETTING</a>
                          <a class="dropdown-item" href="logout.jsp">LOGOUT</a>
                      </div>
                    </li>
                  </ul>
                </div>

        </nav>
    </div>
      <div style="height: 100px; border-bottom: 1px solid #EFEFEF" >

          <input type="image" src="images/gini.jpeg" id="gini">
          <div id="button-bg">

              <a class="btn btn-primary btn-lg" id="btn-welcome" role ="button" href="post-question.jsp">Post Questions</a>

          </div>
      </div>
      <div class="clear"></div>
      
          <form id="postQuestion" action="post_question_db.jsp">
            <div class="form-group">
                <label style="border-bottom: 1px solid #EFEFEF"><h3>Post your Question</h3></label>
            </div>
            <div id="postContent">
              <div class="form-group">
                  <label><b>Question Title</b></label>
                  <input type="text" class="form-control form-control-lg" aria-describedby="emailHelp" placeholder="Question Title" name="questionTitle">

              </div>

                <div class="form-group">

                    <label><b>Question Category</b></label>
                    <select class="form-control form-control-lg" id="qcat" name="categoryID">
                        <option value="0">Select Category</option>
                        <%
                              QuestionCategoryDAO qd = new QuestionCategoryDAO();
                              ArrayList<QuestionCategory> lst = qd.getAllQuestionCategories();

                              if(lst != null)
                              {
                                  for(QuestionCategory obj : lst)
                                  {
                        %>    
                        <option value="<%=obj.getId()%>"><%=obj.getCategoryName()%></option>
                        <%
                                  }
                              }
                        %>
                    </select>

                </div>
                <div class="form-group">

                    <label><b>Question Sub-Category</b></label>
                    <select class="form-control form-control-lg" id="subcat" name ="subCategoryID">
                        <option value="0">Select Sub-Category</option>
                    </select>

                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1"><b>Question Description</b></label>
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="7" placeholder="Post Your Question Details Here......" required="" name="questionDesc"></textarea>

              </div>

            </div>
            <div class="form-group">
                <label>Visibility</label>
                <input type="checkbox" value="private" name="visibility">
            </div> 
            <button type="submit" class="btn btn-dark pull-right">PUBLISH YOUR QUESTION</button>
            
      </form>
 





    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<!--    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
