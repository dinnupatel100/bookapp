<%@page import="com.DB.DBConnect"
   import="com.DAO.UserDAOImpl"
   import="java.util.*"
   import="com.Entity.User"
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
<%@ include file="allCss.jsp" %>
</head>
<body>
 	<%@ include file="adminNavbar.jsp"%>
 	<c:if test="${empty userobj}">
     <c:redirect url="../index.jsp"/>
    </c:if>
 	<h2 class="text-center"><u>Approve User</u></h2>
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
      <th scope="col">User Id</th>
      <th scope="col">Image</th>
      <th scope="col">Seller Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact no.</th>
      <!--<th scope="col">Category</th>
      <th scope="col">Status</th>-->
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  	<%
  	    
  	
  		UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
  	    List<User> list = dao.approve();
  	    for(User us:list){
  	%>	
  	
    <tr>
      <td><%=us.getId() %></td  >
      <td><a href="aadharphoto.jsp?id=<%=us.getId()%>"><img src="../book/<%=us.getAadhar() %>" style="width:70px;height:80px;"></a></td>
      <td><%=us.getName() %></td>
      <td><%=us.getEmail()%></td>
    
      <td><%=us.getPhno() %></td>
      
     
       
      <td><a href="../approve?id=<%=us.getId()%>" class="btn btn-sm btn-primary"><i class="fa fa-check" aria-hidden="true"></i>
      Approve</a>
          <a href="../reject?id=<%=us.getId()%>" class="btn btn-sm btn-danger"><i class="fa fa-times" aria-hidden="true"></i>
          Reject</a>
      </td>
    </tr>
    <% } %>
  </tbody>
</table>

</body>
</html>