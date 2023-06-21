<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@page import="com.DB.DBConnect"
   import="com.DAO.BookDAOImpl"
   import="java.util.*"
   import="com.Entity.BookDetails"
%>
 
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Bookizz:Navbar</title> 
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
    </style>
  
</head>
<body style="background-color:aliceblue;"> 
	 <%@include file="all_component/navbar.jsp" %>
	 

	
<!--Slider-->

<div id="carouselExampleIndicators" class="carousel slide mt-0" data-ride="carousel" style="margin-top:0;z-index:2;" >
  <ol class="carousel-indicators" >
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
  </ol>
  <div class="carousel-inner" style="position:relative; bottom: 20px; ">
    <div class="carousel-item active ">
      <img class="d-block w-100" src="images/quote9.jpg" alt="First slide"  height="340" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote11.jpg" alt="Second slide"   height="340">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote6.jpg" alt="Third slide"  height="340" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote8.jpg" alt="Fourth slide"  height="340">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote10.webp" alt="Fifth slide"  height="340" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote2.webp" alt="Sixth slide"  height="340" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote5.jpg" alt="Seventh slide"  height="340" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote7.jpg" alt="Eighth slide"  height="340">
    </div>
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!--End Slider-->




<!--Card FreeBooks-->
<div class="title" style="text-align:center;font: 2rem sans-serif ;margin-top:70px;color: black;position: relative;line-height: 60px;">
  <h1>JEE Books</h1>
</div>
<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <%
    BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
    List<BookDetails> list1 = dao1.getJeeBooks();
    int j=1;
    for (BookDetails b1 : list1){
    	
    	if(j<=4){
    		j++;
  %>
 
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px; ">
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
    <c:if test="${not empty userobj}">
    <div class="card-body" style="text-align:center" >
      <a href="view_books.jsp?bid=<%=b1.getBookId()%>" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
      <!--  <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
     </c:if>
     
     <c:if test="${empty userobj}">
    <div class="card-body" style="text-align:center" >
      <a href="login.jsp" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
      <!--  <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
     </c:if>
    </div>
  </div>
  
 
 <%}} %>
 </div>
     <a href="jeeBooks.jsp"> <button style="background-color:rgb(252, 217, 222); border-radius:8mm; margin-left:85%;width:150px;">View all -></button></a>
<!--end card-FreeBooks-->

<!--card PopularBooks-->
<div class="title" style="text-align:center;font: 2rem sans-serif ;margin-top:70px;color: black;position: relative;line-height: 60px;">
  <h1>NEET Books</h1>
</div>
<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <%
    BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
    List<BookDetails> list2 = dao2.getNeetBooks();
    int i=1;
    for (BookDetails b2 : list2){
    	if((b2.getCopies())<=0){
    		continue;
    	}
    	if(i<=4){
    		i++;
  %>
 
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px; ">
  <div class="imgcenter" style="width:100% ; height:28vh;">
  <div style="width: 10vw;margin:1px auto 1px ">
    <img class="card-img-top" src="book/<%=b2.getFileName()%>" alt="Card image cap" style="height:100%;width:100%; margin-top:8px" >
   </div>
   </div>
    <div class="card-body" style="width:100%; text-align:center ;">
      <h5 class="card-title"><%=b2.getBookName()%></h5>
     <!--  <p class="card-text">Some quick example </p> -->
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : <%=b2.getAuthorName()%></li>
      <li class="list-group-item">Price : <i class="fa fa-inr"></i><%=b2.getPrice() %></li>  
    </ul>
    <c:if test="${empty userobj}">
    <div class="card-body" style="text-align:center">
      <a href="login.jsp" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
     <!-- <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
    
    </div>
   </c:if>
   
   <c:if test="${not empty userobj}">
    <div class="card-body" style="text-align:center">
      <a href="view_books.jsp?bid=<%=b2.getBookId()%>" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
     <!-- <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
    
    </div>
   </c:if>
  </div>
 <%}
    }	%>
</div>
    <a href="neetBooks.jsp"> <button style="background-color:rgb(252, 217, 222); border-radius:8mm; margin-left:85%;width:150px;">View all</button></a>
<!--end card-PopularBook -->

<!-- SSC Books -->
 <div class="title" style="text-align:center;font: 2rem sans-serif ; color:black;position: relative;line-height: 60px;margin-top:30px;">
       <h1>SSC Books</h1>
  </div>
<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <%
    BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
    List<BookDetails> list3 = dao3.getSscBooks();
    int k =1;
    for (BookDetails b : list3){
    	
    	if(k<=4){
    		k++;
  %>
 
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px; ">
  <div class="imgcenter" style="width:100% ; height:28vh;">
  <div style="width: 10vw;margin:1px auto 1px ">
    <img class="card-img-top" src="book/<%=b.getFileName()%>" alt="Card image cap" style="height:100%;width:100%; margin-top:8px" >
   </div>
   </div>
    <div class="card-body" style="width:100%; text-align:center ;">
      <h5 class="card-title"><%=b.getBookName()%></h5>
     <!--  <p class="card-text">Some quick example </p> -->
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : <%=b.getAuthorName()%></li>
      <li class="list-group-item">Price : <i class="fa fa-inr"></i><%=b.getPrice()%></li>  
    </ul>
    <c:if test="${empty userobj}">
    <div class="card-body" style="text-align:center" >
      <a href="login.jsp" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
      <!--  <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
    </div>
    </c:if>
    
    <c:if test="${not empty userobj}">
    <div class="card-body" style="text-align:center" >
      <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
      <!--  <a href="cart.jsp?bid=<%=b.getBookId()%>" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
      
    </div>
    </c:if>
  </div>
 <%}} %>
  
