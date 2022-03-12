<%-- 
    Document   : signup
    Created on : Oct 21, 2017, 8:59:24 PM
    Author     : Tayyab
--%>

<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
 

<script src="js/Validation.js"></script>
<script src="jquery.js"></script>
<script src="js/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/font-awesome.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="css/signup.css">
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>

  <title>Airline Booking System</title>
  <script src="http://code.jquery.com/jquery-1.10.2.js"
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <script>
        $(document).ready(function () {
                $("#email").blur(function () {
                    //   $("input").css("background-color", "yellow");
                        
                    var abc = $("#email").val();
                   alert(abc);
                    $.ajax({

                        type: "POST",
                        
                        data: {email: abc},
                        url: "testClass",
                        dataType: "text",

                        success: function (response)
                        {
                            $("#available").text(response);
                               alert("success");
                        }

                    });

                });
                
                
                $("input").keyup(function () {


                 //     $("input").css("background-color", "red");

                });

            });
    
    
    </script>

  
  
  
</head>

<body id="home">
      <%@ include file = "header1.jsp" %>
  <!-- HOME SECTION -->
  <header id="home-section">
    <div class="dark-overlay">
      <div class="home-inner">
        <div class="container">
    <div class="row">
           <div class="col-sm-10 col-md-10 ml-5 pl-5" >
              <h1 class="display-4 text-center">Sign Up</h1>
            <div class="account-wall">
    
                <img class="profile-img" src="img/airplane5.jpg"
                    alt="">
                <form class="form-signin" name="myForm" onsubmit="return validateForm()" method="post" action="check_username_ajax">
                    <div align="center" style="color:red;font-size:18px">${perror}</div> <br>
                    <input type="text" name="fullname" id="fullname" class="form-control" placeholder="Full Name" autofocus   > 
                    <!--onblur="allLetter(this)"  onblur="ValidateEmail(this)"-->
                    <div id="available" style="color:red;font-size:12px ;text-align:center"></div>
                <input type="text" name="email" id="email" class="form-control" placeholder="Email"  >
                <input type="password" name="password" class="form-control" placeholder="Password" >

				   <input type="password" name="confirmpassword" class="form-control" placeholder="Confirm Password" >
				   <br>
                <button class="btn btn-lg btn-primary btn-block mb-2" type="submit"  >
                    Sign up</button>
					<label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    <span style="color:#008ed6">Agree on Privacy Terms</span>
                </label>
                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form>
            </div>

        </div>
    </div>

         
        </div>
      </div>
    </div>
  </header>

	 <!-- Login MODAL -->
    <div class="modal fade text-dark" id="loginModal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="loginModalTitle">
              Login
            </h5>
          </div>
          <div class="modal-body">
            <form>
               <div class="form-group">
				<label for="email"> Your Email</label>
      
              <div class="input-group">
			<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
               
                <input type="email" class="form-control"  placeholder="Enter your Email">
              </div>
			  </div>
              <div class="form-group">
				<label for="password">Password</label>
				 <div class="input-group">
				 <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>

                <input type="password" class="form-control" placeholder="Enter your Password">
              </div>
			  </div>
            </form>
          </div>
			<div class="modal-footer">
       <a href="booking.jsp" class="btn btn-primary btn-block" role="button">Login</a>
          </div>
        </div>
      </div>
    </div>
	
	 <!-- Registration MODAL -->
    <div class="modal fade text-dark" id="registrationModal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="registrationModalTitle">
              Sign Up
            </h5>
          </div>
          <div class="modal-body">
              <form>
			
			<div class="form-group">
				<label for="name"> Your Name</label>
      
              <div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
          
                <input type="email" class="form-control"  placeholder="Enter your Name">
              </div>
			  </div>
			
			
		 <div class="form-group">
				<label for="email"> Your Email</label>
      
              <div class="input-group">
			<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
               
                <input type="email" class="form-control"  placeholder="Enter your Email">
              </div>
			  </div>
              <div class="form-group">
				<label for="password">Password</label>
				 <div class="input-group">
				 <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>

                <input type="password" class="form-control" placeholder="Enter your Password">
              </div>
			  </div>
			   <div class="form-group">
				<label for="password">Confirm Password</label>
				 <div class="input-group">
				 <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>

                <input type="password" class="form-control" placeholder="Confirm your Password">
              </div>
            </form>
          </div>
			<div class="modal-footer">
       <a href="booking.jsp" class="btn btn-primary btn-block" role="button">Register</a>
          </div>
        </div>
      </div>
    </div>
	

 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

</body>

</html>