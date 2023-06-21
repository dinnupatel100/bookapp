<%@page import="com.DB.DBConnect"
   import="com.DAO.BookDAOImpl"
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

<center><h1><u>Book Report</u></h1></center>
<% 
     BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
     int count1 = dao.getBookReportBCount();
     int count2 = dao.getBookReportSCount();
     int count3 = dao.getBookReportACount();
     int count4 = dao.getBookReportJCount();
     int count5 = dao.getBookReportNCount();
     int count6 = dao.getBookReportSSCount();
     int count7 = dao.getBookReportPCount();
     int count8 = dao.getBookReportSTCount();
     
     

%>
<button style="background-color:rgb(127, 255, 212);width:300px;height:70px;margin-left:350px;margin-top:70px;border-radius:16px;"><center><h5>Total Books :  <%=count1%></h5></center></button>
<button style="background-color:rgb(127, 255, 212);width:300px;height:70px;margin-left:0px;margin-top:2px;border-radius:16px;"><center><h5>Total Books Sold :  <%=count2%></h5></center></button><br>
<button style="background-color:rgb(127, 255, 212);width:300px;height:70px;margin-left:350px;margin-top:2px;border-radius:16px;"><center><h5>Total Books Available :  <%=count3%></h5></center></button>
	 
<button style="background-color:rgb(127, 255, 212);width:300px;height:70px;margin-left:0px;margin-top:2px;border-radius:16px;"><center><h5>Total Jee Books : <%=count4%></h5></center></button><br>
<button style="background-color:rgb(127, 255, 212);width:300px;height:70px;margin-left:350px;margin-top:2px;border-radius:16px;"><center><h5>Total Neet Books :  <%=count5%></h5></center></button>
<button style="background-color:rgb(127, 255, 212);width:300px;height:70px;margin-left:0px;margin-top:2px;border-radius:16px;"><center><h5>Total Ssc Books :  <%=count6%></h5></center></button><br>
<button style="background-color:rgb(127, 255, 212);width:300px;height:70px;margin-left:350px;margin-top:2px;border-radius:16px;"><center><h5>Total Programming Books :  <%=count7%></h5></center></button>
<button style="background-color:rgb(127, 255, 212);width:300px;height:70px;margin-left:0px;margin-top:2px;border-radius:16px;"><center><h5>Total Story Books :  <%=count8%></h5></center></button>    		
    	

</body>
</html>