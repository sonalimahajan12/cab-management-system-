<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectionClass.connection"%>
<%
    if(session.getAttribute("loginemail")==null)
        response.sendRedirect("u_login.jsp");
    String usr = ""+ session.getAttribute("loginemail");
 Connection con = connection.Connect(session);
 String sql = "select * from user_registration where EMAIL_ID=? ";
PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, ""+ usr);
  ResultSet rs =  ps.executeQuery();
  rs.next();
     %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
  <script type="text/javascript" src="jquery-1.11.1.min.js"></script>
  <script type="text/javascript">
      function getusername()
      {
           var url = "getusrname.jsp?";
         //   var url = "reg.jsp?Rdate=" + Rd;
        var xhr = new XMLHttpRequest();
               xhr.open("GET",url,true);
                xhr.onreadystatechange = function() {getusr(xhr);};
                xhr.send();
      }
      function getusr(xhr)
      {
          if(xhr.readyState !=4)
                {//alert();
                    return;
                }
               
             $("#usrname").html(xhr.responseText);
      }
      function logout()
      {
          var url = "logout.jsp?";
           var xhr = new XMLHttpRequest();
               xhr.open("GET",url,true);
                xhr.onreadystatechange = function() {lgout(xhr);};
                xhr.send();
      }
      function lgout(xhr)
      {
          if(xhr.readyState !=4)
                {//alert();
                    return;
                }
               
             window.location = 'u_login.jsp';
      }
</script>
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
a {
    color: hotpink;
}

  </style>
</head>
<body onload="getusername()" >

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <a class="navbar-brand"  style="margin-left:600px;" href="HOMEPAGE1.htm"><img src="logo.png" alt="Paris" style="width:150px; border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    width: 150px;
      margin-left:100px;  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5); display: block; margin-left: auto;
    margin-right: auto;"></a>
    <div class="container-fluid">
  <img src="hada.jpeg" class="rounded-circle" style="margin-left:300px;" alt="Cinque Terre" width="70" height="50"> 
    </div>
  <div class="btn-group">
    <button id="usrname" type="button" class="btn btn-primary">u</button>
    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="user_trips.jsp">My Trips</a>
      <a class="dropdown-item" href="USER_PROFILE.jsp">Profile</a>
       <a class="dropdown-item" href="user_payment.jsp">Payment</a>
        <a class="dropdown-item" href="user_fareride.jsp">Fare Rides</a>
           <a class="dropdown-item" href="#" onclick="logout()">Logout?</a>
    </div>
  </div>

</nav>

  <div class="container-fluid">
      <div class="col-md " style="height:700px;width:1000px;float:right;"><br><br><br><br><br><h1 style="margin-left:400px; ">Profile</h1><hr>
        <h2>General Information</h2> <p><b><a href="9 EDIT_PROFILE.htm" style="float: right; height:190px;" target="_blank">Edit Profile?</a></b></p><br><br>
        <p> NAME   <input type="text" style="margin-left:70px;margin-right: 80px;" name="lname" disabled value="<%=rs.getString("USER_NAME") %>">
        <p> LOCATION <input type="text"  style="width:190px; margin-left:60px;" name="sel1" disabled value="<%=rs.getString("CITY") %>">
          </p> <br><br>
      <p style="margin-left:180px;"> Mobile NO   <input type="text" style="margin-left:40px; margin-right: 80px; width:190px;" name="usrtel" disabled value="<%=rs.getString("MOBILE_NO") %>">
      </p>
      <br><br>
      <p style="margin-left:155px;"> E-Mail Address   <input type="email" style="width:240px;margin-left:40px;margin-right: 80px;width:190px;"  name="email" disabled value="<%=rs.getString("EMAIL_ID") %>"></p>
<br><br><br><br>
 

      </div>
    </div>
<br><br><br><br>
<ul style="height:600px;width:320px; ">
    <li><img src="hada.jpeg" style=" width: 150px; height: 150px"> </li>
  <li><a  style="height:60px;width:300px;" href="user_payment.jsp">Payment</a></li>
  <li><a class="active" style="height:60px;width:300px;" href="USER_PROFILE.jsp">Profile</a></li>
  <li><a style="height:60px;width:300px;" href="user_trips.jsp">My Trips</a></li>
  <li><a style="height:60px;width:300px;" href="user_fareride.jsp">Fare Rides</a></li>
  <li><a style="height:60px;width:300px;" onclick="logout()">Logout?</a>
</ul>

  

</body>
</html>
