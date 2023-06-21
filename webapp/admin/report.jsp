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

<center><u><h1>Reports</h1></u></center>

<a href="userreport.jsp"><button style="background-color:rgb(127, 255, 212);width:300px;height:150px;margin-left:150px;margin-top:50px;border-radius:12px;"><h3>Users</h3></button></a>
<a href="bookReport.jsp"><button style="background-color:rgb(127, 255, 212);width:300px;height:150px;margin-left:40px;margin-top:50px;border-radius:12px;"><h3>Books</h3></button></a>
<a href="categoryreport.jsp"><button style="background-color:rgb(127, 255, 212);width:300px;height:150px;margin-left:40px;margin-top:50px;border-radius:12px;"><h3>Category</h3></button></a>
<a href="authorReport.jsp"><button style="background-color:rgb(127, 255, 212);width:300px;height:150px;margin-left:150px;margin-top:40px;border-radius:12px;"><h3>Author</h3></button></a>
<a href="publicationReport.jsp"><button style="background-color:rgb(127, 255, 212);width:300px;height:150px;margin-left:40px;margin-top:40px;border-radius:12px;"><h3>Publication</h3></button></a>
<a href="priceReport.jsp"><button style="background-color:rgb(127, 255, 212);width:300px;height:150px;margin-left:40px;margin-top:40px;border-radius:12px;"><h3>Price</h3></button></a>
</body>
</html>