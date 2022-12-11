<%@page import="com.DB.DBConnect"
   import="com.DAO.BookDAOImpl"
   import="java.util.*"
   import="com.entity.BookDetails"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookiz:Admin/AllBooks</title>
<%@ include file="allCss.jsp" %>
</head>
<body>
 	<%@ include file="adminNavbar.jsp"%>
 	<c:if test="${empty userobj}">
     <c:redirect url="../index.jsp"/>
    </c:if>
 	<h2 class="text-center"><u>All Books</u></h2>
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
      <th scope="col">Book Id</th>
      <th scope="col">Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author Name</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  	<%
  	    
  	
  		BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
  	    List<BookDetails> list = dao.getAllBooks();
  	    for(BookDetails b:list){
  	%>
  	
    <tr>
      <td><%=b.getBookId() %></td  >
      <td><img src="../book/<%=b.getFileName() %>" style="width:50px;height:50px;"></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthorName()%></td>
      <td><i class="fa fa-inr"></i> <%=b.getPrice() %></td>
      <td><%=b.getBookCategory() %></td>
      
      <%if("Active".equals(b.getStatus())){%>
          <td style="color:green;"><%=b.getStatus() %></td>
      <%} else{%>
          <td style="color:red;"><%=b.getStatus() %></td>
      <%} %>
      
       
      <td><a href="editbooks.jsp?id=<%=b.getBookId()%>" class="btn btn-sm btn-primary"><i class="fa fa-edit" ></i>
      Edit</a>
          <a href="../delete?id=<%=b.getBookId()%>" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i>
          Delete</a>
      </td>
    </tr>
    <% } %>
  </tbody>
</table>
<%@ include file="adminFooter.jsp" %>
</body>
</html>