</div>
    <a href="sscBooks.jsp"> <button style="background-color:rgb(252, 217, 222); border-radius:8mm; margin-left:85%;width:150px;">View all -></button></a>
<!--end card SSCBooks-->

<!-- Programming Books -->
 <div class="title" style="text-align:center;font: 2rem sans-serif ; color:black;position: relative;line-height: 60px;margin-top:30px;">
       <h1>Programming Books</h1>
  </div>
<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <%
    BookDAOImpl dao4 = new BookDAOImpl(DBConnect.getConn());
    List<BookDetails> list4 = dao4.getProgBooks();
    int l =1;
    for (BookDetails b : list4){
    	
    	if(l<=4){
    		l++;
  %>
 
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px; ">
  <div class="imgcenter" style="width:100% ; height:28vh;">
  <div style="width: 10vw;margin:1px auto 1px ">
    <img class="card-img-top" src="book/<%=b.getFileName()%>" alt="Card image cap" style="height:100%;width:100%; margin-top:8px" >
   </div>
   </div>
    <div class="card-body" style="width:100%; text-align:center ;">
      <h5 class="card-title"><%=b.getBookName()%></h5>
     <!--  <p class="card-text">Some quick example </p> -->
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : <%=b.getAuthorName()%></li>
      <li class="list-group-item">Price : <i class="fa fa-inr"></i><%=b.getPrice()%></li>  
    </ul>
    <c:if test="${not empty userobj}">
    <div class="card-body" style="text-align:center" >
      <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
      <!--  <a href="cart.jsp?bid=<%=b.getBookId()%>" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
      
    </div>
    </c:if>
    
    <c:if test="${empty userobj}">
    <div class="card-body" style="text-align:center" >
      <a href="login.jsp" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
      <!--  <a href="cart.jsp?bid=<%=b.getBookId()%>" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
      
    </div>
    </c:if>
    
    
  </div>
 <%}} %>
  
</div>
    <a href="progBooks.jsp"> <button style="background-color:rgb(252, 217, 222); border-radius:8mm; margin-left:85%;width:150px;">View all -></button></a>
<!--end card ProgrammingBooks-->



<!--Cards-StoryBooks-->
<!-- Heading -->
  <div class="title" style="text-align:center;font: 2rem sans-serif ; color:black;position: relative;line-height: 60px;margin-top:30px;">
       <h1>Story Books</h1>
  </div>
<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <%
    BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
    List<BookDetails> list = dao.getStoryBooks();
    int m =1;
    for (BookDetails b : list){
    
    	if(m<=4){
    		m++;
  %>
 
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px; ">
  <div class="imgcenter" style="width:100% ; height:28vh;">
  <div style="width: 10vw;margin:1px auto 1px ">
    <img class="card-img-top" src="book/<%=b.getFileName()%>" alt="Card image cap" style="height:100%;width:100%; margin-top:8px" >
   </div>
   </div>
    <div class="card-body" style="width:100%; text-align:center ;">
      <h5 class="card-title"><%=b.getBookName()%></h5>
     <!--  <p class="card-text">Some quick example </p> -->
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : <%=b.getAuthorName()%></li>
      <li class="list-group-item">Price : <i class="fa fa-inr"></i><%=b.getPrice()%></li>  
    </ul>
    <c:if test="${empty userobj}">
    <div class="card-body" style="text-align:center" >
      <a href="login.jsp" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
      <!--  <a href="cart.jsp?bid=<%=b.getBookId()%>" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
      
    </div>
    </c:if>
    
    <c:if test="${not empty userobj}">
    <div class="card-body" style="text-align:center" >
      <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="card-link"><button style="background-color:rgb(127, 255, 212);">View Details</button></a>
      <!--  <a href="cart.jsp?bid=<%=b.getBookId()%>" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a> -->
      
    </div>
    </c:if>
  </div>
 <%}} %>
  
</div>
    <a href="storyBooks.jsp"> <button style="background-color:rgb(252, 217, 222); border-radius:8mm; margin-left:85%;width:150px;">View all -></button></a>
<!--end card StoryBooks-->

<!--card -->


<footer style="background-color:aquamarine;margin-top:50px;">
        <div class="logos" style="text-align:right;">
         <a href="#"><i class="fa fa-2x fa-facebook-official" style="color: black;padding:10px 20px;"></i></a>
         <a href="#"><i class="fa fa-2x fa-twitter" style="color:black;padding:10px 20px;"></i></a>
         <a href="#"><i class="fa fa-2x fa-instagram" style="color:black;padding:10px 20px;"></i></a>
         <a href="#"><i class="fa fa-2x fa-youtube-play" style="color:black;padding:10px 20px ;"></i></a>
        </div>
        <div class="creator" style="display: grid; grid-template-columns: auto auto auto ; text-decoration: none;grid-row-gap: 5px;padding: 30px 0px 10px 150px ;">
            <p>Website</p>
            <p>Creator Name</p>
            <p>Details</p>
            <p>Sample Website</p>
            <p>ABC</p>
            <p>This is Just an Demo Website.</p>
            <p>Dummy Website</p>
            <p>XYZ</p>
            <p>Nothing to say about it.</p>
        </div><hr>
        <div class="last" style="padding: 0px 70px;">
        <font style="padding-right:10vw;">For More Details Contact US :</font>
        <font style="padding-right:10vw;">Contact : 9284282726</font>
            <font>Email : xyz2587@gmail.com
        </font><br><br>
        <font style="color:grey;"><center>Copyright &#169 2022, All rights reserved. </center></font>
        </div>
    </footer>


	
	
</body>
</html>