<%@page import="com.DAO.UserDAOImpl"%>
<%@page import="com.entity.BookDetails"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookiz</title>
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

    <%
    int bid = Integer.parseInt(request.getParameter("bid"));
    BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
    BookDetails b = dao.getBookById(bid);
    UserDAOImpl dao1 = new UserDAOImpl(DBConnect.getConn());
    String email = b.getEmail();
    User us = dao1.getUserByEmail(email);
    
    
    %>

    
	<div class="container">
	  <div class="row" style="height:450px">
			<div class="col-md-5" style="background-color:white;margin-left:100px;margin-right:3px; border:2px;">
				<div class="card " style="width: 19rem; margin-right: 20px;margin-left:90px;margin-top:30px; height:400px; ">
  					<div class="imgcenter" style="width:100% ; height:46vh;">
  						<div style="width: 12vw;margin:1px auto 1px ">
   						 <img class="card-img-top" src="book/<%=b.getFileName()%>" alt="Card image cap" style="height:100%;width:100%; margin-top:8px" >
   						</div>
   					</div>
   					
    				<ul class="list-group list-group-flush">
    				    <li class="list-group-item"><h6>Book Name : <%=b.getBookName()%></h6></li> 
     				    <li class="list-group-item"><h6>Author Name : <%=b.getAuthorName()%></h6></li>
     				    <li class="list-group-item"><h6>Category : <%=b.getBookCategory()%></h6></li>
      					 
    				</ul>
				</div>
			</div>
		
			<div class="col-md-5" style="background-color:white">
	
			<h3 style="text-align:center;color:#666699; margin-bottom:20px ;margin-top:5px;"><u>Seller Information</u></h3>
			<ul class="list-group list-group-flush">
    				    <li class="list-group-item"><h4>Seller Name : <%=us.getName()%></h4></li> 
     				    <li class="list-group-item"><h4>Email : <%=us.getEmail()%></h4></li>
     				    <li class="list-group-item"><h4>Contact : <%=us.getPhno()%></h4></li>
     				    <li class="list-group-item"><h4>State : <%=us.getState()%></h4></li>
     				    <li class="list-group-item"><h4>District : <%=us.getDistrict()%></h4></li>
     				    <li class="list-group-item"><h4>City : <%=us.getCity()%></h4></li>
      					 
    		</ul>
			
			
			
			<div  style="margin-top:0px; margin-left:300px;">
			<ul class="navbar-nav">
			<li class="nav-item">
			<button style="background-color:green;border-radius:5px;height:45px;width:100px;"><h5><a class="nav-link " href="http://Wa.me/+91<%=us.getPhno()%>" style="color:white;decoration:none;"><i class="fa fa-whatsapp" aria-hidden="true"></i> Chat</a></h5></button>
			</li>
			
			</li>
			</ul>
			</div>
			</div>
			
	
		
	  </div>
	</div>
</body>
</html>