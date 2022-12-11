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
  	       <a href="addbooks.jsp" style="text-decoration:none; color:black;">
  	         <div class="card"  style="border:1px solid black;">
  	         	<div class="card-body text-center"><i class="fa fa-plus-circle fa-5x text-primary" ></i> <br>
  	         	  <h2>Add Books</h2>
  	         	</div>
  	         </div>
  	       </a>
  	      </div>
  	      
  	      <div class = "col-md-4">
  	      <a href="allbooks.jsp" style="text-decoration:none; color:black;">
  	         <div class="card"  style="border:1px solid black;">
  	         	<div class="card-body text-center"><i class="fa fa-book fa-5x text-danger" ></i> <br>
  	         	  <h2>All Books</h2>
  	         	</div>
  	         </div>
  	         </a>
  	      </div>
  	      
  	      <div class = "col-md-4">
  	      <a href="allbooks.jsp" style="text-decoration:none; color:black;">
  	         <div class="card" style="border:1px solid black;">
  	         	<div class="card-body text-center"><i class="fa fa-send fa-5x text-warning" ></i> <br>
  	         	  <h2>Orders</h2>
  	         	</div>
  	         </div>
  	       </a>
  	      </div>
  	    </div>
  	</div>
 
 <%@ include file="adminFooter.jsp" %>
</body>
</html>