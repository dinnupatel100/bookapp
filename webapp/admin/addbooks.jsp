<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookiz:Admin/AllBooks</title>
<%@ include file="allCss.jsp" %>
</head>

<body style="background-color:aliceblue;">
 	<%@ include file="adminNavbar.jsp"%>
 	
 	<c:if test="${empty userobj}">
     <c:redirect url="../index.jsp"/>
    </c:if>
 	
 	<c:if test="${not empty succMsg }">
 		<h3 class="text-center text-success">${succMsg}</h3>
 		<c:remove var="succMsg" scope="session"/>
 	</c:if>
 	
 	<c:if test="${not empty failedMsg }">
 		<p class="text-center text-danger">${failedMsg}</p>
 		<c:remove var="failedMsg" scope="session"/>
 	</c:if>

<form action="../add_books" method="post" enctype="multipart/form-data">
 
   
   <div class="container" style="width:40vw;background-color:white; border-top:1px solid black ; height: 115vh;border-left:1px solid black;border-right:1px solid black;border-bottom:1px solid black;margin-top:18px;margin-bottom:30px;">
    <h2 style="margin-bottom:35px;margin-top:15px; text-align:center;"><u>Add Book</u></h2>
 	 <div class="form-group">
   	 	<label for="exampleInputEmail1">Book Name*</label>
   	 	<input type="text" class="form-control" name="bname" id="BookName" aria-describedby="emailHelp" placeholder="" required>
   		
	 </div>
  	<div class="form-group">
   		<label for="exampleInputPassword1">Author Name*</label>
    	<input type="text" class="form-control" name="aname" id="AuthorName" placeholder="" required>
 	</div>
 	<div class="form-group">
   		<label for="exampleInputPassword1">Price*</label>
    	<input type="number" class="form-control" name="price" id="AuthorName" placeholder="" required>
 	</div>
  	<div class="form-group">
   		<label for="exampleInputPassword1">Book Categories*</label>
    	<select class="form-control" name="btype" required>
  		<option>-- Select Category --</option>
  		<option>JEE Books</option>
  		<option>NEET Books</option>
  		<option>SSC Books</option>
  		<option>Programming Books</option>
  		<option>Story Books</option>
  		
  		<option>Others</option>
		</select>
 	</div>
    <div class="form-group">
   		<label for="exampleInputPassword1">Book Status*</label>
    	<select class="form-control" name="status" required>
    	<option>Active</option>
    	<option>Inactive</option>
    	</select>
 	</div>
  <div class="form-group">
    <label for="exampleFormControlFile1">Upload Book Cover Image*</label>
    <input type="file" class="form-control-file" name="img" id="exampleFormControlFile1" required>
  </div>
  <button style="margin-left:190px;margin-top:20px;" type="submit" class="btn btn-primary">Add</button>
  </div>
</form>
 	<%@ include file="adminFooter.jsp" %>
</body>
</html>
