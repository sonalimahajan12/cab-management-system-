<!DOCTYPE html>
<html lang="en">
<head>
  <title>payment</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
} 

</style>
  </style>
</head>
<body >
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <a class="navbar-brand"  style="margin-left:600px;"" href="homepage.jsp"><img src="logo.png" alt="Paris" style="width:150px; border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    width: 150px;
     sticky-top; margin-left:100px;  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5); display: block; margin-left: auto;
    margin-right: auto;"></a>
    <div class="container-fluid">
  <img src="hada.jpeg" class="rounded-circle" style="margin-left:300px;" alt="Cinque Terre" width="70" height="50"> 
 
  <div class="btn-group">
    <button type="button" class="btn btn-primary">Driver Name</button>
    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="d_login_profile.jsp">Profile</a>
      
        <a class="dropdown-item" href="">Logout?</a>
      
    </div>
  </div>

</nav>

  <div class="container-fluid">
      <div class="col-md " style="height:700px;width:1000px;float:right;"><br><br><br><br><br><h1 style="margin-left:400px; ">Profile</h1><hr>
      	<h2>General Information</h2> <p><b><br><br>
        <h2>General Information</h2> <p><b></b></p><br><br>
        <p> NAME   <input type="text"  placeholder="Name"        style="margin-left:80px;margin-right: 80px;" name="lname" disabled>
      <p > Mobile NO   <input type="number" placeholder="Mobile No"   style="margin-left:50px;margin-right: 80px;width:210px; name="usrtel"></p>
        <p > LICENSE NO   <input type="number" placeholder="License No"   style="margin-left:45px;margin-right: 80px;width:210px; name="usrtel" disabled="S"></p>
      <p > E-Mail Address   <input type="email" placeholder="E-mail Adress"   style="width:240px;margin-left:30px;margin-right: 80px;width:210px;"  id="email"></p>
       <p> Address  <input type="text"  placeholder="Address" style="color:black; height:35px;margin-left:79px" name="Address" required>  </p><br></br>
<br><br><br><br>
 <input type="button" class="btn btn-primary" style="margin-left:390px;width:190px;" value="SAVE">

      </div>
    </div>

<br><br><br><br>

<ul style="height:600px;width:320px;">
  <br><br>
  <img src="hada.jpeg" style="margin-left:90px;" class="img-thumbnail" alt="Cinque Terre" width="104" height="86"> 
  <br><br><br>
  <li><a  class="active" style="height:60px;width:300px;" href="d_login_profile.jsp">Profile</a></li>

  <li><a style="height:60px;width:300px;" href="">Logout?</a></li>

</ul>

  

</body>
</html>