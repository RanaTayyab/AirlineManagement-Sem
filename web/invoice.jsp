<%-- 
    Document   : invoice
    Created on : Nov 6, 2017, 10:17:03 PM
    Author     : Tayyab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

  <link rel="stylesheet" href="css/payment.css">

  <title>Airline Booking System</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/navactivething.js"></script>



</head>

<body id="invoice">
    
    <% 
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
    
        if(session.getAttribute("mail")==null )
        {
            response.sendRedirect("login.jsp");
        }
    %>
    
  <%@ include file = "userheader.jsp" %>



  <!-- HOME SECTION -->
  <header id="home-section">
    <div class="dark-overlay">
      <div class="home-inner">
	  <div class="container">
        				 <h1 class="display-6">Payment Type > Payment Card > Invoice </h1>
	<div style="margin:1% 20% 0% 15%;float:left; width:800px; box-shadow:0 0 3px #aaa; height:auto;color:#666;">
   <div style="width:100%; padding:10px; float:left; background:#1ca8dd; color:#fff; font-size:30px; text-align:center;">
	Invoice
   </div>
    <div style="width:100%; padding:0px 0px;border-bottom:1px solid rgba(0,0,0,0.2);float:left;">
        <div style="width:30%; float:left;padding:10px;">
           
            <span style="font-size:16px;float:left; width:100%;">
              <span style="color:#b3e0ff">  Tayyab Bin Tahir </span>
            </span>
			 <span style="font-size:16px;float:left;width:100%;">
                   <span style="color:#b3e0ff"> 473 B Block, </span>
			    <span style="color:#b3e0ff">	Johar Town, Lahore.</span>
            </span>
			<span style="font-size:16px;float:left;width:100%;">
		    <span style="color:#b3e0ff">	ranatayyab.473@gmail.com</span>
			</span>
        </div>
		
        <div style="width:40%; float:right;padding:">
            <span style="font-size:16px;float:right;  padding:10px; text-align:right;">
                 <span style="color:#b3e0ff">   <b>Date : </b>2017-09-10</span>
            </span>
			<span style="font-size:16px;float:right;  padding:10px; text-align:right;">
                 <span style="color:#b3e0ff">  <b>Invoice# : </b>SDO-10035</span>
            </span>
        </div>
    </div>
    


    
    
    <div style="width:100%; padding:0px; float:left;">
     
          <div style="width:100%;float:left;background:#efefef;">
            <span style="float:left; text-align:left;padding:10px;width:50%;color:#888;font-weight:600;">
            Decription
           </span>
         <span style="font-weight:600;float:left;padding:10px ;width:40%;color:#888;text-align:right;">
         Amount
        </span>
      </div>
	  
      <div style="width:100%;float:left;">
            <span style="float:left; text-align:left;padding:10px;width:50%;color:#888;">
          <span style="color:#99ffbb">   Session with Tayyab Bin Tahir </span>
          
            
            <span style="font-size:10px; float:left; width:100%;">
           <span style="color:#99ffbb">  (Text Consulting)</span>
            </span>
        </span>
         <span style="font-weight:normal;float:left;padding:10px ;width:40%;color:#888;text-align:right;">
           <span style="color:#99ffbb">  80,000 PKR</span>
        </span>
      </div>
	   <div style="width:100%;float:left;">
            <span style="float:left; text-align:left;padding:10px;width:50%;color:#888;">
         <span style="color:#99ffbb">    Promotional Code          </span>  
            <span style="font-size:10px; float:left; width:100%;">
              <span style="color:#99ffbb">   (0%)</span>
            </span>
        </span>
         <span style="font-weight:normal;float:left;padding:10px ;width:40%;color:#888;text-align:right;">
          <span style="color:#99ffbb">   75,000 PKR</span>
        </span>
      </div>
	  
	  	   <div style="width:100%;float:left; background:#fff;">
           
         <span style="font-weight:600;float:right;padding:10px 0px;width:40%;color:#666;text-align:center;">
           Total : 75,000 PKR
        </span>
		
      </div>
	  <a href="paymentcard.jsp" class="btn btn-danger pull-left" role="button">< Go Back</a>
	<a href="ClientBookedFlights.jsp" class="btn btn-success pull-right" role="button">Checkout ></a>
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
            <p class="lead">In Dubai complimentary daily lunch or dinner can be availed at over 60 restaurants, including the Burj Al Arab Jumeirah ??? an exclusive summer special. As well as staying and dining in world-famous resorts, guests can enjoy unlimited access to Wild Wadi Waterpark and complimentary access to Kid???s Club.</p>
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
               We???re making it easier for you by giving you the opportunity to fly to over 90 destinations worldwide.
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
            <p> Miami is the US??? very own slice of tropical glamour. Stretched along Florida???s southeast shoreline, gazing at the Atlantic Ocean, the city???s regional neighbours include the Bahamas, Bermuda and the Caribbean islands.</p>
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
			  Take some time to explore Florida???s Everglades, or discover the city???s thriving Latin scene.
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
            <form action="index.jsp">
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
			<a href="profile.jsp" class="btn btn-primary btn-block" role="button">Login</a>

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
          <a href="index.jsp" class="btn btn-primary btn-block" role="button">Register</a>
          </div>
        </div>
      </div>
    </div>
	

   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

</body>

</html>