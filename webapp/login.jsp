<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link
	href="https://fonts.googleapis.com/css2?family=Recursive:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
    <link rel="stylesheet" href="all_component/style1.css">
    <style>
        body{
            margin: 0;
            padding: 0;
            
        }
        .main{
            display: flex;
            height:600px;
           
        }
        .sub1{
            width:45vw;
            height:540px;;
            background-color: white;
            margin-left:360px;
           
            
        }
        
        .sub1-main{
        
            width:35vw;
            margin-left: 50px; 
            margin-right: 15vh auto;
            margin-bottom: 15vh auto;
            margin-top:10px;
        }
        p{
            font-size: 2.5em;
        }
        .usermail{
            font-size: 1.2em;
        }
        #email{
            padding: 1.2em;
            width: 100%;
            background-color:whitesmoke;
            border: 0px;
            border-bottom: 2px solid grey;
            border-radius: 5px;
            outline:transparent;
            margin-top: 1vh;
        }
        .submit{
        
            width:100%;
            background-color: rgba(0,0,0,0.8);
            padding: 0.8em;
            margin: 2vh auto;
        }
        .submit button{
            background:transparent;
            border:0;
        }
        .submit button a{
            color: white;
            font-size: 1.1em;
            text-decoration: none;
        }
        .submit:hover{
            background-color: black;
            transition: 0.5s;
            cursor: pointer;
        }
        .login-logo{
            height: 35vh;
            
            
        }
        
        .small-font{
            font-size: 1.2em;
            color: white;
            letter-spacing: 1px;
        }
        
    </style>
</head>
<body>

    <a href="index.jsp" ><button style="height:35px;width:60px;background-color:whitesmoke;margin-left:10px;margin-top:10px;"><i class="fa fa-home fa-2x" aria-hidden="true"></i></button></a>
    
    <c:if test="${not empty succMsg }">
 		<h4 class="text-center text-success" style="text-align:center;color:green;">${succMsg}</h4>
 		<c:remove var="succMsg" scope="session"/>
 	</c:if>
 	<c:if test="${not empty failedMsg }">
 		<h4 class="text-center text-danger" style="text-align:center;color:red;">${failedMsg}</h4>
 		<c:remove var="failedMsg" scope="session"/>
 	</c:if>
    
    <div class="main">
        
        <div class="sub1">
            <div class="sub1-main">
                <p style="text-align:center;">Login</p>
                <form action="login" method="post">
                
                    <div class="usermail">
                        <font>User </font><br>
                        <div style="">
                        <select name="user" id="email" style="" required >
                        <option>Buyer</option>
                        <option>Seller</option>
                        <option>Admin</option>
                        </select>
                        </div>
                    </div><br>
                    <div class="usermail">
                        <font>Email Address</font><br>
                        <input type="email" name="email" id="email" placeholder="Enter Your Email">
                    </div><br>
                    <div class="userpass usermail">
                        <font>Password</font><br>
                        <input type="password" name="password" id="email" placeholder="Enter Your Password">
                    </div><br>
                    <center>
                        <div class="submit">
                            <button type="submit" style="color:white; width:460px">Login</button>
                        </div>
                    </center>
                    <div class="sign-up" style="float: right;">
                        <font>Not a Member?</font>
                        <font "> <a href="register.jsp" style="text-decoration: none; color : blue"> Sign up now </a></font>
                    </div>
                </form>
            </div>
        </div>
        
        
    </div>
</body>
</html>