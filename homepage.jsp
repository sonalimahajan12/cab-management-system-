<!DOCTYPE html>
<html lang="en">
<head>
  <title>NITK Taxi Management</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  <style>

  * {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}

.header {
  overflow: hidden;
  background-color:rgb(0, 250,5);
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}


/* Slideshow container */
.slideshow-container {
  position: relative;
  background: #f1f1f1f1;
}

/* Slides */
.mySlides {
  display: none;
  padding: 80px;
  text-align: center;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -30px;
  padding: 16px;
  color: #888;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  position: absolute;
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
  color: white;
}

/* The dot/bullet/indicator container */
.dot-container {
    text-align: center;
    padding: 20px;
    background: #ddd;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

/* Add a background color to the active dot/circle */
.active, .dot:hover {
  background-color: #717171;
}

/* Add an italic font style to all quotes */
q {font-style: italic;}

/* Add a blue color to the author */
.author {color: cornflowerblue;}
  html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;

  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  form.example input[type=text] {
    padding: 11px;
    font-size: 17px;
    border: 1px solid grey;
    float: left;
    width: 40%;
    background: #000023;
}

form.example button {
    float: left;
    width: 20%;
    padding: 10px;
    background: #0096F0;
    font-size: 17px;
    border:1 px solid grey; 
}

form.example button:hover {
    background: #0b7dda;
}

form.example::after {
    content: "";
    clear: both;
    display: table;
}
</style>
  <style>
 
  .carousel-inner img {
      width: 100%;
      height: 20%;
  }
  body {
      position: relative; 
  }
  .button:hover {opacity: 0.6}
  </style>
</head>
<body>
  

<div class="header sticky-top" >
 
   <h1 style="justify;"><img src="logo.png" alt="Paris" style="width:150px; display: block;margin-left: auto;
    margin-right: auto;"></a>
  <div class="header-right">
    <a class="active" href="#home">Home</a>
    <a href="https://mail.google.com/mail/u/0/#search/sonalimahajan116%40gmail.com/1619e8a648b87794?compose=161fd7b582a5b7cc">Feedback</a>
    <a href="ABOUT_US.jsp">About</a>
    <a href="signup.jsp">Sign Up</a>
  
     <a href="driver_signin.jsp">Login Driver</a>
  </div>
</h1>
</div>

   <form>
  <input type="text" name="search" placeholder="Search.." style="background-color: LightSeaGreen">
</form>

<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="first.jpg" alt="Los Angeles" width="600" height="50">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>We had such a great time in LA!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="second.png" alt="Chicago" width="600" height="50">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="third.jpg" alt="New York" width="600" height="50">
      <div class="carousel-caption">
        <h3>New York</h3>
        <p>We love the Big Apple!</p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<div class="slideshow-container">

<div class="mySlides">
  <q>I love you the more in that I believe you had liked me for my own sake and for nothing else</q>
  <p class="author">- John Keats</p>
</div>

<div class="mySlides">
  <q>But man is not made for defeat. A man can be destroyed but not defeated.</q>
  <p class="author">- Sonali Mahajan</p>
</div>

<div class="mySlides">
  <q>But man is not made for defeat. A man can be destroyed but not defeated.</q>
  <p class="author">- Ernest Hemingway</p>
</div>

<div class="mySlides">
  <q>I have not failed. I've just found 10,000 ways that won't work.</q>
  <p class="author">- Thomas A. Edison</p>
</div>

<a class="prev" onclick="plusSlides(-1)">?</a>
<a class="next" onclick="plusSlides(1)">?</a>

</div>

<div class="dot-container">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

<div class="container">
  <h1 >MOMENTS</h1>
  <div class="row" style="margin-left: none;">
    <div class="col-sm-4" style="background-color:yellow;margin-left:3px; ">
      <img src="fifth.jpg" class="float-left" ></img>
    </div>
    <div class="col-sm-4" style="background-color:pink;">
        <img src="sixth.jpg" class="float-left" ></img>     
    </div>
     <div class="col-sm-3" style="background-color:green;">
        <img src="seventh.jpg" ></img>     
    </div>
  </div>
</div>
<br>
</div></br>

<div class="container-fluid">
 
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6" style="background-color:white;">
      <div class="container">
  <h2>Get A Fare Estimate</h2>
  <br></br>

  <form action="/action_page.php">
    <div class="form-group">
      
      <input type="text" class="form-control" id="email" placeholder="Enter Pickup Location" name="email" style="width:70%">
      <br></br>
    </div>
    <div class="form-group">
      
      <input type="text" class="form-control" id="pwd" placeholder="Enter Destination" name="pswd" style="width:70%">
      <br></br>
    </div>
   <button type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
      <br></br>
    <br></br>
      
    
  
  </form>
</div>
      
      </div>
      
      <div class="col-sm-6" style="background-color:lightblue;">
      <div id="map" style="width:609px;height:449px;background:blue;float:right;" ></div>
<script>
function myMap() {
  var mapCanvas = document.getElementById("map");
  var mapOptions = {
    center: new google.maps.LatLng(12.9807,74.8031), zoom: 10  
  };
  var map = new google.maps.Map(mapCanvas, mapOptions);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC519T9FMOMg737tx-Kyqw4IO_eFeThrrs&callback=myMap"></script></div></div>
    </div>
    <br>
  
    
   
  </div>
</div>

<br></br>
  <br></br>
  <h2> "Meet The Team"</h2>

<br>

<div class="row">
  <div class="column">
    <div class="card">
      <img src="hada.jpeg" alt="Jane" style="width:100%; height:300;">
      <div class="container">
        <h2>NITK Students</h2>
       
        <p class="title">CEO & Founder</p>
       
    
        <p><button class="button" style="width:90px; color:white; background-color: blue;" >Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="hada_new.jpg" alt="Mike" style="width:100%; height:100%;">
      <div class="container">
        <h2>Shivani Hada</h2>
        <p class="title">Art Director</p>
     
  
        <p><button class="button"  style="width:90px; background-color: blue;">Contact</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="sonali.jpeg" alt="John" style="width:100%; height:300;">
      <div class="container">
        <h2>Sonali Mahajan</h2>
        <p class="title">Designer</p>
     

        <p><button class="button"  style="width:90px; background-color: blue;">Contact</button></p>
      </div>
    </div>
  </div>
</div>

</form>
</div>

<div class="row">
  <br></br>
  <div class="column" style="background-color:black;">
  <h2 style="text-align:center; color:white;">NITK</h2>
    <hr></hr>
  
  

  </div>
<br></br>
<br></br>
  <div class="column" style="background-color:black;">
    <br></br>
<a href="signup.jsp" class="btn btn-info">Sign-Up To Drive</a>
    <hr></hr>
    <p><a href="signup.jsp" class="btn btn-info" role="button">user sign-up</a></p>
    <p><a href="aboutus.jsp" class="btn btn-info" role="button">about us</a></p>
    <p><a href="https://mail.google.com/mail/u/0/#search/sonalimahajan116%40gmail.com/1619e8a648b87794?compose=161fd7b582a5b7cc">Feedback</a></p>
    
  </div>
  <div class="column" style="background-color:black;">
    <br></br>
    <a href="#" class="btn btn-outline-dark custom-button-width .navbar-right" role="button" style="align-self: right; color:white;">Becoma A Driver</a>
    <hr></hr>
    

  </div>
</div>

</body>
</html>