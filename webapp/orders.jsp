<%@page import="com.DB.DBConnect"
   import="com.DAO.BookDAOImpl"
   import="java.util.*"
   import="com.Entity.BookDetails"
   import="com.DAO.UserDAOImpl"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookiz:Admin</title>
<%@ include file="all_component/allCss.jsp" %>
</head>
<body>
 	<%@ include file="all_component/navbar1.jsp"%>
 	<c:if test="${empty userobj}">
     <c:redirect url="index.jsp"/>
    </c:if>
 	<h2 class="text-center"><u>Orders</u></h2>
 	<c:if test="${not empty succMsg }">
 		<h5 class="text-center text-success">${succMsg}</h5>
 		<c:remove var="succMsg" scope="session"/>
 	</c:if>
 	
 	<c:if test="${not empty failedMsg }">
 		<h5 class="text-center text-danger">${failedMsg}</h5>
 		<c:remove var="failedMsg" scope="session"/>
 	</c:if>
 	
 	<table class="table table-striped" style="margin-top:3%;">
  <thead style="background-color:black;color:white;">
    <tr>
      <th scope="col">Book Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">No. of Books</th>
      <th scope="col">Price</th>
      <th scope="col">Buyer Email</th>
     
      <!--<th scope="col">Category</th>
      <th scope="col">Status</th>-->
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  	<%
  	    
  	    String email = request.getParameter("email");
  		BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
  	    List<BookDetails> list = dao.getorderBooks(email);
  	    for(BookDetails b:list){
  	    	
  	    	
  	%>	
  	
    <tr>
      <!-- <td><img src="./book/<%=b.getFileName() %>" style="width:50px;height:50px;"></td> -->
      <td><img src="book/<%=b.getFileName() %>" style="width:50px;height:50px;"></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getCopies()%></td>
      <td><%=b.getPrice()%></td>
      d
      <td><%=b.getEmail()%></td>
      
     
       
      <td>
      
          <a href="../delete?id=<%=b.getBookId()%>" class="btn btn-sm btn-primary"><i class="fa fa-check" aria-hidden="true"></i>
           Complete</a>
          <a href="../delete?id=<%=b.getBookId()%>" class="btn btn-sm btn-danger"><i class="fa fa-times" aria-hidden="true"></i>
           Remove</a>
      </td>
    </tr>
    <% } %>
  </tbody>
</table>

</body>
</html>