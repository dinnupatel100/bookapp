<%@page import="com.DB.DBConnect"
   import="com.DAO.UserDAOImpl"
   import="java.util.*"
   import="com.Entity.User"
%>
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

<center><h1><u>User Report</u></h1></center>
<% 
     UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
     int count1 = dao.getUserReportCount();
     int count2 = dao.getUserReportSeller();
     
     

%>
<button style="background-color:rgb(127, 255, 212);width:250px;height:70px;margin-left:520px;margin-top:70px;border-radius:16px;"><center><h4>Total Users :  <%=count1%></h4></center></button><br>
<button style="background-color:rgb(127, 255, 212);width:250px;height:70px;margin-left:520px;margin-top:2px;border-radius:16px;"><center><h4>Total Sellers :  <%=count2%></h4></center></button><br>
<button style="background-color:rgb(127, 255, 212);width:250px;height:70px;margin-left:520px;margin-top:2px;border-radius:16px;"><center><h4>Total Buyers :  <%=count1%></h4></center></button>
	 
    		
    	

</body>
</html>