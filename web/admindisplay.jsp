

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

  <link rel="stylesheet" href="css/DisplayFlightsAdmin.css">

  <title>Airline Booking System</title>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/navactivething.js"></script>

  
</head>

<body id="DisplayFlightsAdmin">
    
     <% 
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
    
        if(session.getAttribute("admin")==null )
        {
            response.sendRedirect("login.jsp");
        }
    %>
 
    <% 
        
          ResultSet rs = (ResultSet) session.getAttribute("totalresult");
    %>
    
    <%@ include file = "adminheader.jsp" %>
    

  <!-- HOME SECTION -->
  <header id="home-section">
    <div class="dark-overlay">
      <div class="home-inner">
        <div class="container">
		<div class="row">
            <div class=" col-lg-12 col-sm-3  custyle">
  
    <table class="table table-striped custab">
    <thead>
   <h1 class="display-4">List of <strong>Available Flights</strong>.</h1>
        <tr>
            <th class="text-center">Flight No.</th>
            <th class="text-center">Departure</th>
            <th class="text-center">Arrival</th>
			 <th class="text-center">Date</th>
			 <th class="text-center">Time</th>
			 <th class="text-center">EC-Seats</th>
                         <th class="text-center">EC-Price</th>
                         <th class="text-center">BS-Seats</th>
                         <th class="text-center">BS-Price</th>
                         <th class="text-center">FR-Seats</th>
                         <th class="text-center">FR-Price</th>
        </tr>
    </thead>
      <% while(rs.next()){ %>
            <TR>
          
       
        <TD  class="text-center"  style="color:lightskyblue"><b> <%= rs.getString("flightno") %> </b></td>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("departure") %></TD>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("arrival") %></TD>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("date") %></TD>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("time") %></TD>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("economyseat") %></TD>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("economyprice") %></TD>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("businessseat") %></TD>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("businessprice") %></TD>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("firstseat") %></TD>
                <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("firstprice") %></TD>
            
               
                </tr>
            <% } %>
    </table>
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
          <a href="userhome.jsp" class="btn btn-primary btn-block" role="button">Login</a>
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
           <a href="userhome.jsp" class="btn btn-primary btn-block" role="button">Register</a>
          </div>
        </div>
      </div>
    </div>
	
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>


</body>

</html>