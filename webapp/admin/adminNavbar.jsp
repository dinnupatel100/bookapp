<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!-- nav-bar -->
<div style="background-color: rgb(127, 255, 212); position: sticky; top: 0; width: 100%; z-index: 9;">
	<nav class="navbar navbar-expand-sm " style="margin-bottom: 0%;">
		<!-- Brand -->
		<div class="col-sm-5">
			<img src="logo.png" alt="logo" width="50" height="45"> 
			<a class="navbar-brand" href="home.jsp" style="color: darkslategrey;"><h2><b>Bookizz</b></h2></a>
		</div>

		<!-- Links -->
		<div class="col-sm-5">
		<h2>Admin Panel</h2>
		
		</div>
		
		<div class="col-sm-3">
		  <c:if test="${not empty userobj}">
		     <ul class="navbar-nav">
			    <li class="nav-item text-primary"><a class="nav-link" style="text-decoration:none; color:black;margin-left:60px;"><h5><i class="fa fa-user"></i> ${userobj.name}</h5></a></li>
				<!-- <li class="nav-item text-primary"><a class="nav-link" href="" data-toggle="modal" data-target="#Logout"><button  style="background-color: rgb(252, 217, 222);"><i class="fa fa-sign-out"></i>Logout</button></a></li>-->
               <!--   <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Logout" style="background-color: rgb(252, 217, 222);">Logout<i class="fa fa-sign-out"></button> -->
            </ul>
		  </c:if>
		  <c:if test="${empty userobj }">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="" id="#signInPage"><button style="background-color: rgb(252, 217, 222);">Login <i class="fa fa-sign-out"></i></button></a></li>
            </ul>
          </c:if>
		</div>
	</nav>
</div>
<br>

<!-- Button trigger modal -->


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
        <a href="../logout" type="button" class="btn btn-primary">Yes</a>
      </div>
    </div>
  </div>
</div>

<!--End nav-bar -->

