<%-- 
    Document   : DisplayFlightsClient
    Created on : Oct 29, 2017, 10:35:19 PM
    Author     : Tayyab
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

  <link rel="stylesheet" href="css/DisplayFlights.css">

  <title>Airline Booking System</title>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/navactivething.js"></script>

  
</head>

<body id="DisplayFlightsClient">
 
    <% 
        
    
        if(session.getAttribute("mail")==null )
        {
            response.sendRedirect("login.jsp");
        }
        String mailIs=(String)session.getAttribute("mail"); 
        
          ResultSet rs = (ResultSet) session.getAttribute("rs");
    %>
    
    <%@ include file = "userheader.jsp" %>
    

  <!-- HOME SECTION -->
  <header id="home-section">
    <div class="dark-overlay">
      <div class="home-inner">
        <div class="container">
		<div class="row">
            <div class=" col-lg-12 col-sm-3  custyle">
  
    <table class="table table-striped custab">
    <thead>
   <h1 class="display-4">List of <strong>Available Searched Flights</strong>.</h1>
        <tr>
            <th>ID</th>
            <th>Departure</th>
            <th>Arrival</th>
			 <th>Date</th>
			 <th>Time</th>
			 <th>Price</th>
            <th class="text-center">Action</th>
        </tr>
    </thead>
      <% while(rs.next()){ %>
            <TR>
                <form action="CustomerFlightBooked" method="post" >
        <input type="hidden" name="flightno" value=<%= rs.getString("flightno") %>>
        <input type="hidden" name="departure" value=<%= rs.getString("departure") %>>
        <input type="hidden" name="arrival" value=<%= rs.getString("arrival") %>>
        <input type="hidden" name="date" value=<%= rs.getString("date") %>>
        <input type="hidden" name="time" value=<%= rs.getString("time") %>>
        <input type="hidden" name="economyprice" value=<%= rs.getString("economyprice") %>>
         <input type="hidden" name="mailis" value=${mail}>
       
        <TD style="color:lightskyblue"><b> <%= rs.getString("flightno") %> </b></td>
                <TD style="color:lightskyblue"> <%= rs.getString("departure") %></TD>
                <TD style="color:lightskyblue"> <%= rs.getString("arrival") %></TD>
                <TD style="color:lightskyblue"> <%= rs.getString("date") %></TD>
                <TD style="color:lightskyblue"> <%= rs.getString("time") %></TD>
                <TD style="color:lightskyblue"> <%= rs.getString("economyprice") %></TD>
            
                <td class="text-center"><button class="btn btn-success btn-md" type="submit">Book Ticket</button></td>
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

  <!-- EXPLORE HEAD -->
  <section id="explore-head-section">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <div class="p-5">
            <h1 class="display-4">Explore</h1>
            <p class="lead">More discoveries, more Skywards Miles, more benefits. Browse our current offers by Skywards account to see all the offers available for your tier. We add new offers all the time, so remember to check back for the latest deals.</p>
            <a href="#" class="btn btn-outline-secondary">Find Out More</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- EXPLORE SECTION -->
  <section id="explore-section" class="bg-light text-muted py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="img/airplane5.jpg" alt="" class="img-fluid mb-3 rounded-circle">
        </div>
        <div class="col-md-6">
          <h3>Come Fly With Us</h3>
          <p>Not sure where or when you want to travel? Use our interactive map to get some inspiration and compare prices, from beach and shopping destinations, city trips and more. Book your perfect trip now.</p>
          <div class="d-flex flex-row">
            <div class="p-4 align-self-start">
              <i class="fa fa-check"></i>
            </div>
            <div class="p-4 align-self-end">
            Flights to London take culture-hungry globalistas to one of the world's most sought-after destinations.
            </div>
          </div>
          <div class="d-flex flex-row">
            <div class="p-4 align-self-start">
              <i class="fa fa-check"></i>
            </div>
            <div class="p-4 align-self-end">
            Travellers on flights to Bangkok can expect a city of contrasts; where skyscrapers and five-star hotels tower over ancient temples.

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- CREATE HEAD -->
  <section id="create-head-section" class="bg-primary">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <div class="p-5">
            <h1 class="display-4">Special Offers</h1>
            <p class="lead">In Dubai complimentary daily lunch or dinner can be availed at over 60 restaurants, including the Burj Al Arab Jumeirah – an exclusive summer special. As well as staying and dining in world-famous resorts, guests can enjoy unlimited access to Wild Wadi Waterpark and complimentary access to Kid’s Club.</p>
            <a href="#" class="btn btn-outline-light">Find Out More</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- CREATE SECTION -->
  <section id="create-section" class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
            <h3>Check for Offers</h3>
            <p>Plan your summer escape with Marriott and enjoy an exclusive offer at more than 60 hotels across the Middle East and Africa, as well as France. Experience the inspiring grandeur of Paris, or take the kids to the UAE for a summer extravaganza of family events and shows. Wherever you choose to explore get more from your getaway with Marriott.</p>
            <div class="d-flex flex-row">
              <div class="p-4 align-self-start">
                <i class="fa fa-check"></i>
              </div>
              <div class="p-4 align-self-end">
               We’re making it easier for you by giving you the opportunity to fly to over 90 destinations worldwide.
              </div>
            </div>
            <div class="d-flex flex-row">
              <div class="p-4 align-self-start">
                <i class="fa fa-check"></i>
              </div>
              <div class="p-4 align-self-end">
               From city breaks to restful escapes, fill your calendar with new adventures this year.
              </div>
            </div>
        </div>
        <div class="col-md-6">
            <img src="img/slider6.jpg" alt="" class="img-fluid mb-3 rounded-circle">
        </div>
      </div>
    </div>
  </section>

  <!-- SHARE HEAD -->
  <section id="share-head-section" class="bg-primary">
      <div class="container">
        <div class="row">
          <div class="col text-center">
            <div class="p-5">
              <h1 class="display-4">Summer Break</h1>
              <p class="lead">With flights to Cambodia now offering new experiences for travellers, we have partnered with Raffles Hotels to offer you exclusive benefits when you travel to Phnom Penh with Aero on flight EK388.</p>
              <a href="#" class="btn btn-outline-light">Find Out More</a>
            </div>
          </div>
        </div>
      </div>
    </section>
  
    <!-- SHARE SECTION -->
    <section id="share-section" class="bg-light text-muted py-5">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <img src="img/summer.jpg" alt="" class="img-fluid mb-3 rounded-circle">
          </div>
          <div class="col-md-6">
            <h3>Smile with Sun</h3>
            <p> Miami is the US’ very own slice of tropical glamour. Stretched along Florida’s southeast shoreline, gazing at the Atlantic Ocean, the city’s regional neighbours include the Bahamas, Bermuda and the Caribbean islands.</p>
            <div class="d-flex flex-row">
              <div class="p-4 align-self-start">
                <i class="fa fa-check"></i>
              </div>
              <div class="p-4 align-self-end">
				Relaxing on powdery, sun-kissed beaches or engaging in high-octane water-sports.
              </div>
            </div>
            <div class="d-flex flex-row">
              <div class="p-4 align-self-start">
                <i class="fa fa-check"></i>
              </div>
              <div class="p-4 align-self-end">
			  Take some time to explore Florida’s Everglades, or discover the city’s thriving Latin scene.
                 </div>
            </div>
          </div>
        </div>
      </div>
    </section>

     <%@ include file = "footer1.jsp" %>
	
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