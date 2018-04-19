<!DOCTYPE html>
<html lang="en">
    <%
        if(session.getAttribute("loginemail")!=null)
        {
            response.sendRedirect("USER_PROFILE.jsp");
        }
        %>
<head>
  <title>Driver Log-In</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>
  	img {
    border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    width: 150px;
   /* sticky-top;*/
}
img:hover {
    box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
   </style>
   </head>
    <body style="background-image:url('bc1.jpg') ">
<img src="logo.png" alt="Paris" style="width:150px; display: block;margin-left: auto;
    margin-right: auto;">
<hr>
<hr>
  <div class="container-fluid row justify-content-center align-items-center">
<div class="col-sm-5 container-fluid " style="background-color:white;float:center; height:750px; width:500px;border: 10px dotted red;padding:35px;background-clip: padding-box;">
 <span class="badge badge-info" style="width:275px; height:65px; align:justify-center; "> <h1> User Login-In</h1></span>

 
  <div class="imgcontainer">
    <img src="clip.png" alt="person" class="person">
  </div>

  <div class="container">
      <form action="dloginMgr.jsp" method="get">
    <label for="uname"><b></b></label>
    <input id ="uname" type="text" placeholder="Email id" name="uname" required>

    <h5></h5>
    <input id="pwd" type="password" placeholder="Password" name="pwd" required>
    <h6></h6>
    <button type="submit">Login</button>
    </form>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>


 </div>
	</div>

</body>
</html>