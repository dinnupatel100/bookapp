<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Bookizz:Navbar</title> 
  <%@include file="all_component/allCss.jsp"%>
  <link rel="stylesheet" href="all_component/style.css">
  <script src="validation.js"></script>
</head>

<body>
   <%@include file="all_component/navbar.jsp" %>
   <c:if test="${not empty succMsg }">
 		<h4 class="text-center text-success">${succMsg}</h4>
 		<c:remove var="succMsg" scope="session"/>
 	</c:if>
 	<c:if test="${not empty failedMsg }">
 		<h4 class="text-center text-danger">${failedMsg}</h4>
 		<c:remove var="failedMsg" scope="session"/>
 	</c:if>

<form action="register" method="post" onsubmit="return verifyPassword()">
    <div class="container" style="width:63vw; border-top:3px solid black ; height: 100vh;">
        <div class="title" style="text-align:center;font: 2rem sans-serif ; color:black;position:relative;margin-top:20px;margin-bottom:20px;">
            <h1>Registration</h1>            
        </div>
        <div class="form-container">
                <div class = "input">
                    <div class="my-label">
                        <label>Name </label>
                    </div>
                    
                    <div class="box2"> 
                        <input type="text" name="fname" required>
                    </div>
                </div>   

                <div class = "input">                        
                   <div class="my-label">
                        <label>Email </label>
                    </div>
                    
                    <div class = "box2">
                        <input type="email" name="email" placeholder="" required><br>
                    </div>   
                </div>
                

                <div class = "input">
                    <div class="my-label">
                        <label>Mobile No. </label>
                    </div>
                    
                    <div class="box2">
                        <input type="tel" name="phno" pattern="[789][0-9]{9}" required><br>
                    </div>
                </div>
    
                <div class = "input">
                    <div class="my-label">
                        <label>Password </label>
                    </div>
                    
                    <div class="box2"> 
                    <input type="password" name="password" id="pass"  value="" required>
                    <span id = "message" style="color:red; font-size: xx-small;" ></span>
                    </div>
                </div>

                <div class = "input">
                    <div class="my-label">
                        <label>Confirm Password </label>
                    </div>
                    
                    <div class="box2"> 
                        <input type="password" id="confirm-pass" required>
                        <span id = "message2" style="color:red; font-size: x-small;"></span>
                    </div>
                </div>

                <div class = "input-state" style="margin-bottom:0px;" >
                    <span class="comm s1">
                        <label>State </label>
                        <select id="State" size="1" name="state" required>
                            <option value="" selected="selected" >-- Select State --</option>
                        </select>
                    </span>
                    <span class="comm d1">
                        <label>District </label>
                        <select id="District" size="1" name="district" required>
                            <option value="" selected="selected"  >-- Select District --</option>
                        </select>
                    </span>                
                    <span class="comm t1">
                        <label>City </label>
                        <select id="Taluka" size="1" name="city" required>
                            <option value="" selected="selected" >-- Select City --</option>
                        </select>
                    </span>                
                </div>
        </div>   
    
        <div class = "input terms" >
            <input type="checkbox" class="" style="margin-top:0px" required>
            <label style="color:black; margin-top:13px;margin-left:2px;">I agree to all the <label style="color:blue">terms</label> and <label style="color:blue">conditions.</label></label>
        </div>
    
            
        <div class = "my-buttom input">
            <input type="Reset" class="buttom" style="margin-right:20px;margin-top:10pxpx;margin-left:150px;background-color:aliceblue;color:black;width:100px;border-radius:2mm;" value="Clear">
            <input type="Submit" class="buttom" style="margin-top:10px;margin-left:10px;" value="Register">
            
        </div>
    </div>
</form>
</body>