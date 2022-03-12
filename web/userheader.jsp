<%-- 
    Document   : userheader
    Created on : Oct 28, 2017, 8:36:52 PM
    Author     : Tayyab
--%>

<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
  
    <div class="container">
      <a href="userhome.jsp" class="navbar-brand"> <img src="img/logo1.png" height="40" width="40"> &nbsp;&nbsp;<strong><i>Aero Travels</i></strong></a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                   <span class="navbar-toggler-icon"></span>
               </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a href="userhome.jsp" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="profile.jsp" class="nav-link">Profile</a>
          </li>
          <li class="nav-item">
            <a href="#create-head-section" class="nav-link">Special Offers</a>
          </li>
          <li class="nav-item">
            <a href="#share-head-section" class="nav-link">Vacations</a>
          </li>
        </ul>
          <form action="LogoutServlet" method="post">
              &nbsp;&nbsp; <input type="submit" value="Logout" class="btn btn-info">
          </form>
      </div>
    </div>
  </nav>
