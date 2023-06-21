<%@page import="com.DB.DBConnect"
   import="com.DAO.BookDAOImpl"
   import="java.util.*"
   import="com.Entity.BookDetails"
   
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookiz</title>
<%@ include file="allCss.jsp" %>
</head>
<body style="background-color:aliceblue">
 	<%@ include file="adminNavbar.jsp"%>

<center><h1>Report : Book Category</h1></center>
<form>
<input name="category" placeholder="Search Category" style="width:150px;margin-left:500px;margin-top:20px;">
<button type="submit">Submit</button>
</form>
<%
	String cat = request.getParameter("category");
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	List<BookDetails> list = dao.getbookreport(cat);
	int count = dao.getbookreportcount(cat); 
%>
<button style="background-color:rgb(127, 255, 212);width:250px;height:70px;margin-left:490px;margin-top:30px;border-radius:10px;"><center><h4>Total Books :  <%=count%></h4></center></button><br>
<table class="table table-striped" style="margin-top:3%;">
  <thead style="background-color:black;color:white;">
    <tr>
      <th scope="col">Book Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">Price</th>
      <th scope="col">Author Name</th>
      <th scope="col">Book Category</th>
      <!--<th scope="col">Category</th>
      <th scope="col">Status</th>-->
      <th scope="col">Publication</th>
    </tr>
  </thead>
  <tbody>
<% 
    
     
     for(BookDetails b:list){
%>


  <tr>
     
      <td><img src="../book/<%=b.getFileName() %>" style="width:60px;height:70px;"></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getPrice()%></td>
      <td><%=b.getAuthorName() %></td>
      <td><%=b.getBookCategory() %></td>
      <td><%=b.getPublication() %></td>
     
       
      
    </tr>
    <% } %>
  </tbody>
</table>

</body>
</html>