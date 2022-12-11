<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
	
<!-- nav-bar -->
<div style="background-color: rgb(127, 255, 212); position: sticky; top: 0; width: 100%; z-index: 9;">
	<nav class="navbar navbar-expand-sm " style="margin-bottom: 0%;">
		<!-- Brand -->
		<div class="col-sm-3">
			<img src="images/mainlogo.png" alt="logo" width="50" height="45"> 
			<a class="navbar-brand" href="index.jsp" style="color: darkslategrey;"><h2><b>Bookizz</b></h2></a>
		</div>

		<!-- Links -->
		
		
		<c:if test="${empty userobj}">
		<div class="col-sm-6  ">
			<ul class="navbar-nav">

				<li class="nav-item "><a class="nav-link " style="color: black" 
				href="freeBooks.jsp">Free Books <span class="badge badge-secondary">New</span></a>
				</li>
				<li class="nav-item "><a class="nav-link" style="color: black"
					href="popularBooks.jsp"> Popular Books </a></li>
				<li class="nav-item"><a class="nav-link" style="color: black"
					href="#">Popular Authors</a></li>
				<li class="nav-item"><a class="nav-link" style="color: black"
					href="storyBooks.jsp">Story Books</a></li>


			</ul>
		</div>
		
		<div class="col-sm-3">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="register.jsp"><button
							style="background-color: rgb(252, 217, 222);">
							<i class="fa fa-user-plus"></i> Register
						</button></a></li>

				<li class="nav-items">
                      <a class = "nav-link " href="" data-toggle="modal" data-target="#signInPage" ><button style="background-color:rgb(240, 255, 255);border-radius:1mm;"><i class="fa fa-sign-in"></i> Login</button></a>				
				</li>
			</ul>
		</div>
		</c:if>
		
		<c:if test="${not empty userobj}">
		
		
		<div class="col-sm-6">
	     <ul class="navbar-nav">
		 <div class="btn-group">
  			<button type="button" class="btn btn-primary dropdown-toggle" style="background-color:rgb(127, 255, 212); border:black; color:black;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		Book Category
  			</button>
  			<div class="dropdown-menu">
    		<a class="dropdown-item" href="./freeBooks.jsp">Free Books</a>
    		<a class="dropdown-item" href="./storyBooks.jsp">Story Books</a>
    		<a class="dropdown-item" href="./popularBooks.jsp">Popular Books</a>
  			</div>
		</div>
		   
				<li class="nav-item" style="margin-left:30px;"><a class="nav-link" href="register.jsp"><button
							style="border-radius:7px; height:35px;width:160px; border:none;background-color:aliceblue;">
							<i class="fa fa-search"></i>  Search Book
						</button></a></li>
				<li class="nav-item"><a class="nav-link" href="./sellBooks.jsp"><button
							style="background-color:red;border-radius:7px; height:35px;width:160px; border:none;background-color:#e6ffff;">
							<i class="fa fa-upload"></i>  Sell Book
						</button></a></li>
			</ul>
			
		</div>
		
		<div class="col-sm-3">   
		 <div class="btn-group">
		    <button type="button" class="btn" style="background-color:rgb(127, 255, 212); border:black; width:100px;color:black;margin-right:20px;margin-left:40px;" aria-expanded="false">
    		<i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart
  			</button>
  			<button type="button" class="btn btn-primary dropdown-toggle" style="background-color:rgb(127, 255, 212); border:black; color:black;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		<i class="fa fa-user-o" aria-hidden="true"></i>
    		${userobj.name}
  			</button>
  			<div class="dropdown-menu">
    		<a class="dropdown-item" href="./freeBooks.jsp"><i class="fa fa-pencil" aria-hidden="true"></i>
    		Edit Profile</a>
    		
    		<a class="dropdown-item" href="" data-toggle="modal" data-target="#Logout"><i class="fa fa-sign-out"></i>Logout</a>
  			</div>
		 </div>
		  <!--   <ul>
				<li class="nav-item text-primary"><a class="nav-link" href="" data-toggle="modal" data-target="#Logout"><button  style="background-color: aliceblue;"><i class="fa fa-sign-out"></i>Logout</button></a></li>
				
			</ul>
			-->
		</div>
		</c:if>
		 
	</nav>
</div>
<br>

<!--Login form-->
<div class="modal fade" id="signInPage">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h3 class="modal-title w-100 dark-grey-text font-weight-bold">Login</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="close">&times;</button>
      </div>  
      <form action="login" method="post">
      <div class="modal-body mx-4">
        <div class="md-form">
          <label data-error="wrong" data-success="right">Email</label>
          <i class="fa fa-envelope-o "></i>
          <input type="email" class="form-control validate" name="email"> 
        </div>
        <div class="md-form">
          <!--<label data-error="wrong" data-success="right">Password</label>-->
          <label data-error="wrong" data-success="right">Password</label>
          <input type="password" class="form-control validate" name="password"> 
          <p class="blue-text font-small  d-flex " style=""><a href="#" class="blue-text ml-20">Forgot Password?</a></p>
        </div>
        <div class="text-center mb-3">
           <button type="Submit" class="btn btn-primary btn-block z-depth-1a">Login</button>
        </div>
      </div>  
      </form>
    </div>
  </div>
</div>
<!-- end login -->


<!-- Modal -->
<div class="modal fade" id="Logout" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title  " id="exampleModalLongTitle">LOGOUT</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Do you want to logout ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        <a href="logout" type="button" class="btn btn-primary">Yes</a>
      </div>
    </div>
  </div>
</div>

<!--End nav-bar -->