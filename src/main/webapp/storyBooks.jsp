<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.DB.DBConnect"
   import="com.DAO.BookDAOImpl"
   import="java.util.*"
   import="com.entity.BookDetails"
%>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Bookizz</title> 
  <%@include file="all_component/allCss.jsp"%>
  
  <style>
    .title::after{
    content: '';
    background:rgb(8, 238, 161);
    width: 150px;
    height: 3px;
    border-radius: 5px;
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    }
    .card-ho:hover{
      background-color:#fcf7f7;
    }
    </style>
  
</head>
<body style="background-color:aliceblue;"> 
	 <%@include file="all_component/navbar.jsp" %>
	 

  

<!--Cards-StoryBooks-->
<!-- Heading -->
  <div class="title" style="text-align:center;font: 2rem sans-serif ; color:black;position: relative;line-height: 60px;margin-top:30px;">
       <h1>Story Books</h1>
  </div>
  <div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <div class="container-fluid">
  <div class="row p-3">
    <%
    BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
    List<BookDetails> list1 = dao1.getAllStoryBooks();
   
    for (BookDetails b1 : list1){
    %>
  <div class="col-md-3">
  <div class="card card-ho mt-4" style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px; ">
  <div class="imgcenter" style="width:100% ; height:28vh;">
  <div style="width: 10vw;margin:1px auto 1px ">
    <img class="card-img-top" src="book/<%=b1.getFileName()%>" alt="Card image cap" style="height:100%;width:100%; margin-top:8px" >
   </div>
   </div>
    <div class="card-body" style="width:100%; text-align:center ;">
      <h5 class="card-title"><%=b1.getBookName()%></h5>
     <!--  <p class="card-text">Some quick example </p> -->
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : <%=b1.getAuthorName()%></li>
      <li class="list-group-item">Price : <i class="fa fa-inr"></i><%=b1.getPrice() %></li>  
    </ul>
    <div class="card-body" >
      <a href="view_books.jsp?bid=<%=b1.getBookId()%>" class="card-link"><button style="background-color:rgb(240, 255, 255);">View Details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  </div>
  
 
 <%} %>
  </div>
  </div>
  </div>
   
<!--end card-PopularBook -->

<!--card -->

<div class="footer" style="background-color:aquamarine;height:200px;margin-top:50px;">

</div>
	
	
</body>
</html>