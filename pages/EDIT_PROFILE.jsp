<%-- 
    Document   : EDIT_PROFILE
    Created on : Apr 3, 2018, 7:14:08 PM
    Author     : SHIVANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>payment</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <a class="navbar-brand"  style="margin-left:600px;" href="HOMEPAGE1.htm"><img src="logo.png" alt="Paris" style="width:150px; border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    width: 150px;
     sticky-top; margin-left:100px;  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5); display: block; margin-left: auto;
    margin-right: auto;"></a>	</nav><br><br><br><br><br>
    <div class="w3-container w3-red w3-center"> <h2>Edit Profile Pic</h2></div>
    <div class="w3-container" style="height: 500px; position: relative;">
        <div class="w3-container w3-half">
            <br><br><p style="margin-left: 60px;"> Name<input class="usrname" style="margin-left: 145px;"> </p>

<br><p style="margin-left: 60px;"> Password<input class="Password" style="margin-left: 120px;"> </p><br><p style="margin-left: 60px;"> Confirm Password<input class="Password" style="margin-left: 60px;"> </p>
<br><p style="margin-left: 60px;"> E-mail<input class="usrname" style="margin-left: 140px;"> </p>
<br><p style="margin-left: 60px;"> Phone-No<input class="usrname" style="margin-left: 110px;"> </p>

<input type="submit" style="width:200px; height: 30px;  align-content: center; position: relative;" class="btn btn-info" value="Submit Button">
        </div>
        <div class="w3-container w3-half "  >
            <div class="w3-container w3-green" style="height: 200px; position: relative;">sfrsdfs</div>
            <div class="w3-container w3-yellow"><iframe src="ChangeProfilePicSup.jsp" style=" height: 50px; width: 100%; "  ></iframe> </div>
        </div>
        
    </div>


</body>
</html>
