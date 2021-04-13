<%-- 
    Document   : registerexpert
    Created on : Jun 11, 2020, 5:44:16 PM
    Author     : HP
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.QuestionCategoryDAO"%>
<%@page import="dto.QuestionCategory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!--<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>-->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!--<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>-->
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <!-- JavaScripts -->
<!--  <script src="js/modernizr.js"></script>-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>-->

    <title>JSP Page</title>
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
        
         body{
        padding-top:4.2rem;
		padding-bottom:4.2rem;
		background:rgba(0, 0, 0, 0.76);
        }
        a{
         text-decoration:none !important;
         }
         h1,h2,h3{
         font-family: 'Kaushan Script', cursive;
         }
          .myform{
		position: relative;
		display: -ms-flexbox;
		display: flex;
		padding: 1rem;
		-ms-flex-direction: column;
		flex-direction: column;
		width: 100%;
		pointer-events: auto;
		background-color: #fff;
		background-clip: padding-box;
		border: 1px solid rgba(0,0,0,.2);
		border-radius: 1.1rem;
		outline: 0;
		max-width: 500px;
		 }
         .tx-tfm{
         text-transform:uppercase;
         }
         .mybtn{
         border-radius:50px;
         }
        
         .login-or {
         position: relative;
         color: #aaa;
         margin-top: 10px;
         margin-bottom: 10px;
         padding-top: 10px;
         padding-bottom: 10px;
         }
         .span-or {
         display: block;
         position: absolute;
         left: 50%;
         top: -2px;
         margin-left: -25px;
         background-color: #fff;
         width: 50px;
         text-align: center;
         }
         .hr-or {
         height: 1px;
         margin-top: 0px !important;
         margin-bottom: 0px !important;
         }
         .google {
         color:#666;
         width:100%;
         height:40px;
         text-align:center;
         outline:none;
         border: 1px solid lightgrey;
         }
          form .error {
         color: #ff0000;
         }
         #second{display:none;}
        
    </style>
    
    
  </head>
  <body>
     <div class="container">
        <div class="row">
			<div class="col-md-5 mx-auto">
			<div id="first">
				<div class="myform form ">
					 <div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<h1>Expert Registration</h1>
						 </div>
					</div>

                                    <form action="registerexpert_db.jsp" method="get" name="registration">
                           <div class="form-group">
                               <div class="form-group">
                              <label for="exampleInputEmail1">Email address</label>
                              <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                           </div>
                           <div class="form-group">
                              <label>Category ID</label>
                              <select id="qcat" name="categoryID" class="form-control">
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
                              <label>SubCategory ID</label>
                              <select id="subcat" name="subCategoryID" class="form-control">
                                  <option value="select">Select SubCategory</option>
                              </select>
                           
                           <div class="col-md-12 text-center mb-3"style="margin-top: 25px;">
                              <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Register Expert</button>
                           </div>
                            </div>
                        </form>
                     </div>
			</div>
		</div>
      </div>   

    <!-- Optional JavaScript -->
    
<!--  <script src="js/jquery.min.js"></script>-->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<!--    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
