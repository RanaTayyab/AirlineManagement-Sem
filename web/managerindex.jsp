


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

<body id="profile">
 
    <% 
        if(session.getAttribute("manager")==null )
        {
            response.sendRedirect("login.jsp");
        }
        
        
          ResultSet rs = (ResultSet) session.getAttribute("resultmanager");
    %>
    
  <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
    <div class="container">
      <a href="managerhome.jsp" class="navbar-brand"> <img src="img/logo1.png" height="40" width="40"> &nbsp;&nbsp;<strong><i>Aero Travels</i></strong></a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                   <span class="navbar-toggler-icon"></span>
               </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav ml-auto">
          
              <li class="nav-item">
            <a href="managerhome.jsp" class="nav-link ">Home</a>
          </li>
            
		  <li class="nav-item">
            <a href="managerindex.jsp" class="nav-link active">Notifications</a>
          </li>
         
        </ul>
			
              <form action="LogoutServlet" method="post">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="submit" value="Logout" class="btn btn-info">
          </form>
      </div>
    </div>
  </nav>

    

  <!-- HOME SECTION -->
  <header id="home-section">
    <div class="dark-overlay">
      <div class="home-inner">
        <div class="container">
		<div class="row">
            <div class=" col-lg-12 col-sm-3  custyle">
  
    <table class="table table-striped custab">
    <thead>
   <h1 class="display-4">Manager Panel - <strong>Notifications Section</strong>.</h1>
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
                         <th class="text-center">Status</th>
                          <th class="text-center">Approve</th>
                           <th class="text-center">Reject</th>
        </tr>
    </thead>
      <% while(rs.next()){ %>
            <TR>
            <form action="ManagerApproved" method="post" >
       <input type="hidden" name="flightno" value=<%= rs.getString("flightno") %>>
       
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
                 <TD  class="text-center"  style="color:lightskyblue"> <%= rs.getString("approval") %></TD>
            
                   <td ><button class="btn btn-success btn-sm" type="submit" name="approve" value="approve">Approve</button></td>
                   <td ><button class="btn btn-danger btn-sm" type="submit" name="reject" value="reject">Reject</button></td>
                   
                </form>
                
                </tr>
            <% } %>
    </table>
    </div>
	

	
	</div>
</div>
      </div>
    </div>
  </header>

 
	
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>


</body>

</html>