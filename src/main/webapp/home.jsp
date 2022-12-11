<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	 <%@include file="all_component/navbar1.jsp" %>
	 

	
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
      <img class="d-block w-100" src="images/quote4.jpg" alt="Second slide"   height="340">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote6.jpg" alt="Third slide"  height="340" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote8.jpg" alt="Fourth slide"  height="340">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote2.webp" alt="Fifth slide"  height="340" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/quote3.jpg" alt="Sixth slide"  height="340" >
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


<!--Cards-StoryBooks-->
<!-- Heading -->
  <div class="title" style="text-align:center;font: 2rem sans-serif ; color:black;position: relative;line-height: 60px;margin-top:30px;">
       <h1>Story Books</h1>
  </div>
<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">

  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book1</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212);border-radius:1mm;">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255)">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255)">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255)">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>

</div>

<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">

  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book2</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>  
    </div>
  </div>
</div>
    <a href="StoryBooks.html"> <button style="background-color:rgb(252, 217, 222); border-radius:8mm; margin-left:85%;width:150px;">View all</button></a>
<!--end card StoryBooks-->

<!--Card FreeBooks-->
<div class="title" style="text-align:center;font: 2rem sans-serif ;margin-top:70px;color: black;position: relative;line-height: 60px;">
  <h1>Free Books</h1>
</div>

<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
</div>

<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>      
    </div>
  </div>
</div>
     <a href="#"> <button style="background-color:rgb(252, 217, 222); border-radius:8mm; margin-left:85%;width:150px;">View all</button></a>
<!--end card-FreeBooks-->

<!--card PopularBooks-->
<div class="title" style="text-align:center;font: 2rem sans-serif ;margin-top:70px;color: black;position: relative;line-height: 60px;">
  <h1>Popular Books</h1>
</div>
<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>  
    </div>
  </div>
</div>

<div style="display:flex ; position:relative;margin-bottom:40px;margin-top:50px;">
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
  <div class="card " style="width: 17rem; margin-right: 20px;margin-left:20px; height:400px">
    <img class="card-img-top" src="images/quote.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Story Book</h5>
      <p class="card-text">Some quick example </p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Author : Dinesh Patel</li>
      <li class="list-group-item">Seller : Rakesh Sharma </li>  
    </ul>
    <div class="card-body" >
      <a href="#" class="card-link"><button style="background-color:rgb(240, 255, 255);">More details</button></a>
      <a href="#" class="card-link" ><button style="background-color:rgb(127, 255, 212)">Buy Book</button></a>
      
    </div>
  </div>
</div>
    <a href="#"> <button style="background-color:rgb(252, 217, 222); border-radius:8mm; margin-left:85%;width:150px;">View all</button></a>
<!--end card-PopularBook -->

<!--card -->

<div class="footer" style="background-color:aquamarine;height:200px;margin-top:50px;">

</div>
	
	
</body>
</html>