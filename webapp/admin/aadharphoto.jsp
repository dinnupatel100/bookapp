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
 	<h2 class="text-center"><u>Aadhar Photo</u></h2>
 	<c:if test="${not empty succMsg }">
 		<h5 class="text-center text-success">${succMsg}</h5>
 		<c:remove var="succMsg" scope="session"/>
 	</c:if>
 	
 	<c:if test="${not empty failedMsg }">
 		<h5 class="text-center text-danger">${failedMsg}</h5>
 		<c:remove var="failedMsg" scope="session"/>
 	</c:if>
 	
 	
    
  	<%
  	    int id = Integer.parseInt(request.getParameter("id"));
  	    
  		UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
  	    List<User> list = dao.approve();
  	    for(User us:list){
  	%>	
  	
      <div style="margin-left:490px;margin-top:50px;">
      <img src="../book/<%=us.getAadhar() %>" style="width:380px;height:450px;">
      
      </div>
     
       
      
    <% break;} %>
  

</body>
</html>