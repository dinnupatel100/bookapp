<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%@page import="com.DB.DBConnect"
   import="com.DAO.BookDAOImpl"
   import="java.util.*"
   import="com.entity.BookDetails"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookiz:Admin/editBooks</title>
<%@ include file="allCss.jsp" %>
</head>

<body style="background-color:aliceblue;">
 	<%@ include file="adminNavbar.jsp"%>
 	<c:if test="${empty userobj}">
     <c:redirect url="../index.jsp"/>
    </c:if>
 	
 	
 	<%
 		int id = Integer.parseInt(request.getParameter("id"));
 		BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
 		BookDetails b  = dao.getBookById(id);
 		
 		
 	%>

<form action="../editbooks" method="post">
 
   
   <div class="container" style="width:40vw;background-color:white; border-top:1px solid black ; height: 115vh;border-left:1px solid black;border-right:1px solid black;border-bottom:1px solid black;margin-top:18px;margin-bottom:30px;">
    <h2 style="margin-bottom:35px;margin-top:15px; text-align:center;"><u>Edit Books</u></h2>
    <input type="hidden" name="id" value="<%=b.getBookId()%>">
 	 <div class="form-group">
   	 	<label for="exampleInputEmail1">Book Name*</label>
   	 	<input type="text" class="form-control" name="bname" value="<%=b.getBookName() %>" id="BookName" aria-describedby="emailHelp" placeholder="" required>
   		
	 </div>
  	<div class="form-group">
   		<label for="exampleInputPassword1">Author Name*</label>
    	<input type="text" class="form-control" name="aname" value="<%=b.getAuthorName() %>" id="AuthorName" placeholder="" required>
 	</div>
 	<div class="form-group">
   		<label for="exampleInputPassword1">Price*</label>
    	<input type="number" class="form-control" name="price" value="<%=b.getPrice()%>" id="" placeholder="" required>
 	</div>
  	<div class="form-group">
   		<label for="exampleInputPassword1">Book Categories*</label>
    	<select class="form-control" name="btype" required>
  		<option><%=b.getBookCategory()%></option>
  		<option>Free Books</option>
  		<option>Story Books</option>
  		<option>Popular Books</option>
  		<option>Popular Authors</option>
  		<option>Under Graduate</option>
  		<option>Post Graduate</option>
  		<option>Others</option>
		</select>
 	</div>
    <div class="form-group">
   		<label for="exampleInputPassword1">Book Status*</label>
    	<select class="form-control" name="status" required>
    	<%if("Active".equals(b.getStatus())){%>
    		<option>Active</option>
        	<option>Inactive</option>
    	<%} else {%>
    	    <option>Inactive</option>
    	    <option>Active</option>
    	 <%} %>
    	</select>
 	</div>
  <!--  <div class="form-group">
    <label for="exampleFormControlFile1">Change Book Cover Image*</label>
    <input type="file" class="form-control-file" name="img" value="<%=b.getFileName()%>" id="exampleFormControlFile1" required>
  </div>-->
  <button style="margin-left:190px;margin-top:20px;" type="submit" class="btn btn-primary">Update</button>
  </div>
</form>
 	
</body>
</html>
