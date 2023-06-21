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
			<a class="navbar-brand" href="sellerhome.jsp" style="color: darkslategrey;"><h2><b>Bookizz</b></h2></a>
		</div>

		<!-- Links -->
		
		
		
		<div class="col-sm-7  ">
			
				


			
		</div>
		
		<div class="col-sm-2">   
		 <div class="btn-group">
		   <!--   <a href="./cart.jsp"><button type="button" class="btn" style="background-color:rgb(127, 255, 212); border:black; width:100px;color:black;margin-right:0px;margin-left:40px;" aria-expanded="false">
    		<i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart
  			</button></a>  -->
  			<button type="button" class="btn btn-primary dropdown-toggle" style="background-color:rgb(127, 255, 212); border:black; color:black;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		<i class="fa fa-user" aria-hidden="true"></i>
    		${userobj.name}
  			</button>
  			<div class="dropdown-menu">
    	<!--  	<a class="dropdown-item" href="./freeBooks.jsp"><i class="fa fa-pencil" aria-hidden="true"></i>
    		Edit Profile</a>-->
    		
    		<a class="dropdown-item" href="" data-toggle="modal" data-target="#Logout"><i class="fa fa-sign-out"></i>Logout</a>
  			</div>
		 </div>
		  <!--   <ul>
				<li class="nav-item text-primary"><a class="nav-link" href="" data-toggle="modal" data-target="#Logout"><button  style="background-color: aliceblue;"><i class="fa fa-sign-out"></i>Logout</button></a></li>
				
			</ul>
			-->
		</div>
		
		
	</nav>
</div>


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
<!-- End Logout -->