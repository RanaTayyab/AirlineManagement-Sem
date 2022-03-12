
<%-- 
    Document   : adminheader
    Created on : Nov 6, 2017, 10:33:01 PM
    Author     : Tayyab
--%>
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
    <div class="container">
       <a href="adminindex.jsp" class="navbar-brand"> <img src="img/logo1.png" height="40" width="40"> &nbsp;&nbsp;<strong><i>Aero Travels</i></strong></a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                   <span class="navbar-toggler-icon"></span>
               </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a href="adminindex.jsp" class="nav-link">Home</a>
          </li>
          
          <li class="nav-item">
            <a href="adminadd.jsp" class="nav-link">Add Flights</a>
          </li>
          <li class="nav-item">
            <a href="adminupdate.jsp" class="nav-link">Update Flights</a>
          </li>
          <li class="nav-item">
            <a href="admindelete.jsp" class="nav-link">Delete Flight</a>
          </li>
        </ul>
		    
	<form action="LogoutServlet" method="post">
              &nbsp;&nbsp; <input type="submit" value="Logout" class="btn btn-info">
          </form>
          
      </div>
    </div>
  </nav>