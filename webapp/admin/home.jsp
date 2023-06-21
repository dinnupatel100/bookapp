<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<%@ include file="allCss.jsp" %>
</head>
<body style="background-color:aliceblue;">

<%@ include file="adminNavbar.jsp" %>
    <c:if test="${empty userobj}">
     <c:redirect url="../index.jsp"/>
    </c:if>
  	<div class="container" style="margin-bottom:170px;">
  	    <div class="row p-5">
  	      <div class = "col-md-4">
  	       <a href="approveuser.jsp" style="text-decoration:none; color:black;">
  	         <div class="card"  style="border:1px solid black;">
  	         	<div class="card-body text-center"><i class="fa fa-user fa-5x text-primary" ></i> <br>
  	         	  <h2>Approve User</h2>
  	         	</div>
  	         </div>
  	       </a>
  	      </div>
  	      
  	      <div class = "col-md-4">
  	      <a href="report.jsp" style="text-decoration:none; color:black;">
  	         <div class="card"  style="border:1px solid black;">
  	         	<div class="card-body text-center"><i class="fa fa-newspaper-o fa-5x text-warning" aria-hidden="true"></i> <br>
  	         	  <h2>Reports</h2>
  	         	</div>
  	         </div>
  	         </a>
  	      </div>
  	      
  	      <div class = "col-md-4">
  	      <a href="../logout" style="text-decoration:none; color:black;">
  	         <div class="card" style="border:1px solid black;">
  	         	<div class="card-body text-center"><a class="" href="" data-toggle="modal" data-target="#Logout" style="text-decoration:none; color:black;"><i class="fa fa-sign-out fa-5x text-danger" aria-hidden="true"></i>
  	         	<br>
  	         	  <h2 style="color:black;text-decoration:none;">Logout</h2></a>
  	         	</div>
  	         </div>
  	       </a>
  	      </div>
  	    </div>
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
        <a href="../logout" type="button" class="btn btn-primary">Yes</a>
      </div>
    </div>
  </div>
</div>
 
 <%@ include file="adminFooter.jsp" %>
</body>
</html>